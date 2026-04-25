<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Facebook CRUD - Posts</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-icons.css">
</head>
<body>
	<div class="d-flex flex-column min-vh-100 bg-light">
	
	    <main class="container mt-4">
	      <div class="row mb-3">
	      	<div class="col">
	      		<h2>Lista de Posts</h2>
	      	</div>
	      	
	      	<div class="mb-1">
					<a class="bi bi-house"
			           href="${pageContext.request.contextPath}/"> Home</a>
				</div>
	      </div>

	      <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Autor</th>
                    <th>Conteúdo</th>
                    <th>Data</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="p" items="${posts}">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.user.name}</td>
                        <td>${p.content}</td>
                        <td>${p.postDate}</td>
                        <td>
					      	<a class="bi bi-pencil-square" 
					      	   href="${pageContext.request.contextPath}/posts/update?postId=${p.id}"></a>
					      	
					      	<a class="bi bi-trash"
					      	   href="${pageContext.request.contextPath}/posts/delete?postId=${p.id}"></a>
					      </td>
                    </tr>
                </c:forEach>
            </tbody>
          </table>
	      	<a href="/facebook/posts/update" 
				   class="btn btn-primary">
					Novo Post
				</a>
	    </main>
	</div>
</body>
</html>
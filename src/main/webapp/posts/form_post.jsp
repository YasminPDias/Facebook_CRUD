<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Facebook CRUD - Formulário de Post</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
</head>
<body>
	<div class="d-flex flex-column min-vh-100 bg-light">
<main class="container mt-4">
          <h2>${post != null && post.id != 0 ? "Atualizar Post" : "Novo Post"}</h2>
	      <hr>
	      
	      <form action="/facebook/posts/save" method="post">
	      	<input type="hidden" name="post_id" value="${post.id}">
	      	
	      	<div class="mb-3">
	      		<label class="form-label">Usuário</label>
	      		<select name="user_id" class="form-select" required>
	      			<option value="">Selecione o autor</option>
	      			<c:forEach var="u" items="${usuarios}">
	      				<option value="${u.id}" ${post.user.id == u.id ? 'selected' : ''}>
	      					${u.name}
	      				</option>
	      			</c:forEach>
	      		</select>
	      	</div>
	      	
	      	<div class="mb-3">
	      		<label class="form-label">Conteúdo do Post</label>
	      		<textarea name="content" class="form-control" rows="5" required>${post.content}</textarea>
	      	</div>
	      	
	      	<div class="mb-3">
	      		<button type="submit" class="btn btn-success">Salvar</button>
	      		<a href="/facebook/posts" class="btn btn-secondary">Cancelar</a>
	      	</div>
	      </form>
	    </main>
	</div>
</body>
</html>
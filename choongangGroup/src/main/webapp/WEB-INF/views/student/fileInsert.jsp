<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<script type="text/javascript">

</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>file upload</title>
</head>
<body>

	<h2>파일업로드</h2>

	<div class="container">
		<form action="fileInsert" method="post" enctype="multipart/form-data">
			<input type="hidden" name="userid" value="${userid }">
			<input type="hidden" name="lecId" value="${lecId }">
			<input type="hidden" name="referer" value="${referer }">
			<input type="file" name="file"> 
			<button type="submit" class="btn btn-dark" onclick="submit()">업로드</button>
		</form>
	</div>
</body>
</html>
<%@page session="false"%>
<html>
<head>
<title>${title}</title>
</head>
<body>
   <h1>Message : ${message}</h1>
   <a href="<%=request.getContextPath()%>/login">Sign in</a>
</body>
</html>
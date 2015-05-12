<%@page session="false"%>
<html>
<head>
<title>${title}</title>
</head>
<body>
   <h1>Message : ${message}</h1>
   <a href="<%=request.getContextPath()%>/login">Sign in spring security</a><br>
   <a href="<%=request.getContextPath()%>/userInfo">test page Not Allowed</a><br>
   <a href="<%=request.getContextPath()%>/angulartest">crud angular Spring Rest</a><br>
   <a href="<%=request.getContextPath()%>/persons">crud jsf</a><br>
   <a href="<%=request.getContextPath()%>/cxfsoap/SayHello?wsdl">web services</a>
   
</body>
</html> 
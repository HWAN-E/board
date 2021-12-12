<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="egovframework.hwanBoard.main.serviceImpl.MainServiceImpl" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lggo</title>
</head>
<body>
<%
        request.setCharacterEncoding("euc-kr"); 
        
        String id= request.getParameter("id");
        String pw = request.getParameter("password");
        
        MainServiceImpl dao = new MainServiceImpl();
        int check =0;//= dao.loginCheck(id, pw);
        
        String msg = "";
        msg = "../main2.jsp";
        
        if(check == 1)    // 로그인 성공
        { 
            session.setAttribute("sessionID", id);
            msg = "WEB-INF/jsp/loginMain.jsp";
        }
        else if(check == 0)
        {
            msg = "WEB-INF/jsp/main.jsp?msg=0";
        }
         
        response.sendRedirect(msg);
%>
<script type="text/javascript">
alert(1)
</script>
</body>
</html>
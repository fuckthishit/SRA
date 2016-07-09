<%@page import="entity.User"%>
<%
    User user = (User) session.getAttribute("user");
    if (user == null){
        response.sendRedirect("index.jsp");
        return;
    }
%>
<%@page import="java.util.ArrayList"%>
<%@page import="jspproject1.Messager"%>
<%@page import="jspproject1.Message"%>
<%
    Messager messager = new Messager("Kesya");

    if (request.getParameter("delete") != null) {
        int id = Integer.parseInt(request.getParameter("delete"));
        messager.deleteMessage(id);
    } else if (request.getParameter("pengirim") != null) {
        messager.addMessage(request.getParameter("pengirim"), request.getParameter("pesan"));
    }

    ArrayList<Message> list = messager.getList();
    request.setAttribute("list", list);
    RequestDispatcher dispatcher = request.getRequestDispatcher("kesya.messageboard.view.jsp");
    dispatcher.forward(request, response);
%>
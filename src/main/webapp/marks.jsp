<%@ page import="ru.innopolis.stc9.servlets.pojo.Subject" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="header.jsp" %>
<%@ include file="sidebar.jsp" %>


<div class="content">
    <h2>Успеваемость</h2>
    <% List<Subject> subjectsWithMarks = (List<Subject>) request.getAttribute("subjectsWithMarks"); %>
    <table>
        <thead>
        <tr>
            <th>Предмет</th>
            <th>Количество занятий</th>
            <th>Средний балл</th>
        </tr>
        </thead>
        <tbody>
        <%for (int a = 0; a < subjectsWithMarks.size(); a++) {%>
        <tr>
            <td><%=subjectsWithMarks.get(a).getSname()%>
            </td>
            <td><%=subjectsWithMarks.get(a).getSubjCounter()%>
            </td>
            <td><%=subjectsWithMarks.get(a).getMarkSumm() / subjectsWithMarks.get(a).getSubjCounter()%>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
</div>
<div class="clear"></div>
<%@ include file="footer.jsp" %>
<%@page import="util.PbPaging"%>
<%@page import="payment.dto.Payment"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <% List<Payment> paymentList = (List)request.getAttribute("paymentList"); %>
     <% PbPaging paging = (PbPaging)request.getAttribute("paging"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>




<!--jQuery 2.2.4.CDN  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<!-- jQuery UI 1.13.2 DN  -->
<script type="text/javascript" src="https://code.jquery.com/ui/1.13.2/jquery-ui.min.js"></script>


<!-- jQuery UI Base Theme CDN  -->
<link type="text/css" rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">

<script type="text/javascript">




</script>
</head>
<body>



<div >


게시판 영역
<table>
	<thead>
		<tr>
			<th>주문번호</th>
			<th>결제 날짜</th>
			<th>회원번호</th>
			<th>결제수단</th>
			<th>결제금액</th>
		</tr>
	</thead>
<!-- <!-- 	<tbody  id="paymentlist">  --> 
	<% for(int i=0; i<paymentList.size();i++)  {%>
	<tr>  
		<td><%=paymentList.get(i).getOrderNo() %></td>
		<td><%=paymentList.get(i).getPaymentDate() %></td>
		<td><%=paymentList.get(i).getUserNo() %></td>
		<td><%=paymentList.get(i).getPartyName() %></td>
		<td><%=paymentList.get(i).getPaymentMethod() %></td>
		<td><%=paymentList.get(i).getPaymentAmount() %></td>

 	</tr>  
	
	


<%} %>	
  </tbody>	 

</table>



</div>



<%	String start = request.getParameter("startdate")==null ?"" :"&startdate="+request.getParameter("startdate") ;
	String end = request.getParameter("enddate")==null ?"" :"&enddate="+request.getParameter("enddate");
%>

<%=start %>
<%=end %>


<div class="text-center">
   <ul class="pagination">
<%-- <%--    <a href="/homett/paymentlist?curPage=<%=paging.getCurPage() - 1 %>"  --start 날짜 파라미터 넣기 --%>
      <%-- 첫 페이지로 이동 --%>
      <%   if( paging.getCurPage() != 1) { %>
      <li><a href="/homett/paymentlist?curPage=1<%=start %><%=end %>" id="firstlist">&larr;처음</a></li>
      <%  } %>
      
   
      <%-- 이전 페이지로 이동 --%>
      <%   if( paging.getCurPage() != 1) { %>
      <li><a href="/homett/paymentlist?curPage=<%=paging.getCurPage() - 1 %><%=start %><%=end %>" id="beforelist">&lt;</a></li>
      <%   } %>
   
   
      <%   for(int i=paging.getStartPage(); i<=paging.getEndPage(); i++) { %>
      <%      if( i == paging.getCurPage() ) { %>
      <li class="active"><a href="/homett/paymentlist?curPage=<%=i %><%=start %><%=end %>" id="curpage"><%=i %></a></li>
      <%      } else { %>
      <li><a href="/homett/paymentlist?curPage=<%=i %><%=start %><%=end %>"><%=i %></a></li>
      <%      } %>
      <%   } %>
      
      <%-- 다음 페이지로 이동 --%>
      <%   if( paging.getCurPage() != paging.getTotalPage() ) { %>
      <li><a href="/homett/paymentlist?curPage=<%=paging.getCurPage() + 1 %><%=start %><%=end %>" id="nextpage">&gt;</a></li>
      <%   } %>
      
      <%-- 마지막 페이지로 이동 --%>
      <%   if( paging.getCurPage() != paging.getTotalPage() ) { %>
      <li><a href="/homett/paymentlist?curPage=<%=paging.getTotalPage() %><%=start %><%=end %>" id="lastpage">&rarr;끝</a></li>
      <%   } %>
      
   </ul>
</div>





</body>
</html>
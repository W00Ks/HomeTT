<%@page import="javax.naming.Context"%>
<%@page import="java.util.List"%>
<%@page import="party.dto.Party"%>
<%@page import="user.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% Member member = (Member)request.getAttribute("userinfo");%>
   <% Party party = (Party)request.getAttribute("partyinfo");  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>
  <!-- iamport.payment.js -->
 <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
 
 
 <script type="text/javascript">

	 

	//결제 준비하기
 IMP.init("imp41280154"); 
	 
 function requestPay() {
	 
     // IMP.request_pay(param, callback) 결제창 호출
     IMP.request_pay({ // param
         pg: "html5_inicis",
         pay_method: "card",
         merchant_uid : "<%=party.getPartyNo()%>_" +  new Date().getTime(),
          name: "HomeTT",
          
         buyer_email: "<%=member.getUserEmail()%>",
         buyer_name: "<%=member.getUserName()%>",
         amount: <%=party.getPaymentAmount()%>,
         buyer_tel: "<%=member.getUserPhone()%>"
<%--          user_no:<%=member.getUserNo()%>, --%>
     
     },function (rsp) { // callback
    	 
    	 console.log(rsp)
         if (rsp.success) { // 결제 성공 시: 
        	
			
				
<%-- 			document.location.href="<%=request.getContextPath()%>/homett/paycomplete" --%>

        	 
				console.log('결제성공')
        	 // jQuery로 HTTP 요청
             jQuery.ajax({
                 url: "/homett/paycomplete", // 예: https://www.myservice.com/payments/complete
                 method: "post", // POST method
                 headers: { "Content-Type": "application/json" },
                 data: {
                     imp_uid: rsp.imp_uid, //결제번호
                     merchant_uid: rsp.merchant_uid,  //주문번호
                     paid_amount : rsp.amount,  //결제 금액
                     party_no : rsp.party_no, //파티 넘버
                	 pay_method: rsp.pay_method, //결제수단
//                 	 user_no: rsp.user_no,//유저 번호
                	 user_email: rsp.buyer_email, //이메일
                	 user_name : rsp.buyer_name, //유저이름
                	 user_phone : rsp.buyer_tel //유저 전화번호
                     
                 }
         

             });	 
//             	 
				
           } else {
             alert("결제에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
        		console.log('결제 실패 ')
             console.log(buyer_name)
           }
           
         });
     
     
     
//   //HomeTT 서버 코드
     
//   app.use(bodyParser.json());
  
//   // "/payments/complete"에 대한 POST 요청을 처리
//   app.post("/homett/paycomplete", async (req, res) => {
//     try {
//       const { imp_uid, merchant_uid } = req.body; // req의 body에서 imp_uid, merchant_uid 추출
    
//       // 액세스 토큰(access token) 발급 받기
//       const getToken = await axios({
//         url: "https://api.iamport.kr/users/getToken",
//         method: "post", // POST method
//         headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
//         data: {
//           imp_key: "4471785018183236", // REST API 키
//           imp_secret: "rGwzfyAZ6DMwEfAhdocdSenuBgh52nOllQudG5TEMiONqlTwXyAfgRBoEKlsTq035VpgUpit3GglzVvq" // REST API Secret
//         }
//       });
//       const { access_token } = getToken.data.response; // 인증 토큰
     
//       // imp_uid로 아임포트 서버에서 결제 정보 조회
//       const getPaymentData = await axios({
//         url: `/homett/paycomplete/${"imp41280154"}`, // imp_uid 전달
//         method: "post", // GET method
//         headers: { "1835b2f17536cc1203d56ba16bb73e5aa8bd7a1b": access_token } // 인증 토큰 Authorization header에 추가
//       });
//       const paymentData = getPaymentData.data.response; // 조회한 결제 정보
//       // DB에서 결제되어야 하는 금액 조회
//       const order = await Orders.findById(paymentData.merchant_uid);
//       const amountToBePaid = order.amount; // 결제 되어야 하는 금액
    
//       // 결제 검증하기
//       const { amount, status } = paymentData;
//       if (amount === amountToBePaid) { // 결제금액 일치. 결제 된 금액 === 결제 되어야 하는 금액
//         await Orders.findByIdAndUpdate(merchant_uid, { $set: paymentData }); // DB에 결제 정보 저장
        
//         switch (status) {
//              case "ready": // 가상계좌 발급
// //                // DB에 가상계좌 발급 정보 저장
//                const { vbank_num, vbank_date, vbank_name } = paymentData;
<%--                  await Users.findByIdAndUpdate(<%=member.getUserId()%>, { $set: { vbank_num, vbank_date, vbank_name }});  --%>
// //                // 가상계좌 발급 안내 문자메시지 발송
// //                SMS.send({ text: \`가상계좌 발급이 성공되었습니다. 계좌 정보 \${vbank_num} \${vbank_date} \${vbank_name}\`});
//                res.send({ status: "vbankIssued", message: "가상계좌 발급 성공" });
//                break;
//           case "paid": // 결제 완료
//             res.send({ status: "success", message: "일반 결제 성공" });
//             break;
//         }
//       } else { // 결제금액 불일치. 위/변조 된 결제
//         throw { status: "forgery", message: "위조된 결제시도" };
//       }
//     } catch (e) {
//       res.status(400).send(e);
//     }
//   });
	}
     

     

 
 </script>


<style type="text/css">

body {

	width: 1000px;
	margin:0 auto;
}
span{
	padding: 7px;
	maring: 50px;
}

table, #payment, #userinfo{
	width: 1000px;
	height: 200px;
	border: 1px solid black;

}

td {
	text-align: center;	
	

}
#payment {
	border: 1px solid black;
	margin-top:20px;
	margin-bottom: 70px;
	text-align: center;
}

#userinfo{
border: 1px solid black;
	margin-top:20px;
	margin-bottom: 70px;
}

</style>




</head>


<body>
<header>

	HOME TT
</header>

<h1>결제하기</h1>
<hr>

<div id="payinfoarea">
	<h3> 주문 사항 </h3>
	
	
	<table id="payinfo" >
		
		<tr>
				<th>회원 아이디</th>
				<th>회원 이름</th>
				<th>파티이름</th>
				<th>파티장 </th>
				<th>참여 금액</th>
		</tr>
		
		
		
		<tr>
			<td><%=party.getPartyName() %></td>
			<td><%=party.getPartyLeader() %></td>
			<td id="partypayment"><%=party.getPaymentAmount() %> 원</td>
			
	
	</table>
</div>

 <div id="userinfo"> 
 
	 <h3>결제자 정보</h3>
	
	 <span>회원 이름 : </span>
			<span><%=member.getUserName() %>  </span><br><br>
		<span>회원 아이디 : </span>
			<span><%=member.getUserId()%></span>
	
	<span>이메일 : </span>
	<span><%=member.getUserEmail() %></span>
	
	
	<span>연락처</span>
	<span><%=member.getUserPhone() %></span>
</div>


<form  action="/homett/payment" method="post" id="payarea">

<div>
<h3>총 결제 금액</h3>
</div>

<div id="payment">

   <span id="willpay">결제할 금액 </span>
   
	<span id="totalPayment"> <%=party.getPaymentAmount() %>원</span>



</div>

<div id="resultview">

</div>


</form>




<div>
	<button type="button" id="btnpay" onclick="requestPay()">결제하기</button>
	<button type="button" id="btncancel" onclick="location.href='/homett/joinparty'">취소하기</button>


</div>

<footer>

사업자 정보 

</footer>

</body>
</html>
package payment.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import payment.dto.Payment;
import payment.service.face.PaymentListServcie;
import payment.service.impl.PaymentListServiceImpl;


@WebServlet("/homett/paymentlist")
public class PaymentListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static PaymentListServcie paymentListService = new PaymentListServiceImpl();
	
	//mypage에서 결제내역 조회하기 누렀을 때 요청을 받음 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("/homett/paymentList - [GET]");
	
		
		
		req.getRequestDispatcher("/WEB-INF/mypage/paymentList.jsp").forward(req, resp);
	
	}
	
	
	//사용자가 기간을 설정하여 내역 조히하면  post로 요청함
 @Override
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		//테스트로 넣을 userno =2번 데이터
		session.setAttribute("user_no",2);

		
		//실제로 작동 될 코드 
		int userNo = (int)session.getAttribute("user_no");
		
		
	
		
		
		String startDate = req.getParameter("startdate");
		String endDate =req.getParameter("enddate");
		
		Date start = paymentListService.changestart(startDate);
		Date end = paymentListService.changeend(endDate);
		//기간과 이름을 으로 게시글 조회
		
		List<Payment> paymentList = paymentListService.getPaymentList(userNo,start,end);
		
		//model값을 view로 보내기
		req.setAttribute("paymentList", paymentList);
		
		System.out.println(paymentList);
		req.getRequestDispatcher("/WEB-INF/mypage/paymentListview.jsp").forward(req, resp);
	}

 

}

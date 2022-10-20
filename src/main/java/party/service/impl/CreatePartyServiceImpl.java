package party.service.impl;

import java.sql.Connection;

import javax.servlet.http.HttpServletRequest;

import common.JDBCTemplate;
import party.dao.face.CreatePartyDao;
import party.dao.impl.CreatePartyDaoImpl;
import party.dto.Party;
import party.service.face.CreatePartyService;


public class CreatePartyServiceImpl implements CreatePartyService {

	//DAO 객체
	private CreatePartyDao createpartyDao = new CreatePartyDaoImpl();
	
	@Override
	public Party setCreateParty(HttpServletRequest req) {
		
		Party party = new Party();
		
//		party.setPartyNo ( Integer.parseInt(req.getParameter("partyno")) );
		party.setPartyKind ( req.getParameter("PartyKind") );
		party.setPartyRule ( req.getParameter("PartyRule ") );
		party.setPartyName ( req.getParameter("PartyName") );
//		party.setPartyLeader ( req.getParameter("party_leader") );
		
		return party;
	}
	

	@Override
	public Party create(Party party) {
		
		//DB 연결 객체
		Connection conn = JDBCTemplate.getConnection();
		
		//party_seq의 nextval(nextpartyno) 조회하기
		int next = createpartyDao.selectNextPartyno(conn);
		System.out.println("CreatePartyService create() - next : " + next);
		
		//조회디ㅗㄴ enxtval party객체 저장하기
		party.setPartyNo(next);
		System.out.println("CreatePartyService create() - next : " + party);
		
		//완성된 party객체 DB에 삽ㅇㅂ
		int result = createpartyDao.insert(conn, party);
		
		System.out.println("CreatePartyService create() - 끝 ");

		
		//결과 처리하기 - 트랜잭션 관리
		if( result > 0 ) {	//DB 삽입 성공
			JDBCTemplate.commit(conn);
			return party;
			
		} else { //삽입 실패
			JDBCTemplate.rollback(conn);
			return null;
		}
		
	}

}

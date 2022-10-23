package partyBoard.service.face;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import partyBoard.dto.PartyBoard;

public interface PartyRoomBoardService {

	/** 
	 * 게시글 전체 조회
	 * 
	 * @return List<PartyBoard> - 게시글 전체 조회 목록
	 */
	public List<PartyBoard> getBrList();


	
	
	
	
	
	/**
	 *  전달된 요청 정보 객체를 이용하여
	 * 전달 파라미터 partyBoardNo, partyBoardWriter, partyBoardTitle을 추출한다
	 * 
	 * 추출한 데이터는 partyBoard DTO객체로 반환한다
	 * 
	 * @param req - 요청 정보 객체
	 * @return 전달 파라미터를 partyBoard객체로 한꺼번에 담아서 반환한다
	 */
	public PartyBoard getParam(HttpServletRequest req);


	public PartyBoard write(HttpServletRequest req);





















	

}

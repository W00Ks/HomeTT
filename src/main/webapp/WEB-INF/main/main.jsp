<%@page import="party.dto.Party"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ include file="../layout/header.jsp"  %> 
   
    
    <%List<Party> partyList = (List)request.getAttribute("mainlist"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomeTT</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js" ></script>
<script type="text/javascript">


</script>

<style type="text/css">

@import url('https://webfontworld.github.io/sunn/SUIT.css');
html, body, pre, h1, h2, h3, h4, h5, h6, dl, dt, dd, ul, li, ol, th, td, p, blockquote, form, fieldset, legend, menu, nav, section, hgroup, article, header, aside, footer, input, select, textarea, button {
    margin: 0;
    padding: 0;
    font-family: 'SUIT';
}



footer{
	border: 1px solid black;
    position: relative;
    top: 1300px;
    }
body{
		width: 1600px;
		margin: 0 auto;
	
	}

	
ul{
	list-style: none;
	text-align: center;
}

#contents_area{
    height: 423px;
    position: relative;
}
.recommend_contents{

    position: absolute;
    top: 157px;
    left: 207px;
    height: 300px;
    top: 74px;
    left: 24px;
    height: 398px;
    width: 1500px;
}

 .contents {

     float: left;
    position: relative;
    left: 0px;
    top: 27px;
    margin-right: -51px;
    width: 337px;
    height: 242px;
    margin-left: -1px;
}


.01{

    top: 357px;
}



.contents img{

	width: 286px;
    height: 350px;
    overflow: hidden;
	transition: scale(1);
}
.contents:hover img{
	transform : scale(1.2,1.2);
	transition-duration: 0.3s;

}

#homett{

 	top: -16px;
    position: relative;
    width: 1216px;
    color: #ffde59; 
	left: -105px;
    font-weight: bold;
    font-size: 33px;

  

}

#homett_area{
   position: relative;
    top: 64px;
    left: 166px;
    width: 1213px;

}
a{

	text-decoration: none;
}

a:visited {

	color:black;
}


.content_title:hover{
	color: #ffde59
}
.content_title{

	color: #666666;
    paddingg-top: 10px;
    position: absolute;
    text-align: center;
    font-size: 20px;
    padding-left: 20px];
    padding-top: 20px;
    left: 149px;
    top: 352px;
}






#line{
	top: 236px;
    width: 1218px;
    border: 1px solid black;
    position: relative;
    top: 300;
    left: 10px;

}





#popular_ott{
   position: relative;
    top: 272px;
    background-color: #efefef;
    height: 351px;

}

.ottname{

	float:left;
    margin: 0 50px;
    left: 164px;
    position: relative;
    width: 200px;
    height: 200px;
	

}
#popular_ott ul {

	float: left;
    position: absolute;
    top: 114px;
}

#ott_area{
  position: relative;
    top: 194px;
    left: 71px;
}

#ott{

    position: absolute;
    font-size: 33px;
    color: #ffde59;
    font-weight: 700;

}
.ottname>img{
	width: 150px;
	height:150px;
}


#partylist_area {
	float: left;
    position: relative;
    border: 1px solid #666666;
    margin: 45px;
    height: 346px;
    width: 275px;
}
.partylist .party {
	float:right;
	position: absolute;


}

#party {

    position: relative;
    top: 614px;
    left: 132px;
}


#party_now{
    position: relative;
    top: 600px;
    left: 66px;
}

#party_now span{

    font-size: 33px;
    font-weight: bold;
    color: #ffde59;
}

.partyName{

	margin:19px;
	font-size: 30px;
	color:white;
}
.partyName>span{
	background-color: #ffde59 ;
}
.party_li{
    margin: 17px;
    font-size: 20px;
    color: #666666;
    text-align: left;
}

	
.ottname.tving{
    height: 93px;
    position: relative;
    top:26px;
 
}

.ottname.tving>img{

    height: 100px;
}
</style>

</head>
<body>





<div id="homett_area">
	<span id="homett">HomeTT 추천 </span>
</div>
<div id="contents_area" >


	<ul class="recommend_contents">

		<li class="contents">
			<a href="http://program.tving.com/tvn/queensumbrella">
			<img src="http://img.lifestyler.co.kr/uploads/program/seditor/2022/09/f637977178222536498.jpg">
			<span class="content_title 01">슈룹</span>
			</a>
			</li>
		
		<li class="contents">
			<a href="https://www.tving.com/contents/P001613931?utm_source=Naver&utm_medium=Organic&utm_campaign=SERP">
			<img src="http://img.lifestyler.co.kr/uploads/program/seditor/2022/08/f637962481211509993.jpg">
			<span  class="content_title 02">작은아씨들</span>
			</a>
		</li>
		
		<li class="contents">
			<a href="https://movie.naver.com/movie/bi/mi/basic.naver?code=190695">
			<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=75&direct=true&src=https%3A%2F%2Fcsearch-phinf.pstatic.net%2F20220923_135%2F1663929089524ezlHE_JPEG%2Fcc3aa8184053d216ff475cb583174da1.jpg">
			<span class="content_title 03">환승연애</span>
			</a>
		</li>
		
		<li class="contents">
		<a href="https://www.netflix.com/title/81343748?source=naver">
			<img src=" https://search.pstatic.net/common?type=o&size=174x242&quality=75&direct=true&src=https%3A%2F%2Fcsearch-phinf.pstatic.net%2F20220902_274%2F1662110955038PohIe_JPEG%2F8d0822671c062180977ecbf54af88edb.jpg">
			<span class="content_title 04">수리남</span>
			</a>
		</li>
		<li class="contents"> <a href="https://www.youtube.com/watch?v=T3_RgSypJBw"> 
			<img src="https://search.pstatic.net/common?type=f&size=138x200&quality=75&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20220405_94%2F1649134635502Ko6SS_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2">
			<span class="content_title 05 05"> 모비우스</span>
			</a>
			</li>
	
	</ul>
</div>
<div id="ott_area">
	<span id="ott"> 인기 OTT</span>
</div>

<div id="popular_ott">



	<ul>
		<li class="ottname netflix"><img src = "https://images.ctfassets.net/4cd45et68cgf/7LrExJ6PAj6MSIPkDyCO86/542b1dfabbf3959908f69be546879952/Netflix-Brand-Logo.png?w=684&h=456"></li>
		<li class="ottname watcha"><img src= "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTk2IiBoZWlnaHQ9IjU5IiB2aWV3Qm94PSIwIDAgMTk2IDU5IiBmaWxsPSJub25lIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTc4LjI3MTMgMTIuOTE4NFYyMC43NzFIODYuMDk0NlY1Ni4xOTU2SDk1Ljg0MzJWMjAuNzcxSDEwMy4yMThWMTIuOTE4NEg3OC4yNzEzWk0xNTMuNDY0IDI5LjYzODlIMTQ2LjAwNFYxMi45NzYzSDEzNi4yODVWNTYuMjUzMkgxNDYuMDA0VjM3LjQ5MTJIMTUzLjQ2NFY1Ni4yNTMySDE2My4xODNWMTIuOTc2M0gxNTMuNDY0VjI5LjYzODlaTTExOS42MTMgMTIuNDUyN0gxMTcuOTJDMTA5LjE0MiAxMi40NTI3IDEwNS42MzEgMTYuOTMxNiAxMDUuNjMxIDI0LjIwM1Y0NC44NTIxQzEwNS42MzEgNTIuMTIzOSAxMDkuMTQyIDU2Ljc3NyAxMTguMTA4IDU2Ljc3N0gxMTkuODAxQzEyOC43MDQgNTYuNzc3IDEzMS44MzkgNTEuNDI1MiAxMzEuODM5IDQ1LjM3NjNWMzcuOTg5MUgxMjIuMzA5VjQ0Ljg1MjFDMTIyLjMwOSA0Ny40MTIzIDEyMS40MzEgNDguOTgyNiAxMTguOTIzIDQ4Ljk4MjZDMTE2LjQ3NyA0OC45ODI2IDExNS42NjMgNDcuNTI4NiAxMTUuNjYzIDQ0Ljc5NDZWMjQuMTQ0NkMxMTUuNjYzIDIxLjQxMDUgMTE2LjQ3NyAyMC4wMTUgMTE4LjkyMyAyMC4wMTVDMTIxLjQ5MyAyMC4wMTUgMTIyLjMwOSAyMS41MjY5IDEyMi4zMDkgMjQuMTQ0NlYyOS4xNDdIMTMxLjgzOVYyMy42MjFDMTMxLjgzOSAxNi40MDg3IDEyOC40NTMgMTIuNDUyNyAxMTkuNjEzIDEyLjQ1MjdaTTY4Ljc4MiA0MS40MjI0TDY1Ljk1NTggMjMuMzMxNkg2NC4yODQxTDYxLjQ1NzYgNDEuNDIyNEg2OC43ODJaTTcyLjMyNjIgMTIuOTE4NEw3OS45NzU5IDU2LjE5NTZINzEuMDkwMkw3MC4wMDkgNDkuMjc1M0g2MC4yMzA4TDU5LjE0OTMgNTYuMTk1Nkg1MC4yNjM2TDU3LjkxMzYgMTIuOTE4NEg3Mi4zMjYyWk0xODQuMzkxIDQxLjQyMjRMMTgxLjU2NCAyMy4zMzE2SDE3OS44OTNMMTc3LjA2NiA0MS40MjI0SDE4NC4zOTFaTTE4Ny45MzUgMTIuOTE4NEwxOTUuNTg1IDU2LjE5NTZIMTg2LjY5OUwxODUuNjE4IDQ5LjI3NTNIMTc1Ljg0TDE3NC43NTkgNTYuMTk1NkgxNjUuODczTDE3My41MjIgMTIuOTE4NEgxODcuOTM1WiIgZmlsbD0iI0ZGMDU1OCIvPgo8cGF0aCBmaWxsLXJ1bGU9ImV2ZW5vZGQiIGNsaXAtcnVsZT0iZXZlbm9kZCIgZD0iTTQyLjI1MDEgMC43NTc4MTJMMzkuMzUyMSA0Mi4yMDY3TDM4LjU3MzMgNDIuMjQ2NkwzMS42ODA3IDEyLjkyMjRIMjMuMTY0TDE4LjAwNzggNDMuMzA3MkwxNi45MDI3IDQzLjM2MzlMMTIuMjg2MiAxMi45MjI0SDAuNDE0MDYyTDExLjIxNTEgNTguMjM5N0wyMy4yODkxIDU3LjQ1NTdMMjcuMjE3MyAyOS4zMjY4TDI4LjM2OTQgMjkuMjY1M0wzMy42Mjk1IDU2Ljc3NjFMNDUuMTg1NSA1Ni4wMjA2TDU0LjM2MjUgMC43NTc4MTJINDIuMjUwMVoiIGZpbGw9IiNGRjA1NTgiLz4KPC9zdmc+Cg=="></li>
		<li class="ottname wavve"><img src="https://w.namu.la/s/95e5f2c35a862a7cc599dcb8b3c385a9cf67a45967350973baf9f77c62bca575107bfcf4b1318b1c95af5a8faeb2bb1cae918a7745feea0b42f1b8ba495ad75a020b96491c0d4d404328a6c3c213082093f4fd545bccf3ac5aeecee2673c3198"></li>
		<li class="ottname tving"><img src="https://play-lh.googleusercontent.com/SAHACJvEyKXM21vPswzPR1vtjp03AatvbyOAxc2pZRVQXnxrpQua5pAfQVvHP3QigU_q"></li>
	</ul>

</div>


<div id="party_now">

<span>현재 열린 파티</span>

</div>

<div id="party">	
<% for(int i=0; i<partyList.size(); i++) { %>
	  <div id="partylist_area">  
	 	<ul id="partylist">   
			<li class="partyName"><span><%=partyList.get(i).getPartyName() %></span></li>
			<li class="party_li partyKind"><%=partyList.get(i).getPartyKind() %></li>
			<li class="party_li Partyleader"><span>파티장 : </span> <span><%=partyList.get(i).getPartyLeader() %></span>
			<li class="party_li endDate"><span>파티만료일 : </span><%=partyList.get(i).getPartyEndDate() %></li>
			<li class="party_li period"><span>남은 파티 기간 : </span><%=partyList.get(i).getPartyPeriod() %></li>
			<li class="party_li partymember"><span>모집인원 : </span><%=partyList.get(i).getPartyMember() %>명</li>
			<li class="party_li paymentmount"><span>참여 금액 : </span> <%=partyList.get(i).getPaymentAmount() %>원</li>
		</ul>  
	 </div> 
<%} %>
	
</div>






 <footer>  

  푸터 영역  
 </footer>  

</body>
</html>
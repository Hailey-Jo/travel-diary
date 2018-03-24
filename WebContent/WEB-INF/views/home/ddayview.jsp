<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<div class="outer-container">

      <!--=============================================1년전오늘==================================================-->
      <div class="container single-page">
        <div class="row">
            <div class="col-12 col-lg-9">
				<div class="content-wrap">
                    <header class="entry-header">
                            <c:if test="${sddto.contents != null}">
		                        <div class="posted-date">
		                          	<i class="fa fa-plane"></i>D-day-${sddto.d_day}days,  ${sddto.contents}
		                        </div><!-- .posted-date -->
                            </c:if>
                            <c:if test="${sddto.contents == null}">
                          		<div class="posted-date">
                          		 	<i class="fa fa-plane"></i>등록된 dday가 없습니다. dday를 설정해주세요:)
                        		</div><!-- .posted-date -->
                            </c:if>

                        <h2 class="entry-title">Dday 리스트(아래 구글달력api)</h2>
                    </header><!-- .entry-header -->

                    <figure class="featured-image">
                        <img src="./viewcss/images/1.jpg" alt="">
                    </figure><!-- .featured-image -->
<!-- 
                    <div class="entry-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tincidunt mi. Nullam vel orci dui. Suspendisse sit amet laoreet neque. Fusce sagittis suscipit sem a consequat. Proin nec interdum sem. Quisque in porttitor magna, a imperdiet est. </p>
                    </div>.entry-content -->

                </div><!-- .content-wrap -->

			</div> 
			
			<!--==============================sidebar============================================-->
			<div class="col-12 col-lg-3">
                <div class="sidebar">
                    <div class="about-me">
                       <!--  <h2>D-day 설정</h2> -->

                        <p>
                        <form action="" id="DdayForm">
                        <input type="hidden" name="id" value="${login.id }">
                        <table>
                        	
                        	<tr>
                        	<td colspan="2">
							<div class="tags-list">
                        		<a href="#" style="width: 250px" onclick="url_dday()">Dday설정</a>
                    		</div>
                        	</td>
                        	</tr>
                        	<tr>
                        	<td colspan="2">
								<hr>
                        	</td>
                        	</tr>
                        	
                        	<tr>
                        	<td><div class="posted-date">출발일자</div></td>
                        	<td><input  type="date" name="startDay" style="width: 180px"></td>
                        	</tr>
                        	
                        	<tr>
                        	<td colspan="2">
								<hr>
                        	</td>
                        	</tr>
                        	
                        	<tr>
                        	<td>도착일자</td>
                        	<td><input  type="date" name="lastDay"  style="width: 180px" ></td>
                        	</tr>
                        	
                        	<tr>
                        	<td colspan="2">
								<hr>
                        	</td>
                        	</tr>
                        	
                        	 <tr>
                        	<td>내용</td>
                        	<td><input  type="text" name="contents" style="width: 180px" ></td>
                        	</tr>
                        	
                        	<tr>
                        	<td colspan="2">
								<hr>
                        	</td>
                        	</tr>
                        	
                        	
                        	
                        </table>
						</form>
                        </p>
                </div><!-- .sidebar -->
            </div><!-- .col -->
		 </div>
		</div>
		</div>
		<!--================================매거진============
		    <!--==========================================매거진===================================-->
</div>
<script type='text/javascript' src='viewcss/js/jquery.js'></script>
<script type='text/javascript' src='viewcss/js/swiper.min.js'></script>
<script type='text/javascript' src='viewcss/js/custom.js'></script>
<script>
setInterval(function(){ $("#nextBtn").click(); }, 3000);

function url_dday() {
	
	$("#DdayForm").attr({ "target":"_self", "action":"DdayWriteAf.do" }).submit();	
	
}
</script>
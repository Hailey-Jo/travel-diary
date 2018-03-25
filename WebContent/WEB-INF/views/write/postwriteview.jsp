<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<!--======================================map스타일============================================-->
 <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
      	width: 100%;
        height: 400px;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }

</style>
<!--======================================map스타일============================================-->    
    
<div class="outer-container">

    <div class="container single-page contact-page">
    				<br><br>
   					<header class="entry-header">
                        <h2 class="entry-title">여행기 작성</h2>
                    </header><!-- .entry-header --> 
        <div class="row">
        			
            <div class="col-12 col-lg-9" style="max-width: 55%">
                <div class="content-wrap" style="width: 400px">
                    

                        <form class="contact-form" action="postwriteAf.do" method="post">
                            	<input type="hidden" name="id" value="${login.id}">
                            	<input type="hidden" name="p_Num" value="${seq}"> <!--project시퀀스넘버-->
                            	<input type="hidden" name="map" value="" id="_latLng">  <!--위도 경도 가져오는 부분-->
                            	<table>
                            	<colgroup>
                            	<col width="50%"><col width="50%">
                            	</colgroup>
                            	<tr>
	                            	<td>
		                            	<select name="continent" style="width: 100%">
		                            		<option>대륙</option>
		                            	</select>
	                            	</td>
	                            	<td>
		                            	<select name="country" style="width: 100%">
		                            		<option>나라</option>
		                            	</select>
	                            	</td>
                            	</tr>
                            	<tr>
	                            	<td>
	                            		<input type="text" id="address" placeholder="도시를 검색해주세요" style="margin-bottom: 0px">
	                            	</td>
	                            	<td>
	                            		<input id="submit" type="button" value="검색하기" style="margin-top: 0px; width: 100%;">
	                            	</td>
                            	</tr>
                            	<!--위에서 도시 검색하면 여기로 들어옴 -->
                            	<tr>
                            		<td colspan="2">
                            			<input type="text" placeholder="city" id="_city" name="city" readonly="readonly">
                            		</td>
                            	</tr>
                            	<tr>
	                            	<td colspan="2">
	                            		 <textarea rows="18" cols="6" placeholder="contents" name="contents"></textarea>
	                            	</td>
	                            </tr>
	                            <tr>
	                            	<td>
	                            		<p id="star">★★★★★</p>
	                            	</td>
	                            	<td align="right">
	                            		<select name="grade">
		                            		<option>1</option>
		                            		<option>2</option>
		                            		<option>3</option>
		                            		<option>4</option>
		                            		<option selected="selected">5</option>
		                            	</select>
	                            	</td> 
	                             </tr>
	                             <tr>
	                            	<td colspan="2" align="right">
		                            	<input type="date" name="d_Date">
	                            	</td>
                            	</tr>
                            	<tr>
	                            	<td colspan="2">
		                            	<input type="file" name="img1">
		                            	<input type="file" name="img2">
		                            	<input type="file" name="img3">
		                            	<input type="file" name="img4">
	                            	</td>
                            	</tr>
                            	</table>
                                <input type="submit" value="포스트 작성" style="margin-top: 40px; width: 100%;">
                            </form><!-- .comment-form -->
                </div><!-- .content-wrap -->
            </div><!-- .col -->

            <div class="col-12 col-lg-3">
                <div class="sidebar">
                    <div class="recent-posts" style="width: 400px">
                        <div class="recent-post-wrap">
                            

                            <header class="entry-header">
                                <div class="posted-date">
                                    	도시 검색 및 입력
                                </div><!-- .entry-header -->

							  
                              <!--   <h3><a href="#">My fall in love story</a></h3>

                                <div class="tags-links">
                                    <a href="#">#winter</a>
                                    <a href="#">#love</a>
                                    <a href="#">#snow</a>
                                    <a href="#">#january</a>
                                </div>.tags-links -->
                            </header><!-- .entry-header -->
                            
                            <figure>
                                <!-- <img src="images/thumb-1.jpg" alt=""> -->
                                <!--지도-->
							    <div id="map"></div>
                            </figure>
                        </div><!-- .recent-post-wrap -->

                      
                    </div><!-- .recent-posts -->

                </div><!-- .sidebar -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->
</div><!-- .outer-container -->

<script type='text/javascript' src='viewcss/js/jquery.js'></script>
<script type='text/javascript' src='viewcss/js/swiper.min.js'></script>
<script type='text/javascript' src='viewcss/js/custom.js'></script>
<!--==================================지도를 위한 스크립트========================================-->
<script>
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -34.397, lng: 150.644}/*지도 처음 초기값 경도 지금은 호주 시드니로 되어있음 (아마도 나라 선택했을때 해당 경도, 위도 가져와서 세팅해줘야 할것 같다. 그럴려면 geocode가져오는 법을 좀더 생각해봐야함)*/
        });
        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function() {
          geocodeAddress(geocoder, map);
        });
      }

      function geocodeAddress(geocoder, resultsMap) {
        var address = document.getElementById('address').value;
        geocoder.geocode({'address': address}, function(results, status) {
        	//위도 경도 가져오기 
          var lat = results[0].geometry.location;

           //가져온 주소 밑에 시티에 입력
          $("#_city").val($("#address").val());
           //위도경도 value에 합쳐주기
          $("#_latLng").attr("value", lat);
          alert( $("#_latLng").attr("value"));
        	if (status === 'OK') {
            resultsMap.setCenter(results[0].geometry.location);
            var marker = new google.maps.Marker({
              map: resultsMap,
              position: results[0].geometry.location
            });
            
            
            alert("markerpositon:"+marker.position);

          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }

        });
        
      }
    </script>
    <!--the Key values of key Parameter is gittp92's. you should use yours. go to google '
    https://console.developers.google.com' and get your key value
    > 파라미터 key 값 제 코드라서 각자 받아서 써야해요  https://console.developers.google.com 여기들어가서 키값받으면 됨
      -->
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCxS09DQjD3WePPaHn8KNG5beXCleuL3Ls&callback=initMap">
    </script>

<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

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
	                            	<td colspan="2">
	                            		<input type="text" placeholder="city" name="city">
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
                            <figure>
                                <img src="images/thumb-1.jpg" alt="">
                            </figure>

                            <header class="entry-header">
                                <div class="posted-date">
                                    January 30, 2018
                                </div><!-- .entry-header -->

                                <h3><a href="#">My fall in love story</a></h3>

                                <div class="tags-links">
                                    <a href="#">#winter</a>
                                    <a href="#">#love</a>
                                    <a href="#">#snow</a>
                                    <a href="#">#january</a>
                                </div><!-- .tags-links -->
                            </header><!-- .entry-header -->
                        </div><!-- .recent-post-wrap -->

                        <div class="recent-post-wrap">
                            <figure>
                                <img src="images/thumb-2.jpg" alt="">
                            </figure>

                            <header class="entry-header">
                                <div class="posted-date">
                                    January 30, 2018
                                </div><!-- .entry-header -->

                                <h3><a href="#">My fall in love story</a></h3>

                                <div class="tags-links">
                                    <a href="#">#winter</a>
                                    <a href="#">#love</a>
                                    <a href="#">#snow</a>
                                    <a href="#">#january</a>
                                </div><!-- .tags-links -->
                            </header><!-- .entry-header -->
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

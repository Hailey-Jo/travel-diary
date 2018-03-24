<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>

<div class="outer-container">
    <div class="container single-page blog-page">
        <div class="row">
            <div class="col-12">
    
                <div class="content-area">

                    <div class="comments-form">
                        <div class="comment-respond">
                            <h3 class="comment-reply-title">${login.id}님 포스트를 입력해주세요</h3>

                            <form class="comment-form" action="projectwriteAf.do" method="post">
                            	<input type="hidden" name="id" value="${login.id}">
                                <input type="text" placeholder="Post Title" name="p_Title">
                                <input type="submit" value="프로젝트 작성">
                            </form><!-- .comment-form -->
                        </div><!-- .comment-respond -->
                    </div><!-- .comments-form -->
                </div><!-- .content-area -->
            </div><!-- .col -->
        </div><!-- .row -->
    </div><!-- .container -->
</div><!-- .outer-container -->


<script type='text/javascript' src='viewcss/js/jquery.js'></script>
<script type='text/javascript' src='viewcss/js/swiper.min.js'></script>
<script type='text/javascript' src='viewcss/js/custom.js'></script>

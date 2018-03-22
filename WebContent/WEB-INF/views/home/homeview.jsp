<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<div class="outer-container">
<div align="center">
  <div class="row">
            <div class="col-12">
                <div class="swiper-container hero-slider">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="hero-content flex justify-content-center align-items-center flex-column">
                                <img src="./viewcss/images/ad1.jpg" alt="">
                            </div><!-- .hero-content -->
                        </div><!-- .swiper-slide -->

                        <div class="swiper-slide">
                            <div class="hero-content flex justify-content-center align-items-center flex-column">
                                <img src="./viewcss/images/ad2.jpg" alt="">
                            </div><!-- .hero-content -->
                        </div><!-- .swiper-slide -->

                        <div class="swiper-slide">
                            <div class="hero-content flex justify-content-center align-items-center flex-column">
                                <img src="./viewcss/images/ad3.jpg" alt="">
                            </div><!-- .hero-content -->
                        </div><!-- .swiper-slide -->
                    </div><!-- .swiper-wrapper -->

                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>

                    <!-- Add Arrows -->
                    <div class="swiper-button-next flex justify-content-center align-items-center" id="nextBtn">
                        <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 27 44"><path d="M27,22L27,22L5,44l-2.1-2.1L22.8,22L2.9,2.1L5,0L27,22L27,22z"></path></svg></span>
                    </div>
                    <div class="swiper-button-prev flex justify-content-center align-items-center">
                        <span><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 27 44"><path d="M0,22L22,0l2.1,2.1L4.2,22l19.9,19.9L22,44L0,22L0,22L0,22z"></path></svg></span>
                    </div>
                </div><!-- .swiper-container -->
            </div><!-- .col -->
        </div><!-- .row -->
      
      <!--=============================================1년전오늘==================================================-->
      <div class="container single-page">
        <div class="row">
            <div class="col-12 col-lg-9">
				<div class="content-wrap">
                    <header class="entry-header">
                        <div class="posted-date">
                           1년전 오늘- January 30, 2018
                        </div><!-- .posted-date -->

                        <h2 class="entry-title">Why I love Winter: A short story</h2>

                        <div class="tags-links">
                            <a href="#">#winter</a>
                            <a href="#">#love</a>
                            <a href="#">#snow</a>
                            <a href="#">#january</a>
                        </div><!-- .tags-links -->
                    </header><!-- .entry-header -->

                    <figure class="featured-image">
                        <img src="./viewcss/images/1.jpg" alt="">
                    </figure><!-- .featured-image -->
<!-- 
                    <div class="entry-content">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tincidunt mi. Nullam vel orci dui. Suspendisse sit amet laoreet neque. Fusce sagittis suscipit sem a consequat. Proin nec interdum sem. Quisque in porttitor magna, a imperdiet est. </p>
                    </div>.entry-content -->

                    <footer class="entry-footer flex flex-column flex-lg-row justify-content-between align-content-start align-lg-items-center">
                        <ul class="post-share flex align-items-center order-3 order-lg-1">
                            <label>Share</label>
                            <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        </ul><!-- .post-share -->

                        <div class="comments-count order-1 order-lg-3">
                            <a href="#">2 Comments</a>
                        </div><!-- .comments-count -->
                    </footer><!-- .entry-footer -->
                </div><!-- .content-wrap -->

			</div> 
			
			<!--==============================sidebar============================================-->
			<div class="col-12 col-lg-3">
                <div class="sidebar">
                    <div class="about-me">
                        <h2>I’m Amelia Smith</h2>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent vel tortor facilisis, volutpat nulla placerat, tincidunt mi. Nullam vel orci dui. Suspendisse sit amet laoreet neque. Fusce sagittis suscipit sem a consequat. Proin nec interdum sem. Quisque in porttitor magna.</p>
                    </div><!-- .about-me -->

                    <div class="recent-posts">
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

                       

                    <div class="tags-list">
                        <a href="#">Music</a>
                        <a href="#">Love</a>
                    </div><!-- .tags-list -->

                </div><!-- .sidebar -->
            </div><!-- .col -->
		 </div>
		</div>
		</div>
		<!--================================매거진==================================-->
		
		<div class="outer-container" style="padding-bottom: 30px; padding-top: 30px;">
		        <div class="container-fluid">
		            <div class="row footer-recent-posts">
		                <div class="col-12 col-md-6 col-xl-3">
		                    <div class="footer-post-wrap flex justify-content-between">
		                        <figure>
		                            <a href="#"><img src="./viewcss/images/foot-1.jpg" alt=""></a>
		                        </figure>
		
		                        <div class="footer-post-cont flex flex-column justify-content-between">
		                            <header class="entry-header">
		                                <div class="posted-date">
		                                    vol01.<br>MLMLML
		                                </div><!-- .entry-header -->
		
		                                
		
		                                <div class="tags-links">
		                                    <a href="#">#winter</a>
		                                    <a href="#">#love</a>
		                                    <a href="#">#snow</a>
		                                    <a href="#">#january</a>
		                                </div><!-- .tags-links -->
		                            </header><!-- .entry-header -->
		                        </div><!-- .footer-post-cont -->
		                    </div><!-- .footer-post-wrap -->
		                </div><!-- .col -->
		
		                <div class="col-12 col-md-6 col-xl-3">
		                    <div class="footer-post-wrap flex justify-content-between">
		                        <figure>
		                            <a href="#"><img src="./viewcss/images/foot-2.jpg" alt=""></a>
		                        </figure>
		
		                        <div class="footer-post-cont flex flex-column justify-content-between">
		                            <header class="entry-header">
		                                <div class="posted-date">
		                                   vol02.<br>Jiwon
		                                </div><!-- .entry-header -->
		
		                                <div class="tags-links">
		                                    <a href="#">#winter</a>
		                                    <a href="#">#love</a>
		                                    <a href="#">#snow</a>
		                                    <a href="#">#january</a>
		                                </div><!-- .tags-links -->
		                            </header><!-- .entry-header -->
		
		                        </div><!-- .footer-post-cont -->
		                    </div><!-- .footer-post-wrap -->
		                </div><!-- .col -->
		
		                <div class="col-12 col-md-6 col-xl-3">
		                    <div class="footer-post-wrap flex justify-content-between">
		                        <figure>
		                            <a href="#"><img src="./viewcss/images/foot-3.jpg" alt=""></a>
		                        </figure>
		
		                        <div class="footer-post-cont flex flex-column justify-content-between">
		                            <header class="entry-header">
		                                <div class="posted-date">
		                                    vol03.<br>Daram_G
		                                </div><!-- .entry-header -->
		                                <div class="tags-links">
		                                    <a href="#">#winter</a>
		                                    <a href="#">#love</a>
		                                    <a href="#">#snow</a>
		                                    <a href="#">#january</a>
		                                </div><!-- .tags-links -->
		                            </header><!-- .entry-header -->

		                        </div><!-- .footer-post-cont -->
		                    </div><!-- .footer-post-wrap -->
		                </div><!-- .col -->
		
		                <div class="col-12 col-md-6 col-xl-3">
		                    <div class="footer-post-wrap flex justify-content-between">
		                        <figure>
		                            <a href="#"><img src="./viewcss/images/foot-4.jpg" alt=""></a>
		                        </figure>
		
		                        <div class="footer-post-cont flex flex-column justify-content-between">
		                            <header class="entry-header">
		                                <div class="posted-date">
		                                    vol04.<br>Matt
		                                </div><!-- .entry-header -->
		
		                                <div class="tags-links">
		                                    <a href="#">#winter</a>
		                                    <a href="#">#love</a>
		                                    <a href="#">#snow</a>
		                                    <a href="#">#january</a>
		                                </div><!-- .tags-links -->
		                            </header><!-- .entry-header -->
		                        </div><!-- .footer-post-cont -->
		                    </div><!-- .footer-post-wrap -->
		                </div><!-- .col -->
		            </div><!-- .row -->
		        </div><!-- .container-fluid -->
		    </div><!-- .outer-container -->
		    <!--==========================================매거진===================================-->
</div>
<script type='text/javascript' src='viewcss/js/jquery.js'></script>
<script type='text/javascript' src='viewcss/js/swiper.min.js'></script>
<script type='text/javascript' src='viewcss/js/custom.js'></script>
<script>
setInterval(function(){ $("#nextBtn").click(); }, 3000);
</script>

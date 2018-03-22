<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>
<html>
<title>layouts-tiles</title>

<tiles:insertAttribute name="header"/>

<link rel="stylesheet" type="text/css"  
	href="<%=request.getContextPath() %>/css/style.css"/>

</head>
<body>
<div align="center">
<div style="width: 80%;">
	<div >
		<div id="header">
			<tiles:insertAttribute name="top_inc"/>
<%-- 			<tiles:insertAttribute name="top_menu"/> --%>
		</div>
		
		<div id="main">

				<tiles:insertAttribute name="main"/>
						
		</div>
		
		<div id="footer">
			<tiles:insertAttribute name="bottom_inc"/>		
		</div>			
	</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
	$("#content_title_wrap div.title").css("background-image",
							"url('<%=request.getContextPath() %>/image/ico_sub_sb.gif')");	
});

</script>      
</body>
</html>

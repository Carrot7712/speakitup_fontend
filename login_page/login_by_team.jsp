<script type="text/javascript">
	//由<body>的onLoad事件處理函數觸發此函數
	function setFocusToUserId() {
		document.forms[0].userId.focus(); // 將游標放在userId欄位內
	}
</script>

</head>
<body onLoad="setFocusToUserId()">
	<c:set var="funcName" value="LOG" scope="session" />
	<jsp:include page="/fragment/topMenuTemp.jsp" />
	<c:if test="${ ! empty sessionScope.timeOut }">
		<!-- 表示使用逾時，重新登入 -->
		<c:set var="msg"
			value="<font color='red'>${sessionScope.timeOut}</font>" />
	</c:if>


	<div class="side_menu">
		<span><a href="">登入</a></span> <span><a href="">註冊</a></span>
	</div>

	<form class="box" action="<c:url value='/login.do' />" method="post"
		name="LoginForm">
		<h2>登入</h2>
		<div>
			<input type="text" name="userId" placeholder="帳號"
				value="${requestScope.user}${param.userId}">
			<p class="error">${ErrorMsgKey.AccountEmptyError}</p>
			<input type="password" name="password" placeholder="密碼"
				value="${requestScope.password}${param.pswd}">
			<p class="error">${ErrorMsgKey.PasswordEmptyError}</p>
		</div>

		<div class="rmButton">
			<input type="checkbox" name="rememberMe"
				<c:if test='${requestScope.rememberMe==true}'>      
                 checked='checked'   
              </c:if>
				value="true">記住我
		</div>
		<div class="error">${ErrorMsgKey.LoginError}</div>
		<input type="submit" name="" value="登入">
	</form>

</body>
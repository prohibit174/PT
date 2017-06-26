<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.twPc-div {
    background: #fff none repeat scroll 0 0;
    border: 1px solid #e1e8ed;
    border-radius: 6px;
    height: 200px;
    max-width: 340px; // orginal twitter width: 290px;
}
.twPc-bg {
    background-image: url("https://pbs.twimg.com/profile_banners/50988711/1384539792/600x200");
    background-position: 0 50%;
    background-size: 100% auto;
    border-bottom: 1px solid #e1e8ed;
    border-radius: 4px 4px 0 0;
    height: 95px;
    width: 100%;
}
.twPc-block {
    display: block !important;
}
.twPc-button {
    margin: -35px -10px 0;
    text-align: right;
    width: 100%;
}
.twPc-avatarLink {
    background-color: #fff;
    border-radius: 6px;
    display: inline-block !important;
    float: left;
    margin: -30px 5px 0 8px;
    max-width: 100%;
    padding: 1px;
    vertical-align: bottom;
}
.twPc-avatarImg {
    border: 2px solid #fff;
    border-radius: 7px;
    box-sizing: border-box;
    color: #fff;
    height: 72px;
    width: 72px;
}
.twPc-divUser {
    margin: 5px 0 0;
}
.twPc-divName {
    font-size: 18px;
    font-weight: 700;
    line-height: 21px;
}
.twPc-divName a {
    color: inherit !important;
}
.twPc-divStats {
    margin-left: 11px;
    padding: 10px 0;
}
.twPc-Arrange {
    box-sizing: border-box;
    display: table;
    margin: 0;
    min-width: 100%;
    padding: 0;
    table-layout: auto;
}
ul.twPc-Arrange {
    list-style: outside none none;
    margin: 0;
    padding: 0;
}
.twPc-ArrangeSizeFit {
    display: table-cell;
    padding: 0;
    vertical-align: top;
}
.twPc-ArrangeSizeFit a:hover {
    text-decoration: none;
}
.twPc-StatValue {
    display: block;
    font-size: 18px;
    font-weight: 1000;
    color : #0072bc;
    transition: color 0.15s ease-in-out 0s;
}
.twPc-StatLabel {
    color: #8899a6;
    font-size: 10px;
    letter-spacing: 0.02em;
    overflow: hidden;
    text-transform: uppercase;
    transition: color 0.15s ease-in-out 0s;
}
</style>

<body>
<div class="container">
<div class="row">
<div class="twPc-div">
    <a class="twPc-bg twPc-block"></a>

	<div>
		<div class="twPc-button">
            <a href="/blog/myBlog?u_id=${user.u_id }"><img src="${pageContext.request.contextPath}/resources/images/blog.png"></a>
		</div>

		<a title="Mert Salih Kaplan" href="" class="twPc-avatarLink">
			<img alt="Mert Salih Kaplan" src="/resources/upload/${user.u_img }"class="twPc-avatarImg">
		</a>

		<div class="twPc-divUser">
			<div class="twPc-divName">
				<a href="/message/main">${user.u_name }</a>
			</div>
			<span>
				<a href="/message/main">@<span>${user.u_address }</span></a>
			</span>
		</div>

		<div class="twPc-divStats">
			<ul class="twPc-Arrange">
				<li class="twPc-ArrangeSizeFit">
						<span class="twPc-StatLabel twPc-block">SEX</span>
						<span class="twPc-StatValue">${user.u_sex }</span>
				</li>
				<li class="twPc-ArrangeSizeFit">
						<span class="twPc-StatLabel twPc-block">AGE</span>
						<span class="twPc-StatValue">${user.u_birth }</span>
				</li>
				<li class="twPc-ArrangeSizeFit">
						<span class="twPc-StatLabel twPc-block">STYLE</span>
						<span class="twPc-StatValue">${user.u_style }</span>
				</li>
			</ul>
		</div>
	</div>
</div>
<!-- code end -->
</div>
</div>
<%-- ${user.u_id }
${user.u_name }
${user.u_birth }
${user.u_sex }
${user.u_img }
${user.u_style }
${user.u_status }
${user.u_img } --%>

</body>
</html>
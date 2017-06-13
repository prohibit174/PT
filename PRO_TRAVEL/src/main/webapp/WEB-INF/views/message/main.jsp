<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/message/message1.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/message/message2.css">

</head>
<div id="daumIndex">
    <a href="#transferToRegacy" onclick="$('#transferToRegacy').focus();return false;" rel="bookmark">Daum메일 이전 버전 사용하기 바로가기</a>
    <a href="#daumBody" onclick="$('#daumBody').attr('tabindex',-1).focus();return false;" rel="bookmark">메일 본문 바로가기</a>
    <a href="#daumGnb" onclick="$('#daumGnb').attr('tabindex',-1).focus();return false;" rel="bookmark">메일함 목록 바로가기</a>
    <a href="#daumSearch" onclick="$('#daumSearch').attr('tabindex',-1).focus();return false;" rel="bookmark">메일 검색 바로가기</a>
    <a href="#daumRelServices" onclick="$('#daumRelServices').attr('tabindex',-1).focus();return false;" rel="bookmark">관련서비스 바로가기</a>
    <a href="/static/accessibility.html" target="_blank" title="새창">Daum 메일 웹접근성 안내 바로가기</a>
</div>

<div id="daumWrap"><!-- 추후 스킨관련 class 적용 -->
    <div id="daumHead" role="navigation">
        <h1 class="tit_email">
            <a href="#" id="daumLogo" class="link_daum"><span class="img_mail ico_daum">Pro</span></a>
            <a href="#" id="daumServiceLogo" class="link_service"><span class="img_mail ico_service">쪽지</span></a>
        </h1>
        <h2 id="daumGnb" class="screen_out">메일함 목록</h2>
        <div class="write_mail">
            <button type="button" class="btn_comm btn_write"><span class="img_mail">쪽지쓰기</span></button>
            <button type="button" class="btn_comm btn_my"><span class="img_mail">내게쓰기</span></button>
            <span class="bg_bar"></span>
        </div>

        <div id="folder" class="snb_mail">
            <div class="scroll">
                <div class="menu_group">
                    <ul class="list_menu system_folder">
                    </ul>
                </div>
                <div class="menu_group">
                    <div class="accordion_group">
                        <div class="on"><!-- 클래스 on추가 시 메뉴 열림 활성화 -->
                            <div class="box_menu">
                                <a href="#none" class="link_menu" data-cookie="FU"><span class="img_mail ico_arrow"></span>내 쪽지함</a>
                                    <span class="img_mail setting_mail">
                                        <button type="button" class="img_mail btn_add">메일함 추가</button>
                                        <button type="button" class="img_mail btn_setup">메일함 설정</button>
                                    </span>
                            </div>
                            <ul class="list_menu user_folder">
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="menu_group">
                    <div class="accordion_group">
                        <div class="on"><!-- 클래스 on추가 시 메뉴 열림 활성화 -->
                            <div class="box_menu">
                                <a href="#none" class="link_menu" data-cookie="FC"><span class="img_mail ico_arrow"></span>분류 메일함</a>
                            </div>
                            <ul class="list_menu categorized_folder">

                            </ul>
                        </div>
                    </div>
                </div>
                <div class="menu_group lst">
                    <div class="accordion_group accordion_more">
                        <div class="on"><!-- 클래스 on추가 시 메뉴 열림 활성화 -->
                            <div class="box_menu">
                                <a href="#none" class="link_menu" data-cookie="FM"><span class="img_mail ico_arrow"></span>더보기</a>
                            </div>
                            <ul class="list_menu">
                                <li id="readExternalMail" tabindex="0"><a href="javascript:;" class="link_mail">외부 메일 확인</a></li>
                                <li id="showSmartWorkView" tabindex="0"><a href="javascript:;" class="link_mail">Daum 스마트워크</a></li>
                                <li id="showSetting" tabindex="0" class="menu_sub"><a href="#setting/Basic" class="link_mail link_setting">환경설정</a></li>
                                <li id="addressBook" tabindex="0" class="menu_sub">
                                    <span class="menu_bar"></span>
                                    <a href="http://addrbook.daum.net/aplus/web/top.do" class="link_mail" target="_blank">주소록</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="head_banner" id="leftBanner"></div>
            </div>
        </div>
    </div>
    <hr class="hide">

	<div id="daumContent">
        <div class="util_mail inside_open">
            <div id="daumRelServices">
                <div id="wrapMinidaum"></div>
            </div>
            <a id="transferToRegacy" href="javascript:;" class="link_transfer"><span class="ico_transfer">이전 메일버전으로 전환하기</span></a>
            <div id="searchMails" class="mail_search">
                <h2 id="daumSearch" class="screen_out">메일 검색</h2>
                <button type="button" class="btn_searchon"><span class="img_mail ico_search">검색</span></button>
                <div class="box_search">
                    <form id="compactSearchForm" role="search">
                        <fieldset class="bg_search fld_mail">
                            <legend class="screen_out">메일 검색</legend>
                            <label for="searchQuery" class="lab_keyword">메일 검색</label>
                            <input type="text" class="tf_keyword" id="searchQuery" name="query" title="검색어 입력" autocomplete="off" spellcheck="false">
                            <button type="submit" class="btn_search"><span class="img_mail ico_search">검색</span></button>
                            <span class="txt_bar"></span>
                            <button type="button" class="btn_detail" title="상세검색"><span class="txt">상세</span></button>
                        </fieldset>
                    </form>
                    <a href="javascript:;" class="btn_close close_search"><span class="img_mail">검색창 닫기</span></a>
                    <span class="bg_opacity"></span>
                </div>
                <span class="minidaum_cover_layer"></span>
            </div>
        </div>
        <div id="mArticle" role="main">
            <div id="mailListView" class="cont_main"><!-- 좌우분할 side_type 상하분할 vertical_type 적용 -->
                <!--  mailToolbar   -->
                <div id="mailToolbar" class="cont_toolbar">
                </div>
                <!--  mailToolbar   -->
                <div id="mailSplitArea" class="cont_mail">
                    <h2 id="daumBody" class="screen_out">메일 본문</h2>

                    <h3 id="folderTitle" class="screen_out">받은메일함 목록</h3>
                    <!--  메일목록 -->
                    <div id="mailList" class="view_area">
                        <div class="scroll">
                            <div class="inner_list">
                                <div id="infoNotice" class="admin_content"></div>
                                <ul class="list_mail"></ul>
                                <!-- 페이징  -->
                                <div class="wrap_paging"></div>
                                <!--// 페이징  -->
                            </div>
                        </div>
                    </div>
                    <!--// 메일목록 -->
                    <!-- 메일읽기 -->
                    <div id="mailViewer" class="view_area" style="display:none" tabindex="-1"></div>
                    <!--// 메일읽기 -->
                    <div id="MailsLoadingIndicator" style="display:none">
                        <div class="layer_box layer_popup data_loading">
                            <div class="inner_layer">
                                <strong class="screen_out">목록을 로딩중입니다.</strong>
                                <strong class="tit_wait"><img src="//i1.daumcdn.net/mimg/10mail/loading.gif" width="17" height="17" class="img_loading" alt="">잠시만 기다려주세요</strong>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="composer"></div>
        </div>
        <!--// mArticle -->
        <hr class="hide">

    </div>
    <!-- // daumContent -->
</div>


<script async src="//go.daum.net/jsa_minidaum_pc.daum" charset="utf-8" type="text/javascript"></script>
</body>
</html>

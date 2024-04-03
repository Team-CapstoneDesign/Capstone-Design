<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>����������</title>
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="../css/mypage.css">
    <link hrefn="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

</head>

<body>
       <%
        String id = (String) session.getAttribute("sid");
        if (id == null) {
    %>
        <script>
            alert("�α����� �ʿ��� �����Դϴ�!");
	           window.location.href = "./member/login.jsp";
        </script>
    <%
        }
    %>
    <div id="wrap">
        <div id="header">
            <div class="formbox">
                <a href="./index.jsp">
                    <h1 class="logo">
                        <span class="blind">����</span>
                    </h1>
                </a>
                <div class="topmenuWrap">
                    <ul class="topmenu">
                        <li>
                            <a>ĸ�� Ŀ����</a>
                        </li>
                        <li>
                            <a>���� ĸ��</a>
                            <div class="submenu">
                                <ul id="productMenu">
                                    <li><a href="">��������</a></li>
                                    <li><a href="">�ñ״�ó</a></li>
                                    <li><a href="">������</a></li>
                                    <li><a href="">��������</a></li>
                                    <li><a href="">��ī����</a></li>
                                    <li><a href="">�������� / ��Ŀ��</a></li>
                                    <li><a href="">���� ��Ű��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a>Ŀ�� �̾߱�</a>
                            <div class="submenu">
                                <ul id="productMenu">
                                    <li><a href="#">ĸ�� ���� ����</a></li>
                                    <li><a href="#">���μҰ�</a></li>
                                    <li><a href="#">Ŀ�� ���� ������</a></li>
                                    <li><a href="#">���� ��︮�� Ŀ��</a></li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <a>���� �̾߱�</a>
                            <div class="submenu">
                                <ul id="productMenu">
                                    <li><a href="#">�� ���� ����</a></li>
                                    <li><a href="#">�� ���� ȯ�氡ġ</a></li>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="./member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="./member/insertMember.jsp">ȸ������</a></span> <span
						class="quick_menu"><a href="">��������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="./member/mainlogout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="">����������</a></span> <span
						class="quick_menu"><a href="">��������</a></span>
					<%
						}
					%>
				</div>
            </div>
        </div>
        <div class="mypage_wrap">
            <div class="Layout_container__2ryFm">
			<%
			

		 String DB_URL="jdbc:mysql://localhost:3306/dojan";  
 	     String DB_ID="multi";  
  		 String DB_PASSWORD="abcd";
 	 
		 Class.forName("org.gjt.mm.mysql.Driver"); 
 		 Connection con = DriverManager.getConnection(DB_URL, DB_ID, DB_PASSWORD);
	  
		 request.setCharacterEncoding("euc-kr");

		 String ctNo = session.getId();
	
		 String jsql = "select * from member where memId = ?";
		 PreparedStatement pstmt = con.prepareStatement(jsql);
		 pstmt.setString(1, id);

		 ResultSet rs = pstmt.executeQuery();
		 rs.next(); 
         String name = rs.getString("memName");



         String jsql2 = "SELECT COUNT(ordRec) AS ordRecCount, COUNT(*) AS totalColumns FROM orderinfo WHERE memId = ?";
         PreparedStatement pstmt2 = con.prepareStatement(jsql2);
         pstmt2.setString(1, id);

         ResultSet rs2 = pstmt2.executeQuery();
         rs2.next();

         int recCount = rs2.getInt("ordRecCount");
		 int totalOrd = rs2.getInt("totalColumns");



         String jsql3 = " SELECT COUNT(*) AS rowCount FROM wish WHERE ctNo = ?";
         PreparedStatement pstmt3 = con.prepareStatement(jsql3);
         pstmt3.setString(1, ctNo);

         ResultSet rs3 = pstmt3.executeQuery();
         rs3.next();
         
		 int wishCount = rs3.getInt("rowCount");


		 


    

		 %>

                �� ���� ������ ����
                <%= name%>
                ��, <br>
                �ݰ����ϴ�!<br><br>
                <button class="ProfileSection_btn_setting__vsvWM N=myh.set">�� ���� ����</button>


                <div class="CardSection_card_section__yIeTK CardSection_my_menu__JaXF2" data-cy="card_section">
                    <div class="SubmenuSection_menu_wrap__viS3H">
                        <div class="SubmenuSection_my_menu_top__5E47e" data-cy="submenu_top_section"
                            data-menu-length="4">
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.order" data-cy="submenu_link"
                                href="https://new-m.pay.naver.com/historybenefit/paymenthistory?serviceGroup=SHOPPING&amp;page=1">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="none"
                                        class="SubmenuSection_svg_icon__n5gPQ" data-cy="submenu_icon">
                                        <path stroke="#121212" stroke-width="1.6"
                                            d="M6 5.7c0-.644.471-1.167 1.053-1.167h17.895c.58 0 1.052.523 1.052 1.167v21c0 .644-.471 1.167-1.052 1.167h-.412c-.436 0-.799-.306-1.085-.634a1.504 1.504 0 0 0-1.135-.533c-.484 0-.918.242-1.207.622-.223.292-.531.545-.898.545s-.676-.253-.898-.545c-.29-.38-.723-.622-1.208-.622-.484 0-.917.242-1.207.622-.222.292-.53.545-.898.545-.367 0-.676-.253-.898-.545-.29-.38-.723-.622-1.207-.622-.484 0-.918.242-1.207.622-.223.292-.532.545-.899.545s-.675-.253-.897-.545c-.29-.38-.723-.622-1.208-.622-.445 0-.848.204-1.135.533-.286.328-.65.634-1.085.634h-.411C6.47 27.867 6 27.344 6 26.7v-21Z"
                                            clip-rule="evenodd"></path>
                                        <path stroke="#121212" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="1.6"
                                            d="m16 12.346-1.969 6.77h-.396l-2.31-6.77m4.675 0 1.969 6.77h.395l2.31-6.77M9.99 15.282h12.02">
                                        </path>
                                    </svg>
                                </div>
                                �ֹ�Ƚ��<em class="SubmenuSection_number__JoIZ1 SubmenuSection_is_zero__vkCU_"><%=totalOrd%></em>
                            </a>
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.cart" data-cy="submenu_link"
                                href="https://m.shopping.naver.com/cart">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="none"
                                        class="SubmenuSection_svg_icon__n5gPQ" data-cy="submenu_icon">
                                        <path stroke="#121212" stroke-linecap="round" stroke-width="1.6"
                                            d="M20.528 14.287V9.288c0-2.5-2.026-4.526-4.526-4.526v0a4.526 4.526 0 0 0-4.526 4.526v4.999">
                                        </path>
                                        <path stroke="#121212" stroke-linecap="round" stroke-linejoin="round"
                                            stroke-width="1.6"
                                            d="M25.877 10.857H6.123a1 1 0 0 0-.975 1.224l2.93 12.755A1.5 1.5 0 0 0 9.542 26H22.46a1.5 1.5 0 0 0 1.462-1.164l2.93-12.755a1 1 0 0 0-.974-1.224Z">
                                        </path>
                                    </svg>
                                </div>
                                ���ø���Ʈ<em class="SubmenuSection_number__JoIZ1 SubmenuSection_is_zero__vkCU_"><%= wishCount%></em>
                            </a>
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.review" data-cy="submenu_link"
                                href="https://m.shopping.naver.com/my/writable-reviews">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="none"
                                        class="SubmenuSection_svg_icon__n5gPQ" data-cy="submenu_icon">
                                        <path stroke="#121212" stroke-miterlimit="10" stroke-width="1.6"
                                            d="M23.186 4.58H8.822a3.478 3.478 0 0 0-3.475 3.475V26.36c0 1.24 1.5 1.859 2.374.984l2.85-2.85a2.319 2.319 0 0 1 1.64-.677h10.98a3.478 3.478 0 0 0 3.476-3.476V8.055A3.478 3.478 0 0 0 23.19 4.58h-.005Z">
                                        </path>
                                        <path stroke="#121212" stroke-width="1.6"
                                            d="M15.82 8.996a.2.2 0 0 1 .357 0l1.479 2.906a.2.2 0 0 0 .147.107l3.22.508a.2.2 0 0 1 .111.34l-2.308 2.303a.2.2 0 0 0-.056.173l.513 3.22a.2.2 0 0 1-.289.21l-2.904-1.482a.2.2 0 0 0-.182 0l-2.904 1.482a.2.2 0 0 1-.289-.21l.513-3.22a.2.2 0 0 0-.057-.173l-2.307-2.304a.2.2 0 0 1 .11-.339l3.221-.508a.2.2 0 0 0 .147-.107l1.479-2.906Z">
                                        </path>
                                    </svg>
                                </div>
                                ����Ʈ
                                <em class="SubmenuSection_number__JoIZ1">
                                   50,000<span class="SubmenuSection_unit__0lQ7f">��</span>
                                </em>
                            </a>
                            <a class="SubmenuSection_btn_item__SRyp_ N=myh.coupon" data-cy="submenu_link"
                                href="https://new-m.pay.naver.com/coupon/main/usable?category=all">
                                <div class="SubmenuSection_icon_area__dJ4Hu">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="none"
                                        class="SubmenuSection_svg_icon__n5gPQ" data-cy="submenu_icon">
                                        <path fill="#121212"
                                            d="m27.501 20.303.1-.794-.1.794ZM4.8 9A1.2 1.2 0 0 1 6 7.8V6.2A2.8 2.8 0 0 0 3.2 9h1.6Zm0 14.667V9H3.2v14.667h1.6Zm1.2 1.2a1.2 1.2 0 0 1-1.2-1.2H3.2a2.8 2.8 0 0 0 2.8 2.8v-1.6Zm20 0H6v1.6h20v-1.6Zm1.2-1.2a1.2 1.2 0 0 1-1.2 1.2v1.6a2.8 2.8 0 0 0 2.8-2.8h-1.6Zm0-2.833v2.833h1.6v-2.833h-1.6Zm.4-1.325a3.201 3.201 0 0 1-2.8-3.175h-1.6a4.801 4.801 0 0 0 4.202 4.763l.198-1.588Zm-2.8-3.175a3.201 3.201 0 0 1 2.8-3.176l-.198-1.588a4.801 4.801 0 0 0-4.202 4.764h1.6ZM27.2 9v2.833h1.6V9h-1.6ZM26 7.8A1.2 1.2 0 0 1 27.2 9h1.6A2.8 2.8 0 0 0 26 6.2v1.6Zm-20 0h20V6.2H6v1.6Zm21.6 5.358c.612-.076 1.2-.585 1.2-1.325h-1.6a.29.29 0 0 1 .077-.199.208.208 0 0 1 .125-.064l.198 1.588Zm1.2 7.676c0-.74-.588-1.248-1.2-1.325l-.198 1.588a.208.208 0 0 1-.125-.064.29.29 0 0 1-.077-.199h1.6Z">
                                        </path>
                                        <path stroke="#121212" stroke-dasharray="1 2" stroke-linecap="round"
                                            stroke-width="1.6" d="M10.667 8v16"></path>
                                    </svg>
                                </div>
                                ��Ȱ��<em class="SubmenuSection_number__JoIZ1"><%= recCount%></em>
                            </a>
                        </div>

                    </div>
                </div>
                <div class="CardSection_card_section__yIeTK" data-cy="card_section">

                    <div class="OrderDeliverySection_list_order__0upVF">
                        <div class="RoundedWrapper__Wrapper-w9wnao-0 dzEqxt">
                            <div class="WarrantyCard__CardWrapper-mj30e3-0 jlXZQ">
                                <div class="WarrantyCard__DescWrapper-mj30e3-1 doDmmI">
                                    <div class="WarrantyCard__ImageWrapper-mj30e3-2 jlrvfN"></div>
                                    <div class="WarrantyCard__WarrantyInfo-mj30e3-3 eybslm">
                                        <div class="WarrantyCard__DateWithWarrantyNumber-mj30e3-4 VDSvq">�����Ϸ��� 2023. 06.
                                            27
                                        </div>
                                        <a href="/pledges/6869332"><span
                                                class="WarrantyCard__Title-mj30e3-5 cQXRRi">����ó�� ���۵��� ������ �� ģ��, '��'
                                                ����&amp;�ð�����</span></a>
                                        <ul class="RewardItems__Items-sc-6cegjp-0 glqfra">
                                            <li><span class="RewardItems__Title-sc-6cegjp-2 gkHbvS">1 ��</span></li><span
                                                class="RewardItems__DateWrapper-sc-6cegjp-1 dqbKMS"><span>28,500�� ���� �Ϸ�</span>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="CardSection_card_section__yIeTK" data-cy="card_section">
                    <div class="CardSection_head_area__UjvOi">
                        <h2 class="CardSection_title__0vhx3 CardSection_skeleton__yZWur" data-cy="title">���� �����</h2>
                        <span class="CardSection_number__0bBcs CardSection_skeleton__yZWur"></span>
                    </div>
                    <div class="KeepStoreSection_flicking_wrap__KzBNS">
                        <div class="KeepStoreSection_flicking_area__UcW_D">
                            <div class="KeepStore_list_item__LJ8_U KeepStore_skeleton__lAGzF">
                                <div class="link_item">
                                    <div class="KeepStore_thumb__LfJ8F"></div>
                                    <div class="KeepStore_name__R4KYb"></div>
                                </div>
                            </div>
                            <div class="KeepStore_list_item__LJ8_U KeepStore_skeleton__lAGzF">
                                <div class="link_item">
                                    <div class="KeepStore_thumb__LfJ8F"></div>
                                    <div class="KeepStore_name__R4KYb"></div>
                                </div>
                            </div>
                            <div class="KeepStore_list_item__LJ8_U KeepStore_skeleton__lAGzF">
                                <div class="link_item">
                                    <div class="KeepStore_thumb__LfJ8F"></div>
                                    <div class="KeepStore_name__R4KYb"></div>
                                </div>
                            </div>
                            <div class="KeepStore_list_item__LJ8_U KeepStore_skeleton__lAGzF">
                                <div class="link_item">
                                    <div class="KeepStore_thumb__LfJ8F"></div>
                                    <div class="KeepStore_name__R4KYb"></div>
                                </div>
                            </div>
                            <div class="KeepStore_list_item__LJ8_U KeepStore_skeleton__lAGzF">
                                <div class="link_item">
                                    <div class="KeepStore_thumb__LfJ8F"></div>
                                    <div class="KeepStore_name__R4KYb"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="CardSection_more_area__gEN_K">
                        <a class="CardSection_link_more__D5XWm N=mys.more"
                            href="https://m.shopping.naver.com/my/keep-stores">
                            ���� ����� ��� ����
                            <!-- -->
                            ��� ����
                            <svg xmlns="http://www.w3.org/2000/svg" width="6" viewBox="0 0 6 12"
                                class="CardSection_svg_more__NGVZB">
                                <path fill="none" stroke="#7A7A7A" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="0.8" d="m.5 11 5-5-5-5"></path>
                            </svg>
                        </a>
                    </div>
                </div>
                <div class="CardSection_card_section__yIeTK" data-cy="card_section">
                    <div class="CardSection_head_area__UjvOi">
                        <h2 class="CardSection_title__0vhx3 CardSection_skeleton__yZWur" data-cy="title">���� ��ǰ</h2>
                        <span class="CardSection_number__0bBcs CardSection_skeleton__yZWur"></span>
                    </div>
                    <div class="ZzimProductsSection_zzim_items__JRX7_">
                        <div class="ZzimCategory_zzim_item__BuS_N">
                            <a class="ZzimCategory_head_area__ITLKb">
                                <h2 class="ZzimCategory_title__wpGlN ZzimCategory_skeleton__PcHUd"></h2>
                            </a>
                            <div class="ScrollableCommonProducts_flicking_wrap__qsVL0">
                                <div class="ScrollableCommonProducts_flicking_area__5pJ1G">
                                    <div
                                        class="ScrollableCommonProducts_product_item__4oBG_ ScrollableCommonProducts_skeleton__jysvq">
                                        <div class="link_item">
                                            <div class="ScrollableCommonProducts_thumb__l7PBq"></div>
                                            <div class="ScrollableCommonProducts_info_area__oZNC0">
                                                <div class="ScrollableCommonProducts_price__I2bI7"></div>
                                                <div class="ScrollableCommonProducts_name__MTpce"></div>
                                                <div class="ScrollableCommonProducts_info_label___0DSe"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="ScrollableCommonProducts_product_item__4oBG_ ScrollableCommonProducts_skeleton__jysvq">
                                        <div class="link_item">
                                            <div class="ScrollableCommonProducts_thumb__l7PBq"></div>
                                            <div class="ScrollableCommonProducts_info_area__oZNC0">
                                                <div class="ScrollableCommonProducts_price__I2bI7"></div>
                                                <div class="ScrollableCommonProducts_name__MTpce"></div>
                                                <div class="ScrollableCommonProducts_info_label___0DSe"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="ScrollableCommonProducts_product_item__4oBG_ ScrollableCommonProducts_skeleton__jysvq">
                                        <div class="link_item">
                                            <div class="ScrollableCommonProducts_thumb__l7PBq"></div>
                                            <div class="ScrollableCommonProducts_info_area__oZNC0">
                                                <div class="ScrollableCommonProducts_price__I2bI7"></div>
                                                <div class="ScrollableCommonProducts_name__MTpce"></div>
                                                <div class="ScrollableCommonProducts_info_label___0DSe"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="ScrollableCommonProducts_product_item__4oBG_ ScrollableCommonProducts_skeleton__jysvq">
                                        <div class="link_item">
                                            <div class="ScrollableCommonProducts_thumb__l7PBq"></div>
                                            <div class="ScrollableCommonProducts_info_area__oZNC0">
                                                <div class="ScrollableCommonProducts_price__I2bI7"></div>
                                                <div class="ScrollableCommonProducts_name__MTpce"></div>
                                                <div class="ScrollableCommonProducts_info_label___0DSe"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div
                                        class="ScrollableCommonProducts_product_item__4oBG_ ScrollableCommonProducts_skeleton__jysvq">
                                        <div class="link_item">
                                            <div class="ScrollableCommonProducts_thumb__l7PBq"></div>
                                            <div class="ScrollableCommonProducts_info_area__oZNC0">
                                                <div class="ScrollableCommonProducts_price__I2bI7"></div>
                                                <div class="ScrollableCommonProducts_name__MTpce"></div>
                                                <div class="ScrollableCommonProducts_info_label___0DSe"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="CardSection_more_area__gEN_K">
                        <a class="CardSection_link_more__D5XWm N=myz.more"
                            href="https://m.shopping.naver.com/my/keep-products">
                            ���� ��ǰ ��� ����
                            <!-- -->
                            ��� ����
                            <svg xmlns="http://www.w3.org/2000/svg" width="6" viewBox="0 0 6 12"
                                class="CardSection_svg_more__NGVZB">
                                <path fill="none" stroke="#7A7A7A" stroke-linecap="round" stroke-linejoin="round"
                                    stroke-width="0.8" d="m.5 11 5-5-5-5"></path>
                            </svg>
                        </a>
                    </div>
                </div>

            </div>
        </div>
        <footer>
            <div class="footer1">
                <ul>
                    <li><a href="">ȸ��Ұ�</a></li>
                    <li><a href="">�̿���</a></li>
                    <li><a href="">����������޹�ħ </a></li>
                    <li><a href="">��������</a></li>
                </ul>
            </div>
            <div class="footer2">
                <div class="call_center">
                    <p class="footer_title">������������</p>
                    <p class="footer_text">
                        <span class="tell"><img src="../images/tell.png" alt=""></span><span
                            id="tell_number">02-456-789</span><br>
                        <span class="footer_bold">���ð� </span>10:00 ~ 18:00<br>
                        <span class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br>
                        ��ǰ �ȳ��� �ش� ��ǰ �������� �������ּ���
                    </p>
                </div>

                <div class="company">
                    <p class="footer_title">ȸ�� ����</p>
                    <p class="footer_text">
                        <span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br>
                        <span class="footer_bold">��ǥ</span>������<br>
                        <span class="footer_bold">��ǥ��ȭ</span>02-456-789<br>
                        <span class="footer_bold">�ּ�</span>����Ư���� ������<br>
                        <span class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
                    </p>
                </div>

                <div class="delivery">
                    <p class="footer_title">��۾ȳ�</p>
                    <p class="footer_text">
                        CJ �������(TEL 1588-4321)<br>
                        ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br>
                        <a href="#">��� ��Ȳ Ȯ���ϱ�></a>
                    </p>
                </div>
            </div>
            <div class="footer3">
                <div class="shopping_menu">
                    <p class="footer_title">���� �޴�</p>
                    <p class="footer_text">
                        <a href="#" id="shopping_text">���� ���� ����</a><br>
                        <a href="#" id="shopping_text">���� �Խ���</a>
                    </p>
                </div>
                <div class="SNS">
                    <p class="footer_title">SNS</p><br>
                    <div class="SNSicon">
                        <div><a href="#"><img src="../images/insta.png" alt=""></a></div>
                        <div><a href="#"><img src="../images/twitter.png" alt=""></a></div>
                        <div><a href="#"><img src="../images/youtube.png" alt=""></a></div>
                        <div><a href="#"><img src="../images/naver.png" alt=""></a></div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script src="../JS/navEvent.js"></script>

</body>

</html>
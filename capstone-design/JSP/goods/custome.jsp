<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="../../css/style.css">
<link rel="stylesheet" href="../../css/custome.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.rawgit.com/InventPartners/Checkbox2Button/32fbe6d/css/checkbox2button.css" />

<script language="javascript" src="../dojan_js_package.js">
</script>

<title>ĸ�� Ŀ����</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
	%>
	<div class="wrap">
		<div id="header">
			<div class="formbox">
			<a href="../index.jsp">
					<h1 class="logo">
						<span class="blind">����</span>
					</h1>
					</a>
				<div class="topmenuWrap">
					<ul class="topmenu">
						<li><a href="./custome.jsp">ĸ�� Ŀ����</a></li>
						<li><a>���� ĸ��</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="./viewProduct.jsp?ctgType=season">��������</a></li>
									<li><a href="./viewProduct.jsp?ctgType=signature">�ñ״�ó</a></li>
									<li><a href="./viewProduct.jsp?ctgType=blending">����</a></li>
									<li><a href="./viewProduct.jsp?ctgType=original">��������</a></li>
									<li><a href="./viewProduct.jsp?ctgType=decaffeine">��ī����</a></li>
									<li><a href="./viewProduct.jsp?ctgType=beverage">��������
											/ ��Ŀ��</a></li>
								</ul>
							</div></li>
						<li><a>Ŀ�� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../review/review_list.jsp">ĸ�� ���� ����</a></li>
									<li><a href="../sub/coffee_bean.jsp">���μҰ�</a></li>
									<li><a href="../sub/coffee_recipe.jsp">Ŀ�� ���� ������</a></li>
								</ul>
							</div></li>
						<li><a>���� �̾߱�</a>
							<div class="submenu">
								<ul id="productMenu">
									<li><a href="../sub/brand_intro.jsp">�� ���� ����</a></li>
									<li><a href="../sub/brand_recycle.jsp">�� ���� ȯ�氡ġ</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>
				<div class="nav_top">
					<%
						if (id == null) {
					%>
					<span class="quick_menu"><a href="../member/login.jsp">�α���</a></span>
					<span class="quick_menu"><a href="../member/insertMember.jsp">ȸ������</a></span>
					<%
						} else {
					%>
					<span class="quick_menu"><a href="../member/logout.jsp">�α׾ƿ�</a></span>
					<span class="quick_menu"><a href="../mypage.jsp">����������</a></span> <span
						class="quick_menu"><a href="../cart/showcart.jsp">������</a></span>
					<%
						}
					%>
				</div>
			</div>
		</div>
		<div class="customeWrap custome_main">

      <div id="start-screen">
        <div class="startContent">

          <div class="background" id="startBackground">
            <img id="content1" class="start_content content1" src="../../images/custome_start1.png" alt="">
            <img id="content2" class="start_content content2" src="../../images/custome_start2.png" alt="">
            <img id="content3" class="start_content content3" src="../../images/custome_start3.png" alt="">
            <img id="content4" class="start_content content4" src="../../images/custome_start4.png" alt="">

            <img id="content5" class="start_content content5" src="../../images/custome_start5.png" alt="">
            <img id="content6" class="start_content content6" src="../../images/custome_start6.png" alt="">
            <img id="content7" class="start_content content7" src="../../images/custome_start7.png" alt="">
          </div>
          <img id="slider_left" class="section_slider" src="../../images/section_slider.png" alt="">
          <img id="slider_right" class="section_slider" src="../../images/section_slider.png" alt="">

          <div class="cont">

            <button id="startBtn">ĸ�� �����</button>
          </div>
        </div>
      </div>
      <div class="custome_section" id="select-coffee" style="display: none;">
        <div class="cont">
          <div class="coffee_content">
            <div class="coffee_left">
              <ul>
                <li class="customeRadio" id="coffee-checkbox">

                </li>
              </ul>
            </div>
            <div class="coffee_right">
              <h2 class="base_h2">���̽� ���� �����ϱ�</h2>
              <div>
                Ŀ�� ���� �߽��� �� ���̽� ���θ� �������ּ���.<br>���κ� ��� ���� �ٸ� ���� �������ּ���.
              </div>
              <div class="coffee_svg">
                <?xml version="1.0" encoding="utf-8"?>
                <!-- Generator: Adobe Illustrator 22.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
                  y="0px" viewBox="0 0 310 215" style="enable-background:new 0 0 310 215;" xml:space="preserve">
                  <style type="text/css">
                    .st0 {
                      fill: none;
                      stroke: #fff;
                      stroke-width: 8;
                      stroke-miterlimit: 10;
                    }

                    .st1 {
                      fill: none;
                      stroke: #fff;
                      stroke-width: 19;
                      stroke-miterlimit: 10;
                    }

                    .st2 {
                      fill: #7F4F21;
                    }

                    .st3 {
                      fill: #C9A063;
                    }
                  </style>
                  <g id="���̾�_1">
                  </g>
                  <g id="���̾�_2">
                    <path class="st0" d="M132.7,6.8H27v105.7c0,24.4,11.4,50.6,31.2,64.9c7.5,5.4,16.2,9.5,26,10.9v20.2h48.5h48.5v-20.2
        c9.8-1.3,18.5-5.5,26-10.9c19.8-14.3,31.2-40.4,31.2-64.9V6.8H132.7z" />
                    
                    <path class="st2" d="M221.5,102h-88.9h-0.8H43c0,0-5.2,40.3,22.2,62c9.2,7.3,20.8,11,32.5,11h34.1h0.8h34.1
        c11.8,0,23.3-3.7,32.5-11C226.7,142.3,221.5,102,221.5,102z" />

                  </g>
                </svg>



              </div>

              <div id="select-coffee-explain"></div>
              <div class="coffee-progress">
                <div class="custome-progress-wrap">
                  <h3 class="progress-name">
                    <strong>�ٵ�</strong>
                  </h3>
                  <div class="progress">
                    <div id="body_progress" class="progress-bar color-1" role="progressbar" aria-valuenow="65"
                      aria-valuemin="0" aria-valuemax="100" style="width:85%">
                    </div>
                  </div>
                </div>
                <div class="custome-progress-wrap">
                  <h3 class="progress-name">
                    <strong>���</strong>
                  </h3>
                  <div class="progress">
                    <div id="smell_progress" class="progress-bar color-2" role="progressbar" aria-valuenow="50"
                      aria-valuemin="0" aria-valuemax="100" style="width:50%">
                    </div>
                  </div>
                </div>
                <div class="custome-progress-wrap">
                  <h3 class="progress-name">
                    <strong>�Ÿ�</strong>
                  </h3>
                  <div class="progress">
                    <div id="taste1_progress" class="progress-bar color-3" role="progressbar" aria-valuenow="30"
                      aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    </div>
                  </div>
                </div>
                <div class="custome-progress-wrap">
                  <h3 class="progress-name">
                    <strong>����</strong>
                  </h3>
                  <div class="progress">
                    <div id="taste2_progress" class="progress-bar color-4" role="progressbar" aria-valuenow="30"
                      aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    </div>
                  </div>
                </div>
                <div class="custome-progress-wrap">
                  <h3 class="progress-name">
                    <strong>�ܸ�</strong>
                  </h3>
                  <div class="progress">
                    <div id="taste3_progress" class="progress-bar color-5" role="progressbar" aria-valuenow="30"
                      aria-valuemin="0" aria-valuemax="100" style="width:30%">
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="buttonWrap">
              <button class="custome_btn" id="coffee-next">����</button>
            </div>
          </div>
        </div>

      </div>

      <div class="custome_section" id="select-blend" style="display: none;">
        <div class="cont">
          <div class="blend_content">
            <div class="blend_top">
              <div class="blend_top_left">
                <h2 class="blend_h2">���� ���� �����ϱ�</h2>
                <div>
                  �ΰ��� �̻��� ���ΰ� ȥ�յǾ� ���� ���� ���� ǳ�������ϴ�.<br><span>�ִ� 3���� ����</span>�� ������ �� �ְ�, �������� ���� ��� ���̽� ���ηθ� ���۵˴ϴ�.
                </div>
                <div class="select_blend_list">
                  <ul>
                    <div class="blendSelect selectOption1"></div>
                    <div class="blendSelect selectOption2"></div>
                    <div class="blendSelect selectOption3"></div>

                  </ul>
                </div>
              </div>
              <div class="blend_top_right">
                <div class="blend_svg">
                  <?xml version="1.0" encoding="utf-8"?>
                  <!-- Generator: Adobe Illustrator 22.0.1, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
                  <svg version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px" y="0px" viewBox="0 0 310 215" style="enable-background:new 0 0 310 215;"
                    xml:space="preserve">
                    <style type="text/css">
                      .st0 {
                        fill: none;
                        stroke: #000000;
                        stroke-width: 13;
                        stroke-miterlimit: 10;
                      }

                      .st1 {
                        fill: none;
                        stroke: #000000;
                        stroke-width: 19;
                        stroke-miterlimit: 10;
                      }

                      .st2 {
                        fill: #7F4F21;
                      }

                      .st3 {
                        fill: #C9A063;
                      }
                    </style>
                    <g id="���̾�_2">
                      <path class="st0" d="M132.7,6.8H27v105.7c0,24.4,11.4,50.6,31.2,64.9c7.5,5.4,16.2,9.5,26,10.9v20.2h48.5h48.5v-20.2
                        c9.8-1.3,18.5-5.5,26-10.9c19.8-14.3,31.2-40.4,31.2-64.9V6.8H132.7z" />
                      <path class="st2" d="M221.5,102h-88.9h-0.8H43c0,0-5.2,40.3,22.2,62c9.2,7.3,20.8,11,32.5,11h34.1h0.8h34.1
                        c11.8,0,23.3-3.7,32.5-11C226.7,142.3,221.5,102,221.5,102z" />
                      <rect x="42.6" y="54" class="st3" width="179.3" height="44.7" />
                    </g>
                  </svg>
                </div>
              </div>

            </div>
            <div class="blend_bottom">
              <!--js�� Ŀ�� üũ�ڽ� �߰�-->
              <ul>
                <li>
                  <div id="blend-checkbox">
                    <input type="checkbox" id="blend_null" name="blendCoffee" value="���� ����" onchange="updateSelectedOptions('���þ���')">
                    <label for="blend_null" id="blendNULL"></label>

                    <input type="checkbox" id="����� ���佺blend" name="blendCoffee" value="����� ���佺"
                      onchange="updateSelectedOptions('����� ���佺')">
                    <label for="����� ���佺blend"  id="blend1"></label>

                    <input type="checkbox" id="�ݷҺ�� ��������blend" name="blendCoffee" value="�ݷҺ�� ��������"
                      onchange="updateSelectedOptions('�ݷҺ�� ��������')">
                    <label for="�ݷҺ�� ��������blend" id="blend2"></label>

                    <input type="checkbox" id="�ڸ���ī ��縶��ƾblend" name="blendCoffee" value="�ڸ���ī ��縶��ƾ"
                      onchange="updateSelectedOptions('�ڸ���ī ��縶��ƾ')">
                    <label for="�ڸ���ī ��縶��ƾblend" id="blend3"></label>

                    <input type="checkbox" id="��Ƽ���Ǿ� ����ü��blend" name="blendCoffee" value="��Ƽ���Ǿ� ����ü��"
                      onchange="updateSelectedOptions('��Ƽ���Ǿ� ����ü��')">
                    <label for="��Ƽ���Ǿ� ����ü��blend" id="blend4"></label>

                    <input type="checkbox" id="�ڽ�Ÿ��ī ������blend" name="blendCoffee" value="�ڽ�Ÿ��ī ������"
                      onchange="updateSelectedOptions('�ڽ�Ÿ��ī ������')">
                    <label for="�ڽ�Ÿ��ī ������blend" id="blend5"></label>

                    <input type="checkbox" id="ź�ڴϾ� AAblend" name="blendCoffee" value="ź�ڴϾ� AA"
                      onchange="updateSelectedOptions('ź�ڴϾ� AA')">
                    <label for="ź�ڴϾ� AAblend" id="blend6"></label>

                    <input type="checkbox" id="���� ��ī ��Ÿ��blend" name="blendCoffee" value="���� ��ī ��Ÿ��"
                      onchange="updateSelectedOptions('���� ��ī ��Ÿ��')">
                    <label for="���� ��ī ��Ÿ��blend" id="blend7"></label>

                    <input type="checkbox" id="�Ͽ��� �ڳ�blend" name="blendCoffee" value="�Ͽ��� �ڳ�"
                      onchange="updateSelectedOptions('�Ͽ��� �ڳ�')">
                    <label for="�Ͽ��� �ڳ�blend" id="blend8"></label>

                    <input type="checkbox" id="���� ���� ��Ƽ����blend" name="blendCoffee" value="���� ���� ��Ƽ����"
                      onchange="updateSelectedOptions('���� ���� ��Ƽ����')">
                    <label for="���� ���� ��Ƽ����blend" id="blend9"></label>

                    <input type="checkbox" id="�ĳ��� ���̻�blend" name="blendCoffee" value="�ĳ��� ���̻�"
                      onchange="updateSelectedOptions('�ĳ��� ���̻�')">
                    <label for="�ĳ��� ���̻�blend" id="blend10"></label>

                    <input type="checkbox" id="����ٵ���blend" name="blendCoffee" value="����ٵ���"
                      onchange="updateSelectedOptions('����ٵ���')">
                    <label for="����ٵ���blend" id="blend11"></label>

                    <input type="checkbox" id="�ɳ�AAblend" name="blendCoffee" value="�ɳ�AA"
                      onchange="updateSelectedOptions('�ɳ�AA')">
                    <label for="�ɳ�AAblend" id="blend12"></label>
                    <input type="checkbox" id="�ɳ�AAblend" name="blendCoffee" value="�ɳ�AA"
                      onchange="updateSelectedOptions('�ɳ�AA')">
                    <label for="�ɳ�AAblend" id="blend13"></label>
                    <input type="checkbox" id="�ɳ�AAblend" name="blendCoffee" value="�ɳ�AA"
                      onchange="updateSelectedOptions('�ɳ�AA')">
                    <label for="�ɳ�AAblend" id="blend14"></label>
                  </div>
                </li>
              </ul>

            </div>
          </div>
          <div class="blend_buttonWrap">
            <button class="custome_btn" id="blend-prev">����</button>
            <button class="custome_btn" id="blend-next">����</button>
          </div>
        </div>


      </div>
      <div class="custome_section" id="select-roasting" style="display: none;">
        <div class="cont">
          <div class="roasting_content">
            <h2 class="roasting_h2">�ν��� �ܰ� ����</h2>
            <div class="roasting_explanation">
              ���θ� ���� �������� Ŀ���� ���� ���� ���̵˴ϴ�.<br><span>8�ܰ��� �ν���</span>�� ������ �� �ְ�, �ν��� �ܰ谡 ���������� <span>�� ���� �����ǰ� ��̰� �پ��ϴ�</span>.
            </div>
            <div class="roastingPost" id="roasting-info">
              <div class="roasting_Num">
                <span id="roastingNum"></span>
              </div>

              <span id="roastingName"></span> <span id="roastingEx"></span>
            </div>
            <div class="roastingSlide">
            *�巡�׸� ���� �ν��� �ܰ踦 ������ �� �ֽ��ϴ�.
              <input class="roasting-step" id="roasting-range" type="range" name="roasting" id="temp3" min="1" max="8"
                value="5" step="1" list="markers" required />
              <datalist id="markers">
                <option value="1" label="1"></option>
                <option value="2"></option>
                <option value="3"></option>
                <option value="4"></option>
                <option value="5"></option>
                <option value="6"></option>
                <option value="7"></option>
                <option value="8"></option>
              </datalist>

            </div>
            <div class="roasting_btn">
              <button class="custome_btn" id="roasting-prev">����</button>
              <button class="custome_btn" id="roasting-next">����</button>
            </div>
          </div>
        </div>

      </div>
      <div class="custome_section" id="select-machine" style="display: none;">
        <div class="cont">
            <div class="machine_content">
            <h2 class="machine_h2">Ŀ�� �ӽ� ����</h2>
            <div class="machineRadio" id="machine-radio">
              <input type="radio" id="nespresso-original" name="machine" value="�׽������� ��������">
              <label for="nespresso-original" id="nespressoOriginal__"></label>

              <input type="radio" id="nespresso-vertuo" name="machine" value="�׽������� �����">
              <label for="nespresso-vertuo" id="nespressoVertuo__"></label>

              <input type="radio" id="dolceGusto" name="machine" value="��ü������">
              <label for="dolceGusto" id="dolceGusto__"></label>

              <input type="radio" id="illy" name="machine" value="�ϸ�">
              <label for="illy" id="illy__"></label>

              <input type="radio" id="kanu" name="machine" value="ī��">
                <label for="kanu" id="kanu__"></label>

              <input type="radio" id="keurig" name="machine" value="ť����">
              <label for="keurig" id="keurig__"></label>
              
            </div>
            <div class="machine_buttonWrap">
              <button class="custome_btn" id="machine-prev">����</button>
              <button class="custome_btn" id="machine-next" onclick="customeResult()">�ϼ�</button>
            </div>
          </div>

        </div>

      </div>
      <form name="result" action="../cart/csIncart.jsp" class="custome_section" id="select-result"
        style="display: none;">
        <div class="result_background3">
          <img id="resultBackground3" src="../../images/result_background3.png" alt="">
        </div>
        <div class="result_background1"></div>
        <div class="result_background2"></div>
        <img id="result_deco1" src="../../images/model02_5.png" alt="">
        <img id="result_deco2" src="../../images/result_deco.png" alt="">
        <img id="result_deco3" src="../../images/result_deco.png" alt="">
        <div class="result_background">
          <div class="cont">
          <div class="result_content">
            <h2 class="result_h2">ĸ�� Ŀ�� �ϼ�</h2>
            <div id="custome_result">
              <p>
                ���̽� ����:
              </p>
              <p>
                <span id="custome_base"></span>
              </p>
              <p>
                ���� ����:
              </p>
              <p>
                <span id="custome_blend"></span>
              </p>
              <p>
                ���� �ܰ�:
              </p>
              <p>
                <span id="custome_roasting"></span>�ܰ�
              </p>
              <p>
                Ŀ�� �ӽ�:
              </p>
              <p>
                <span id="custome_machin"></span>
              </p>
              <p>
                ����:
              </p>
              <p>
                <span id="custome_price"></span>
              </p>
              <p>
                ���� ����
              </p>
              <p>
                <input class="custome_qty" type="number" name="customeQty" min="1" max="10" value="1">
              </p>
              <div class="coffeeNaming">
                <input class="personalCoffeeName" type="text" name="customeName" placeholder="Ŀ���� �̸��� �����ּ���">

              </div>

            </div>
            
            <div id="hiddenInputRadio"></div>
            <div class="result_buttonWrap">
              <a class="custome_btn" href="./custome.jsp" id="reset">ó������
                ���ư���</a>
              <button class="custome_btn" onclick="checkCustomeValue()">��ٱ��Ͽ�
                ���</button>
            </div>
          </div>

        </div>
      </div>
      </form>
    </div>

    
		<footer>
			<div class="footer1">
				<ul>
					<li><a href="">ȸ��Ұ�</a></li>
					<li><a href="">�̿���</a></li>
					<li><a href="">����������޹�ħ </a></li>
					<li><a href="">������</a></li>
				</ul>
			</div>
			<div class="footer2">
				<div class="call_center">
					<p class="footer_title">����������</p>
					<p class="footer_text">
						<span class="tell"><img src="../../images/tell.png" alt=""></span><span
							id="tell_number">02-456-789</span><br> <span
							class="footer_bold">���ð� </span>10:00 ~ 18:00<br> <span
							class="footer_bold">���ڻ�� </span>īī���� �÷��� ģ�� ���<br> ��ǰ �ȳ��� �ش�
						��ǰ �������� �������ּ���
					</p>
				</div>

				<div class="company">
					<p class="footer_title">ȸ�� ����</p>
					<p class="footer_text">
						<span class="footer_bold">ȸ���</span>(��)���� / �� ���� ����<br> <span
							class="footer_bold">��ǥ</span>������<br> <span
							class="footer_bold">��ǥ��ȭ</span>02-456-789<br> <span
							class="footer_bold">�ּ�</span>����Ư���� ������<br> <span
							class="footer_bold">�̸���</span>alslalsl_06@naver.com<br>
					</p>
				</div>

				<div class="delivery">
					<p class="footer_title">��۾ȳ�</p>
					<p class="footer_text">
						CJ �������(TEL 1588-4321)<br> ��� ��Ȳ�� �ù�� Ȩ�������� �������ּ���<br> <a
							href="#">��� ��Ȳ Ȯ���ϱ�></a>
					</p>
				</div>
			</div>
			<div class="footer3">
				<div class="shopping_menu">
					<p class="footer_title">���� �޴�</p>
					<p class="footer_text">
						<a href="#" id="shopping_text">���� ���� ����</a><br> <a href="#"
							id="shopping_text">���� �Խ���</a>
					</p>
				</div>
				<div class="SNS">
					<p class="footer_title">SNS</p>
					<br>
					<div class="SNSicon">
						<div>
							<a href="#"><img src="../../images/insta.png" alt=""></a>
						</div>
						<div>
							<a href="#"><img src="../../images/twitter.png" alt=""></a>
						</div>
						<div>
							<a href="#"><img src="../../images/youtube.png" alt=""></a>
						</div>
						<div>
							<a href="#"><img src="../../images/naver.png" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="../../JS/navEvent.js"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script
		src="https://cdn.rawgit.com/InventPartners/Checkbox2Button/32fbe6d/js/checkbox2button.min.js"></script>

	<script src="../../JS/custome.js"></script>
	<script>
    AOS.init({
      duration: 1000,
    });
  </script>
</body>
</html>
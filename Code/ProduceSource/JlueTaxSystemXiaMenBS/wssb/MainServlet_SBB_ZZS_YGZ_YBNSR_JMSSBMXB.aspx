﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainServlet_SBB_ZZS_YGZ_YBNSR_JMSSBMXB.aspx.cs" Inherits="JlueTaxSystemXiaMenBS.wssb.MainServlet_SBB_ZZS_YGZ_YBNSR_JMSSBMXB" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>《增值税减免税申报明细表》</title>

    <script language="javascript" src="/wssb/wssb/public/js/jquery-1.7.2.min.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/text.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/pub.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/commonNew.js?t=20180206"></script>
    <script language="javascript" src="/wssb/wssb/public/js/wssbCommon.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/fixWidthForSelect.js"></script>
    <script language="javascript" src="/wssb/wssb/zzsybnsr_ygz/SBB_ZZS_YGZ_YBNSR_JMSSBMXB.js?t=20180206"></script>
    <script type="text/javascript" src="/js/initinfo.js"></script>


    <link rel="stylesheet" href="/wssb/wssb/public/style/link.css" type="text/css">

    <style type="text/css">
        .noBorderForInput {
            width: 100%;
            text-align: center;
            border: 0px;
            background-color: transparent;
        }
    </style>

    <script src="public_zzs.js" type="text/javascript" ></script>

    <script type="text/javascript">
        var result = [<%=return_json %>]
        var TABLE_ACTION = "<%=TABLE_ACTION %>";

        $(function () {

            showTableActionDisplay()
            showDate()

            if (result[0]["TABLE_NAME"]) {
                addRow()
            }

            function addRow() {

                window.event.ctrlKey = true
                window.event.keyCode = 45
                nTbyRowNo = 0
                nCellNo = 2

                var Count1, Count2
                var ArrXMLX = result[0]["XMLX"].split(',')
                $.each(ArrXMLX, function (index, el) {
                    if (el == "2") {
                        Count1 = index
                        Count2 = ArrXMLX.length - index
                        return false
                    }
                })

                for (var i = 0; i < Count1 - 2; i++) {
                    objTBY = document.getElementById("SB_FLZL4_JS_MX")
                    keyDownInsert_calculate('js')
                }
                for (var i = 0; i < Count2 - 4; i++) {
                    objTBY = document.getElementById("SB_FLZL4_MS_MX")
                    keyDownInsert_calculate('ms')
                }

                for (var i = 1; i <= 5; i++) {
                    var InputName = "COL" + i + "";
                    var Arr = result[0][InputName].split(',')
                    $.each(Arr, function (index, el) {
                        document.getElementsByName(InputName)[index].value = el
                    })
                }

                var XZDMJMC = "XZDMJMC";
                var ArrXZDMJMC = result[0][XZDMJMC].split(',')
                $.each(ArrXZDMJMC, function (index, el) {
                        document.getElementsByName(XZDMJMC)[index].value = el
                    })
                
            }
        })
    </script>

</head>

<body marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" onload="initJmssbPage();">
    <table width="1000px" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <!--菜单列-->
            <!--<td width="161" align="left" height="100%">
    
    </td>-->

            <!--内容列-->
            <td height="100%" valign="top" align="center">
                <br>
                <form name="xform" method="POST">
                    <table width="96%" border="0" style="margin-left: 10px;">
                        <tr>
                            <td align="center"><font size="3"><strong>《增值税减免税申报明细表》</strong></font></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <script language="javascript" src="/wssb/wssb/public/js/configstyle.js"></script>


                                <table width="100%" border="0" align="center">
                                    <tr>
                                        <td width="40%">纳税人识别号：<span id="NSRSBH"></span></td>
                                        <td colspan="2">纳税人名称：<span id="NSRMC"></span></td>
                                    </tr>
                                    <tr>
                                        <td width="40%">所属时期：<span id="SSRQQ">20180801</span> 至 <span id="SSRQZ">20180831</span></td>
                                        <td width="30%">填表日期：<span id="TBRQ"></span></td>
                                        <td align="right">金额单位：元(列至角分)</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                    <!-- 由于写了三个body，导致点击框选择行之后不会在不同的body间切换 -->
                    <table id="inputTable" width="96%" color="#E8ECE8" border="1" cellpadding="0" cellspacing="0" class="SBB" bordercolor='#C4C6C4' bordercolordark='#ffffff' bordercolorlight="#999999" style="margin-left: 10px;">
                        <thead>
                            <tr>
                                <td align="center" colspan="7">一、减税项目</td>
                            </tr>
                            <tr>
                                <td width="25%" align="center" rowspan="2">减税性质代码及名称</td>
                                <td width="5%" align="center" rowspan="2">栏次</td>
                                <td width="12%" align="center">期初余额</td>
                                <td width="12%" align="center">本期发生额</td>
                                <td width="12%" align="center">本期应抵减税额</td>
                                <td width="12%" align="center">本期实际抵减<br />
                                    税额</td>
                                <td width="12%" align="center">期末余额</td>
                            </tr>
                            <tr>
                                <td align="center">1</td>
                                <td align="center">2</td>
                                <td align="center">3=1+2</td>
                                <td align="center">4≤3</td>
                                <td align="center">5=3-4</td>
                            </tr>
                            <tr>
                                <td align="center">合计
                                </td>
                                <td align="center">
                                    <input type="text" class="noBorderForInput" name="HC" readonly="readonly" value="1" />

                                    <!-- 隐藏的数据域 -->
                                    <input type="hidden" value="20180801" name="SSSQ_Q" />
                                    <input type="hidden" value="20180831" name="SSSQ_Z" />
                                    <input type="hidden" value="威纳仕（厦门）酒业有限公司" name="NSRMC" />
                                    <input type="hidden" value="91350200MA2Y10EC4K" name="NSRSBH" />
                                    <input name="XMLX" type="hidden" value="1" />
                                    <input type="hidden" name="XZDMJMC" value="HJH" />
                                    <input type="hidden" name="CANDEL" value="1" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL1" id="wzbb1" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL2" id="Text1" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL3" id="Text2" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL4" id="Text3" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL5" id="Text4" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                            </tr>
                        </thead>
                        <tbody id="SB_FLZL4_JS_MX_BKSC" repeat="true">
                        </tbody>
                        <tbody id="SB_FLZL4_JS_MX" onkeydown="doOnKeyDown();keyDownInsert_calculate('js');" repeat="true">

                            <tr>
                                <td align="center" style="line-height: 20px;">
                                    <!-- 已备案的性质代码以文本的方式进行展示 -->

                                    <select name="XZDMJMC" style="width: 100%;" onmouseover="FixWidthForSelsct(this);">
                                        <option value=""></option>
                                        <option value="0001011705|SXA031900839" title='0001011705 | 个人出租住房应按照5%的征收率减按1.5%计算应纳增值税 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件2第一条第（九）款第6项'>0001011705 | 个人出租住房应按照5%的征收率减按1.5%计算应纳增值税 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件2第一条第（九）款第6项</option>
                                        <option value="0001011805|SXA031900831" title='0001011805 | 退役士兵从事个体经营扣减增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第三条第（一）款第1项'>0001011805 | 退役士兵从事个体经营扣减增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第三条第（一）款第1项</option>
                                        <option value="0001011808|SXA031900832" title='0001011808 | 企业招用退役士兵扣减增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第三条第（一）款第2项'>0001011808 | 企业招用退役士兵扣减增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第三条第（一）款第2项</option>
                                        <option value="0001011811|SXA031900831" title='0001011811 | 退役士兵从事个体经营扣减增值税优惠 | 《财政部 税务总局 民政部关于继续实施扶持自主就业退役士兵创业就业有关税收政策的通知》 财税〔2017〕46号第一条'>0001011811 | 退役士兵从事个体经营扣减增值税优惠 | 《财政部 税务总局 民政部关于继续实施扶持自主就业退役士兵创业就业有关税收政策的通知》 财税〔2017〕46号第一条</option>
                                        <option value="0001011812|SXA031900832" title='0001011812 | 企业招用退役士兵扣减增值税优惠 | 《财政部 税务总局 民政部关于继续实施扶持自主就业退役士兵创业就业有关税收政策的通知》 财税〔2017〕46号第二条'>0001011812 | 企业招用退役士兵扣减增值税优惠 | 《财政部 税务总局 民政部关于继续实施扶持自主就业退役士兵创业就业有关税收政策的通知》 财税〔2017〕46号第二条</option>
                                        <option value="0001013602|SXA031900849" title='0001013602 | 失业人员从事个体经营增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十三）款第1项'>0001013602 | 失业人员从事个体经营增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十三）款第1项</option>
                                        <option value="0001013603|SXA031900154" title='0001013603 | 高校毕业生从事个体经营增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十三）款第1项'>0001013603 | 高校毕业生从事个体经营增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十三）款第1项</option>
                                        <option value="0001013604|SXA031900850" title='0001013604 | 失业人员再就业增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十三）款第2项'>0001013604 | 失业人员再就业增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十三）款第2项</option>
                                        <option value="0001013605|SXA031900394" title='0001013605 | 重点群体从事个体经营扣减增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第三条第（二）款第1项'>0001013605 | 重点群体从事个体经营扣减增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第三条第（二）款第1项</option>
                                        <option value="0001013608|SXA031900394" title='0001013608 | 重点群体从事个体经营扣减增值税优惠 | 《财政部 税务总局 人力资源社会保障部关于继续实施支持和促进重点群体创业就业有关税收政策的通知》 财税〔2017〕49号第一条'>0001013608 | 重点群体从事个体经营扣减增值税优惠 | 《财政部 税务总局 人力资源社会保障部关于继续实施支持和促进重点群体创业就业有关税收政策的通知》 财税〔2017〕49号第一条</option>
                                        <option value="0001013609|SXA031900396" title='0001013609 | 招录重点群体就业扣减增值税优惠 | 《财政部 税务总局 人力资源社会保障部关于继续实施支持和促进重点群体创业就业有关税收政策的通知》 财税〔2017〕49号第二条'>0001013609 | 招录重点群体就业扣减增值税优惠 | 《财政部 税务总局 人力资源社会保障部关于继续实施支持和促进重点群体创业就业有关税收政策的通知》 财税〔2017〕49号第二条</option>
                                        <option value="0001129902|SXA031900512" title='0001129902 | 已使用固定资产减征增值税 | 《财政部 国家税务总局关于部分货物适用增值税低税率和简易办法征收增值税政策的通知》 财税〔2009〕9号第二条（一）、（二）项'>0001129902 | 已使用固定资产减征增值税 | 《财政部 国家税务总局关于部分货物适用增值税低税率和简易办法征收增值税政策的通知》 财税〔2009〕9号第二条（一）、（二）项</option>
                                        <option value="0001129914|SXA031900185" title='0001129914 | 购置增值税税控系统专用设备抵减增值税 | 《财政部 国家税务总局关于增值税税控系统专用设备和技术维护费用抵减增值税税额有关政策的通知》 财税〔2012〕15号'>0001129914 | 购置增值税税控系统专用设备抵减增值税 | 《财政部 国家税务总局关于增值税税控系统专用设备和技术维护费用抵减增值税税额有关政策的通知》 财税〔2012〕15号</option>
                                        <option value="0001129917|SXA031900185" title='0001129917 | 购置增值税税控系统专用设备抵减增值税 | 《财政部 国家税务总局关于推广税控收款机有关税收政策的通知》 财税〔2004〕167号'>0001129917 | 购置增值税税控系统专用设备抵减增值税 | 《财政部 国家税务总局关于推广税控收款机有关税收政策的通知》 财税〔2004〕167号</option>
                                        <option value="0001129924|SXA031900512" title='0001129924 | 已使用固定资产减征增值税 | 《财政部 国家税务总局关于简并增值税征收率政策的通知》 财税〔2014〕57号第一条'>0001129924 | 已使用固定资产减征增值税 | 《财政部 国家税务总局关于简并增值税征收率政策的通知》 财税〔2014〕57号第一条</option>
                                        <option value="0001129932|SXA031900838" title='0001129932 | 公路经营企业中的一般纳税人选择适用简易计税方法减按3%计算应纳增值税 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件2第一条第（九）款第2项'>0001129932 | 公路经营企业中的一般纳税人选择适用简易计税方法减按3%计算应纳增值税 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件2第一条第（九）款第2项</option>

                                    </select>

                                </td>
                                <td align="center">
                                    <input type="text" name="HC" class="noBorderForInput" readonly="readonly" value="2" />

                                    <!-- 隐藏的数据域 -->
                                    <input type="hidden" value="20180801" name="SSSQ_Q" />
                                    <input type="hidden" value="20180831" name="SSSQ_Z" />
                                    <input type="hidden" value="威纳仕（厦门）酒业有限公司" name="NSRMC" />
                                    <input type="hidden" value="91350200MA2Y10EC4K" name="NSRSBH" />
                                    <input name="XMLX" type="hidden" value="1" />
                                    <input type="hidden" name="CANDEL" value="2" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL1" id="Text5" class="money" style="width: 100%" onchange="changeValue_js();" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL2" id="Text6" class="money" style="width: 100%" onchange="changeValue_js();" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL3" id="Text7" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL4" id="Text8" class="money" style="width: 100%" onchange="changeValue_js();" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL5" id="Text9" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                            </tr>

                        </tbody>
                        <thead>
                            <tr>
                                <td align="center" colspan="7">二、免税项目</td>
                            </tr>
                            <tr>
                                <td width="25%" align="center" rowspan="2">免税性质代码及名称</td>
                                <td width="5%" align="center" rowspan="2">栏次</td>
                                <td width="12%" align="center">免征增值税项目<br />
                                    销售额</td>
                                <td width="12%" align="center">免税销售额扣除<br />
                                    项目本期实际扣<br />
                                    除金额</td>
                                <td width="12%" align="center">扣除后免税销售额</td>
                                <td width="12%" align="center">免税销售额对应<br />
                                    的进项税额</td>
                                <td width="12%" align="center">免税额</td>
                            </tr>
                            <tr>
                                <td align="center">1</td>
                                <td align="center">2</td>
                                <td align="center">3=1-2</td>
                                <td align="center">4</td>
                                <td align="center">5</td>
                            </tr>
                            <tr>
                                <td align="center">合计
                                </td>
                                <td align="center">
                                    <input type="text" class="noBorderForInput" name="HC" readonly="readonly" value="3" />

                                    <!-- 隐藏的数据域 -->
                                    <input type="hidden" value="20180801" name="SSSQ_Q" />
                                    <input type="hidden" value="20180831" name="SSSQ_Z" />
                                    <input type="hidden" value="威纳仕（厦门）酒业有限公司" name="NSRMC" />
                                    <input type="hidden" value="91350200MA2Y10EC4K" name="NSRSBH" />
                                    <input name="XMLX" type="hidden" value="2" />
                                    <input type="hidden" name="XZDMJMC" value="HJH" />
                                    <input type="hidden" name="CANDEL" value="3" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL1" id="Text10" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL2" id="Text11" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL3" id="Text12" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL4" id="Text13" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL5" id="Text14" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">01CKTS01 出口免税
                                </td>
                                <td align="center">
                                    <input type="text" name="HC" style="width: 100%; text-align: center; border: 0px; background-color: transparent;" readonly="readonly" value="4" />

                                    <!-- 隐藏的数据域 -->
                                    <input type="hidden" value="20180801" name="SSSQ_Q" />
                                    <input type="hidden" value="20180831" name="SSSQ_Z" />
                                    <input type="hidden" value="威纳仕（厦门）酒业有限公司" name="NSRMC" />
                                    <input type="hidden" value="91350200MA2Y10EC4K" name="NSRSBH" />
                                    <input type="hidden" name="COL2" value="0" />
                                    <input type="hidden" name="COL3" value="0" />
                                    <input type="hidden" name="COL4" value="0" />
                                    <input type="hidden" name="COL5" value="0" />
                                    <input name="XMLX" type="hidden" value="2" />
                                    <input type="hidden" name="XZDMJMC" value="01CKTS01" />
                                    <input type="hidden" name="CANDEL" value="3" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL1" id="Text15" class="money" onchange="changeValue_ms();" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">——
                                </td>
                                <td align="center">——
                                </td>
                                <td align="center">——
                                </td>
                                <td align="center">——
                                </td>
                            </tr>
                            <tr>
                                <td align="center">&nbsp;&nbsp;&nbsp;其中：跨境服务
                                </td>
                                <td align="center">
                                    <input type="text" name="HC" style="width: 100%; text-align: center; border: 0px; background-color: transparent;" readonly="readonly" value="5" />

                                    <!-- 隐藏的数据域 -->
                                    <input type="hidden" value="20180801" name="SSSQ_Q" />
                                    <input type="hidden" value="20180831" name="SSSQ_Z" />
                                    <input type="hidden" value="威纳仕（厦门）酒业有限公司" name="NSRMC" />
                                    <input type="hidden" value="91350200MA2Y10EC4K" name="NSRSBH" />
                                    <input type="hidden" name="COL2" value="0" />
                                    <input type="hidden" name="COL3" value="0" />
                                    <input type="hidden" name="COL4" value="0" />
                                    <input type="hidden" name="COL5" value="0" />
                                    <input name="XMLX" type="hidden" value="2" />
                                    <input type="hidden" name="XZDMJMC" value="01KJFW01" />
                                    <input type="hidden" name="CANDEL" value="3" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL1" id="Text16" class="money" onchange="changeValue_ms();" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">——
                                </td>
                                <td align="center">——
                                </td>
                                <td align="center">——
                                </td>
                                <td align="center">——
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="SB_FLZL4_MS_MX" onkeydown="doOnKeyDown();keyDownInsert_calculate('ms');" repeat="true">

                            <tr>
                                <td align="center" style="line-height: 20px;">
                                    <!-- 已备案的性质代码以文本的方式进行展示 -->

                                    <select name="XZDMJMC" style="width: 100%;" onmouseover="FixWidthForSelsct(this);">
                                        <option value=""></option>
                                        <option value="0001010503|SXA031900485" title='0001010503 | 鲜活肉蛋产品免征增值税优惠 | 《财政部 国家税务总局关于免征部分鲜活肉蛋产品流通环节增值税政策的通知》 财税〔2012〕75号'>0001010503 | 鲜活肉蛋产品免征增值税优惠 | 《财政部 国家税务总局关于免征部分鲜活肉蛋产品流通环节增值税政策的通知》 财税〔2012〕75号</option>
                                        <option value="0001010504|SXA031900428" title='0001010504 | 蔬菜免征增值税优惠 | 《财政部 国家税务总局关于免征蔬菜流通环节增值税有关问题的通知》 财税〔2011〕137号'>0001010504 | 蔬菜免征增值税优惠 | 《财政部 国家税务总局关于免征蔬菜流通环节增值税有关问题的通知》 财税〔2011〕137号</option>
                                        <option value="0001011606|SXA031900275" title='0001011606 | 救灾救济粮免征增值税优惠 | 《财政部 国家税务总局关于粮食企业增值税征免问题的通知》 财税字〔1999〕198号第二条第（二）项'>0001011606 | 救灾救济粮免征增值税优惠 | 《财政部 国家税务总局关于粮食企业增值税征免问题的通知》 财税字〔1999〕198号第二条第（二）项</option>
                                        <option value="0001011701|SXA031900796" title='0001011701 | 个人销售自建自用住房免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十五）款'>0001011701 | 个人销售自建自用住房免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十五）款</option>
                                        <option value="0001011702|SXA031900823" title='0001011702 | 为了配合国家住房制度改革，企业、行政事业单位按房改成本价、标准价出售住房取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十四）款'>0001011702 | 为了配合国家住房制度改革，企业、行政事业单位按房改成本价、标准价出售住房取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十四）款</option>
                                        <option value="0001011703|SXA031900828" title='0001011703 | 个人将购买2年以上（含2年）的住房对外销售免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第五条'>0001011703 | 个人将购买2年以上（含2年）的住房对外销售免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第五条</option>
                                        <option value="0001011704|SXA031900834" title='0001011704 | 公共租赁住房经营管理单位出租公共租赁住房免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十六）款'>0001011704 | 公共租赁住房经营管理单位出租公共租赁住房免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十六）款</option>
                                        <option value="0001011801|SXA031900395" title='0001011801 | 失业人员就业免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（十二）、（十三）项'>0001011801 | 失业人员就业免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（十二）、（十三）项</option>
                                        <option value="0001011802|SXA031900851" title='0001011802 | 随军家属就业免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十）款'>0001011802 | 随军家属就业免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十）款</option>
                                        <option value="0001011803|SXA031900847" title='0001011803 | 军转干部就业免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十一）款'>0001011803 | 军转干部就业免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十一）款</option>
                                        <option value="0001011804|SXA031900049" title='0001011804 | 城镇退役士兵就业免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十二）款'>0001011804 | 城镇退役士兵就业免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十二）款</option>
                                        <option value="0001011806|SXA031900448" title='0001011806 | 随军家属从事个体经营免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十九）款第2项'>0001011806 | 随军家属从事个体经营免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十九）款第2项</option>
                                        <option value="0001011807|SXA031900284" title='0001011807 | 军转干部从事个体经营免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（四十）款第1项'>0001011807 | 军转干部从事个体经营免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（四十）款第1项</option>
                                        <option value="0001011809|SXA031900836" title='0001011809 | 企业安置随军家属免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十九）款第1项'>0001011809 | 企业安置随军家属免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十九）款第1项</option>
                                        <option value="0001011810|SXA031900837" title='0001011810 | 企业安置军转干部免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（四十）款第2项'>0001011810 | 企业安置军转干部免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（四十）款第2项</option>
                                        <option value="0001012707|SXA031900044" title='0001012707 | 残疾人专用物品免征增值税优惠 | 《中华人民共和国增值税暂行条例》 中华人民共和国国务院令第538号第十五条第（六）项'>0001012707 | 残疾人专用物品免征增值税优惠 | 《中华人民共和国增值税暂行条例》 中华人民共和国国务院令第538号第十五条第（六）项</option>
                                        <option value="0001012708|SXA031900785" title='0001012708 | 托儿所、幼儿园提供的保育和教育服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（一）款'>0001012708 | 托儿所、幼儿园提供的保育和教育服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（一）款</option>
                                        <option value="0001012709|SXA031900786" title='0001012709 | 养老机构提供的养老服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二）款'>0001012709 | 养老机构提供的养老服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二）款</option>
                                        <option value="0001012710|SXA031900787" title='0001012710 | 残疾人福利机构提供的育养服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三）款'>0001012710 | 残疾人福利机构提供的育养服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三）款</option>
                                        <option value="0001012711|SXA031900788" title='0001012711 | 婚姻介绍服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（四）款'>0001012711 | 婚姻介绍服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（四）款</option>
                                        <option value="0001012712|SXA031900789" title='0001012712 | 殡葬服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（五）款'>0001012712 | 殡葬服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（五）款</option>
                                        <option value="0001012713|SXA031900801" title='0001012713 | 住房公积金管理中心用住房公积金在指定的委托银行发放的个人住房贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第5项'>0001012713 | 住房公积金管理中心用住房公积金在指定的委托银行发放的个人住房贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第5项</option>
                                        <option value="0001012714|SXA031900820" title='0001012714 | 家政服务企业由员工制家政服务员提供家政服务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十一）款'>0001012714 | 家政服务企业由员工制家政服务员提供家政服务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十一）款</option>
                                        <option value="0001012715|SXA031900830" title='0001012715 | 残疾人员本人为社会提供的服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（六）款'>0001012715 | 残疾人员本人为社会提供的服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（六）款</option>
                                        <option value="0001012717|SXA031900798" title='0001012717 | 残疾人个人提供劳务免征增值税优惠 | 《财政部 国家税务总局关于促进残疾人就业增值税政策的通知》 财税〔2016〕52号第八条'>0001012717 | 残疾人个人提供劳务免征增值税优惠 | 《财政部 国家税务总局关于促进残疾人就业增值税政策的通知》 财税〔2016〕52号第八条</option>
                                        <option value="0001013601|SXA031900395" title='0001013601 | 失业人员就业免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（十一）、（十四）项'>0001013601 | 失业人员就业免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（十一）、（十四）项</option>
                                        <option value="0001019901|SXA031900033" title='0001019901 | 边销茶免征增值税优惠 | 《财政部 国家税务总局关于继续执行边销茶增值税政策的通知》 财税〔2011〕89号第一条'>0001019901 | 边销茶免征增值税优惠 | 《财政部 国家税务总局关于继续执行边销茶增值税政策的通知》 财税〔2011〕89号第一条</option>
                                        <option value="0001019902|SXA031900301" title='0001019902 | 粮食免征增值税优惠 | 《财政部 国家税务总局关于粮食企业增值税征免问题的通知》 财税字〔1999〕198号第一、五条'>0001019902 | 粮食免征增值税优惠 | 《财政部 国家税务总局关于粮食企业增值税征免问题的通知》 财税字〔1999〕198号第一、五条</option>
                                        <option value="0001019904|SXA031900402" title='0001019904 | 世界银行贷款粮食流通项目免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十五）款'>0001019904 | 世界银行贷款粮食流通项目免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十五）款</option>
                                        <option value="0001019905|SXA031900053" title='0001019905 | 储备大豆免征增值税优惠 | 《财政部 国家税务总局关于免征储备大豆增值税政策的通知》 财税〔2014〕38号'>0001019905 | 储备大豆免征增值税优惠 | 《财政部 国家税务总局关于免征储备大豆增值税政策的通知》 财税〔2014〕38号</option>
                                        <option value="0001019906|SXA031900551" title='0001019906 | 政府储备食用植物油免征增值税优惠 | 《财政部 国家税务总局关于粮食企业增值税征免问题的通知》 财税字〔1999〕198号第五条'>0001019906 | 政府储备食用植物油免征增值税优惠 | 《财政部 国家税务总局关于粮食企业增值税征免问题的通知》 财税字〔1999〕198号第五条</option>
                                        <option value="0001019907|SXA031900821" title='0001019907 | 福利彩票、体育彩票的发行收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十二）款'>0001019907 | 福利彩票、体育彩票的发行收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十二）款</option>
                                        <option value="0001019908|SXA031900825" title='0001019908 | 涉及家庭财产分割的个人无偿转让不动产、土地使用权免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十六）款'>0001019908 | 涉及家庭财产分割的个人无偿转让不动产、土地使用权免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十六）款</option>
                                        <option value="0001019909|SXA031900033" title='0001019909 | 边销茶免征增值税优惠 | 《财政部 国家税务总局关于延长边销茶增值税政策执行期限的通知》 财税〔2016〕73号'>0001019909 | 边销茶免征增值税优惠 | 《财政部 国家税务总局关于延长边销茶增值税政策执行期限的通知》 财税〔2016〕73号</option>
                                        <option value="0001021201|SXA031900244" title='0001021201 | 技术转让、技术开发免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（四）项'>0001021201 | 技术转让、技术开发免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（四）项</option>
                                        <option value="0001021202|SXA031900244" title='0001021202 | 技术转让、技术开发免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（四）款'>0001021202 | 技术转让、技术开发免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（四）款</option>
                                        <option value="0001021203|SXA031900244" title='0001021203 | 技术转让、技术开发免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十六）款'>0001021203 | 技术转让、技术开发免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十六）款</option>
                                        <option value="0001021904|SXA031900867" title='0001021904 | 国家大学科技园收入免征增值税 | 《财政部 国家税务总局关于国家大学科技园税收政策的通知》 财税〔2016〕98号第一条'>0001021904 | 国家大学科技园收入免征增值税 | 《财政部 国家税务总局关于国家大学科技园税收政策的通知》 财税〔2016〕98号第一条</option>
                                        <option value="0001021905|SXA031900868" title='0001021905 | 科技企业孵化器收入免征增值税 | 《财政部 国家税务总局关于科技企业孵化器税收政策的通知》 财税〔2016〕89号第一条'>0001021905 | 科技企业孵化器收入免征增值税 | 《财政部 国家税务总局关于科技企业孵化器税收政策的通知》 财税〔2016〕89号第一条</option>
                                        <option value="0001023001|SXA031900297" title='0001023001 | 离岸服务外包业务免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（六）项'>0001023001 | 离岸服务外包业务免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（六）项</option>
                                        <option value="0001023002|SXA031900297" title='0001023002 | 离岸服务外包业务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（六）款'>0001023002 | 离岸服务外包业务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（六）款</option>
                                        <option value="0001032101|SXA031900449" title='0001032101 | 台湾航运公司、航空公司从事海峡两岸海上直航、空中直航业务在大陆取得的运输收入免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（七）、（八）项'>0001032101 | 台湾航运公司、航空公司从事海峡两岸海上直航、空中直航业务在大陆取得的运输收入免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（七）、（八）项</option>
                                        <option value="0001032102|SXA031900449" title='0001032102 | 台湾航运公司、航空公司从事海峡两岸海上直航、空中直航业务在大陆取得的运输收入免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（七）、（八）款'>0001032102 | 台湾航运公司、航空公司从事海峡两岸海上直航、空中直航业务在大陆取得的运输收入免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（七）、（八）款</option>
                                        <option value="0001032102|SXA031900852" title='0001032102 | 台湾航运公司从事海峡两岸海上直航、空中直航业务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（七）、（八）款'>0001032102 | 台湾航运公司从事海峡两岸海上直航、空中直航业务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（七）、（八）款</option>
                                        <option value="0001032103|SXA031900449" title='0001032103 | 台湾航运公司、航空公司从事海峡两岸海上直航、空中直航业务在大陆取得的运输收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十七）款'>0001032103 | 台湾航运公司、航空公司从事海峡两岸海上直航、空中直航业务在大陆取得的运输收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十七）款</option>
                                        <option value="0001033301|SXA031900372" title='0001033301 | 青藏铁路提供铁路运输服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十八）款'>0001033301 | 青藏铁路提供铁路运输服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十八）款</option>
                                        <option value="0001033302|SXA031900865" title='0001033302 | 从事与新疆国际大巴扎项目有关的营业税应税业务免征增值税 | 《财政部 国家税务总局关于部分营业税和增值税政策到期延续问题的通知》 财税〔2016〕83号第四条'>0001033302 | 从事与新疆国际大巴扎项目有关的营业税应税业务免征增值税 | 《财政部 国家税务总局关于部分营业税和增值税政策到期延续问题的通知》 财税〔2016〕83号第四条</option>
                                        <option value="0001033303|SXA031900874" title='0001033303 | 从事与新疆国际大巴扎项目有关的营改增应税业务免征增值税 | 《财政部 国家税务总局关于继续执行新疆国际大巴扎项目增值税政策的通知》 财税〔2017〕36号'>0001033303 | 从事与新疆国际大巴扎项目有关的营改增应税业务免征增值税 | 《财政部 国家税务总局关于继续执行新疆国际大巴扎项目增值税政策的通知》 财税〔2017〕36号</option>
                                        <option value="0001039901|SXA031900230" title='0001039901 | 横琴、平潭企业销售货物免征增值税优惠 | 《财政部 海关总署 国家税务总局关于横琴 平潭开发有关增值税和消费税政策的通知》 财税〔2014〕51号第二条'>0001039901 | 横琴、平潭企业销售货物免征增值税优惠 | 《财政部 海关总署 国家税务总局关于横琴 平潭开发有关增值税和消费税政策的通知》 财税〔2014〕51号第二条</option>
                                        <option value="0001041501|SXA031900814" title='0001041501 | 符合条件的担保机构从事中小企业信用担保或者再担保业务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十四）款'>0001041501 | 符合条件的担保机构从事中小企业信用担保或者再担保业务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十四）款</option>
                                        <option value="0001041502|SXA031900931" title='0001041502 | 小微企业等小额贷款利息免征增值税优惠 | 《财政部 税务总局关于支持小微企业融资有关税收政策的通知》 财税〔2017〕77号第一条'>0001041502 | 小微企业等小额贷款利息免征增值税优惠 | 《财政部 税务总局关于支持小微企业融资有关税收政策的通知》 财税〔2017〕77号第一条</option>
                                        <option value="0001041503|SXA031900932" title='0001041503 | 小微企业等融资担保、再担保免征增值税优惠 | 《财政部 税务总局关于租入固定资产进项税额抵扣等增值税政策的通知》 财税〔2017〕90号第六条'>0001041503 | 小微企业等融资担保、再担保免征增值税优惠 | 《财政部 税务总局关于租入固定资产进项税额抵扣等增值税政策的通知》 财税〔2017〕90号第六条</option>
                                        <option value="0001052402|SXA031900585" title='0001052402 | 资产重组免征增值税优惠 | 《财政部 国家税务总局关于中国邮政集团公司邮政速递物流业务重组改制有关税收问题的通知》 财税〔2011〕116号第一条'>0001052402 | 资产重组免征增值税优惠 | 《财政部 国家税务总局关于中国邮政集团公司邮政速递物流业务重组改制有关税收问题的通知》 财税〔2011〕116号第一条</option>
                                        <option value="0001052403|SXA031900585" title='0001052403 | 资产重组免征增值税优惠 | 《财政部 国家税务总局关于中国邮政储蓄银行改制上市有关税收政策的通知》 财税〔2013〕53号第三条'>0001052403 | 资产重组免征增值税优惠 | 《财政部 国家税务总局关于中国邮政储蓄银行改制上市有关税收政策的通知》 财税〔2013〕53号第三条</option>
                                        <option value="0001059901|SXA031900585" title='0001059901 | 资产重组免征增值税优惠 | 《财政部 国家税务总局关于中国联合网络通信集团有限公司转让CDMA网及其用户资产企业合并资产整合过程中涉及的增值税营业税印花税和土地增值税政策问题的通知》 财税〔2011〕13号第一、二条'>0001059901 | 资产重组免征增值税优惠 | 《财政部 国家税务总局关于中国联合网络通信集团有限公司转让CDMA网及其用户资产企业合并资产整合过程中涉及的增值税营业税印花税和土地增值税政策问题的通知》 财税〔2011〕13号第一、二条</option>
                                        <option value="0001061002|SXA031900226" title='0001061002 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（五）项'>0001061002 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于在全国开展交通运输业和部分现代服务业营业税改征增值税试点税收政策的通知》 财税〔2013〕37号过渡政策规定第一条第（五）项</option>
                                        <option value="0001064001|SXA031900226" title='0001064001 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于促进节能服务产业发展增值税营业税和企业所得税政策问题的通知》 财税〔2010〕110号第一条第（二）项'>0001064001 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于促进节能服务产业发展增值税营业税和企业所得税政策问题的通知》 财税〔2010〕110号第一条第（二）项</option>
                                        <option value="0001064002|SXA031900586" title='0001064002 | 资源综合利用产品及劳务免征增值税优惠 | 《财政部 国家税务总局关于调整完善资源综合利用产品及劳务增值税政策的通知》 财税〔2011〕115号第一、二条'>0001064002 | 资源综合利用产品及劳务免征增值税优惠 | 《财政部 国家税务总局关于调整完善资源综合利用产品及劳务增值税政策的通知》 财税〔2011〕115号第一、二条</option>
                                        <option value="0001064003|SXA031900227" title='0001064003 | 核电企业免征增值税优惠 | 《财政部 国家税务总局关于核电行业税收政策有关问题的通知》 财税〔2008〕38号'>0001064003 | 核电企业免征增值税优惠 | 《财政部 国家税务总局关于核电行业税收政策有关问题的通知》 财税〔2008〕38号</option>
                                        <option value="0001064005|SXA031900183" title='0001064005 | 供热企业免征增值税优惠 | 《财政部 国家税务总局关于继续执行供热企业增值税 房产税 城镇土地使用税优惠政策的通知》 财税〔2011〕118号第一条'>0001064005 | 供热企业免征增值税优惠 | 《财政部 国家税务总局关于继续执行供热企业增值税 房产税 城镇土地使用税优惠政策的通知》 财税〔2011〕118号第一条</option>
                                        <option value="0001064007|SXA031900481" title='0001064007 | 污水处理费免征增值税优惠 | 《财政部 国家税务总局关于污水处理费有关增值税政策的通知》 财税〔2001〕97号'>0001064007 | 污水处理费免征增值税优惠 | 《财政部 国家税务总局关于污水处理费有关增值税政策的通知》 财税〔2001〕97号</option>
                                        <option value="0001064009|SXA031900586" title='0001064009 | 资源综合利用产品及劳务免征增值税优惠 | 《财政部 国家税务总局关于资源综合利用及其他产品增值税政策的补充的通知》 财税〔2009〕163号'>0001064009 | 资源综合利用产品及劳务免征增值税优惠 | 《财政部 国家税务总局关于资源综合利用及其他产品增值税政策的补充的通知》 财税〔2009〕163号</option>
                                        <option value="0001064010|SXA031900586" title='0001064010 | 资源综合利用产品及劳务免征增值税优惠 | 《财政部 国家税务总局关于资源综合利用及其他产品增值税政策的通知》 财税〔2008〕156号第一、二条'>0001064010 | 资源综合利用产品及劳务免征增值税优惠 | 《财政部 国家税务总局关于资源综合利用及其他产品增值税政策的通知》 财税〔2008〕156号第一、二条</option>
                                        <option value="0001064020|SXA031900183" title='0001064020 | 供热企业免征增值税优惠 | 《财政部 国家税务总局关于供热企业增值税 房产税 城镇土地使用税优惠政策的通知》 财税〔2016〕94号第一条'>0001064020 | 供热企业免征增值税优惠 | 《财政部 国家税务总局关于供热企业增值税 房产税 城镇土地使用税优惠政策的通知》 财税〔2016〕94号第一条</option>
                                        <option value="0001069901|SXA031900226" title='0001069901 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（五）款'>0001069901 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（五）款</option>
                                        <option value="0001069902|SXA031900226" title='0001069902 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十七）款'>0001069902 | 合同能源管理项目免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十七）款</option>
                                        <option value="0001081501|SXA031900032" title='0001081501 | 被撤销金融机构转让财产免征增值税优惠 | 《财政部 国家税务总局关于被撤销金融机构有关税收政策问题的通知》 财税〔2003〕141号第二条第4款'>0001081501 | 被撤销金融机构转让财产免征增值税优惠 | 《财政部 国家税务总局关于被撤销金融机构有关税收政策问题的通知》 财税〔2003〕141号第二条第4款</option>
                                        <option value="0001081502|SXA031900132" title='0001081502 | 黄金期货交易免征增值税优惠 | 《财政部 国家税务总局关于黄金期货交易有关税收政策的通知》 财税〔2008〕5号'>0001081502 | 黄金期货交易免征增值税优惠 | 《财政部 国家税务总局关于黄金期货交易有关税收政策的通知》 财税〔2008〕5号</option>
                                        <option value="0001081503|SXA031900381" title='0001081503 | 上海期货保税交割免征增值税优惠 | 《财政部 国家税务总局关于上海期货交易所开展期货保税交割业务有关增值税问题的通知》 财税〔2010〕108号'>0001081503 | 上海期货保税交割免征增值税优惠 | 《财政部 国家税务总局关于上海期货交易所开展期货保税交割业务有关增值税问题的通知》 财税〔2010〕108号</option>
                                        <option value="0001081505|SXA031900596" title='0001081505 | 钻石交易免征增值税优惠 | 《财政部 海关总署 国家税务总局关于调整钻石及上海钻石交易所有关税收政策的通知》 财税〔2006〕65号'>0001081505 | 钻石交易免征增值税优惠 | 《财政部 海关总署 国家税务总局关于调整钻石及上海钻石交易所有关税收政策的通知》 财税〔2006〕65号</option>
                                        <option value="0001081506|SXA031900538" title='0001081506 | 原油和铁矿石期货保税交割业务增值税政策 | 《财政部 国家税务总局关于原油和铁矿石期货保税交割业务增值税政策的通知》 财税〔2015〕35号'>0001081506 | 原油和铁矿石期货保税交割业务增值税政策 | 《财政部 国家税务总局关于原油和铁矿石期货保税交割业务增值税政策的通知》 财税〔2015〕35号</option>
                                        <option value="0001081507|SXA031900800" title='0001081507 | 国债、地方政府债利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第3项'>0001081507 | 国债、地方政府债利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第3项</option>
                                        <option value="0001081508|SXA031900802" title='0001081508 | 外汇管理部门在从事国家外汇储备经营过程中,委托金融机构发放的外汇贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第6项'>0001081508 | 外汇管理部门在从事国家外汇储备经营过程中,委托金融机构发放的外汇贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第6项</option>
                                        <option value="0001081509|SXA031900803" title='0001081509 | 统借统还业务取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第7项'>0001081509 | 统借统还业务取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第7项</option>
                                        <option value="0001081510|SXA031900805" title='0001081510 | 被撤销金融机构以货物、不动产、无形资产、有价证券、票据等财产清偿债务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十）款'>0001081510 | 被撤销金融机构以货物、不动产、无形资产、有价证券、票据等财产清偿债务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十）款</option>
                                        <option value="0001081511|SXA031900808" title='0001081511 | 香港市场投资者（包括单位和个人）通过沪港通买卖上海证券交易所上市A股取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第2项'>0001081511 | 香港市场投资者（包括单位和个人）通过沪港通买卖上海证券交易所上市A股取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第2项</option>
                                        <option value="0001081512|SXA031900809" title='0001081512 | 香港市场投资者（包括单位和个人）通过基金互认买卖内地基金份额取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第3项'>0001081512 | 香港市场投资者（包括单位和个人）通过基金互认买卖内地基金份额取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第3项</option>
                                        <option value="0001081513|SXA031900810" title='0001081513 | 证券投资基金（封闭式证券投资基金，开放式证券投资基金）管理人运用基金买卖股票、债券取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第4项'>0001081513 | 证券投资基金（封闭式证券投资基金，开放式证券投资基金）管理人运用基金买卖股票、债券取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第4项</option>
                                        <option value="0001081515|SXA031900813" title='0001081515 | 金融同业往来利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十三）款'>0001081515 | 金融同业往来利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十三）款</option>
                                        <option value="0001081515|SXA031900862" title='0001081515 | 适用财税〔2016〕36号文件规定的金融同业往来利息收入（不含财税〔2016〕46号、财税〔2016〕70号文件规定的免税收入）增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十三）款'>0001081515 | 适用财税〔2016〕36号文件规定的金融同业往来利息收入（不含财税〔2016〕46号、财税〔2016〕70号文件规定的免税收入）增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十三）款</option>
                                        <option value="0001081517|SXA031900807" title='0001081517 | 合格境外投资者（简称QFII）委托境内公司在我国从事证券买卖业务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第1项'>0001081517 | 合格境外投资者（简称QFII）委托境内公司在我国从事证券买卖业务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第1项</option>
                                        <option value="0001081518|SXA031900812" title='0001081518 | 个人从事金融商品转让业务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第5项'>0001081518 | 个人从事金融商品转让业务取得的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十二）款第5项</option>
                                        <option value="0001081519|SXA031900835" title='0001081519 | 人民银行对金融机构的贷款的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第4项'>0001081519 | 人民银行对金融机构的贷款的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第4项</option>
                                        <option value="0001081521|SXA031900859" title='0001081521 | 适用财税〔2016〕46号文件规定的金融同业往来利息收入增值税优惠 | 《财政部 国家税务总局关于进一步明确全面推开营改增试点金融业有关政策的通知》 财税〔2016〕46号第一条'>0001081521 | 适用财税〔2016〕46号文件规定的金融同业往来利息收入增值税优惠 | 《财政部 国家税务总局关于进一步明确全面推开营改增试点金融业有关政策的通知》 财税〔2016〕46号第一条</option>
                                        <option value="0001081522|SXA031900860" title='0001081522 | 适用财税〔2016〕70号文件规定的金融同业往来利息收入增值税优惠 | 《财政部 国家税务总局关于金融机构同业往来等增值税政策的补充通知》 财税〔2016〕70号第一、二、三条'>0001081522 | 适用财税〔2016〕70号文件规定的金融同业往来利息收入增值税优惠 | 《财政部 国家税务总局关于金融机构同业往来等增值税政策的补充通知》 财税〔2016〕70号第一、二、三条</option>
                                        <option value="0001081523|SXA031900866" title='0001081523 | 邮政代理金融收入免征增值税优惠 | 《财政部 国家税务总局关于部分营业税和增值税政策到期延续问题的通知》 财税〔2016〕83号第三条'>0001081523 | 邮政代理金融收入免征增值税优惠 | 《财政部 国家税务总局关于部分营业税和增值税政策到期延续问题的通知》 财税〔2016〕83号第三条</option>
                                        <option value="0001083901|SXA031900256" title='0001083901 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于4家资产管理公司接收资本金项下的资产在办理过户时有关税收政策问题的通知》 财税〔2003〕21号第二条'>0001083901 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于4家资产管理公司接收资本金项下的资产在办理过户时有关税收政策问题的通知》 财税〔2003〕21号第二条</option>
                                        <option value="0001083903|SXA031900256" title='0001083903 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于中国信达等4家金融资产管理公司税收政策问题的通知》 财税〔2001〕10号'>0001083903 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于中国信达等4家金融资产管理公司税收政策问题的通知》 财税〔2001〕10号</option>
                                        <option value="0001083904|SXA031900256" title='0001083904 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于中国东方资产管理公司处置港澳国际（集团）有限公司有关资产税收政策问题的通知》 财税〔2003〕212号第二条第4项、第三条第4项、第四条第4项'>0001083904 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于中国东方资产管理公司处置港澳国际（集团）有限公司有关资产税收政策问题的通知》 财税〔2003〕212号第二条第4项、第三条第4项、第四条第4项</option>
                                        <option value="0001083907|SXA031900497" title='0001083907 | 熊猫普制金币免征增值税优惠 | 《财政部 国家税务总局关于熊猫普制金币免征增值税政策的通知》 财税〔2012〕97号'>0001083907 | 熊猫普制金币免征增值税优惠 | 《财政部 国家税务总局关于熊猫普制金币免征增值税政策的通知》 财税〔2012〕97号</option>
                                        <option value="0001083911|SXA031900256" title='0001083911 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于中国信达资产管理股份有限公司等4家金融资产管理公司有关税收政策问题的通知》 财税〔2013〕56号'>0001083911 | 金融资产管理公司免征增值税优惠 | 《财政部 国家税务总局关于中国信达资产管理股份有限公司等4家金融资产管理公司有关税收政策问题的通知》 财税〔2013〕56号</option>
                                        <option value="0001083913|SXA031900806" title='0001083913 | 保险公司开办的一年期以上人身保险产品取得的保费收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十一）款'>0001083913 | 保险公司开办的一年期以上人身保险产品取得的保费收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十一）款</option>
                                        <option value="0001091501|SXA031900797" title='0001091501 | 金融机构农户小额贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第1项'>0001091501 | 金融机构农户小额贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第1项</option>
                                        <option value="0001091502|SXA031900797" title='0001091502 | 金融机构农户小额贷款取得的利息收入免征增值税优惠 | 《财政部 税务总局关于延续支持农村金融发展有关税收政策的通知》 财税〔2017〕44号第一条'>0001091502 | 金融机构农户小额贷款取得的利息收入免征增值税优惠 | 《财政部 税务总局关于延续支持农村金融发展有关税收政策的通知》 财税〔2017〕44号第一条</option>
                                        <option value="0001091503|SXA031900878" title='0001091503 | 小额贷款公司取得的农户小额贷款利息收入免征增值税优惠 | 《财政部 税务总局关于小额贷款公司有关税收政策的通知》 财税〔2017〕48号第一条'>0001091503 | 小额贷款公司取得的农户小额贷款利息收入免征增值税优惠 | 《财政部 税务总局关于小额贷款公司有关税收政策的通知》 财税〔2017〕48号第一条</option>
                                        <option value="0001092202|SXA031900444" title='0001092202 | 饲料产品免征增值税优惠 | 《财政部 国家税务总局关于饲料产品免征增值税问题的通知》 财税〔2001〕121号'>0001092202 | 饲料产品免征增值税优惠 | 《财政部 国家税务总局关于饲料产品免征增值税问题的通知》 财税〔2001〕121号</option>
                                        <option value="0001092203|SXA031900534" title='0001092203 | 有机肥免征增值税优惠 | 《财政部 国家税务总局关于有机肥产品免征增值税的通知》 财税〔2008〕56号'>0001092203 | 有机肥免征增值税优惠 | 《财政部 国家税务总局关于有机肥产品免征增值税的通知》 财税〔2008〕56号</option>
                                        <option value="0001092204|SXA031900233" title='0001092204 | 化肥免征增值税优惠 | 《财政部 国家税务总局关于暂免征收尿素产品增值税的通知》 财税〔2005〕87号'>0001092204 | 化肥免征增值税优惠 | 《财政部 国家税务总局关于暂免征收尿素产品增值税的通知》 财税〔2005〕87号</option>
                                        <option value="0001092210|SXA031900233" title='0001092210 | 化肥免征增值税优惠 | 《财政部 国家税务总局关于免征磷酸二铵增值税的通知》 财税〔2007〕171号'>0001092210 | 化肥免征增值税优惠 | 《财政部 国家税务总局关于免征磷酸二铵增值税的通知》 财税〔2007〕171号</option>
                                        <option value="0001092212|SXA031900444" title='0001092212 | 饲料产品免征增值税优惠 | 《财政部 国家税务总局关于豆粕等粕类产品征免增值税政策的通知》 财税〔2001〕30号'>0001092212 | 饲料产品免征增值税优惠 | 《财政部 国家税务总局关于豆粕等粕类产品征免增值税政策的通知》 财税〔2001〕30号</option>
                                        <option value="0001092301|SXA031900345" title='0001092301 | 农业生产资料免征增值税优惠 | 《财政部 国家税务总局关于不带动力的手扶拖拉机和三轮农用运输车增值税政策的通知》 财税〔2002〕89号'>0001092301 | 农业生产资料免征增值税优惠 | 《财政部 国家税务总局关于不带动力的手扶拖拉机和三轮农用运输车增值税政策的通知》 财税〔2002〕89号</option>
                                        <option value="0001092303|SXA031900333" title='0001092303 | 农村电网维护费免征增值税优惠 | 《财政部 国家税务总局关于免征农村电网维护费增值税问题的通知》 财税字〔1998〕47号'>0001092303 | 农村电网维护费免征增值税优惠 | 《财政部 国家税务总局关于免征农村电网维护费增值税问题的通知》 财税字〔1998〕47号</option>
                                        <option value="0001092304|SXA031900233" title='0001092304 | 化肥免征增值税优惠 | 《财政部 国家税务总局关于农业生产资料征免增值税政策的通知》 财税〔2001〕113号'>0001092304 | 化肥免征增值税优惠 | 《财政部 国家税务总局关于农业生产资料征免增值税政策的通知》 财税〔2001〕113号</option>
                                        <option value="0001092309|SXA031900337" title='0001092309 | 农村饮水安全工程免征增值税优惠 | 《财政部 国家税务总局关于支持农村饮水安全工程建设运营税收政策的通知》 财税〔2012〕30号第四条'>0001092309 | 农村饮水安全工程免征增值税优惠 | 《财政部 国家税务总局关于支持农村饮水安全工程建设运营税收政策的通知》 财税〔2012〕30号第四条</option>
                                        <option value="0001092310|SXA031900223" title='0001092310 | 航空公司提供飞机播洒农药服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（三）款'>0001092310 | 航空公司提供飞机播洒农药服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（三）款</option>
                                        <option value="0001092311|SXA031900343" title='0001092311 | 农民专业合作社免征增值税优惠 | 《财政部 国家税务总局关于农民专业合作社有关税收政策的通知》 财税〔2008〕81号第一、二、三条'>0001092311 | 农民专业合作社免征增值税优惠 | 《财政部 国家税务总局关于农民专业合作社有关税收政策的通知》 财税〔2008〕81号第一、二、三条</option>
                                        <option value="0001092312|SXA031900345" title='0001092312 | 农业生产资料免征增值税优惠 | 《财政部 国家税务总局关于农业生产资料征免增值税政策的通知》 财税〔2001〕113号'>0001092312 | 农业生产资料免征增值税优惠 | 《财政部 国家税务总局关于农业生产资料征免增值税政策的通知》 财税〔2001〕113号</option>
                                        <option value="0001092313|SXA031900793" title='0001092313 | 农业机耕、排灌、病虫害防治、植物保护、农牧保险以及相关技术培训业务，家禽、牲畜、水生动物的配种和疾病防治免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十）款'>0001092313 | 农业机耕、排灌、病虫害防治、植物保护、农牧保险以及相关技术培训业务，家禽、牲畜、水生动物的配种和疾病防治免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十）款</option>
                                        <option value="0001092314|SXA031900337" title='0001092314 | 农村饮水安全工程免征增值税优惠 | 《财政部 国家税务总局关于继续实行农村饮水安全工程建设运营税收优惠政策的通知》 财税〔2016〕19号第四条'>0001092314 | 农村饮水安全工程免征增值税优惠 | 《财政部 国家税务总局关于继续实行农村饮水安全工程建设运营税收优惠政策的通知》 财税〔2016〕19号第四条</option>
                                        <option value="0001092315|SXA031900933" title='0001092315 | 承包地流转给农业生产者用于农业生产免征增值税优惠 | 《财政部 税务总局关于租入固定资产进项税额抵扣等增值税政策的通知》 财税〔2017〕90号第四条'>0001092315 | 承包地流转给农业生产者用于农业生产免征增值税优惠 | 《财政部 税务总局关于租入固定资产进项税额抵扣等增值税政策的通知》 财税〔2017〕90号第四条</option>
                                        <option value="0001092316|SXA031900933" title='0001092316 | 承包地流转给农业生产者用于农业生产免征增值税优惠 | 《财政部 税务总局关于建筑服务等营改增试点政策的通知》 财税〔2017〕58号第四条'>0001092316 | 承包地流转给农业生产者用于农业生产免征增值税优惠 | 《财政部 税务总局关于建筑服务等营改增试点政策的通知》 财税〔2017〕58号第四条</option>
                                        <option value="0001099901|SXA031900069" title='0001099901 | 滴灌带和滴灌管产品免征增值税优惠 | 《财政部 国家税务总局关于免征滴灌带和滴灌管产品增值税的通知》 财税〔2007〕83号'>0001099901 | 滴灌带和滴灌管产品免征增值税优惠 | 《财政部 国家税务总局关于免征滴灌带和滴灌管产品增值税的通知》 财税〔2007〕83号</option>
                                        <option value="0001099903|SXA031900824" title='0001099903 | 将土地使用权转让给农业生产者用于农业生产免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十五）款'>0001099903 | 将土地使用权转让给农业生产者用于农业生产免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十五）款</option>
                                        <option value="0001101402|SXA031900791" title='0001101402 | 从事学历教育的学校提供的教育服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（八）款'>0001101402 | 从事学历教育的学校提供的教育服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（八）款</option>
                                        <option value="0001101403|SXA031900792" title='0001101403 | 学生勤工俭学提供的服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（九）款'>0001101403 | 学生勤工俭学提供的服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（九）款</option>
                                        <option value="0001101404|SXA031900799" title='0001101404 | 国家助学贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第2项'>0001101404 | 国家助学贷款取得的利息收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十九）款第2项</option>
                                        <option value="0001101405|SXA031900818" title='0001101405 | 政府举办的从事学历教育的高等、中等和初等学校（不含下属单位），举办进修班、培训班取得的全部归该学校所有的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十九）款'>0001101405 | 政府举办的从事学历教育的高等、中等和初等学校（不含下属单位），举办进修班、培训班取得的全部归该学校所有的收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十九）款</option>
                                        <option value="0001101406|SXA031900819" title='0001101406 | 政府举办的职业学校设立的企业从事“现代服务”、“生活服务”业务活动取得的收入免征增值税免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十）款'>0001101406 | 政府举办的职业学校设立的企业从事“现代服务”、“生活服务”业务活动取得的收入免征增值税免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十）款</option>
                                        <option value="0001101407|SXA031900864" title='0001101407 | 高校学生食堂餐饮服务收入免征增值税；高校学生公寓住宿费收入免征增值税 | 《财政部 国家税务总局关于继续执行高校学生公寓和食堂有关税收政策的通知》 财税〔2016〕82号第二、三条'>0001101407 | 高校学生食堂餐饮服务收入免征增值税；高校学生公寓住宿费收入免征增值税 | 《财政部 国家税务总局关于继续执行高校学生公寓和食堂有关税收政策的通知》 财税〔2016〕82号第二、三条</option>
                                        <option value="0001102902|SXA031900884" title='0001102902 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的分成收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（一）款'>0001102902 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的分成收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（一）款</option>
                                        <option value="0001102903|SXA031900885" title='0001102903 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的赞助收入、特许权收入、销售门票收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（二）款'>0001102903 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的赞助收入、特许权收入、销售门票收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（二）款</option>
                                        <option value="0001102904|SXA031900886" title='0001102904 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的发行纪念邮票、纪念币收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（三）款'>0001102904 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的发行纪念邮票、纪念币收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（三）款</option>
                                        <option value="0001102905|SXA031900887" title='0001102905 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的媒体收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（四）款'>0001102905 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的媒体收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（四）款</option>
                                        <option value="0001102906|SXA031900888" title='0001102906 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会向分支机构划拨所获赞助物资免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（八）款'>0001102906 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会向分支机构划拨所获赞助物资免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（八）款</option>
                                        <option value="0001102907|SXA031900889" title='0001102907 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会赛后再销售物品和出让资产收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（八）款'>0001102907 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会赛后再销售物品和出让资产收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（八）款</option>
                                        <option value="0001102908|SXA031900890" title='0001102908 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的餐饮服务、住宿、租赁、介绍服务和收费卡收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（十四）款'>0001102908 | 对北京冬奥组委、北京冬奥会测试赛赛事组委会取得的餐饮服务、住宿、租赁、介绍服务和收费卡收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第一条第（十四）款</option>
                                        <option value="0001102909|SXA031900899" title='0001102909 | 对国际奥委会取得的收入免征增值税（除转播权收入） | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（一）款'>0001102909 | 对国际奥委会取得的收入免征增值税（除转播权收入） | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（一）款</option>
                                        <option value="0001102910|SXA031900900" title='0001102910 | 对国际奥委会取得的转播权收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（三）款'>0001102910 | 对国际奥委会取得的转播权收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（三）款</option>
                                        <option value="0001102911|SXA031900904" title='0001102911 | 对中国奥委会取得的由北京冬奥组委支付的收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（四）款'>0001102911 | 对中国奥委会取得的由北京冬奥组委支付的收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（四）款</option>
                                        <option value="0001102912|SXA031900908" title='0001102912 | 对国际残奥委会取得的与北京2022年冬残奥会有关的收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（五）款'>0001102912 | 对国际残奥委会取得的与北京2022年冬残奥会有关的收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（五）款</option>
                                        <option value="0001102913|SXA031900912" title='0001102913 | 对中国残奥委会取得的由北京冬奥组委分期支付的收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（六）款'>0001102913 | 对中国残奥委会取得的由北京冬奥组委分期支付的收入免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第二条第（六）款</option>
                                        <option value="0001102914|SXA031900916" title='0001102914 | 企业根据赞助协议向北京冬奥组委免费提供的服务免征增值税（免税清单由北京冬奥组委报财政部、税务总局确定） | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（二）款'>0001102914 | 企业根据赞助协议向北京冬奥组委免费提供的服务免征增值税（免税清单由北京冬奥组委报财政部、税务总局确定） | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（二）款</option>
                                        <option value="0001102915|SXA031900917" title='0001102915 | 免征参与者向北京冬奥组委无偿提供服务和无偿转让无形资产的增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（九）款'>0001102915 | 免征参与者向北京冬奥组委无偿提供服务和无偿转让无形资产的增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（九）款</option>
                                        <option value="0001102916|SXA031900918" title='0001102916 | 对外籍技术官员取得的由北京冬奥组委、测试赛赛事组委会支付的劳务报酬免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（五）款'>0001102916 | 对外籍技术官员取得的由北京冬奥组委、测试赛赛事组委会支付的劳务报酬免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（五）款</option>
                                        <option value="0001102917|SXA031900919" title='0001102917 | 对中方技术官员取得的由北京冬奥组委、测试赛赛事组委会支付的劳务报酬免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（六）款'>0001102917 | 对中方技术官员取得的由北京冬奥组委、测试赛赛事组委会支付的劳务报酬免征增值税 | 《财政部 税务总局 海关总署关于北京2022年冬奥会和冬残奥会税收政策的通知》 财税〔2017〕60号第三条第（六）款</option>
                                        <option value="0001103201|SXA031900400" title='0001103201 | 世博会免征增值税优惠 | 《财政部 国家税务总局关于2010年上海世博会有关税收政策问题的通知》 财税〔2005〕180号第一条第（一）、（二）款'>0001103201 | 世博会免征增值税优惠 | 《财政部 国家税务总局关于2010年上海世博会有关税收政策问题的通知》 财税〔2005〕180号第一条第（一）、（二）款</option>
                                        <option value="0001103203|SXA031900261" title='0001103203 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于北京中科进出口公司销售给高等学校科研单位和北京图书馆的进口图书报刊资料免征增值税问题的通知》 财税字〔1998〕69号'>0001103203 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于北京中科进出口公司销售给高等学校科研单位和北京图书馆的进口图书报刊资料免征增值税问题的通知》 财税字〔1998〕69号</option>
                                        <option value="0001103207|SXA031900261" title='0001103207 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国国际图书贸易总公司销售给高等学校教育科研单位和北京图书馆的进口图书报刊资料免征增值税问题的通知》 财税字〔1998〕68号'>0001103207 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国国际图书贸易总公司销售给高等学校教育科研单位和北京图书馆的进口图书报刊资料免征增值税问题的通知》 财税字〔1998〕68号</option>
                                        <option value="0001103208|SXA031900261" title='0001103208 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国教育图书进出口公司销售给高等学校教育科研单位和北京图书馆的进口图书报刊资料免征增值税问题的通知》 财税字〔1998〕67号'>0001103208 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国教育图书进出口公司销售给高等学校教育科研单位和北京图书馆的进口图书报刊资料免征增值税问题的通知》 财税字〔1998〕67号</option>
                                        <option value="0001103209|SXA031900261" title='0001103209 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国经济图书进出口公司中国出版对外贸易总公司销售给大专院校和科研单位的进口书刊资料免征增值税的通知》 财税字〔1999〕255号'>0001103209 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国经济图书进出口公司中国出版对外贸易总公司销售给大专院校和科研单位的进口书刊资料免征增值税的通知》 财税字〔1999〕255号</option>
                                        <option value="0001103210|SXA031900261" title='0001103210 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国科技资料进出口总公司销售进口图书享受免征国内销售环节增值税政策的通知》 财税〔2004〕69号'>0001103210 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国科技资料进出口总公司销售进口图书享受免征国内销售环节增值税政策的通知》 财税〔2004〕69号</option>
                                        <option value="0001103211|SXA031900261" title='0001103211 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国图书进出口总公司销售给科研教学单位的进口书刊资料免征增值税问题的通知》 财税字〔1997〕66号'>0001103211 | 进口图书、报刊资料免征增值税优惠 | 《财政部 国家税务总局关于中国图书进出口总公司销售给科研教学单位的进口书刊资料免征增值税问题的通知》 财税字〔1997〕66号</option>
                                        <option value="0001103215|SXA031900480" title='0001103215 | 文化事业单位转制免征增值税优惠 | 《财政部 国家税务总局 中宣部关于下发红旗出版社有限责任公司等中央所属转制文化企业名单的通知》 财税〔2011〕3号'>0001103215 | 文化事业单位转制免征增值税优惠 | 《财政部 国家税务总局 中宣部关于下发红旗出版社有限责任公司等中央所属转制文化企业名单的通知》 财税〔2011〕3号</option>
                                        <option value="0001103216|SXA031900480" title='0001103216 | 文化事业单位转制免征增值税优惠 | 《财政部 国家税务总局 中宣部关于下发人民网股份有限公司等81家中央所属转制文化企业名单的通知》 财税〔2011〕27号'>0001103216 | 文化事业单位转制免征增值税优惠 | 《财政部 国家税务总局 中宣部关于下发人民网股份有限公司等81家中央所属转制文化企业名单的通知》 财税〔2011〕27号</option>
                                        <option value="0001103217|SXA031900480" title='0001103217 | 文化事业单位转制免征增值税优惠 | 《财政部 国家税务总局 中宣部关于下发世界知识出版社等35家中央所属转制文化企业名单的通知》 财税〔2011〕120号'>0001103217 | 文化事业单位转制免征增值税优惠 | 《财政部 国家税务总局 中宣部关于下发世界知识出版社等35家中央所属转制文化企业名单的通知》 财税〔2011〕120号</option>
                                        <option value="0001103220|SXA031900466" title='0001103220 | 图书批发、零售环节免征增值税优惠 | 《财政部 国家税务总局关于延续宣传文化增值税和营业税优惠政策的通知》 财税〔2013〕87号第二条'>0001103220 | 图书批发、零售环节免征增值税优惠 | 《财政部 国家税务总局关于延续宣传文化增值税和营业税优惠政策的通知》 财税〔2013〕87号第二条</option>
                                        <option value="0001103224|SXA031900083" title='0001103224 | 电影产业免征增值税优惠 | 《财政部 海关总署 国家税务总局关于继续实施支持文化企业发展若干税收政策的通知》 财税〔2014〕85号第一条'>0001103224 | 电影产业免征增值税优惠 | 《财政部 海关总署 国家税务总局关于继续实施支持文化企业发展若干税收政策的通知》 财税〔2014〕85号第一条</option>
                                        <option value="0001103225|SXA031900582" title='0001103225 | 转制文化企业免征增值税优惠 | 《财政部 国家税务总局 中宣部关于继续实施文化体制改革中经营性文化事业单位转制为企业若干税收政策的通知》 财税〔2014〕84号第一条第（三）（四）项'>0001103225 | 转制文化企业免征增值税优惠 | 《财政部 国家税务总局 中宣部关于继续实施文化体制改革中经营性文化事业单位转制为企业若干税收政策的通知》 财税〔2014〕84号第一条第（三）（四）项</option>
                                        <option value="0001103226|SXA031900535" title='0001103226 | 有线电视基本收视费免征增值税优惠 | 《财政部 海关总署 国家税务总局关于继续实施支持文化企业发展若干税收政策的通知》 财税〔2014〕85号第二条'>0001103226 | 有线电视基本收视费免征增值税优惠 | 《财政部 海关总署 国家税务总局关于继续实施支持文化企业发展若干税收政策的通知》 财税〔2014〕85号第二条</option>
                                        <option value="0001103227|SXA031900794" title='0001103227 | 纪念馆、博物馆、文化馆、文物保护单位管理机构、美术馆、展览馆、书画院、图书馆在自己的场所提供文化体育服务取得的第一道门票收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十一）款'>0001103227 | 纪念馆、博物馆、文化馆、文物保护单位管理机构、美术馆、展览馆、书画院、图书馆在自己的场所提供文化体育服务取得的第一道门票收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十一）款</option>
                                        <option value="0001103228|SXA031900795" title='0001103228 | 寺院、宫观、清真寺和教堂举办文化、宗教活动的门票收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十二）款'>0001103228 | 寺院、宫观、清真寺和教堂举办文化、宗教活动的门票收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十二）款</option>
                                        <option value="0001103229|SXA031900817" title='0001103229 | 对科普单位的门票收入，以及县级及以上党政部门和科协开展科普活动的门票收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十八）款'>0001103229 | 对科普单位的门票收入，以及县级及以上党政部门和科协开展科普活动的门票收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十八）款</option>
                                        <option value="0001103230|SXA031900725" title='0001103230 | 个人转让著作权免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十四）款'>0001103230 | 个人转让著作权免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十四）款</option>
                                        <option value="0001103231|SXA031900535" title='0001103231 | 有线电视基本收视费免征增值税优惠 | 《财政部 国家税务总局关于继续执行有线电视收视费增值税政策的通知》 财税〔2017〕35号'>0001103231 | 有线电视基本收视费免征增值税优惠 | 《财政部 国家税务总局关于继续执行有线电视收视费增值税政策的通知》 财税〔2017〕35号</option>
                                        <option value="0001103232|SXA031900466" title='0001103232 | 图书批发、零售环节免征增值税优惠 | 《财政部 税务总局关于延续宣传文化增值税优惠政策的通知》 财税〔2018〕53号第二条'>0001103232 | 图书批发、零售环节免征增值税优惠 | 《财政部 税务总局关于延续宣传文化增值税优惠政策的通知》 财税〔2018〕53号第二条</option>
                                        <option value="0001103233|SXA031900817" title='0001103233 | 对科普单位的门票收入，以及县级及以上党政部门和科协开展科普活动的门票收入免征增值税优惠 | 《财政部 税务总局关于延续宣传文化增值税优惠政策的通知》 财税〔2018〕53号第三条'>0001103233 | 对科普单位的门票收入，以及县级及以上党政部门和科协开展科普活动的门票收入免征增值税优惠 | 《财政部 税务总局关于延续宣传文化增值税优惠政策的通知》 财税〔2018〕53号第三条</option>
                                        <option value="0001120402|SXA031900390" title='0001120402 | 生产销售支线飞机免征增值税优惠 | 《财政部 国家税务总局关于国产支线飞机免征增值税的通知》 财税〔2000〕51号'>0001120402 | 生产销售支线飞机免征增值税优惠 | 《财政部 国家税务总局关于国产支线飞机免征增值税的通知》 财税〔2000〕51号</option>
                                        <option value="0001120403|SXA031900390" title='0001120403 | 生产销售支线飞机免征增值税优惠 | 《财政部 国家税务总局关于农五飞机适用国产支线飞机免征增值税政策的通知》 财税〔2002〕97号'>0001120403 | 生产销售支线飞机免征增值税优惠 | 《财政部 国家税务总局关于农五飞机适用国产支线飞机免征增值税政策的通知》 财税〔2002〕97号</option>
                                        <option value="0001120706|SXA031900822" title='0001120706 | 军队空余房产租赁收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十三）款'>0001120706 | 军队空余房产租赁收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十三）款</option>
                                        <option value="0001121301|SXA031900462" title='0001121301 | 铁路货车修理免征增值税优惠 | 《财政部 国家税务总局关于铁路货车修理免征增值税的通知》 财税〔2001〕54号'>0001121301 | 铁路货车修理免征增值税优惠 | 《财政部 国家税务总局关于铁路货车修理免征增值税的通知》 财税〔2001〕54号</option>
                                        <option value="0001121304|SXA031900022" title='0001121304 | 保税航空燃油免征增值税优惠 | 《财政部 国家税务总局关于民航国际航班使用保税航空燃油有关税收事宜的通知》 财税〔2004〕218号'>0001121304 | 保税航空燃油免征增值税优惠 | 《财政部 国家税务总局关于民航国际航班使用保税航空燃油有关税收事宜的通知》 财税〔2004〕218号</option>
                                        <option value="0001121306|SXA031900198" title='0001121306 | 国际货物运输代理服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十四）款'>0001121306 | 国际货物运输代理服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十四）款</option>
                                        <option value="0001121310|SXA031900198" title='0001121310 | 国际货物运输代理服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十八）款'>0001121310 | 国际货物运输代理服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十八）款</option>
                                        <option value="0001122601|SXA031900815" title='0001122601 | 国家商品储备管理单位及其直属企业承担商品储备任务，从中央或者地方财政取得的利息补贴收入和价差补贴收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十五）款'>0001122601 | 国家商品储备管理单位及其直属企业承担商品储备任务，从中央或者地方财政取得的利息补贴收入和价差补贴收入免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（二十五）款</option>
                                        <option value="0001123401|SXA031900287" title='0001123401 | 抗艾滋病药品免征增值税优惠 | 《财政部 国家税务总局关于继续免征国产抗艾滋病病毒药品增值税的通知》 财税〔2011〕128号'>0001123401 | 抗艾滋病药品免征增值税优惠 | 《财政部 国家税务总局关于继续免征国产抗艾滋病病毒药品增值税的通知》 财税〔2011〕128号</option>
                                        <option value="0001123406|SXA031900790" title='0001123406 | 医疗机构提供的医疗服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（七）款'>0001123406 | 医疗机构提供的医疗服务免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（七）款</option>
                                        <option value="0001123407|SXA031900287" title='0001123407 | 抗艾滋病药品免征增值税优惠 | 《财政部 国家税务总局关于延续免征国产抗艾滋病病毒药品增值税政策的通知》 财税〔2016〕97号'>0001123407 | 抗艾滋病药品免征增值税优惠 | 《财政部 国家税务总局关于延续免征国产抗艾滋病病毒药品增值税政策的通知》 财税〔2016〕97号</option>
                                        <option value="0001124302|SXA031900482" title='0001124302 | 无偿援助项目免征增值税优惠 | 《财政部 国家税务总局外经贸部关于外国政府和国际组织无偿援助项目在华采购物资免征增值税问题的通知》 财税〔2002〕2号'>0001124302 | 无偿援助项目免征增值税优惠 | 《财政部 国家税务总局外经贸部关于外国政府和国际组织无偿援助项目在华采购物资免征增值税问题的通知》 财税〔2002〕2号</option>
                                        <option value="0001129907|SXA031900234" title='0001129907 | 黄金交易免征增值税优惠 | 《财政部 国家税务总局关于黄金税收政策问题的通知》 财税〔2002〕142号第一、二条'>0001129907 | 黄金交易免征增值税优惠 | 《财政部 国家税务总局关于黄金税收政策问题的通知》 财税〔2002〕142号第一、二条</option>
                                        <option value="0001129911|SXA031900347" title='0001129911 | 拍卖货物免征增值税优惠 | 《国家税务总局关于拍卖行取得的拍卖收入征收增值税、营业税有关问题的通知》 国税发〔1999〕40号第一条'>0001129911 | 拍卖货物免征增值税优惠 | 《国家税务总局关于拍卖行取得的拍卖收入征收增值税、营业税有关问题的通知》 国税发〔1999〕40号第一条</option>
                                        <option value="0001129916|SXA031900234" title='0001129916 | 黄金交易免征增值税优惠 | 《财政部 国家税务总局 中国人民银行关于配售出口黄金有关税收规定的通知》 财税〔2000〕3号第二条'>0001129916 | 黄金交易免征增值税优惠 | 《财政部 国家税务总局 中国人民银行关于配售出口黄金有关税收规定的通知》 财税〔2000〕3号第二条</option>
                                        <option value="0001129919|SXA031900022" title='0001129919 | 保税航空燃油免征增值税优惠 | 《财政部 国家税务总局关于成都双流等3个机场民航国际航班使用保税航空燃油有关税收政策的通知》 财税〔2013〕1号'>0001129919 | 保税航空燃油免征增值税优惠 | 《财政部 国家税务总局关于成都双流等3个机场民航国际航班使用保税航空燃油有关税收政策的通知》 财税〔2013〕1号</option>
                                        <option value="0001129920|SXA031900319" title='0001129920 | 美国ABS船级社免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（九）款'>0001129920 | 美国ABS船级社免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（九）款</option>
                                        <option value="0001129922|SXA031900082" title='0001129922 | 电信业服务免征增值税优惠 | 《财政部 国家税务总局关于将电信业纳入营业税改征增值税试点的通知》 财税〔2014〕43号第六条'>0001129922 | 电信业服务免征增值税优惠 | 《财政部 国家税务总局关于将电信业纳入营业税改征增值税试点的通知》 财税〔2014〕43号第六条</option>
                                        <option value="0001129926|SXA031900530" title='0001129926 | 邮政服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十六）、（十七）款'>0001129926 | 邮政服务免征增值税优惠 | 《财政部 国家税务总局关于将铁路运输和邮政业纳入营业税改征增值税试点的通知》 财税〔2013〕106号《附件3.营业税改征增值税试点过渡政策的规定》第一条第（十六）、（十七）款</option>
                                        <option value="0001129927|SXA031900826" title='0001129927 | 土地所有者出让土地使用权和土地使用者将土地使用权归还给土地所有者免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十七）款'>0001129927 | 土地所有者出让土地使用权和土地使用者将土地使用权归还给土地所有者免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十七）款</option>
                                        <option value="0001129928|SXA031900827" title='0001129928 | 县级以上地方人民政府或自然资源行政主管部门出让、转让或收回自然资源使用权（不含土地使用权）免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十八）款'>0001129928 | 县级以上地方人民政府或自然资源行政主管部门出让、转让或收回自然资源使用权（不含土地使用权）免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（三十八）款</option>
                                        <option value="0001129931|SXA031900833" title='0001129931 | 行政单位之外的其他单位收取的符合条件的政府性基金和行政事业性收费免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十三）款'>0001129931 | 行政单位之外的其他单位收取的符合条件的政府性基金和行政事业性收费免征增值税优惠 | 《财政部 国家税务总局关于全面推开营业税改征增值税试点的通知》 财税〔2016〕36号附件3第一条第（十三）款</option>
                                        <option value="0001129933|SXA031900944" title='0001129933 | 社会团体会费免征增值税优惠 | 《财政部 税务总局关于租入固定资产进项税额抵扣等增值税政策的通知》 财税〔2017〕90号第八条'>0001129933 | 社会团体会费免征增值税优惠 | 《财政部 税务总局关于租入固定资产进项税额抵扣等增值税政策的通知》 财税〔2017〕90号第八条</option>
                                        <option value="0001129999|SXA031900722" title='0001129999 | 自产农产品免征增值税优惠 | 其他'>0001129999 | 自产农产品免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900724" title='0001129999 | 古旧图书免征增值税优惠 | 其他'>0001129999 | 古旧图书免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900725" title='0001129999 | 个人转让著作权免征增值税优惠 | 其他'>0001129999 | 个人转让著作权免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900726" title='0001129999 | 军队、军工系统部分货物免征增值税优惠 | 其他'>0001129999 | 军队、军工系统部分货物免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900727" title='0001129999 | 军队用粮免征增值税优惠 | 其他'>0001129999 | 军队用粮免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900728" title='0001129999 | 血站免征增值税优惠 | 其他'>0001129999 | 血站免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900729" title='0001129999 | 医疗卫生机构免征增值税优惠 | 其他'>0001129999 | 医疗卫生机构免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900731" title='0001129999 | 公安、司法免征增值税优惠 | 其他'>0001129999 | 公安、司法免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900732" title='0001129999 | 避孕药品和用具免征增值税优惠 | 其他'>0001129999 | 避孕药品和用具免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031900830" title='0001129999 | 残疾人员本人为社会提供的服务免征增值税优惠 | 其他'>0001129999 | 残疾人员本人为社会提供的服务免征增值税优惠 | 其他</option>
                                        <option value="0001129999|SXA031999999" title='0001129999 | 其他 | 其他'>0001129999 | 其他 | 其他</option>

                                    </select>

                                </td>
                                <td align="center">
                                    <input type="text" name="HC" style="width: 100%; text-align: center; border: 0px; background-color: transparent;" readonly="readonly" value="6" />

                                    <!-- 隐藏的数据域 -->
                                    <input type="hidden" value="20180801" name="SSSQ_Q" />
                                    <input type="hidden" value="20180831" name="SSSQ_Z" />
                                    <input type="hidden" value="威纳仕（厦门）酒业有限公司" name="NSRMC" />
                                    <input type="hidden" value="91350200MA2Y10EC4K" name="NSRSBH" />
                                    <input type="hidden" value="2" name="XMLX" />
                                    <input type="hidden" name="CANDEL" value="4" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL1" id="Text17" class="money" onchange="changeValue_ms();" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL2" id="Text18" class="money" onchange="changeValue_ms();" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL3" id="Text19" class="input_money_readonly" readonly="true" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL4" id="Text20" class="money" onchange="changeValue_ms();" style="width: 100%" value="0.00" />
                                </td>
                                <td align="center">
                                    <input type="text" name="COL5" id="Text21" class="money" onchange="changeValue_ms();" style="width: 100%" value="0.00" />
                                </td>
                            </tr>

                        </tbody>
                    </table>
                    <table width="96%" style="margin-left: 10px;" border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>提示：（选中任一输入框后） ctrl+insert：插入行 ctrl+delete：删除行
                            </td>
                        </tr>
                    </table>

                    <p>
                        <input type="hidden" name="TABLE_NAME" value="SBB_ZZS_YGZ_YBNSR_JMSSBMXB" />
                        <input type="hidden" name="TABLE_ACTION" value="initial" />

                        <table width="96%" border="0" style="margin-left: 10px;">
                            <tr>
                                <td align="center">
                                    <!--修改在离开页面触发isSave,edit by zhonggc,20060531-->
                                    <!--body onbeforeunload="return isSave();" -->


                                    <body>
                                        <input type="hidden" name="isSave" value="yes">
                                        <!--用于控制退出时是否提示 no-提示 yes-不提示-->

                                        <script language="javascript">
                                            document.all("isSave").value = "no"; //设置退出提示
                                        </script>
                                        <a name="save" value="1" onclick="javascript:setSave();setDisable(this,true);if(!frminsert())setDisable(this,false);" style="cursor: pointer;" class="btnclass">保&nbsp;&nbsp;存
                                        </a>&nbsp;&nbsp;
                                        <a href="./MainServlet_INFORMATION.aspx?TABLE_ACTION=display&NSRSBH=91350200MA2Y10EC4K" class="btnclass">退&nbsp;&nbsp;出
                                        </a>
                                        &nbsp;

                                        <script language="javascript">

                                            function deletesbb() {
                                                if (confirm("是否真的删除申报表？") == true) {
                                                    frmdelete();
                                                }
                                                else {
                                                    //如果不删除时则恢复退出提示
                                                    document.all("isSave").value = "no";
                                                }
                                            }

                                            //在关闭页面前提示用户是否保存
                                            function isSave() {
                                                var flag = document.all("isSave").value;
                                                if (flag != "yes") {
                                                    return "请确定在离开页面之前先保存数据！";
                                                }
                                                return;
                                            }

                                            function setSave()  //设置退出不提示
                                            {
                                                document.all("isSave").value = "yes";
                                            }

                                            function setDisable(but, b_true) {
                                                but.disabled = b_true;
                                            }


                                            function doRollbackSbzt(pzxh) {

                                                if (confirm("是否确认进行申报更正？")) {
                                                    $.ajax({
                                                        type: "POST",
                                                        async: false,
                                                        url: "/wssb/CommonDataServlet",
                                                        data: "type=4&pzxh=" + pzxh,
                                                        success: function (msg) {

                                                            //执行成功，跳转至主表的编辑页面						
                                                            if ($.trim(msg) == '1') {
                                                                changeMenuState();
                                                                location.href = "./null";
                                                            }
                                                            else {
                                                                alert("执行申报更正出错!");
                                                            }
                                                        }
                                                    });
                                                }
                                            }
                                            //【更正申报】更新左边的菜单
                                            function changeMenuState() {
                                                var submitUrl = "null";
                                                var yqsqq = "null";
                                                var yqsqz = "null";
                                                var nsrsbh = "91350200MA2Y10EC4K";
                                                var leftFrameWin = parent.$("#leftFrame")[0].contentWindow;
                                                var click_node_input_id = leftFrameWin.$("#click_input_id").val();//left菜单节点点击的菜单ID
                                                var save_status = leftFrameWin.$("#" + click_node_input_id + "_SAVE_SPAN");
                                                var table_url_input = leftFrameWin.$("#" + click_node_input_id);
                                                var saveSpan = leftFrameWin.$("#" + click_node_input_id + "").closest("div.nav-tow");
                                                var saveState = $(".savestate", saveSpan);
                                                saveState.each(function (i) {
                                                    var table_url_submit = $(this).prev("input");
                                                    if ("Y" == $(this).attr("zssb")) {
                                                        $(this).html("");
                                                        table_url_submit.val(submitUrl);
                                                    }
                                                    //由于申报更正后并且未重新刷新页面时要给未保存的表重新赋url add by zwx20180815
                                                    if ($(this).attr("state") != "submit") {
                                                        var idStr = $(this).attr("id");
                                                        if (idStr.indexOf("_NB_") > -1 && idStr.indexOf("_NB_CX_") == -1) {
                                                            var tableStr = idStr.substring(0, idStr.indexOf("_NB_"));
                                                            var gzUrl = "MainServlet?TABLE_NAME=" + tableStr + "_NB&TABLE_ACTION=initial&NSRSBH=" + nsrsbh + "&SSSQ_Q=" + yqsqq + "&SSSQ_Z=" + yqsqz;
                                                            table_url_submit.val(gzUrl);
                                                        }
                                                    }
                                                    if ($(this).attr("state") == "submit" && $(this).attr("zssb") != "Y") {
                                                        $(this).html("(已保存)");
                                                        $(this).attr({ state: "save" });
                                                        table_url_submit.val(table_url_submit.val().replace("display", "edit"));
                                                    }
                                                });
                                            }
                                            function zssbkk() {
                                                var wssbpath = "../../..//wssb/null";
                                                var isfwsk = $("#cnmce").val();
                                                var wssbtableName = $("#wssbtableName").val();
                                                //Y: 是, N:否
                                                var nr = "";
                                                var zckdiv = "";
                                                if (wssbtableName.indexOf("CWXX2013") == -1 && wssbtableName.indexOf("CWXX2016") == -1) {
                                                    if (isfwsk == true) {
                                                        nr = "<p><input type=\"radio\" value=\"y\" checked=\"checked\" name=\"kk\" id=\"cnm1\" />" +
                                                                "<b>“立即扣款”</b>：“清卡”正式申报时实时扣款。</p>" +
                                                           "<p><input type=\"radio\" value=\"n\" name=\"kk\" id=\"cnm2\"  onclick=\"opendia('" + wssbpath + "')\"/>" +
                                                           "<b>“暂不扣款”</b>：“清卡”正式申报时不扣款，需在正式申报成功后，操作“税费缴纳（网上申报）” 执行扣款。</p>" +
                                                           "<p><b>说明：税控纳税人柜台“清卡”正式申报，统一为“立即扣款”。</b></p>";
                                                    } else {
                                                        nr = "<p><input type=\"radio\" value=\"y\" checked=\"checked\" name=\"kk\" id=\"cnm1\" />" +
                                                        "<b>“立即扣款”</b>：正式申报并实时扣款。</p>" +
                                                           "<p><input type=\"radio\" value=\"n\" name=\"kk\" id=\"cnm2\"  onclick=\"opendia('" + wssbpath + "')\"/>" +
                                                           "<b>“暂不扣款”</b>：正式申报不扣款，需在正式申报成功后，操作“税费缴纳（网上申报）” 执行扣款。</p>";
                                                    }
                                                    ////财务报表不用执行扣款
                                                    zckdiv = parent.$.dialog({
                                                        lock: true,
                                                        id: 'tips1',
                                                        content: "<script>var kkval = $(\"#kkval\").val();if(kkval == \"y\"){$(\"input[name=kk]:eq(0)\").attr(\"checked\",\"checked\");" +
                                                         "}else if(kkval == \"n\"){$(\"input[name=kk]:eq(1)\").attr(\"checked\",\"checked\");}<\/script>" +
                                                            "<div id=\"ts\"><div style=\"width:450px; margin:auto; height:230px;text-align:center; border-radius: 5px;\">" +
                                                          "<div id=\"tstitle\"></div>  <div style=\" border: 1px solid #eee; border-top:none; background: #fff;  \">" +
                                                          " <h1>确认提交申报表？请选择扣款方式：</h1>" + nr + " <div id=\"btn\"><a href=\"javascript:kklc('" + wssbpath + "');\">确定</a>" +
                                                           "<a href=\"javascript:gbck();\">取消</a></div>  </div>  </div></div> ",
                                                        width: '450px',
                                                        height: '240px',
                                                        esc: false,
                                                        title: false,
                                                        cancel: false
                                                    });
                                                } else {
                                                    if (confirm("请确认是否正式申报?")) {
                                                        parent.document.getElementById("workspace").src = wssbpath;
                                                        window.parent.showOverlay();
                                                    }
                                                }
                                            }
                                        </script>
                                    </body>

                                </td>
                            </tr>
                        </table>

                </form>
            </td>
        </tr>

    </table>
    <br>

    <div id="div_status" style="position: absolute; left: 45%; top: 80%; visibility: hidden; z-index: 2;">
        <table width="280" height="100" border="1" cellspacing="0" cellpadding="0" bgcolor="#CCFFCC">
            <tr>
                <td align="center">正在处理中，请耐心等待。。。。！<br />
                    <br />
                    <font color="red" size="2"><strong>请不要重复刷新页面，以免出现重复申报或重复扣款！！！</strong></font>
                </td>
            </tr>

        </table>
    </div>

    <script type="text/javascript">

        var sl = "0.25";
        var action = "initial";

        //初始化text.js文件
        $(function () { contentready(); });
    </script>
</body>
</html>

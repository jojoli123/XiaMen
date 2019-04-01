﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainServlet_SBB_ZZS_YGZ_YBNSR_FB1.aspx.cs" Inherits="JlueTaxSystemXiaMenBS.wssb.MainServlet_SBB_ZZS_YGZ_YBNSR_FB1" %>

<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <!-- xuyb 删除自动刷新
		<meta content="600; " http-equiv=refresh content='1'>
		-->
    <title>《增值税纳税申报表》附列资料（一）</title>
    <script language="javascript" src="/wssb/wssb/public/js/jquery-1.7.2.min.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/commonNew.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/text.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/wssbCommon.js"></script>
    <script language="javascript" src="/wssb/wssb/zzsybnsr_ygz/SBB_ZZS_YGZ_YBNSR_FB1.js?t=20180628"></script>
    <script type="text/javascript" src="/js/initinfo.js"></script>

    <link rel="stylesheet" href="/wssb/wssb/public/style/link.css" type="text/css">

    <script src="public_zzs.js" type="text/javascript" ></script>
    <script type="text/javascript">
        var result = [<%=return_json %>]
        var TABLE_ACTION = "<%=TABLE_ACTION %>";

        $(function () {
            showTableData(result)
            showTableActionDisplay()
            showDate()
        })
    </script>

</head>
<body marginwidth="0.00" marginheight="0.00" topmargin="0.00" leftmargin="0.00" onload="initCal();">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <!--菜单列-->
            <!--<td width="161" height="100%">
					
				</td>-->
            <!--内容列-->
            <td valign="top" align="center" height="100%">
                <br />
                <br />
                <br />

                <table width="1750px" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="center">
                                        <strong>
                                            <font size="3">《增值税纳税申报表》附列资料（一）</font>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <strong>
                                            <font size="2">（本期销售情况明细）</font>
                                        </strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <br />
                                    </td>
                                </tr>


                                <tr>
                                    <td>
                                        <strong>
                                            <font size="4" color="red">您本表部分栏次系统已自动根据使用《商品和服务税收分类与编码》开具发票的情况进行取值，请您确认数据是否一致，如不一致请点击【数据修改】按钮修改数据！</font>
                                        </strong>
                                    </td>
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
                                        <!--表头部分-->
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <form name="xform" method="POST">
                    <tr>
                        <td>
                            <table id="inputTable" border="1" cellspacing="0" cellpadding="0" class="SBB" bordercolor='#C4C6C4' bordercolordark='#ffffff' bordercolorlight="#999999">
                                <input type="hidden" name="TABLE_NAME" value="SBB_ZZS_YGZ_YBNSR_FB1" />
                                <input type="hidden" name="TABLE_ACTION" value="initial" />
                                <input type="hidden" name="NSRSBH" value="91350200MA2Y10EC4K" />
                                <input type="hidden" value="0" name="ISWSSB" />
                                <!-- 第11列数据比对 -->
                                <!--该纳税人当期是否进行过申报-->
                                <input type="hidden" value="20180801" name="SSSQ_Q" />
                                <input type="hidden" value="20180831" name="SSSQ_Z" />
                                <input type="hidden" value="Y" name="JHDSKLFP" />
                                <input type="hidden" value="0" name="BFCJBZ" />
                                <input type="hidden" value="0.00" name="MDTSQTHW" />
                                <input type="hidden" value="0.00" name="MDTSQTFW" />
                                <input type="hidden" value="0" name="SBXFBZ" />
                                <input type="hidden" name="ISXIUGAI" value="" />
                                <tbody id="SB_FB1" repeat="true">
                                    <tr align="center">
                                        <td class="td_idx" rowspan="3" colspan="4" width="350px">项目及栏次</td>
                                        <td class="td_idx" colspan="2" width="200px">开具增值税专用发票</td>
                                        <td class="td_idx" colspan="2" width="200px">开具其他发票</td>
                                        <td class="td_idx" colspan="2" width="200px">未开具发票</td>
                                        <td class="td_idx" colspan="2" width="200px">纳税检查调整</td>
                                        <td class="td_idx" colspan="3" width="300px">合计</td>
                                        <td class="td_idx" rowspan="2" width="100px">服务、不动产和无形资产扣除项目本期实际扣除金额</td>
                                        <td class="td_idx" colspan="2" width="200px">扣除后</td>
                                    </tr>
                                    <tr align="center">
                                        <td class="td_idx" width="105px">销售额</td>
                                        <td class="td_idx" width="95px">销项（应纳）税额</td>
                                        <td class="td_idx" width="105px">销售额</td>
                                        <td class="td_idx" width="95px">销项（应纳）税额</td>
                                        <td class="td_idx" width="105px">销售额</td>
                                        <td class="td_idx" width="95px">销项（应纳）税额</td>
                                        <td class="td_idx" width="105px">销售额</td>
                                        <td class="td_idx" width="95px">销项（应纳）税额</td>
                                        <td class="td_idx" width="105px">销售额</td>
                                        <td class="td_idx" width="95px">销项（应纳）税额</td>
                                        <td class="td_idx" width="100px">价税合计</td>
                                        <td class="td_idx" width="105px">含税（免税）销售额</td>
                                        <td class="td_idx" width="95px">销项（应纳）税额</td>
                                    </tr>
                                    <tr align="center">
                                        <td class="td_idx" width="105px">1</td>
                                        <td class="td_idx" width="95px">2</td>
                                        <td class="td_idx" width="105px">3</td>
                                        <td class="td_idx" width="95px">4</td>
                                        <td class="td_idx" width="105px">5</td>
                                        <td class="td_idx" width="95px">6</td>
                                        <td class="td_idx" width="105px">7</td>
                                        <td class="td_idx" width="95px">8</td>
                                        <td class="td_idx" width="105px">9=1+3+5+7</td>
                                        <td class="td_idx" width="95px">10=2+4+6+8</td>
                                        <td class="td_idx" width="100px">11=9+10</td>
                                        <td class="td_idx" width="100px">12</td>
                                        <td class="td_idx" width="105px">13=11-12</td>
                                        <td class="td_idx" width="95px">14=13÷（100%+税率或征收率）×税率或征收率</td>
                                    </tr>

                                    <!-- 根据业务部门的“一表集成”需求：
										1、第1列、2列各栏次数据：系统自动根据税控专用发票（含机动车发票）的商品编码（货物和服务）、税率分别归属填列，不可修改。 
										2、第3列、第4列各栏次数据：
										（1）当该纳税人属于仅核定税控类发票的纳税人系统自动根据税控普通发票（含电子发票）的商品编码（货物和服务）、税率分别归属填列，不可修改。
										（2）当该纳税人不属于仅核定税控类发票的纳税人。纳税人手工填写。
										add by zwx20170828-->
                                    <tr>
                                        <td class="td_idx" align="left" rowspan="8" width="60px">一、一般计税方法征税	</td>
                                        <td class="td_idx" align="left" rowspan="6" width="60px">全部征税项目	</td>
                                        <td class="td_idx" align="left" width="200px">16%税率的货物及加工修理修配劳务 </td>
                                        <td align="center" class="td_idx" width="30px">1</td>
                                        <!-- 不管专票还是普票，存在部分冲减的时候都不取数，由纳税人填报 modify by zhiweiHuang 20170928 -->

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE1" value="0.00" originvalue="0.00" onchange="changevalue1()" onkeydown="checknum()" name="KJZZSFP_XSE1">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE1" value="0.00" onchange="changevalue1();checkXxseIsAvailable('KJZZSFP_', '1', '1', '2', 0.16);" onkeydown="checknum()" name="KJZZSFP_XXSE1">
                                        </td>

                                        <!-- 仅核定税控发票，且不存在部分冲减的情况 -->

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE1" value="0.00" originvalue="0.00" onchange="changevalue1()" onkeydown="checknum()" name="KJQTFP_XSE1">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE1" value="0.00" onchange="changevalue1();checkXxseIsAvailable('KJQTFP_', '1', '1', '4', 0.16);" onkeydown="checknum()" name="KJQTFP_XXSE1"></td>

                                        <td width="105px">
                                            <input type="text" class="money" id="WKJFP_XSE1" value="0.00" originvalue="0.00" onchange="changevalue1()" onkeydown="checknum()" name="WKJFP_XSE1">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="WKJFP_XXSE1" value="0.00" onchange="changevalue1();checkXxseIsAvailable('WKJFP_', '1', '1', '6', 0.16);" onkeydown="checknum()" name="WKJFP_XXSE1">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="money" id="NSJCTZ_XSE1" value="0.00" originvalue="0.00" onchange="changevalue1()" onkeydown="checknum()" name="NSJCTZ_XSE1">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="NSJCTZ_XXSE1" value="0.00" onchange="changevalue1();checkXxseIsAvailable('NSJCTZ_', '1', '1', '8', 0.16);" onkeydown="checknum()" name="NSJCTZ_XXSE1">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE1" readonly="readonly" value="0.00" name="HJ_XSE1" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE1" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE1">
                                        </td>
                                        <td width="100px">
                                            <div align="center">
                                                ------											
                                            </div>
                                            <input type="hidden" class="money" id="HJ_JSHJ1" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ1">
                                        </td>
                                        <td width="100px">
                                            <div align="center">
                                                ------											
                                            </div>
                                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE1" value="0.00" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE1">
                                        </td>
                                        <td width="105px">
                                            <div align="center">
                                                ------											
                                            </div>
                                            <input type="hidden" class="money" id="KCH_XSE1" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE1">
                                        </td>
                                        <td width="95px">
                                            <div align="center">
                                                ------											
                                            </div>
                                            <input type="hidden" class="money" id="KCH_XXSE1" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XXSE1">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx" align="left">16%税率的服务、不动产和无形资产</td>
                                        <td align="center" class="td_idx">2</td>

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE2" value="0.00" originvalue="0.00" onchange="changevalue2()" onkeydown="checknum()" name="KJZZSFP_XSE2">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE2" value="0.00" onchange="changevalue2();checkXxseIsAvailable('KJZZSFP_', '2', '2', '2', 0.16);" onkeydown="checknum()" name="KJZZSFP_XXSE2"></td>


                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE2" value="0.00" originvalue="0.00" onchange="changevalue2()" onkeydown="checknum()" name="KJQTFP_XSE2">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE2" value="0.00" onchange="changevalue2();checkXxseIsAvailable('KJQTFP_', '2', '2', '4', 0.16);" onkeydown="checknum()" name="KJQTFP_XXSE2"></td>


                                        <td width="105px">
                                            <input type="text" class="money" id="WKJFP_XSE2" value="0.00" originvalue="0.00" onchange="changevalue2()" onkeydown="checknum()" name="WKJFP_XSE2">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="WKJFP_XXSE2" value="0.00" onchange="changevalue2();checkXxseIsAvailable('WKJFP_', '2', '2', '6', 0.16);" onkeydown="checknum()" name="WKJFP_XXSE2">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="money" id="NSJCTZ_XSE2" value="0.00" originvalue="0.00" onchange="changevalue2()" onkeydown="checknum()" name="NSJCTZ_XSE2">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="NSJCTZ_XXSE2" value="0.00" onchange="changevalue2();checkXxseIsAvailable('NSJCTZ_', '2', '2', '8', 0.16);" onkeydown="checknum()" name="NSJCTZ_XXSE2">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE2" readonly="readonly" value="0.00" onchange="changevalue2()" onkeydown="checknum()" name="HJ_XSE2">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE2" readonly="readonly" value="0.00" onkeydown="checknum()" onchange="changevalue2()" name="HJ_XXSE2">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="input_money_readonly" id="HJ_JSHJ2" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ2">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="money" id="YNSFWKCXMBQSJKCJE2" value="0.00" onchange="changevalue2()" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE2">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="KCH_XSE2" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE2">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="KCH_XXSE2" value="0.00" onkeydown="checknum()" onchange="onChangeCol14(2, 0.16, '2');" name="KCH_XXSE2" />
                                        </td>
                                    </tr>
                                    <tr height="22px">
                                        <td class="td_idx" align="left">13%税率</td>
                                        <td align="center" class="td_idx">3</td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE3" value="0.00" originvalue="0.00" onchange="changevalue3()" onkeydown="checknum()" name="KJZZSFP_XSE3">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE3" value="0.00" onchange="changevalue3();checkXxseIsAvailable('KJZZSFP_', '3', '3', '2', 0.13);" onkeydown="checknum()" name="KJZZSFP_XXSE3">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="KJQTFP_XSE3" value="0.00" originvalue="0.00" onchange="changevalue3()" onkeydown="checknum()" name="KJQTFP_XSE3">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="KJQTFP_XXSE3" value="0.00" onchange="changevalue3();checkXxseIsAvailable('KJQTFP_', '3', '3', '4', 0.13);" onkeydown="checknum()" name="KJQTFP_XXSE3">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="WKJFP_XSE3" value="0.00" originvalue="0.00" onchange="changevalue3()" onkeydown="checknum()" name="WKJFP_XSE3">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="WKJFP_XXSE3" value="0.00" onchange="changevalue3();checkXxseIsAvailable('WKJFP_', '3', '3', '6', 0.13);" onkeydown="checknum()" name="WKJFP_XXSE3">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="NSJCTZ_XSE3" value="0.00" originvalue="0.00" onchange="changevalue3()" onkeydown="checknum()" name="NSJCTZ_XSE3">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="NSJCTZ_XXSE3" value="0.00" onchange="changevalue3();checkXxseIsAvailable('NSJCTZ_', '3', '3', '8', 0.13);" onkeydown="checknum()" name="NSJCTZ_XXSE3">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="HJ_XSE3" readonly="readonly" value="0.00" name="HJ_XSE3" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="HJ_XXSE3" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE3">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ3" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ3">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE3" value="0.00" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE3">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XSE3" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE3">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE3" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XXSE3">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx" align="left">10%税率的货物及加工修理修配劳务</td>
                                        <td align="center" class="td_idx">4a</td>

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE23" value="0.00" originvalue="0.00" onchange="changevalue23()" onkeydown="checknum()" name="KJZZSFP_XSE23">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE23" value="0.00" onchange="changevalue23();checkXxseIsAvailable('KJZZSFP_', '23', '4a', '2', 0.10);" onkeydown="checknum()" name="KJZZSFP_XXSE23">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE23" value="0.00" originvalue="0.00" onchange="changevalue23()" onkeydown="checknum()" name="KJQTFP_XSE23">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE23" value="0.00" onchange="changevalue23();checkXxseIsAvailable('KJQTFP_', '23', '4a', '4', 0.10);" onkeydown="checknum()" name="KJQTFP_XXSE23">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="money" id="WKJFP_XSE23" value="0.00" originvalue="0.00" onchange="changevalue23()" onkeydown="checknum()" name="WKJFP_XSE23">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="WKJFP_XXSE23" value="0.00" onchange="changevalue23();checkXxseIsAvailable('WKJFP_', '23', '4a', '6', 0.10);" onkeydown="checknum()" name="WKJFP_XXSE23">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="money" id="NSJCTZ_XSE23" value="0.00" originvalue="0.00" onchange="changevalue23()" onkeydown="checknum()" name="NSJCTZ_XSE23">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="NSJCTZ_XXSE23" value="0.00" onchange="changevalue23();checkXxseIsAvailable('NSJCTZ_', '23', '4a', '8', 0.10);" onkeydown="checknum()" name="NSJCTZ_XXSE23">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE23" readonly="readonly" value="0.00" name="HJ_XSE23" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE23" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE23">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ23" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ23">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE23" value="0.00" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE23">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XSE23" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE23">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------ </div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE23" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XXSE23">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx" align="left">10%税率的服务、不动产和无形资产</td>
                                        <td align="center" class="td_idx">4b</td>

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE4" value="0.00" originvalue="0.00" onchange="changevalue4()" onkeydown="checknum()" name="KJZZSFP_XSE4">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE4" value="0.00" onchange="changevalue4();checkXxseIsAvailable('KJZZSFP_', '4', '4b', '2', 0.10);" onkeydown="checknum()" name="KJZZSFP_XXSE4">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE4" value="0.00" originvalue="0.00" onchange="changevalue4()" onkeydown="checknum()" name="KJQTFP_XSE4">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE4" value="0.00" onchange="changevalue4();checkXxseIsAvailable('KJQTFP_', '4', '4b', '4', 0.10);" onkeydown="checknum()" name="KJQTFP_XXSE4">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="money" id="WKJFP_XSE4" value="0.00" originvalue="0.00" onchange="changevalue4()" onkeydown="checknum()" name="WKJFP_XSE4">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="WKJFP_XXSE4" value="0.00" onchange="changevalue4();checkXxseIsAvailable('WKJFP_', '4', '4b', '6', 0.10);" onkeydown="checknum()" name="WKJFP_XXSE4">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="money" id="NSJCTZ_XSE4" value="0.00" originvalue="0.00" onchange="changevalue4()" onkeydown="checknum()" name="NSJCTZ_XSE4">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="NSJCTZ_XXSE4" value="0.00" onchange="changevalue4();checkXxseIsAvailable('NSJCTZ_', '4', '4b', '8', 0.10);" onkeydown="checknum()" name="NSJCTZ_XXSE4">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE4" readonly="readonly" value="0.00" name="HJ_XSE4" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE4" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE4">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="input_money_readonly" id="HJ_JSHJ4" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ4">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="money" id="YNSFWKCXMBQSJKCJE4" value="0.00" onchange="changevalue4()" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE4">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="KCH_XSE4" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE4">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="KCH_XXSE4" value="0.00" onkeydown="checknum()" onchange="onChangeCol14(4, 0.10, '4b');" name="KCH_XXSE4" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx">6%税率</td>
                                        <td align="center" class="td_idx">5</td>

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE5" value="0.00" originvalue="0.00" onchange="changevalue5()" onkeydown="checknum()" name="KJZZSFP_XSE5">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE5" value="0.00" onchange="changevalue5();checkXxseIsAvailable('KJZZSFP_', '5', '5', '2', 0.06);" onkeydown="checknum()" name="KJZZSFP_XXSE5">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE5" value="0.00" originvalue="0.00" onchange="changevalue5()" onkeydown="checknum()" name="KJQTFP_XSE5">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE5" value="0.00" onchange="changevalue5();checkXxseIsAvailable('KJQTFP_', '5', '5', '4', 0.06);" onkeydown="checknum()" name="KJQTFP_XXSE5">
                                        </td>

                                        <td width="105px">
                                            <input type="text" class="money" id="WKJFP_XSE5" value="0.00" originvalue="0.00" onchange="changevalue5()" onkeydown="checknum()" name="WKJFP_XSE5">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="WKJFP_XXSE5" value="0.00" onchange="changevalue5();checkXxseIsAvailable('WKJFP_', '5', '5', '6', 0.06);" onkeydown="checknum()" name="WKJFP_XXSE5">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="money" id="NSJCTZ_XSE5" value="0.00" originvalue="0.00" onchange="changevalue5()" onkeydown="checknum()" name="NSJCTZ_XSE5">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="NSJCTZ_XXSE5" value="0.00" onchange="changevalue5();checkXxseIsAvailable('NSJCTZ_', '5', '5', '8', 0.06);" onkeydown="checknum()" name="NSJCTZ_XXSE5">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE5" readonly="readonly" value="0.00" name="HJ_XSE5" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE5" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE5">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="input_money_readonly" id="HJ_JSHJ5" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ5">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="money" id="YNSFWKCXMBQSJKCJE5" value="0.00" onchange="changevalue5()" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE5">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="KCH_XSE5" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE5">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="money" id="KCH_XXSE5" value="0.00" onkeydown="checknum()" onchange="onChangeCol14(5, 0.06, '5');" name="KCH_XXSE5" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx" align="left" rowspan="2">其中：即征即退项目</td>
                                        <td class="td_idx">即征即退货物及加工修理修配劳务 </td>
                                        <td align="center" class="td_idx">6</td>
                                        <td width="105px">
                                            <div align="center">------	</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJZZSFP_XSE6" value="0.00" originvalue="0.00" onchange="changevalue6()" name="KJZZSFP_XSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJZZSFP_XXSE6" value="0.00" onchange="changevalue6()" name="KJZZSFP_XXSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJQTFP_XSE6" value="0.00" onchange="changevalue6()" name="KJQTFP_XSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJQTFP_XXSE6" value="0.00" onchange="changevalue6()" name="KJQTFP_XXSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="WKJFP_XSE6" value="0.00" onchange="changevalue6()" name="WKJFP_XSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="WKJFP_XXSE6" value="0.00" onchange="changevalue6()" name="WKJFP_XXSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="NSJCTZ_XSE6" value="0.00" onchange="changevalue6()" name="NSJCTZ_XSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="NSJCTZ_XXSE6" value="0.00" onchange="changevalue6()" name="NSJCTZ_XXSE6" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XSE6" value="0.00" name="HJ_XSE6" onchange="changevalue6()" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XXSE6" value="0.00" onkeydown="checknum()" onchange="changevalue6()" name="HJ_XXSE6">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ6" readonly="readonly" value="0.00" onchange="changevalue6()" onkeydown="checknum()" name="HJ_JSHJ6">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="YNSFWKCXMBQSJKCJE6" value="0.00" onchange="changevalue6()" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE6">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XSE6" readonly="readonly" value="0.00" onchange="changevalue6()" onkeydown="checknum()" name="KCH_XSE6">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE6" readonly="readonly" value="0.00" onchange="changevalue6()" onkeydown="checknum()" name="KCH_XXSE6">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx">即征即退服务、不动产和无形资产</td>
                                        <td align="center" class="td_idx">7</td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KJZZSFP_XSE7" value="0.00" originvalue="0.00" name="KJZZSFP_XSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KJZZSFP_XXSE7" value="0.00" name="KJZZSFP_XXSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KJQTFP_XSE7" value="0.00" name="KJQTFP_XSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KJQTFP_XXSE7" value="0.00" name="KJQTFP_XXSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="WKJFP_XSE7" value="0.00" name="WKJFP_XSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="WKJFP_XXSE7" value="0.00" name="WKJFP_XXSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="NSJCTZ_XSE7" value="0.00" name="NSJCTZ_XSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="NSJCTZ_XXSE7" value="0.00" name="NSJCTZ_XXSE7" onchange="changevalue7()" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XSE7" value="0.00" name="HJ_XSE7" onkeydown="checknum()" onchange="changevalue7()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XXSE7" value="0.00" onkeydown="checknum()" onchange="changevalue7()" name="HJ_XXSE7">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="input_money_readonly" id="HJ_JSHJ7" readonly="readonly" value="0.00" onchange="changevalue7()" onkeydown="checknum()" name="HJ_JSHJ7">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="input_money_readonly" readonly='readonly' id="YNSFWKCXMBQSJKCJE7" value="0.00" onkeydown="checknum()" onchange="changevalue7()" name="YNSFWKCXMBQSJKCJE7">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="KCH_XSE7" readonly="readonly" value="0.00" onchange="changevalue7()" onkeydown="checknum()" name="KCH_XSE7">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly='readonly' id="KCH_XXSE7" value="0.00" onkeydown="checknum()" onchange="changevalue7()" name="KCH_XXSE7">
                                        </td>
                                    </tr>
                                    <!-- <tr>
											<td class="td_idx" align="left" rowspan="11" width="90px"> 二、简易计税方法征税</td>
											<td class="td_idx" align="left" rowspan="9" width="90px"> 全部征税项目</td>
											<td class="td_idx" align="left"> 6%征税率 </td>
											<td align="center" class="td_idx"> 8 </td>
											<td width="95px">
												<input type="text" class="money" id="row8" value="0.00" originValue="0.00" onchange="changevalue8()" onkeydown="checknum()" name="KJZZSFP_XSE8" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row8" value="0.00" onchange="changevalue8()" onkeydown="checknum()" name="KJZZSFP_XXSE8" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row8" value="0.00" originValue="0.00" onchange="changevalue8()" onkeydown="checknum()" name="KJQTFP_XSE8" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row8" value="0.00" onchange="changevalue8()" onkeydown="checknum()" name="KJQTFP_XXSE8" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row8" value="0.00" originValue="0.00" onchange="changevalue8()" onkeydown="checknum()" name="WKJFP_XSE8" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row8" value="0.00" onchange="changevalue8()" onkeydown="checknum()" name="WKJFP_XXSE8" >											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row8" value="0.00" name="NSJCTZ_XSE8" onkeydown="checknum()" >											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row8" value="0.00" name="NSJCTZ_XXSE8" onkeydown="checknum()" >											</td>
											<td width="95px">
												<input type="text" class="input_money_readonly" id="row8" readonly="readonly" value="0.00" name="HJ_XSE8" onkeydown="checknum()" >											</td>
											<td width="95px">
												<input type="text" class="input_money_readonly" id="row8" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE8">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row8" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ8">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row8" value="0.00" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE8">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row8" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE8">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row8" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XXSE8">											</td>
										</tr>
										 -->
                                    <tr>
                                        <td class="td_idx" align="left" rowspan="11">二、简易计税方法征税</td>
                                        <td class="td_idx" align="left" rowspan="9">全部征税项目</td>
                                        <td class="td_idx" align="left">6%征税率 </td>
                                        <td align="center" class="td_idx">8</td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE8" value="0.00" originvalue="0.00" onchange="changevalue8()" onkeydown="checknum()" name="KJZZSFP_XSE8">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE8" value="0.00" onchange="changevalue8();checkXxseIsAvailable('KJZZSFP_', '8', '8', '2', 0.06);" onkeydown="checknum()" name="KJZZSFP_XXSE8">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE8" value="0.00" originvalue="0.00" onchange="changevalue8()" onkeydown="checknum()" name="KJQTFP_XSE8">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE8" value="0.00" onchange="changevalue8();checkXxseIsAvailable('KJQTFP_', '8', '8', '4', 0.06);" onkeydown="checknum()" name="KJQTFP_XXSE8">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XSE8" value="0.00" originvalue="0.00" onchange="changevalue8()" onkeydown="checknum()" name="WKJFP_XSE8">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XXSE8" value="0.00" onchange="changevalue8();checkXxseIsAvailable('WKJFP_', '8', '8', '6', 0.06);" onkeydown="checknum()" name="WKJFP_XXSE8">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="NSJCTZ_XSE8" value="0.00" name="NSJCTZ_XSE8" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="NSJCTZ_XXSE8" value="0.00" name="NSJCTZ_XXSE8" onkeydown="checknum()">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE8" readonly="readonly" value="0.00" name="HJ_XSE8" onkeydown="checknum()">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE8" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_XXSE8">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ8" readonly="readonly" value="0.00" onkeydown="checknum()" name="HJ_JSHJ8">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE8" value="0.00" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE8">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XSE8" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XSE8">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE8" readonly="readonly" value="0.00" onkeydown="checknum()" name="KCH_XXSE8">
                                        </td>
                                    </tr>
                                    <!--  新增需求<tr>
											<td class="td_idx" align="left"> 5%征收率的货物及加工修理修配劳务 </td>
											<td align="center" class="td_idx"> 9a	</td>
											<td width="95px">
												<input type="text" class="money" id="row9" value="0.00" originValue="0.00"  onkeydown="checknum()" onchange="changevalue9()" name="KJZZSFP_XSE9" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row9" value="0.00" onkeydown="checknum()" onchange="changevalue9()" name="KJZZSFP_XXSE9" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row9" value="0.00" originValue="0.00" onkeydown="checknum()" onchange="changevalue9()" name="KJQTFP_XSE9" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row9" value="0.00" onkeydown="checknum()" onchange="changevalue9()" name="KJQTFP_XXSE9" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row9" value="0.00" originValue="0.00" onkeydown="checknum()" onchange="changevalue9()" name="WKJFP_XSE9" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row9" value="0.00"  onkeydown="checknum()" onchange="changevalue9()" name="WKJFP_XXSE9" >											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row9" value="0.00" name="NSJCTZ_XSE9" >											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row9" value="0.00" name="NSJCTZ_XXSE9" >											</td>
											<td width="95px">
												<input type="text" class="input_money_readonly" id="row9" readonly="readonly" value="0.00" name="HJ_XSE9" >											</td>
											<td width="95px">
												<input type="text" class="input_money_readonly" id="row9" readonly="readonly" value="0.00" name="HJ_XXSE9">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="menoy" id="row9" readonly="readonly" value="0.00" name="HJ_JSHJ9">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row9" value="0.00" name="YNSFWKCXMBQSJKCJE9">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row9" readonly="readonly" value="0.00" name="KCH_XSE9">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row9" readonly="readonly" value="0.00" name="KCH_XXSE9">											</td>
										</tr>
										-->
                                    <tr>
                                        <td class="td_idx" align="left">5%征收率的货物及加工修理修配劳务</td>
                                        <td align="center" class="td_idx">9a</td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE9" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue9()" name="KJZZSFP_XSE9">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE9" value="0.00" onkeydown="checknum()" onchange="changevalue9();checkXxseIsAvailable('KJZZSFP_', '9', '9a', '2', 0.05);" name="KJZZSFP_XXSE9">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE9" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue9()" name="KJQTFP_XSE9">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE9" value="0.00" onkeydown="checknum()" onchange="changevalue9();checkXxseIsAvailable('KJQTFP_', '9', '9a', '4', 0.05);" name="KJQTFP_XXSE9">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XSE9" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue9()" name="WKJFP_XSE9">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XXSE9" value="0.00" onkeydown="checknum()" onchange="changevalue9();checkXxseIsAvailable('WKJFP_', '9', '9a', '6', 0.05);" name="WKJFP_XXSE9">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="NSJCTZ_XSE9" value="0.00" name="NSJCTZ_XSE9">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="NSJCTZ_XXSE9" value="0.00" name="NSJCTZ_XXSE9">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE9" readonly="readonly" value="0.00" name="HJ_XSE9">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE9" readonly="readonly" value="0.00" name="HJ_XXSE9">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="menoy" id="HJ_JSHJ9" readonly="readonly" value="0.00" name="HJ_JSHJ9">
                                        </td>
                                        <td width="100px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE9" value="0.00" name="YNSFWKCXMBQSJKCJE9">
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XSE9" readonly="readonly" value="0.00" name="KCH_XSE9">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE9" readonly="readonly" value="0.00" name="KCH_XXSE9">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_idx" align="left">5%征收率的服务、不动产和无形资产</td>
                                        <td align="center" class="td_idx">9b</td>

                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE22" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue22()" name="KJZZSFP_XSE22">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE22" value="0.00" onkeydown="checknum()" onchange="changevalue22();checkXxseIsAvailable('KJZZSFP_', '22', '9b', '2', 0.05);" name="KJZZSFP_XXSE22">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE22" value="0.00" originvalue="0.00" onchange="changevalue22()" onkeydown="checknum()" name="KJQTFP_XSE22">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE22" value="0.00" onchange="changevalue22();checkXxseIsAvailable('KJQTFP_', '22', '9b', '4', 0.05);" onkeydown="checknum()" name="KJQTFP_XXSE22">
                                        </td>


                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="WKJFP_XSE22" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue22()" name="WKJFP_XSE22" readonly='readonly'>
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="WKJFP_XXSE22" value="0.00" onkeydown="checknum()" onchange="changevalue22();checkXxseIsAvailable('WKJFP_', '22', '9b', '6', 0.05);" name="WKJFP_XXSE22" readonly='readonly'>
                                        </td>
                                        <td width="105px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="NSJCTZ_XSE22" value="0.00" name="NSJCTZ_XSE22">
                                        </td>
                                        <td width="95px">
                                            <div align="center">------</div>
                                            <input type="hidden" class="money" id="NSJCTZ_XXSE22" value="0.00" name="NSJCTZ_XXSE22">
                                        </td>
                                        <td width="105px">
                                            <input type="text" class="input_money_readonly" id="HJ_XSE22" readonly="readonly" value="0.00" name="HJ_XSE22">
                                        </td>
                                        <td width="95px">
                                            <input type="text" class="input_money_readonly" id="HJ_XXSE22" readonly="readonly" value="0.00" name="HJ_XXSE22">
                                        </td>
                                        <td width="100px">
                                            <input type="text" class="input_money_readonly" id="HJ_JSHJ22" readonly="readonly" value="0.00" onchange="changevalue22()" onkeydown="checknum()" name="HJ_JSHJ22">
                                        </td>
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="YNSFWKCXMBQSJKCJE22" value="0.00" onchange="changevalue22()" onkeydown="checknum()" name="YNSFWKCXMBQSJKCJE22">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="KCH_XSE22" readonly="readonly" value="0.00" onchange="changevalue22()" onkeydown="checknum()" name="KCH_XSE22">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="KCH_XXSE22" value="0.00" onkeydown="checknum()" onchange="onChangeCol14(22, 0.05, '9b');" name="KCH_XXSE22" readonly='readonly' />
                        </td>
                    </tr>
                    <!-- 新增需求 <tr>
											<td class="td_idx" align="left"> 4%征税率 </td>
											<td align="center" class="td_idx"> 10 </td>
											<td width="95px">
												<input type="text" class="money" id="row10" value="0.00" originValue="0.00"  onkeydown="checknum()" onchange="changevalue10()" name="KJZZSFP_XSE10" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row10" value="0.00"  onkeydown="checknum()" onchange="changevalue10()" name="KJZZSFP_XXSE10" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row10" value="0.00" originValue="0.00" onkeydown="checknum()" onchange="changevalue10()" name="KJQTFP_XSE10" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row10" value="0.00" onkeydown="checknum()" onchange="changevalue10()" name="KJQTFP_XXSE10" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row10" value="0.00" originValue="0.00" onkeydown="checknum()" onchange="changevalue10()" name="WKJFP_XSE10" >											</td>
											<td width="95px">
												<input type="text" class="money" id="row10" value="0.00"  onkeydown="checknum()" onchange="changevalue10()" name="WKJFP_XXSE10" >											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row10" value="0.00" name="NSJCTZ_XSE10" >											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row10" value="0.00" name="NSJCTZ_XXSE10" >											</td>
											<td width="95px">
												<input type="text" class="input_money_readonly" id="row10" readonly="readonly" value="0.00" name="HJ_XSE10" >											</td>
											<td width="95px">
												<input type="text" class="input_money_readonly" id="row10" readonly="readonly" value="0.00" name="HJ_XXSE10">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row10" readonly="readonly" value="0.00" name="HJ_JSHJ10">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="money" id="row10" value="0.00" name="YNSFWKCXMBQSJKCJE10">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row10" readonly="readonly" value="0.00" name="KCH_XSE10">											</td>
											<td width="95px">
												<div align="center">------</div>
												<input type="hidden" class="input_money_readonly" id="row10" readonly="readonly" value="0.00" name="KCH_XXSE10">											</td>
										</tr>
										-->
                    <tr>
                        <td class="td_idx" align="left">4%征税率</td>
                        <td align="center" class="td_idx">10</td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE10" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue10()" name="KJZZSFP_XSE10">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE10" value="0.00" onkeydown="checknum()" onchange="changevalue10();checkXxseIsAvailable('KJZZSFP_', '10', '10', '2', 0.04);" name="KJZZSFP_XXSE10">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE10" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue10()" name="KJQTFP_XSE10">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE10" value="0.00" onkeydown="checknum()" onchange="changevalue10();checkXxseIsAvailable('KJQTFP_', '10', '10', '4', 0.04);" name="KJQTFP_XXSE10">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XSE10" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue10()" name="WKJFP_XSE10">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XXSE10" value="0.00" onkeydown="checknum()" onchange="changevalue10();checkXxseIsAvailable('WKJFP_', '10', '10', '6', 0.04);" name="WKJFP_XXSE10">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE10" value="0.00" name="NSJCTZ_XSE10">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE10" value="0.00" name="NSJCTZ_XXSE10">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE10" readonly="readonly" value="0.00" name="HJ_XSE10">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="HJ_XXSE10" readonly="readonly" value="0.00" name="HJ_XXSE10">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="HJ_JSHJ10" readonly="readonly" value="0.00" name="HJ_JSHJ10">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE10" value="0.00" name="YNSFWKCXMBQSJKCJE10">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XSE10" readonly="readonly" value="0.00" name="KCH_XSE10">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE10" readonly="readonly" value="0.00" name="KCH_XXSE10">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx" align="left">3%征收率的货物及加工修理修配劳务</td>
                        <td align="center" class="td_idx">11</td>

                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE11" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue11()" name="KJZZSFP_XSE11">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE11" value="0.00" onkeydown="checknum()" onchange="changevalue11();checkXxseIsAvailable('KJZZSFP_', '11', '11', '2', 0.03);" name="KJZZSFP_XXSE11">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE11" value="0.00" originvalue="0.00" onchange="changevalue11()" onkeydown="checknum()" name="KJQTFP_XSE11">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE11" value="0.00" onchange="changevalue11();checkXxseIsAvailable('KJQTFP_', '11', '11', '4', 0.03);" onkeydown="checknum()" name="KJQTFP_XXSE11">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="WKJFP_XSE11" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue11()" name="WKJFP_XSE11" readonly='readonly'>
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="WKJFP_XXSE11" value="0.00" onkeydown="checknum()" onchange="changevalue11();checkXxseIsAvailable('WKJFP_', '11', '11', '6', 0.03);" name="WKJFP_XXSE11" readonly='readonly'>
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE11" value="0.00" name="NSJCTZ_XSE11">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE11" value="0.00" name="NSJCTZ_XXSE11">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE11" readonly="readonly" value="0.00" name="HJ_XSE11">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="HJ_XXSE11" readonly="readonly" value="0.00" name="HJ_XXSE11">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="menoy" id="HJ_JSHJ11" readonly="readonly" value="0.00" name="HJ_JSHJ11">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE11" value="0.00" name="YNSFWKCXMBQSJKCJE11">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XSE11" readonly="readonly" value="0.00" name="KCH_XSE11">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE11" readonly="readonly" value="0.00" name="KCH_XXSE11">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx">3%征收率的服务、不动产和无形资产</td>
                        <td align="center" class="td_idx">12</td>

                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE12" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue12()" name="KJZZSFP_XSE12">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE12" value="0.00" onkeydown="checknum()" onchange="changevalue12();checkXxseIsAvailable('KJZZSFP_', '12', '12', '2', 0.03);" name="KJZZSFP_XXSE12">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE12" value="0.00" originvalue="0.00" onchange="changevalue12()" onkeydown="checknum()" name="KJQTFP_XSE12">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE12" value="0.00" onchange="changevalue12();checkXxseIsAvailable('KJQTFP_', '12', '12', '4', 0.03);" onkeydown="checknum()" name="KJQTFP_XXSE12">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="WKJFP_XSE12" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue12()" name="WKJFP_XSE12" readonly='readonly'>
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="WKJFP_XXSE12" value="0.00" onkeydown="checknum()" onchange="changevalue12();checkXxseIsAvailable('WKJFP_', '12', '12', '6', 0.03);" name="WKJFP_XXSE12" readonly='readonly'>
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE12" value="0.00" name="NSJCTZ_XSE12">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE12" value="0.00" name="NSJCTZ_XXSE12">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE12" readonly="readonly" value="0.00" name="HJ_XSE12">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="HJ_XXSE12" readonly="readonly" value="0.00" name="HJ_XXSE12">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" id="HJ_JSHJ12" readonly="readonly" value="0.00" name="HJ_JSHJ12">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" id="YNSFWKCXMBQSJKCJE12" value="0.00" onchange="changevalue12()" name="YNSFWKCXMBQSJKCJE12" readonly='readonly'>
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="KCH_XSE12" readonly="readonly" value="0.00" name="KCH_XSE12">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" id="KCH_XXSE12" value="0.00" onchange="onChangeCol14(12, 0.03, '12');" name="KCH_XXSE12" readonly='readonly' />
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx">预征率     %</td>
                        <td align="center" class="td_idx">13a</td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE19" value="0.00" originvalue="0.00" onkeydown="checknum()" name="KJZZSFP_XSE19">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE19" value="0.00" onkeydown="checknum()" name="KJZZSFP_XXSE19">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE19" value="0.00" originvalue="0.00" onkeydown="checknum()" name="KJQTFP_XSE19">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE19" value="0.00" onkeydown="checknum()" name="KJQTFP_XXSE19">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XSE19" value="0.00" originvalue="0.00" onkeydown="checknum()" name="WKJFP_XSE19">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XXSE19" value="0.00" onkeydown="checknum()" name="WKJFP_XXSE19">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="NSJCTZ_XSE19" value="0.00" name="NSJCTZ_XSE19">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="NSJCTZ_XXSE19" value="0.00" name="NSJCTZ_XXSE19">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_XSE19" value="0.00" name="HJ_XSE19">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_XXSE19" value="0.00" name="HJ_XXSE19">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_JSHJ19" value="0.00" name="HJ_JSHJ19">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="YNSFWKCXMBQSJKCJE19" value="0.00" name="YNSFWKCXMBQSJKCJE19">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KCH_XSE19" value="0.00" name="KCH_XSE19">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KCH_XXSE19" value="0.00" name="KCH_XXSE19">
                        </td>
                    </tr>

                    <tr>
                        <td class="td_idx">预征率     %</td>
                        <td align="center" class="td_idx">13b</td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE20" value="0.00" originvalue="0.00" onkeydown="checknum()" name="KJZZSFP_XSE20">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE20" value="0.00" onkeydown="checknum()" name="KJZZSFP_XXSE20">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE20" value="0.00" originvalue="0.00" onkeydown="checknum()" name="KJQTFP_XSE20">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE20" value="0.00" onkeydown="checknum()" name="KJQTFP_XXSE20">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XSE20" value="0.00" originvalue="0.00" onkeydown="checknum()" name="WKJFP_XSE20">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XXSE20" value="0.00" onkeydown="checknum()" name="WKJFP_XXSE20">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="NSJCTZ_XSE20" value="0.00" name="NSJCTZ_XSE20">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="NSJCTZ_XXSE20" value="0.00" name="NSJCTZ_XXSE20">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_XSE20" value="0.00" name="HJ_XSE20">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_XXSE20" value="0.00" name="HJ_XXSE20">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_JSHJ20" value="0.00" name="HJ_JSHJ20">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="YNSFWKCXMBQSJKCJE20" value="0.00" name="YNSFWKCXMBQSJKCJE20">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KCH_XSE20" value="0.00" name="KCH_XSE20">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KCH_XXSE20" value="0.00" name="KCH_XXSE20">
                        </td>
                    </tr>

                    <tr>
                        <td class="td_idx">预征率     %</td>
                        <td align="center" class="td_idx">13c</td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE21" value="0.00" name="KJZZSFP_XSE21">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE21" value="0.00" name="KJZZSFP_XXSE21">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE21" value="0.00" name="KJQTFP_XSE21">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XXSE21" value="0.00" name="KJQTFP_XXSE21">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XSE21" value="0.00" name="WKJFP_XSE21">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="WKJFP_XXSE21" value="0.00" name="WKJFP_XXSE21">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="NSJCTZ_XSE21" value="0.00" name="NSJCTZ_XSE21">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly="readonly" id="NSJCTZ_XXSE21" value="0.00" name="NSJCTZ_XXSE21">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_XSE21" value="0.00" name="HJ_XSE21">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_XXSE21" value="0.00" name="HJ_XXSE21">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="HJ_JSHJ21" value="0.00" name="HJ_JSHJ21">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="YNSFWKCXMBQSJKCJE21" value="0.00" name="YNSFWKCXMBQSJKCJE21">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KCH_XSE21" value="0.00" name="KCH_XSE21"></td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KCH_XXSE21" value="0.00" name="KCH_XXSE21">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx" align="left" rowspan="2">其中：即征即退项目</td>
                        <td class="td_idx" align="left">即征即退的货物及加工修理修配劳务</td>
                        <td align="center" class="td_idx">14</td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJZZSFP_XSE13" value="0.00" originvalue="0.00" name="KJZZSFP_XSE13">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJZZSFP_XXSE13" value="0.00" name="KJZZSFP_XXSE13">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJQTFP_XSE13" value="0.00" name="KJQTFP_XSE13">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJQTFP_XXSE13" value="0.00" name="KJQTFP_XXSE13">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="WKJFP_XSE13" value="0.00" name="WKJFP_XSE13">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="WKJFP_XXSE13" value="0.00" name="WKJFP_XXSE13">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" id="NSJCTZ_XSE13" value="0.00" name="NSJCTZ_XSE13">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="NSJCTZ_XXSE13" value="0.00" name="NSJCTZ_XXSE13">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XSE13" value="0.00" onchange="changevalue13()" name="HJ_XSE13">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XXSE13" value="0.00" onchange="changevalue13()" name="HJ_XXSE13">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ13" readonly="readonly" value="0.00" onchange="changevalue13()" name="HJ_JSHJ13">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="YNSFWKCXMBQSJKCJE13" value="0.00" onchange="changevalue13()" name="YNSFWKCXMBQSJKCJE13">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XSE13" readonly="readonly" value="0.00" onchange="changevalue13()" name="KCH_XSE13">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE13" readonly="readonly" value="0.00" onchange="changevalue13()" name="KCH_XXSE13">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx">即征即退服务、不动产和无形资产</td>
                        <td align="center" class="td_idx">15</td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJZZSFP_XSE14" value="0.00" originvalue="0.00" name="KJZZSFP_XSE14">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJZZSFP_XXSE14" value="0.00" name="KJZZSFP_XXSE14">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJQTFP_XSE14" value="0.00" name="KJQTFP_XSE14">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="KJQTFP_XXSE14" value="0.00" name="KJQTFP_XXSE14">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="WKJFP_XSE14" value="0.00" name="WKJFP_XSE14">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="WKJFP_XXSE14" value="0.00" name="WKJFP_XXSE14">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="NSJCTZ_XSE14" value="0.00" name="NSJCTZ_XSE14">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" readonly='readonly' id="NSJCTZ_XXSE14" value="0.00" name="NSJCTZ_XXSE14">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XSE14" value="0.00" name="HJ_XSE14" onchange="changevalue14()">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="HJ_XXSE14" value="0.00" onchange="changevalue14()" name="HJ_XXSE14">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" id="HJ_JSHJ14" value="0.00" onchange="changevalue14()" name="HJ_JSHJ14">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="YNSFWKCXMBQSJKCJE14" value="0.00" onchange="changevalue14()" name="YNSFWKCXMBQSJKCJE14">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="KCH_XSE14" value="0.00" onchange="changevalue14()" name="KCH_XSE14">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly='readonly' id="KCH_XXSE14" value="0.00" onchange="changevalue14()" name="KCH_XXSE14">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx" align="left" rowspan="2">三、免抵退税</td>
                        <td class="td_idx" align="left" colspan="2">货物及加工修理修配劳务 </td>
                        <td align="center" class="td_idx">16</td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJZZSFP_XSE15" value="0.00" originvalue="0.00" name="KJZZSFP_XSE15">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJZZSFP_XXSE15" value="0.00" name="KJZZSFP_XXSE15">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE15" value="0.00" onchange="changevalue15()" onkeydown="checknum()" name="KJQTFP_XSE15">
                        </td>


                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJQTFP_XXSE15" value="0.00" name="KJQTFP_XXSE15">
                        </td>
                        <td width="105px">
                            <input type="text" class="money" id="WKJFP_XSE15" value="0.00" onkeydown="checknum()" onchange="changevalue15()" name="WKJFP_XSE15"></td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="WKJFP_XXSE15" value="0.00" name="WKJFP_XXSE15">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE15" value="0.00" name="NSJCTZ_XSE15">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE15" value="0.00" name="NSJCTZ_XXSE15">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE15" readonly="readonly" value="0.00" name="HJ_XSE15">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="HJ_XXSE15" readonly="readonly" value="0.00" name="HJ_XXSE15">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ15" readonly="readonly" value="0.00" name="HJ_JSHJ15">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE15" value="0.00" name="YNSFWKCXMBQSJKCJE15">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XSE15" readonly="readonly" value="0.00" name="KCH_XSE15">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE15" readonly="readonly" value="0.00" name="KCH_XXSE15">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx" align="left" colspan="2">服务、不动产和无形资产</td>
                        <td align="center" class="td_idx">17</td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJZZSFP_XSE16" value="0.00" originvalue="0.00" name="KJZZSFP_XSE16">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJZZSFP_XXSE16" value="0.00" name="KJZZSFP_XXSE16">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE16" value="0.00" onchange="changevalue16()" onkeydown="checknum()" name="KJQTFP_XSE16">
                        </td>


                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJQTFP_XXSE16" value="0.00" name="KJQTFP_XXSE16">
                        </td>
                        <td width="105px">
                            <input type="text" class="money" id="WKJFP_XSE16" value="0.00" onkeydown="checknum()" onchange="changevalue16()" name="WKJFP_XSE16">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="WKJFP_XXSE16" value="0.00" name="WKJFP_XXSE16">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE16" value="0.00" name="NSJCTZ_XSE16">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE16" value="0.00" name="NSJCTZ_XXSE16">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE16" readonly="readonly" value="0.00" name="HJ_XSE16">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="HJ_XXSE16" readonly="readonly" value="0.00" name="HJ_XXSE16">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" id="HJ_JSHJ16" readonly="readonly" value="0.00" name="HJ_JSHJ16">
                        </td>
                        <td width="100px">
                            <input type="text" class="money" id="YNSFWKCXMBQSJKCJE16" value="0.00" onchange="changevalue16()" name="YNSFWKCXMBQSJKCJE16">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="KCH_XSE16" readonly="readonly" value="0.00" name="KCH_XSE16">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE16" readonly="readonly" value="0.00" name="KCH_XXSE16">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx" align="left" rowspan="2">四、免税</td>
                        <td class="td_idx" align="left" colspan="2">货物及加工修理修配劳务</td>
                        <td align="center" class="td_idx">18</td>

                        <!-- 20180628，小曾提出，增值税一般纳税人附表一的18行第1、2列不开放，关闭。    by   wxf   20180628 -->
                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XSE17" value="0.00" originvalue="0.00" onkeydown="checknum()" onchange="changevalue17()" name="KJZZSFP_XSE17">
                        </td>
                        <td width="95px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJZZSFP_XXSE17" value="0.00" onkeydown="checknum()" onchange="changevalue17()" name="KJZZSFP_XXSE17">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE17" value="0.00" onchange="changevalue17()" onkeydown="checknum()" name="KJQTFP_XSE17">
                        </td>


                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJQTFP_XXSE17" value="0.00" name="KJQTFP_XXSE17">
                        </td>
                        <td width="105px">
                            <input type="text" class="money" id="WKJFP_XSE17" value="0.00" onkeydown="checknum()" onchange="changevalue17()" name="WKJFP_XSE17"></td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="WKJFP_XXSE17" value="0.00" name="WKJFP_XXSE17">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE17" value="0.00" name="NSJCTZ_XSE17">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE17" value="0.00" name="NSJCTZ_XXSE17">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE17" readonly="readonly" value="0.00" name="HJ_XSE17">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="HJ_XXSE17" readonly="readonly" value="0.00" name="HJ_XXSE17">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="HJ_JSHJ17" readonly="readonly" value="0.00" name="HJ_JSHJ17">
                        </td>
                        <td width="100px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="YNSFWKCXMBQSJKCJE17" value="0.00" name="YNSFWKCXMBQSJKCJE17">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XSE17" readonly="readonly" value="0.00" name="KCH_XSE17">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE17" readonly="readonly" value="0.00" name="KCH_XXSE17">
                        </td>
                    </tr>
                    <tr>
                        <td class="td_idx" align="left" colspan="2">服务、不动产和无形资产</td>
                        <td align="center" class="td_idx">19</td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJZZSFP_XSE18" value="0.00" originvalue="0.00" name="KJZZSFP_XSE18">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJZZSFP_XXSE18" value="0.00" name="KJZZSFP_XXSE18">
                        </td>


                        <td width="105px">
                            <input type="text" class="input_money_readonly" readonly="readonly" id="KJQTFP_XSE18" value="0.00" onchange="changevalue18()" onkeydown="checknum()" name="KJQTFP_XSE18">
                        </td>


                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="KJQTFP_XXSE18" value="0.00" name="KJQTFP_XXSE18">
                        </td>
                        <td width="105px">
                            <input type="text" class="money" id="WKJFP_XSE18" value="0.00" onkeydown="checknum()" onchange="changevalue18()" name="WKJFP_XSE18"></td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="WKJFP_XXSE18" value="0.00" name="WKJFP_XXSE18">
                        </td>
                        <td width="105px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XSE18" value="0.00" name="NSJCTZ_XSE18">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="NSJCTZ_XXSE18" value="0.00" name="NSJCTZ_XXSE18">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="HJ_XSE18" readonly="readonly" value="0.00" name="HJ_XSE18">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="money" id="HJ_XXSE18" readonly="readonly" value="0.00" name="HJ_XXSE18">
                        </td>
                        <td width="100px">
                            <input type="text" class="input_money_readonly" id="HJ_JSHJ18" readonly="readonly" value="0.00" name="HJ_JSHJ18">
                        </td>
                        <td width="100px">
                            <input type="text" class="money" id="YNSFWKCXMBQSJKCJE18" value="0.00" onchange="changevalue18()" name="YNSFWKCXMBQSJKCJE18">
                        </td>
                        <td width="105px">
                            <input type="text" class="input_money_readonly" id="KCH_XSE18" readonly="readonly" value="0.00" name="KCH_XSE18">
                        </td>
                        <td width="95px">
                            <div align="center">------</div>
                            <input type="hidden" class="input_money_readonly" id="KCH_XXSE18" value="0.00" name="KCH_XXSE18">
                        </td>
                    </tr>
                    </tbody>
                </table>
                <br />
                <br />
                <div align="center">

                    <span style="cursor: pointer;" onclick="javascript: removeReadOnlyForDefaultCom();" class="btnclass">数&nbsp;&nbsp;据&nbsp;&nbsp;修&nbsp;&nbsp;改</span>&nbsp;
				                    
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

                    <!--需要数据：表对象名称tableName-->
                </div>
            </td>
        </tr>
        </form>
    </table>

    </td>
			</tr>
		</table>
		         
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
    <!--提示框：点击“正式申报”，在成功提交前显示“正在处理中，请稍候！”-->
</body>
<script type="text/javascript">

    var isZpComReadOnly = "true";
    var isPtComReadOnly = "true";
    var mdtzgFlag = "false";
    var mdtsQtHw = "0.00";
    var mdtsQtFw = "0.00";
    var bfcjbz = "0";
    var sbxfbz = "0";
    var szlbdm = "03";
    var jzjt = "N";
    var jyzs = "N";
    var action = "initial";
    $(function () {

        //初始化text.js文件
        contentready();

        if ("initial" == action) {
            /**
             * 弹窗提醒的编号
             */
            var alertIndex = 1;

            /**
             * 弹窗的文本
             */
            var alertMsg = "";

            /**
             * 部分冲减标志
             * 0-不存在部分冲减
             * 1-专票存在部分冲减
             * 2-普票存在部分冲减
             * 3-专票普票存在部分冲减
             *
             * 如果对应的列存在部分冲减的情况，就不会存在这一类还判断商编是否相符的情况；因为如果部分冲减就不会取值，也就不会判断是否存在商编不符的情况
             */
            if ("1" == bfcjbz) {
                alertMsg += alertIndex + ". 您开具的专用发票存在部分冲减的情况，请手动填写“开具增值税专用发票”列！\n";
                alertIndex++;
            }
            else if ("2" == bfcjbz) {
                alertMsg += alertIndex + ". 您开具的普通发票存在部分冲减的情况，请手动填写“开具其他发票”列！\n";
                alertIndex++;
            }
            else if ("3" == bfcjbz) {
                alertMsg += alertIndex + ". 您开具的专用发票和普通发票存在部分冲减的情况，请手动填写“开具增值税专用发票”以及“开具其他发票”列！\n";
                alertIndex++;
            }

            /**
             * 商编不符标志
             * 0-不存在商编不符
             * 1-专票商编不符
             * 2-普票商编不符
             * 3-专票普票都不符
             */
            if (sbxfbz == "1") {
                alertMsg += alertIndex + ". 您的发票未规范使用《商品和服务税收分类与编码》进行开具，导致《增值税纳税申报表附列资料（一）》的“开具增值税专用发票”列无法自动取值，请您手工填写！\n";
                alertIndex++;
            }
            else if (sbxfbz == "2") {
                alertMsg += alertIndex + ". 您的发票未规范使用《商品和服务税收分类与编码》进行开具，导致《增值税纳税申报表附列资料（一）》的“开具其他发票”列无法自动取值，请您手工填写！\n";
                alertIndex++;
            }
            else if (sbxfbz == "3") {
                alertMsg += alertIndex + ". 您的发票未规范使用《商品和服务税收分类与编码》进行开具，导致《增值税纳税申报表附列资料（一）》的“开具增值税专用发票”和“开具其他发票”列无法自动取值，请您手工填写！\n";
                alertIndex++;
            }

            if (formatPoint(parseFloat(mdtsQtHw) + parseFloat(mdtsQtFw), 2) != 0) {
                alertMsg += alertIndex + ". 您属于出口免抵退企业，系统已自动将您免税发票归集至‘免抵退税相关栏次’，请您核实数据是否全部属于‘免抵退税’，如属于‘免税相关栏次’，请手工调整!\n";
                alertIndex++;
            }

            if (alertMsg != "") {
                alert(alertMsg);
            }
        }
    });

</script>
</html>
﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainServlet_SBB_ZZS_YGZ_YBNSR_FLZL5.aspx.cs" Inherits="JlueTaxSystemXiaMenBS.wssb.MainServlet_SBB_ZZS_YGZ_YBNSR_FLZL5" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>《增值税纳税申报表》附列资料（五）</title>
    <script language="javascript" src="/wssb/wssb/public/js/jquery-1.7.2.min.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/pub.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/commonNew.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/text.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/wssbCommon.js"></script>
    <script language="javascript" src="/wssb/wssb/zzsybnsr_ygz/SBB_ZZS_YGZ_YBNSR_FLZL5.js?t=20170930"></script>
    <script type="text/javascript" src="/js/initinfo.js"></script>

    <script src="public_zzs.js" type="text/javascript" ></script>

    <script type="text/javascript">
        function btnSaveClick() {
            setSave();
            setDisable(this, true);
            if (!frminsert()) setDisable(this, false);
        }

        var result = [<%=return_json %>]
        var TABLE_ACTION = "<%=TABLE_ACTION %>";

        function showData() {
            var obj = result[0];
            var COL_2 = obj["COL_2"]
            $("#Text1").val(COL_2)

            var COL_3 = obj["COL_3"]
            $("#Text2").val(COL_3)

            var COL_4 = obj["COL_4"]
            $("#Text3").val(COL_4)

            var COL_5 = obj["COL_5"]
            $("#Text4").val(COL_5)

            var COL_6 = obj["COL_6"]
            $("#Text5").val(COL_6)
        }

        $(function () {
            showData()
            showTableActionDisplay()
            showDate()
        })
    </script>

    <link rel="stylesheet" href="/wssb/wssb/public/style/link.css" type="text/css">

    <style type="text/css">
        .noBorderForInput {
            width: 100%;
            text-align: center;
            border: 0px;
            background-color: transparent;
        }
    </style>
</head>

<body marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" onload="changeValue();">
    <table width="1000px" border="0" cellspacing="0" cellpadding="0" align="center">
        <tr>
            <!--菜单列-->
            <!--<td width="161" align="left" height="100%">
    
    </td>-->

            <!--内容列-->
            <td height="100%" valign="top" align="center">
                <br>
                <br>
                <br>
                <form name="xform" method="POST">
                    <table width="90%" border="0">
                        <tr>
                            <td align="center"><font size="3"><strong>《增值税纳税申报表》附列资料（五）</strong></font></td>
                        </tr>
                        <tr>
                            <td align="center"><font size="2"><strong>（不动产分期抵扣计算表）</strong></font></td>
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

                    <table id="inputTable" width="90%" color="#E8ECE8" border="1" cellpadding="0" cellspacing="0" class="SBB" bordercolor='#C4C6C4' bordercolordark='#ffffff' bordercolorlight="#999999;margin-left:10px;">
                        <thead>
                            <tr>
                                <td align="center" width="17%">期初待抵扣不动产<br />
                                    进项税额</td>
                                <td align="center" width="17%">本期不动产进项税<br />
                                    额增加额</td>
                                <td align="center" width="16%">本期可抵扣不动产<br />
                                    进项税额</td>
                                <td align="center" width="17%">本期转入的待抵扣<br />
                                    不动产进项税额</td>
                                <td align="center" width="16%">本期转出的待抵扣<br />
                                    不动产进项税额</td>
                                <td align="center" width="17%">期末待抵扣不动产<br />
                                    进项税额</td>
                            </tr>
                            <tr>
                                <td align="center">1</td>
                                <td align="center">2</td>
                                <td align="center">3≤1+2+4</td>
                                <td align="center">4</td>
                                <td align="center">5≤1+4</td>
                                <td align="center">6=1+2-3+4-5</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td align="center">
                                    <!-- 行次用于排序而已，不显示 -->
                                    <input type="hidden" name="HC" value="1" />
                                    <input type="hidden" name="SSSQ_Q" value="20180801" />
                                    <input type="hidden" name="SSSQ_Z" value="20180831" />
                                    <input type="hidden" name="NSRSBH" value="91350200MA2Y10EC4K" />
                                    <input type="hidden" name="NSRMC" value="威纳仕（厦门）酒业有限公司" />

                                    <input id="wssb" name="COL_1" onchange="changeValue();" type="text" class="input_money_readonly" readonly="readonly" value="0" />
                                </td>
                                <td align="center">
                                    <input id="Text1" name="COL_2" onchange="changeValue();" type="text" class="money" value="0.00" />
                                </td>
                                <td align="center">
                                    <input id="Text2" name="COL_3" onchange="changeValue();" type="text" class="money" value="0.00" />
                                </td>
                                <td align="center">
                                    <input id="Text3" name="COL_4" onchange="changeValue();" type="text" class="money" value="0.00" />
                                </td>
                                <td align="center">
                                    <input id="Text4" name="COL_5" onchange="changeValue();" type="text" class="money" value="0.00" />
                                </td>
                                <td align="center">
                                    <input id="Text5" name="COL_6" onchange="changeValue();" type="text" class="input_money_readonly" readonly="readonly" value="0.00" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <p>
                        <input type="hidden" name="TABLE_NAME" value="SBB_ZZS_YGZ_YBNSR_FLZL5" />
                        <input type="hidden" name="TABLE_ACTION" value="initial" />

                        <table width="90%" border="0" style="margin-left: 10px;">
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
                                        <a name="save" value="1" onclick="btnSaveClick()" style="cursor: pointer;" class="btnclass">保&nbsp;&nbsp;存
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

</body>
</html>
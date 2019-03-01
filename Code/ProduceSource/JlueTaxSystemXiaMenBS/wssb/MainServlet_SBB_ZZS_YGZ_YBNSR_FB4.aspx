﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainServlet_SBB_ZZS_YGZ_YBNSR_FB4.aspx.cs" Inherits="JlueTaxSystemXiaMenBS.wssb.MainServlet_SBB_ZZS_YGZ_YBNSR_FB4" %>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
    <title>增值税纳税申报表附列资料（四）</title>

    <script language="javascript" src="/wssb/wssb/public/js/pub.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/commonNew.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/text.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/wssbCommon.js"></script>
    <link rel="stylesheet" href="/wssb/wssb/public/style/link.css" type="text/css">
    <script language="javascript" src="/wssb/wssb/public/js/jquery-1.7.2.min.js"></script>
    <script language="JAVASCRIPT" src="/wssb/wssb/zzsybnsr_ygz/SBB_ZZS_YGZ_YBNSR_FB4.js?t=20171201"></script>
    <script type="text/javascript" src="/js/initinfo.js"></script>

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


    <body leftmargin="0" topmargin="0" onload="js();">

        <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <!--菜单列-->
                <!--<td width="161" height="100%">
    
    </td>-->
                <!--内容列-->
                <td valign="top" align="center">
                    <br>
                    <br>
                    <br>
                    <form name="xform" method="post">
                        <table width="900px" border="0" align="center">
                            <tr>
                                <td colspan="2" align="center" id="tofocus">
                                    <font size="3">
              <strong>《增值税纳税申报表》附列资料（四）（税额抵减情况表）</strong>            
            </font>
                                </td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
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
                        <table id="inputTable" border="1" width="900px" align="center" cellspacing="0" cellpadding="0" class="SBB" bordercolor='#C4C6C4' bordercolordark='#ffffff' bordercolorlight="#999999">
                            <tbody id="SBB_ZZS_YGZ_YBNSR_FB4">
                                <tr align="center">
                                    <td rowspan="2">序号</td>
                                    <td rowspan="2">抵减项目</td>
                                    <td>期初余额</td>
                                    <td>本期发生额</td>
                                    <td>本期应抵减税额</td>
                                    <td>本期实际抵减税额</td>
                                    <td>期末余额</td>
                                </tr>
                                <tr align="center">
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3=1+2</td>
                                    <td>4≤3</td>
                                    <td>5=3-4</td>
                                </tr>
                                <tr>
                                    <td width="5%" align="center">1</td>
                                    <td width="25%" align="left">&nbsp;增值税税控系统专用设备费及技术维护费</td>
                                    <td width="14%">
                                        <input id="QCYE_1" name="QCYE_1" type="text" value="0.0" class="input_money_readonly" readonly="readonly" /></td>
                                    <td width="14%">
                                        <input id="BQFSE_1" name="BQFSE_1" type="text" value="0.00" class="money" onchange="onChange_3(1);" /></td>
                                    <td width="14%">
                                        <input id="BQYDJSE_1" name="BQYDJSE_1" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                    <td width="14%">
                                        <input id="BQSJDJSE_1" name="BQSJDJSE_1" type="text" value="0.00" class="money" onchange="onChange_4(1);" /></td>
                                    <td width="14%">
                                        <input id="QMYE_1" name="QMYE_1" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                </tr>
                                <tr>
                                    <td align="center">2</td>
                                    <td align="left">&nbsp;分支机构预征缴纳税款</td>
                                    <td>
                                        <input id="QCYE_2" name="QCYE_2" type="text" value="0.0" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQFSE_2" name="BQFSE_2" type="text" value="0.00" class="input_money_readonly" readonly="readonly" onchange="onChange_3(2);" /></td>
                                    <td>
                                        <input id="BQYDJSE_2" name="BQYDJSE_2" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQSJDJSE_2" name="BQSJDJSE_2" type="text" value="0.00" class="input_money_readonly" readonly="readonly" onchange="onChange_4(2);" /></td>
                                    <td>
                                        <input id="QMYE_2" name="QMYE_2" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                </tr>
                                <tr>
                                    <td align="center">3</td>
                                    <td align="left">&nbsp;建筑服务预征预缴税款</td>
                                    <td>
                                        <input id="QCYE_3" name="QCYE_3" type="text" value="0.0" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQFSE_3" name="BQFSE_3" type="text" value="0.00" class="input_money_readonly" onchange="onChange_3(3);" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQYDJSE_3" name="BQYDJSE_3" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQSJDJSE_3" name="BQSJDJSE_3" type="text" value="0.00" class="input_money_readonly" onchange="onChange_4(3);" readonly="readonly" /></td>
                                    <td>
                                        <input id="QMYE_3" name="QMYE_3" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                </tr>
                                <tr>
                                    <td align="center">4</td>
                                    <td align="left">&nbsp;销售不动产预征预缴税款</td>
                                    <td>
                                        <input id="QCYE_4" name="QCYE_4" type="text" value="0.0" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQFSE_4" name="BQFSE_4" type="text" value="0.00" class="input_money_readonly" onchange="onChange_3(4);" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQYDJSE_4" name="BQYDJSE_4" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQSJDJSE_4" name="BQSJDJSE_4" type="text" value="0.00" class="input_money_readonly" onchange="onChange_4(4);" readonly="readonly" /></td>
                                    <td>
                                        <input id="QMYE_4" name="QMYE_4" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                </tr>
                                <tr>
                                    <td align="center">5</td>
                                    <td align="left">&nbsp;出租不动产预征预缴税款</td>
                                    <td>
                                        <input id="QCYE_5" name="QCYE_5" type="text" value="0.0" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQFSE_5" name="BQFSE_5" type="text" value="0.00" class="input_money_readonly" onchange="onChange_3(5);" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQYDJSE_5" name="BQYDJSE_5" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                    <td>
                                        <input id="BQSJDJSE_5" name="BQSJDJSE_5" type="text" value="0.00" class="input_money_readonly" onchange="onChange_4(5);" readonly="readonly" /></td>
                                    <td>
                                        <input id="QMYE_5" name="QMYE_5" type="text" value="0.00" class="input_money_readonly" readonly="readonly" /></td>
                                </tr>
                                <tr>
                                    <td align="center">6</td>
                                    <td align="left">&nbsp;</td>
                                    <td>&nbsp;<input name="QCYE_6" type="hidden" value="0.00" class="money" /></td>
                                    <td>&nbsp;<input name="BQFSE_6" type="hidden" value="0.00" class="money" /></td>
                                    <td>&nbsp;<input name="BQYDJSE_6" type="hidden" value="0.00" class="money" /></td>
                                    <td>&nbsp;<input name="BQSJDJSE_6" type="hidden" value="0.00" class="money" /></td>
                                    <td>&nbsp;<input name="QMYE_6" type="hidden" value="0.00" class="money" /></td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="hidden" name="NSRSBH" value="91350200MA2Y10EC4K" />
                        <input type="hidden" value="20180801" name="SSSQ_Q" />
                        <input type="hidden" value="20180831" name="SSSQ_Z" />
                        <input type="hidden" name="TABLE_NAME" value="SBB_ZZS_YGZ_YBNSR_FB4" />
                        <input type="hidden" name="TABLE_ACTION" value="initial" />
                        <input type="hidden" name="ZMPM_ZGLX" id="ZMPM_ZGLX" value="0" />
                        <br>
                        <br>
                        <div align="center">
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
                    </form>
                </td>
            </tr>
        </table>

    </body>
</html>


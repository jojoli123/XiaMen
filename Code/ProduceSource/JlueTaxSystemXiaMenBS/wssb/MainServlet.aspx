﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainServlet.aspx.cs" Inherits="JlueTaxSystemXiaMenBS.wssb.MainServlet1" %>





<html>
<head>
    <title></title>
    <script language="javascript">
        var table_action = "insert";
        var rtnCgbz = "10";
        function w_print() {
            window.print();
        }

        //获取左侧菜单的id
        function hqzccdid() {

            var glwlfm = parent.$("#leftFrame")[0].contentWindow.$("input[id^='SBB_NDGLWLBGB_2016_FM']");
            var glwlMenu = glwlfm.closest(".nav-tow").prev(".navone-text");
            glwlMenu.click();
            var glwlfmId = glwlfm.attr("id");
            parent.$("#leftFrame")[0].contentWindow.$("#click_input_id").val(glwlfmId);
        }
    </script>
    <link rel="stylesheet" href="/wssb/wssb/public/style/link.css" type="text/css">
    <script language="javascript" src="/wssb/wssb/public/js/jquery-1.7.2.min.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/commonNew.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/changeMenu.js"></script>
    <script language="javascript" src="/wssb/wssb/public/js/text.js"></script>
</head>

<body topmargin="0" leftmargin="0">

    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <!--菜单列-->
            <!--<td width="161" height="100%">
    
    </td>-->

            <!--内容列-->
            <td valign="top">
                <br>
                <br>
                <br>

                <form name="frm_login" method="POST">
                    <table width="552px" height="350px" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center">
                                <table width="96%" border="0" cellpadding="0" cellspacing="0" bgcolor="#4E9492">
                                    <tr>
                                        <td width="203" align="center" class="title">
                                            <p style="width: 120px">返回结果</p>
                                        </td>
                                    </tr>
                                </table>
                                <table width="96%" border="0" cellspacing="0" cellpadding="0" style="background-color: #FFF">
                                    <tr>
                                        <td width="100%" align="center" bgcolor="#EEEEEE">
                                            <br />
                                            <table width="400px" height="230px" border="0" align="center" cellpadding="0" cellspacing="0">
                                                <tr height="145px">
                                                    <td align="left" style="font-size: 11pt; color: blue; line-height: 2; word-wrap: break-word; word-break: break-all;">提&nbsp;&nbsp;&nbsp;&nbsp;示：&nbsp;
                        保存申报表成功！在未正式申报之前可以修改、删除该申报表。
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td align="center" valign="top"></a>
	                      	<a href="./MainServlet?NSRSBH=91350200MA2Y10EC4K&TABLE_NAME=INFORMATION&TABLE_ACTION=display">
                                  <a href="MainServlet.ashx?TABLE_NAME=SBB_ZZS_YGZ_YBNSR&TABLE_ACTION=display&NSRSBH=91350200MA2Y10EC4K&SSSQ_Q=20180801&SSSQ_Z=20180831&BTN_DISBZ=0" class="btnclass">下&nbsp;&nbsp;一&nbsp;&nbsp;步</a>&nbsp;&nbsp;&nbsp;&nbsp;




                                  <a href="./MainServlet_INFORMATION.aspx?TABLE_NAME=INFORMATION&TABLE_ACTION=display&NSRSBH=91350200MA2Y10EC4K" class="btnclass">退&nbsp;&nbsp;出</a></td>

                                                </tr>
                                            </table>
                                            <br>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </form>

            </td>
        </tr>
    </table>
    <script type="text/javascript">
        //初始化text.js文件
        $(function () { contentready(); });
    </script>
</body>
<html>

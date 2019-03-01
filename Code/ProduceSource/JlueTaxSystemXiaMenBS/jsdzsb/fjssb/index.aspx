﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="JlueTaxSystemXiaMenBS.jsdzsb.fjssb.index" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--允许搜索机器人搜索站内所有链接-->
    <meta content="all" name="robots">
    <meta name="Copyright" content="厦门税务版权所有 ">
    <meta name="Description" content="厦门税务网上报税系统">
    <meta name="Keywords" content="税务,厦门税务,网上报税系统">

    <title>厦门税务
    </title>

    <script src="/res/dwfw/js/jquery-1.10.2.js" type="text/javascript"></script>

    <script src="/res/js/common.js" type="text/javascript"></script>
    <script src="/res/otp4/js/lib/layer/layer.js" type="text/javascript"></script>
    <script type="text/javascript" language="JavaScript" src="/res/js/common/components/inputCtrl.js?v1"></script>



    <meta charset="UTF-8">
    <meta name="decorator" content="blank" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


    <c:set var="resV" value="v1" />
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

    <link href="/res/jsdzsb/bsdt/images/css.css" rel="stylesheet" type="text/css" />

    <link href="/res/otp4/js/lib/ztree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/otp4-base.css?" rel="stylesheet" />
    <link href="/res/otp4/css/otp4-form.css?" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/otp4-panel.css?" rel="stylesheet" type="text/css" />

    <link href="/res/otp4/css/otp4-page.css?" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/otp4-menu.css?" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/themes/otp4-menu.css?" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/themes/otp4-form.css?" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/themes/otp4-panel.css?" rel="stylesheet" type="text/css" />
    <link href="/res/otp4/css/themes/otp4-table.css?" rel="stylesheet" type="text/css" />

    <link href="/res/wsbs/css/step.css" type="text/css" rel="stylesheet">
    <link href="/res/wsbs/css/global.css?" type="text/css" rel="stylesheet" id="mycss">
    <link href="/res/wsbs/css/xmdswz.css" type="text/css" rel="stylesheet">
    <link href="/res/wsbs/css/xmdswz_print.css" type="text/css" rel="stylesheet">
    <link href="/res/wsbs/css/swdj_style.css" type="text/css" rel="stylesheet">


    <script src="/res/otp4/js/lib/jquery-1.8.3.js" type="text/javascript"></script>
    <script src="/res/otp4/js/lib/jquery.fix.clone.js" type="text/javascript"></script>
    <script src="/res/otp4/js/lib/jquery.json.js" type="text/javascript"></script>
    <script src="/res/otp4/js/lib/layer/layer.js" type="text/javascript"></script>
    <script src="/res/otp4/js/lib/ztree/jquery.ztree.all-3.5.js" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-base.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-utils.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-core.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-route.js?" type="text/javascript"></script>

    <script src="/res/otp4/js/lib/avalon.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-iehack.js?" type="text/javascript"></script>

    <script src="/res/otp4/js/otp4-selmodel.js?" type="text/javascript"></script>

    <script src="/res/otp4/js/lib/My97DatePicker/WdatePicker.js?" type="text/javascript"></script>


    <script src="/res/otp4/js/otp4-expression.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-controls.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-upload.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-validate.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-validate-ext.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-idcode.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-froute.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-filters.js?" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-menu.js?" type="text/javascript"></script>
    <script src="/res/js/otp4-app-config.js?" type="text/javascript"></script>
    <script src="/res/js/otp4-input-ext.js?" type="text/javascript"></script>

    <script src="/res/wsbs/js/bsfwzxmenu.js" type="text/javascript"></script>
    <script src="/res/otp4/js/otp4-menu-ie6.js?" type="text/javascript"></script>

    <script type="text/javascript" language="JavaScript" src="/res/js/common/core.js?"></script>
    <script type="text/javascript" language="JavaScript" src="/res/js/common/collections.js?"></script>
    <script type="text/javascript" language="JavaScript" src="/res/js/common/system.js?"></script>
    <script type="text/javascript" language="JavaScript" src="/res/js/common/ajaxrequest.js?"></script>
    <script type="text/javascript" language="JavaScript" src="/res/js/common/components/Behaviour.js?"></script>
    <script type="text/javascript" language="JavaScript" src="/res/js/common/components/floatlayer.js?"></script>

    <script type="text/javascript" language="JavaScript" src="/res/js/common/components/inputCtrl.js?"></script>

    <script type="text/javascript" language="JavaScript" src="/res/js/common/components/inputCtrl.js?"></script>
    <script language="javascript" type="text/javascript" src="/res/js/wssb/wssb_common.js?"></script>
    <script language="javascript" type="text/javascript" src="/res/js/wssb/wssb_nssb.js?"></script>
    <script language="javascript" type="text/javascript" src="/res/js/wssb/wssb_qysds.js"></script>
    <script language="javascript" type="text/javascript" src="/res/js/wssb/wssb_grsds.js"></script>
    <link href="/res/jsdzsb/css.css" rel="stylesheet" type="text/css" />
    <link href="/res/css/css.css" rel="stylesheet" type="text/css" />
    <script src="/res/js/common.js" type="text/javascript"></script>
    <script src="/res/js/mathcal1.0.js" type="text/javascript"></script>

    <script src="../../js/initinfo.js"></script>
    <style>
        tr.blue {
            background-color: #D7EBFF;
        }
    </style>
    <script type="text/javascript" charset="UTF-8">


        /**
        $(document).ready(function() {
        
            $(document).ajaxError(function(){ function(e,xhr,opt){
                    alert("登录超时,请重新登录！");  
                    window.top.location.href="<c:url value="/login/index.do" />";}
            );
        
        });
        **/

        $(document).keydown(function (e) {
            var keyEvent;
            if (e.keyCode == 8) {
                var d = e.srcElement || e.target;
                if (d.tagName.toUpperCase() == 'INPUT' || d.tagName.toUpperCase() == 'TEXTAREA') {
                    keyEvent = d.readOnly || d.disabled;
                } else {
                    keyEvent = true;
                }
            } else {
                keyEvent = false;
            }
            if (keyEvent) {
                e.preventDefault();
            }
        });

    </script>

</head>

<body>






    <form action="/jsdzsb/fjssb/lb.aspx" method="post" id="myForm">
        <input type="hidden" name="sbuuid" id="sbuuid">
        <input type="hidden" name="init" value="true" />
        <input type="hidden" name="sbbVo['skssqq']" value="2018-08-01" />
        <input type="hidden" name="sbbVo['skssqz']" value="2018-08-31" />
        <input type="hidden" name="nsqx_dm" value="06" />
        <input type="hidden" name="sbqx_dm" value="04" />
        <input type="hidden" name="zsxmdm" value="10109" />
        <input type="hidden" name="zspmdm" value="101090101" />
        <input type="hidden" name='errAction' value="/jsdzsb/fjssb/index.do" />

        <input type="hidden" name="xgbz" id="xgbz" value="no">


        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td class="gray_bg_color">
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 8px; margin-top: 8px;">
                        <tr>
                            <td align="left" class="liucheng_01"></td>
                            <td align="left">
                                <table width="650" border="0" align="left" cellpadding="0" cellspacing="0">

                                    <tr>
                                        <td>&nbsp;</td>
                                        <td align="center" class="liucheng_02 h1_14w ">初始化</td>
                                        <td align="center">
                                            <img src="/res/jsdzsb/bsdt/images/over_arrow.png" width="7" height="12" /></td>
                                        <td align="center" class="liucheng_03 h1_14b">填写申报表</td>
                                        <td align="center">
                                            <img src="/res/jsdzsb/bsdt/images/off_arrow.png" width="7" height="12" /></td>
                                        <td align="center" class="liucheng_03 h1_14b">确认申报</td>
                                        <td align="center">
                                            <img src="/res/jsdzsb/bsdt/images/off_arrow.png" width="7" height="12" /></td>
                                        <td align="center" class="liucheng_03 h1_14b">查看回执</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="gray3_bg_color"></td>
            </tr>
            <tr>
                <td>
                    <table width="660" border="0" align="center" cellpadding="0" cellspacing="0" style="margin-top: 30px;">
                        <tr>

                            <td align="center" class="h16_bold">城建税、教育费附加、地方教育附加税（费） 申报</td>


                        </tr>
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0" class="border h12_b" style="margin-top: 10px;">
                                    <tr>
                                        <td valign="bottom" class="h12_bold" style="padding-left: 20px; padding-top: 6px;">纳税人信息</td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 20px;">
                                            <table width="100%" cellspacing="0" cellpadding="0" style="margin-bottom: 6px;">
                                                <tr>
                                                    <td width="100" align="left">纳税人识别号：</td>
                                                    <td align="left" style="padding-left: 20px;" id="NSRSBH" ></td>
                                                </tr>
                                                <tr>
                                                    <td align="left">纳税人名称：</td>
                                                    <td align="left" style="padding-left: 20px;" id="NSRMC" ></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>

                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table width="100%" cellpadding="0" cellspacing="0" class="border h12_b" style="margin-top: 10px;">
                                    <tr>
                                        <td valign="bottom" class="h12_bold" style="padding-left: 20px; padding-top: 6px;">请录入附加税申报初始化信息：</td>
                                    </tr>
                                    <tr>
                                        <td style="padding-left: 20px;">
                                            <table width="100%" cellspacing="0" cellpadding="0" style="margin-bottom: 6px;">
                                                <tr>
                                                    <td width="100" align="left">税款所属期<span id="qi" style="display: none">起</span>：</td>
                                                    <td align="left" style="padding-left: 20px;">

                                                        <input type="text" id="skssqq" value="2018-08" style="height: 24px; line-height: 24px;" xf-format="yyyy-MM" onblur="checkSkssq()" class="xf-datetime" name="skssqq" />
                                                    </td>
                                                    <td align="left" style="padding-left: 20px;" class="h12_gray">
                                                        <input name="sbqx" id="radOne" type="radio" value="1" onclick="checkSbqx()" />
                                                        月报 &nbsp;&nbsp;
                   <input name="sbqx" id="radTwo" type="radio" value="2" onclick="checkSbqx()" />
                                                        季报 &nbsp;&nbsp;
                
                                                    </td>
                                                </tr>
                                                <tr style="display: none" id="skssqztr">
                                                    <td align="left">税款所属期止：</td>
                                                    <td align="left" style="padding-left: 20px;">
                                                        <input type="text" onblur="checkSkssq()" id="skssqz" value="2018-08" style="height: 24px; line-height: 24px;" xf-format="yyyy-MM" class="xf-datetime" />

                                                    </td>
                                                    <td align="left" style="padding-left: 20px;" class="h12_gray"></td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="center" style="padding: 10px;"><font style="font-weight: bold; font-size: 12px; font-family: 宋体; text-align: right"><span style="line-height:1.5">
          <input type="button" value="下一步"   onclick="Fjssubmit();" class="js_btn1" style="width:auto;height:auto;">
        </span></font></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <script type="text/javascript">
            function Fjssubmit() {
                var xgbz = getObj("xgbz").value;
                var ssqsObj = getObj("sbbVo['skssqq']");
                var ssqzObj = getObj("sbbVo['skssqz']");
                if (xgbz == 'yes') {
                    var skssqq = ssqsObj.value;
                    str2 = skssqq.slice(0, 7);

                    var str1 = "2018-03";

                    if (str1 > str2) {
                        layer.confirm("您要更正的申报记录超出网上更正申报范围，请上门处理", {
                            btn: ['确定'], //按钮
                            shade: false
                        });
                    }
                    else {
                        var url = "/jsdzsb/fjssb/select.do?skssqq=" + ssqsObj.value + "&skssqz=" + ssqzObj.value;
                        layer.open({
                            type: 2,
                            title: "选择申报表",
                            area: ['730px', '300px'],
                            fix: false, //不固定
                            maxmin: true,
                            offset: ['200px', '300px'],
                            content: url
                        });
                    }
                }
                var sbqx = $("[name='sbqx']:checked").val();
                var nsqx_dm = $('[name=nsqx_dm]').eq(0).val();
                var sbqx_dm = '04';
                var zsxmdm = '10109';
                var zspmdm = '101090101';
                if (!sbqx) {
                    alert("请选择是月报还是季报！");
                    return false;
                }
                if (xgbz != 'no') {
                    if (sbqx == '1') {
                        if (!SKSSQValidate({ "SKSSQS": ssqsObj.value, "SKSSQZ": ssqzObj.value }, 'YB')) {
                            return false;
                        }
                    } else if (sbqx == '2') {
                        if (!SKSSQValidate({ "SKSSQS": ssqsObj.value, "SKSSQZ": ssqzObj.value }, 'JB')) {
                            return false;
                        }
                    }
                }
                if (xgbz != 'yes') {
                    if (!JsYsqbChecker(ssqsObj.value, ssqzObj.value, zsxmdm, zspmdm, nsqx_dm, sbqx_dm)) {
                        return false;
                    }
                }


                if ($("[name='sbqx']:checked").val() == '1') {
                    $('[name=nsqx_dm]').eq(0).val('06');
                } else {
                    $('[name=nsqx_dm]').eq(0).val('08');
                }
                if (xgbz == 'no') {
                    $("#myForm").submit();
                }
            }
            checkSbqx();

            function checkSbqx() {
                var sbqx = $("[name='sbqx']:checked").val();
                var nsqx_dm = '06';

                var nsqx_dm_para = "";
                var tmp = $("#radOne");
                var tmpTwo = $("#radTwo");
                if (nsqx_dm != null && nsqx_dm != "") {

                    if (nsqx_dm.indexOf("#") < 0) {
                        nsqx_dm_para = nsqx_dm;
                    } else {
                        nsqx_dm_para = nsqx_dm.split("#")[0];
                    }
                    isFirstVisited = false;

                } else {
                    alert("没有税（费）种认定信息，请先认定");
                    return false;
                }







                if (sbqx != null && sbqx != "") {
                    if (sbqx == "2") {
                        if (nsqx_dm_para == "06") {
                            alert("变更纳税期限，请上门到主管税务机关办理！");
                            return false;
                        }
                    } else if (sbqx == "1") {
                        if (nsqx_dm_para == "08") {
                            alert("变更纳税期限，请上门到主管税务机关办理！");
                            return false;
                        }
                    }
                }
                if (nsqx_dm_para == "06") {
                    $('[name=nsqx_dm]').eq(0).val('06');
                    sbqx = "1";
                    tmp.prop("checked", "checked");
                } else if (nsqx_dm_para == "08") {
                    $('[name=nsqx_dm]').eq(0).val('08');
                    tmpTwo.prop("checked", "checked");
                    sbqx = "2";
                }
                else if (nsqx_dm_para == "0806" || nsqx_dm_para == "0608") {
                    $('[name=nsqx_dm]').eq(0).val('06');
                }
                else {
                    $('[name=nsqx_dm]').eq(0).val('06');
                }
                var skssqq = '2018-08-01';
                var skssqz = '2018-08-31';
                var skssqqjd = '2018-04-01';
                var skssqzjd = '2018-06-30';


                if (sbqx == '1') {
                    getObj("sbbVo['skssqq']").value = skssqq;
                    getObj("sbbVo['skssqz']").value = skssqz;
                    $('#skssqq').val(skssqq.substring(0, 7));
                    $('#qi').hide();
                    $('#skssqztr').hide();
                } else if (sbqx == '2') {
                    getObj("sbbVo['skssqq']").value = skssqqjd;
                    getObj("sbbVo['skssqz']").value = skssqzjd;
                    $('#skssqq').val(skssqqjd.substring(0, 7));
                    $('#skssqz').val(skssqzjd.substring(0, 7));
                    $('#qi').show();
                    $('#skssqztr').show();
                }
            }

            function checkSkssq() {
                var sbqx = $("[name='sbqx']:checked").val();
                var skssqq = $('#skssqq').val();
                var skssqz = $('#skssqz').val();
                $.ajax({
                    url: "/common/jyrq.ashx",
                    data: { nsqx_dm: sbqx, skssqq: skssqq, skssqz: skssqz },
                    method: "POST",
                    async: false,
                    success: function (data) {

                        getObj("sbbVo['skssqq']").value = data.o.skssqq;
                        getObj("sbbVo['skssqz']").value = data.o.skssqz;
                    }
                });
            }
        </script>

    </form>



    <div id="_loadIfmContent" style="display: none;"></div>
    <script language="JavaScript">
        $(function () {
            endIe8Load();
        });

        function endIe8Load() {
            try {
                var _loadIfm = ' <iframe id="_loadIfm" src="" width="1" height="1" style="border: 0px; display:none" frameborder="0" ></iframe>';
                if (!$("#_loadIfm")[0]) {
                    $("#_loadIfmContent").append(_loadIfm);
                }
                $("#_loadIfmContent", window.document).attr("src", "#");
            } catch (e) { }
        }
    </script>

</body>


</html>

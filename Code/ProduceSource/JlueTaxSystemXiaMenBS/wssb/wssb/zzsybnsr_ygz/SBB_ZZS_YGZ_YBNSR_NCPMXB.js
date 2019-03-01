//初始化text.js文件
function formatValue_SBB(){
	var inputTd=$("#inputTable input");
	$.each(inputTd,function(i,val){
		formatAll(inputTd[i]);
	});
}
function formatAll(o)
{
	if(o.className=="money" || o.className=="input_money_readonly")
	{
		formatCurrency(o);
		o.value=formatNumberType(o.value,0,2);
	}else if(o.className=="money_4" || o.className=="input_money_4_readonly")
	{
		formatCurrency_4(o);
		o.value=formatNumberType(o.value,0,4);
	}
	else if(o.className=="sl" || o.className=="sl_readonly")
	{
		transSl(o);
	}
}

function unformatValue_SBB()
{
	var inputTd=$("#inputTable input");
	
	$.each(inputTd,function(i,val){
		
		if($.trim($(this).attr("class"))=='sl' || $.trim($(this).attr("class"))=='sl_readonly'){
			
			formatSl(inputTd[i]);
		}else if($.trim($(this).attr("class"))=='money'||$.trim($(this).attr("class"))=='input_money_readonly'){
			unformatCurrency(inputTd[i]);
		}else if($.trim($(this).attr("class"))=='money_4'||$.trim($(this).attr("class"))=='input_money_4_readonly'){
			unformatCurrency_4(inputTd[i]);
		}
	});
}
/***************************************************************************************/
/****************************************************
 *计算金额合计
*****************************************************/
function calculateValueJEHJ() {
	
	unformatValue_SBB();
	var temp = 0;
	$("#inputTable #SB_FLZL4_MX tr").each(function(){
		   temp =parseFloat($(this).find("#NCPJXSE").val()) + temp;	
	});
	
	document.getElementById("heji").value = temp;
	formatValue_SBB();

}
//表单计算 by zhsu, 20080304
function changeValue()
{
	unformatValue_SBB();
	$("#inputTable #SB_FLZL4_MX tr").each(function(){
		var spsl  =parseFloat($(this).find("#SPSL").val());
		var spdj =parseFloat($(this).find("#SPDJ").val()); 
		$(this).find("#SPJE").val(formatPoint(parseFloat(spsl * spdj),2));
		var spje = $(this).find("#SPJE").val();
		//$(this).find("#NCPJXSE").val(parseFloat(spje * 0.13).toFixed(2));     //最新需求，这一项要变成纳税人手动录入且把计算变成校验   by    wxf     20170719
	});
	
	formatValue_SBB();
}

function save_check()
{	
	unformatValue_SBB();
	var nowDate = getNowDate();
	var var_b=true;
	
	$("#inputTable #SB_FLZL4_MX tr").each(function(i,val){
		var fpdm =  $(this).find("#FPDM").val();
		var fphm =  $(this).find("#FPHM").val();
		var fpzl =  $(this).find("#FPZL").val();
		var spmc =  $(this).find("#SPMC").val();
		var gjrq =  $(this).find("#GJRQ").val();
		var spsl =  $(this).find("#SPSL").val();
		var spdj =  $(this).find("#SPDJ").val();
		var spje =  $(this).find("#SPJE").val();
		var ncpjxse =  $(this).find("#NCPJXSE").val();
		var hkjsfs =  $(this).find("#HKJSFS").val();
		var sffk =  $(this).find("#SFFK").val();
		var gzmxkm = $(this).find("#GZMXKM").val();;
		var cgd =  $(this).find("#CGD").val();
		var  sfyyf=  $(this).find("#SFYYF").val();
		var ghf =  $(this).find("#GHF").val();
		if(fpdm != "" || fphm != "" || fpzl != "" || spmc != "" || gjrq != "" ||
				   (parseFloat(spsl) + parseFloat(spdj) + parseFloat(spje)+ parseFloat(ncpjxse) > 0 ) || 
				   sffk != "" || hkjsfs != "" || gzmxkm != "" || cgd != "" || sfyyf != ""  || ghf != "" 
				){
					if(fpdm == ""){
						alert("您表格中第"+(i+1)+"行中的【发票代码】列的值为空，请确认！")
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(fphm == ""){
						alert("您表格中第"+(i+1)+"行中的【发票号码】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(fpzl == ""){
						alert("您表格中第"+(i+1)+"行中的【发票种类】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(spmc == ""){
						alert("您表格中第"+(i+1)+"行中的【主要商品名称】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(gjrq == ""){
						alert("您表格中第"+(i+1)+"行中的【购进日期】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(spsl == ""){
						alert("您表格中第"+(i+1)+"行中的【商品数量】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(spdj == ""){
						alert("您表格中第"+(i+1)+"行中的【商品单价】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(spje == ""){
						alert("您表格中第"+(i+1)+"行中的【商品金额】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(ncpjxse == ""){
						alert("您表格中第"+(i+1)+"行中的【计提农产品进项税额】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(hkjsfs == ""){
						alert("您表格中第"+(i+1)+"行中的【货款结算方式】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(sffk == ""){
						alert("您表格中第"+(i+1)+"行中的【是否已付款】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(gzmxkm == ""){
						alert("您表格中第"+(i+1)+"行中的【挂账明细科目】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(cgd == ""){
						alert("您表格中第"+(i+1)+"行中的【采购地】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(sfyyf == ""){
						alert("您表格中第"+(i+1)+"行中的【是否有运费】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(ghf == ""){
						alert("您表格中第"+(i+1)+"行中的【供货方】列的值为空，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					if(gjrq > nowDate){
						alert("您第"+(i+1)+"行中的 【购进日期】不能大于当前时间，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
					/**
					 * 关于调整增值税一般纳税人网上申报需求的报告2018年5月版:
					 * 校验关系为该栏计提农产品进项税额=同行次的“商品金额”栏*0.11或同行次的“商品金额”栏*0.13
					 * 或同行次的“商品金额”栏*0.10或同行次的“商品金额”栏*0.12
					 * 20180514  BY YHQ 
					 */
					if(ncpjxse != formatPoint((spje*11/100),2) && ncpjxse != formatPoint((spje*13/100),2) 
							&& ncpjxse != formatPoint((spje*10/100),2) && ncpjxse != formatPoint((spje*12/100),2)){
						alert("您第"+(i+1)+"行中的【计提农产品进项税额】列的值要等于同行次【商品金额】列的值*0.10或同行次【商品金额】列的值*0.11" +
								"或同行次【商品金额】列的值*0.12或同行次【商品金额】列的值*0.13，请确认！");
						formatValue_SBB();
						var_b=false;
						return false;
					}
				}
	});

	return var_b;
}

//重写ctrl+Delete删除行的操作，删除后再重新计算值
function keyDownInsert_calculate()
{
	var event= window.event || arguments.callee.caller.arguments[0];
	if(event.ctrlKey)
	{
		//CTRL+INSERT:增行
		if(event.keyCode == 45)
		{		
			addRowWithoutCheckBrowserV();
			//操作行的时候HC要重新赋值
			setHcForInput();
		}
		//CTRL+DELETE:删行
		else if(event.keyCode == 46)
		{	
			delRowWithoutCheckBrowserV();
			//操作行的时候HC要重新赋值
			setHcForInput();
			
			/**
			 * 重新计算进项税额合计值
			 */
			calculateValueJEHJ();
		}
	}
}

function setHcForInput()
{
	var hcArr = $("#inputTable input[name='XH']");
	$.each(hcArr, function(i,val){
		
		$(hcArr[i]).val(i + 1);
	});
}
/*************************************************************************************/
function getNowDate(){
	var myDate = new Date();
	var year = myDate.getFullYear();
	var month = myDate.getMonth()+1;
	var day = myDate.getDate();

	var nowDate = year;
	
	if(month < 10){
		nowDate += "0";
	}
	nowDate +=month;

	if(day < 10){
		day += "0";
	}
	nowDate +=day;
	return nowDate;
}
function frmupdate(){
	
	if(save_check()){
		unformatValue_SBB();
	    document.getElementsByName("xform")[0].TABLE_ACTION.value = "update";
	    document.getElementsByName("xform")[0].action = "./MainServlet";
	    document.getElementsByName("xform")[0].submit();
	    return true;
	}
}

function frminsert(){
	
	if(save_check()){
		unformatValue_SBB();
	    document.getElementsByName("xform")[0].TABLE_ACTION.value="insert";
	    document.getElementsByName("xform")[0].action="./MainServlet";
	    document.getElementsByName("xform")[0].submit();
	    return true;
	}
}

function checkdata_commit3()
{
    document.getElementsByName("xform")[0].TABLE_ACTION.value = "display";
    document.getElementsByName("xform")[0].action="./MainServlet";
    document.getElementsByName("xform")[0].submit();
    return true;
}

function frmdelete()
{
    document.getElementsByName("xform")[0].TABLE_ACTION.value = "delete";
    document.getElementsByName("xform")[0].action="./MainServlet";
    document.getElementsByName("xform")[0].submit();
    return true;
}
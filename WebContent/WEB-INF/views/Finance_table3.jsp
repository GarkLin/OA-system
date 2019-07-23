<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>收入登记</title>
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/view.css" rel="stylesheet">
<script src="js/viewCn.js" type="text/javascript"></script>
<script src="js/view.js" type="text/javascript"></script>
<script src="js/utility.js" type="text/javascript"></script>
<script src="js/ckeditor.js" type="text/javascript"></script>
<style>
.cke {
	visibility: hidden;
}
</style>
</head>
<table style="width: 100%; height: 100%; min-width: 950px;" border="0"
	cellspacing="0" cellpadding="0">
	<tbody>
		<tr valign="top">
			<td>&nbsp;</td>
			<td id="colloaForm"><form>
					<div class="textBig">收入登记</div>
					<br>
					<table class="tableListBorder" style="table-layout: fixed;"
						border="0" cellspacing="0" cellpadding="0" summary="">
						<colgroup>
							<col width="100">
							<col>
							<col width="100">
							<col width="380">
						</colgroup>
						<tbody>
							<tr>
								<td class="fieldLable"><b style="color: red;">*</b>支付日期</td>
								<td id="dbf.dealTime" dbf.source="date" dbf.type="date,required"><img
									class="fieldGetValueBySource"
									onclick="fieldGetValueBySource('dbf.dealTime',this);"
									src="images/fieldSource.gif">
									<div id="e.dbf.dealTime">2019/3/17</div></td>
								<td class="fieldLable"><b style="color: red;">*</b>支出分类</td>
								<td id="dbf.psid"
									dbf.source="select sid,name,psid,stype from categoryX where modello='categoryX.financeX.outgoing' and statusX>0 order by sortId,name"
									dbf.type="required!0" dbf.key="0"><img
									class="fieldGetValueBySource"
									onclick="fieldGetValueBySource('dbf.psid',this);"
									src="images/fieldSource.gif">
									<div id="e.dbf.psidSource">&nbsp;</div></td>
							</tr>
							<tr>
								<td class="fieldLable"><b style="color: red;">*</b>支付金额</td>
								<td id="dbf.amountOut" dbf.type="amount,required!0"><input
									class="fieldEditable textAmount" id="e.dbf.amountOut" value="0"></td>
								<td class="fieldLable">大写</td>
								<td id="oChineseAmount">&nbsp;</td>
							</tr>
							<tr>
								<td class="fieldLable"><b style="color: red;">*</b>付款方式</td>
								<td id="dbf.accNo" dbf.source="list2:1=现金,10=银行转账" dbf.type=""
									dbf.key="10"><img class="fieldGetValueBySource"
									onclick="fieldGetValueBySource('dbf.accNo',this);"
									src="images/fieldSource.gif">
									<div id="e.dbf.accNoSource">银行转账</div></td>
								<td class="fieldLable">登记人</td>
								<td>李萌</td>
							</tr>
							<tr>
								<td class="fieldLable">申请人</td>
								<td id="dbf.operator"
									dbf.source="editable,prompt:select sid,name from userX where statusX>0 and stype=0 and name like '%[!prompt]%' order by name"
									dbf.type="" dbf.key="0"><img class="fieldGetValueBySource"
									onclick="fieldGetValueBySource('dbf.operator',this);"
									src="images/fieldSource.gif">
									<div class="fieldEditable" id="e.dbf.operatorSource"
										contenteditable="true" onkeypress="return event.keyCode!=13;"
										onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');">&nbsp;</div></td>
								<td class="fieldLable">所属部门</td>
								<td id="dbf.division" dbf.source="form.fieldSource.division"
									dbf.type="" dbf.key="0"><img class="fieldGetValueBySource"
									onclick="fieldGetValueBySource('dbf.division',this);"
									src="images/fieldSource.gif">
									<div id="e.dbf.divisionSource">&nbsp;</div></td>
							</tr>
							<tr>
								<td class="fieldLable">对方单位</td>
								<td id="dbf.customerXSource"><input class="fieldEditable"
									id="e.dbf.customerXSource"></td>
								<td class="fieldLable">关联合同</td>
								<td id="dbf.contractXSource"><input class="fieldEditable"
									id="e.dbf.contractXSource"></td>
							</tr>
							<tr>
								<td class="fieldLable">支出说明
									<div class="textGray">
										（最多输入<br>200个字符）
									</div>
								</td>
								<td id="dbf.description" colspan="3"><textarea
										class="fieldEditable" id="e.dbf.description"
										style="height: 80px;"></textarea></td>
							</tr>
						</tbody>
					</table>
				</form>
				<form method="post">
					<input name="viewState" id="viewState" type="hidden">
				</form>
			<div align="right" id="_vWorkflowActionsShow">
					<a class="button"
						onclick="javaScript:workflowAction('确定',1,1);return false;"
						href="javascript:">确定</a><a class="button"
						onclick="javaScript:workflowAction('取消',0,0);return false;"
						href="javascript:">取消</a>
				</div>
				<br></td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>预借款申请</title>
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
			<td id="colloaForm"><div class="formTaskflowContainer">
					<form class="formTaskflow">
						<table align="center" class="tableForm"
							style="table-layout: fixed;" border="0" cellspacing="0"
							cellpadding="0">
							<colgroup>
								<col width="60">
								<col>
								<col width="80">
								<col width="150">
							</colgroup>
						</table>
						<div>&nbsp;</div>
						<div style="text-align: center;">
							<span style="font-size: 20px;"><strong>预借款申请单</strong></span>
						</div>
						<table align="center" class="tableListBorder"
							style="table-layout: fixed;" border="0" cellspacing="0"
							cellpadding="0">
							<colgroup>
								<col width="120">
								<col width="180">
								<col width="100">
								<col width="280">
								<col width="100">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: center;" dbf.type="" dbf.source=""><span
										style="color: rgb(255, 0, 0);">*</span>申请人姓名</td>
									<td id="dbf.operator" dbf.type="required">
										<input class="fieldEditable" id="e.dbf.text5">
									</td>
									<td style="text-align: center;" dbf.type="" dbf.source=""><span
										style="color: rgb(255, 0, 0);">*</span>所属部门</td>
									<td id="dbf.division" dbf.type="required">
										<input class="fieldEditable" id="e.dbf.text5"></td>
									<td style="text-align: center;" dbf.type="" dbf.source=""><span
										style="color: rgb(255, 0, 0);">*</span>申请日期</td>
									<td id="dbf.time2" style="text-align: left;"
										dbf.type="date,required" dbf.source="date"><img
										class="fieldGetValueBySource"
										onclick="fieldGetValueBySource('dbf.time2',this);"
										src="images/fieldSource.gif">
										<div id="e.dbf.time2">2019/3/18</div></td>
								</tr>
								<tr>
									<td style="text-align: center;" dbf.type="" dbf.source=""><span
										style="color: rgb(255, 0, 0);">*</span>借款事由</td>
									<td id="借款事由" colspan="5" dbf.type="required" dbf.source=""><textarea
											class="fieldEditable" id="e.借款事由" style="height: 80px;"></textarea></td>
								</tr>
							</tbody>
						</table>
						<table align="center" class="tableListBorder2"
							style="table-layout: fixed;" border="0" cellspacing="0"
							cellpadding="0">
							<colgroup>
								<col width="120">
								<col>
								<col width="120">
								<col width="350">
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: center;" dbf.type="" dbf.source=""><span
										style="color: rgb(255, 0, 0);">*</span>借款金额</td>
									<td id="dbf.budget" style="color: rgb(204, 0, 0);"
										dbf.type="amount,required!0" dbf.source=""><input
										class="fieldEditable textAmount" id="e.dbf.budget" value="0"></td>
									<td style="text-align: center;" dbf.type="" dbf.source="">金额大写</td>
									<td id="金额大写" dbf.type="" dbf.source="">&nbsp;</td>
								</tr>
								<tr>
									<td style="text-align: center;" dbf.type="" dbf.source=""><span
										style="color: rgb(255, 0, 0);">*</span>预计还款日期</td>
									<td id="dbf.time0" dbf.type="date,required" dbf.source="date"><img
										class="fieldGetValueBySource"
										onclick="fieldGetValueBySource('dbf.time0',this);"
										src="images/fieldSource.gif">
										<div id="e.dbf.time0">&nbsp;</div></td>
									<td style="text-align: center;" dbf.type="" dbf.source="">借款方式</td>
									<td id="借款方式" dbf.type="" dbf.source=""><input
										class="fieldEditable" id="e.借款方式"></td>
								</tr>
							</tbody>
						</table>
						<div>&nbsp;</div>
						<table align="center" class="tableForm"
							style="table-layout: fixed;" border="0" cellspacing="0"
							cellpadding="0">
							<colgroup>
								<col width="60">
								<col>
							</colgroup>
							<tbody>
								<tr>
									<td style="text-align: right;" dbf.type="" dbf.source="">&nbsp;附件:</td>
									<td id="attachments" dbf.source="files"><img
										class="fieldGetValueBySource"
										onclick="fieldGetValueBySource('attachments',this);"
										src="images/fieldSource.gif">
										<div id="e.attachments">&nbsp;</div></td>
								</tr>
							</tbody>
						</table>
						<script>
							function calculate() {
								$('金额大写').value(
										$amountOfChinese($('dbf.budget')
												.amount()));
							}
						</script>
					</form>
				</div>
				<form method="post">
					<input name="viewState" id="viewState" type="hidden">
				</form>
				
			<div align="right" id="_vWorkflowActionsShow">
					<a class="button"
						onclick="javaScript:workflowAction('保存',150,1);return false;"
						href="javascript:">保存</a><a class="button"
						onclick="javaScript:workflowAction('提交主管审批',1,1);return false;"
						href="javascript:">提交主管审批</a><a class="button"
						onclick="javaScript:workflowAction('取消',0,0);return false;"
						href="javascript:">取消</a>
				</div>
				<br>
			<table style="table-layout: fixed;" border="0" cellspacing="0"
					cellpadding="0">
					<colgroup>
						<col width="60%">
						<col width="2%">
						<col>
				</table></td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
</html>
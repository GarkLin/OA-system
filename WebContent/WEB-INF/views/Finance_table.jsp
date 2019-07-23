<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>差旅费报销</title>
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
<body>
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
								<span style="font-size: 20px;"><strong>差旅费报销单</strong></span>
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
											style="color: rgb(255, 0, 0);">*</span>出差人姓名</td>
										<td id="dbf.operator" dbf.type="required!0"
											dbf.source="editable,prompt:select sid,name from userX where statusX>0 and stype=0 and name like '%[!prompt]%' order by name"
											dbf.key="1000071" dbf.value="李萌"><img
											class="fieldGetValueBySource"
											onclick="fieldGetValueBySource('dbf.operator',this);"
											src="../images/fieldSource.gif">
											<div class="fieldEditable" id="e.dbf.operatorSource"
												contenteditable="true"
												onkeypress="return event.keyCode!=13;"
												onblur="this.innerHTML=this.innerHTML.replace(/<\/?.+?>/g,'');">李萌</div></td>
										<td style="text-align: center;" dbf.type="" dbf.source=""><span
											style="color: rgb(255, 0, 0);">*</span>所属部门</td>
										<td id="dbf.division" dbf.type="required"
											dbf.source="form.fieldSource.division" dbf.key="1000034"><img
											class="fieldGetValueBySource"
											onclick="fieldGetValueBySource('dbf.division',this);"
											src="../images/fieldSource.gif">
											<div id="e.dbf.divisionSource">销售部</div></td>
										<td style="text-align: center;" dbf.type="" dbf.source=""><span
											style="color: rgb(255, 0, 0);">*</span>报销日期</td>
										<td id="dbf.time2" dbf.type="date,required" dbf.source="date"><img
											class="fieldGetValueBySource"
											onclick="fieldGetValueBySource('dbf.time2',this);"
											src="../images/fieldSource.gif">
											<div id="e.dbf.time2">2019/3/15</div></td>
									</tr>
									<tr>
										<td style="text-align: center;" dbf.type="" dbf.source="">出差事由</td>
										<td id="出差事由" colspan="5" dbf.type="" dbf.source=""><textarea
												class="fieldEditable" id="e.出差事由" style="height: 80px;"></textarea></td>
									</tr>
								</tbody>
							</table>
							<table align="center" class="tableListBorder2" id="tableData"
								style="table-layout: fixed;" border="0" cellspacing="0"
								cellpadding="0">
								<colgroup>
									<col width="120">
									<col width="120">
									<col>
									<col width="80">
									<col width="80">
									<col width="80">
									<col width="80">
									<col width="80">
									<col width="50">
								</colgroup>
								<tbody>
									<tr>
										<td style="text-align: center;">起止时间</td>
										<td style="text-align: center;">起止地点</td>
										<td style="text-align: center;">描述</td>
										<td style="text-align: center;">长途交通费</td>
										<td style="text-align: center;">市内交通费</td>
										<td style="text-align: center;">住宿费</td>
										<td style="text-align: center;">出差补贴</td>
										<td style="text-align: center;">其他费用</td>
										<td style="text-align: right;" dbf.type="" dbf.source=""><input
											name="增加行" id="增加行" style="width: 30px;"
											onclick="$addRow('tableData',1)" type="button" value="+"></td>
									</tr>
									<tr>
										<td id="起止时间"><input class="fieldEditable" id="e.起止时间"></td>
										<td id="起止地点"><input class="fieldEditable" id="e.起止地点"></td>
										<td id="描述"><input class="fieldEditable" id="e.描述"></td>
										<td id="长途交通费" style="text-align: right;" dbf.type="amount"
											dbf.source=""><input class="fieldEditable textAmount"
											id="e.长途交通费"></td>
										<td id="市内交通费" style="text-align: right;" dbf.type="amount"
											dbf.source=""><input class="fieldEditable textAmount"
											id="e.市内交通费"></td>
										<td id="住宿费" style="text-align: right;" dbf.type="amount"
											dbf.source=""><input class="fieldEditable textAmount"
											id="e.住宿费"></td>
										<td id="出差补贴" style="text-align: right;" dbf.type="amount"
											dbf.source=""><input class="fieldEditable textAmount"
											id="e.出差补贴"></td>
										<td id="其他费用" style="text-align: right;" dbf.type="amount"
											dbf.source=""><input class="fieldEditable textAmount"
											id="e.其他费用"></td>
										<td style="text-align: right;" dbf.type="" dbf.source=""><input
											name="删除行" id="删除行" style="width: 30px;"
											onclick="$delRow(this);" type="button" value="-"></td>
									</tr>



								</tbody>
							</table>
							<table align="center" class="tableListBorder2" id="tableData"
								style="table-layout: fixed;" border="0" cellspacing="0"
								cellpadding="0">
								<colgroup>
									<col>
									<col width="80">
									<col width="80">
									<col width="80">
									<col width="80">
									<col width="80">
									<col width="50">
								</colgroup>
								<tbody>
									<tr>
										<td style="text-align: right;" dbf.type="" dbf.source="">小计</td>
										<td id="小计长途交通费" style="text-align: right;" dbf.type="amount"
											dbf.source="">0.00</td>
										<td id="小计市内交通费" style="text-align: right;" dbf.type="amount"
											dbf.source="">0.00</td>
										<td id="小计住宿费" style="text-align: right;" dbf.type="amount"
											dbf.source="">0.00</td>
										<td id="小计出差补贴" style="text-align: right;" dbf.type="amount"
											dbf.source="">0.00</td>
										<td id="小计其他费用" style="text-align: right;" dbf.type="amount"
											dbf.source="">0.00</td>
										<td>&nbsp;</td>
									</tr>
								</tbody>
							</table>
							<table align="center" class="tableListBorder2" id="tableData"
								style="table-layout: fixed;" border="0" cellspacing="0"
								cellpadding="0">
								<colgroup>
									<col width="120">
									<col>
									<col width="80">
									<col width="130">
								</colgroup>
								<tbody>
									<tr>
										<td style="text-align: right;" dbf.type="" dbf.source="">合计（大写）</td>
										<td id="合计大写" dbf.type="" dbf.source="">零元整</td>
										<td style="text-align: right;" dbf.type="" dbf.source="">合计<input
											name="合计按钮" id="合计按钮" onclick="calculate();" type="button"
											value="="></td>
										<td id="dbf.budget"
											style="text-align: right; color: rgb(204, 0, 0);"
											dbf.type="amount,required" dbf.source=""><input
											class="fieldEditable textAmount" id="e.dbf.budget" value="0"></td>
									</tr>
								</tbody>
							</table>
							<div style="text-align: left;">*
								填单人根据规定，提交给主管审批。在主管审批或上级审批通过后，请打印本电子单据并且粘贴上原始票据，传递给财务处理。</div>
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
											src="../images/fieldSource.gif">
											<div id="e.attachments">&nbsp;</div></td>
									</tr>
								</tbody>
							</table>
							<script>
								function calculate() {
									$('合计大写')
											.value(
													$amountOfChinese($(
															'dbf.budget')
															.amount(
																	$('小计长途交通费')
																			.amount(
																					$amountSum('长途交通费'))
																			+ $(
																					'小计市内交通费')
																					.amount(
																							$amountSum('市内交通费'))
																			+ $(
																					'小计住宿费')
																					.amount(
																							$amountSum('住宿费'))
																			+ $(
																					'小计出差补贴')
																					.amount(
																							$amountSum('出差补贴'))
																			+ $(
																					'小计其他费用')
																					.amount(
																							$amountSum('其他费用')))));
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
				</td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
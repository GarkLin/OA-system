<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>出差申请</title>
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
					<form class="formTaskflow" action="addAssessment" method="post">
							
							<div style="text-align: center;">&nbsp;</div>
							<div style="text-align: center;">
								<span style="font-size: 20px;"><strong>出差申请单</strong></span>
							</div>
							<div>
								<table align="center" class="tableListBorder"
									style="table-layout: fixed;" border="0" cellspacing="0"
									cellpadding="0">
									<colgroup>
										<col width="100">
										<col width="180">
										<col width="100">
										<col width="250">
										<col width="100">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请人</td>
											<td id="dbf.operator" dbf.type="required">
												<input type="hidden" name="assessment.assessment_way" value="出差申请"/>
												<input type="hidden" name="assessment.asta" value="0"/>
												<input class="fieldEditable" id="e.dbf.text5" name="assessment.assessment_name">
												</td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>所属部门</td>
											<td id="dbf.division" dbf.type="required">
												<input class="fieldEditable" id="e.dbf.text5" name="assessment.assessment_department"></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请时间</td>
											<td id="dbf.operator" dbf.type="required">
												<input class="fieldEditable" id="e.dbf.text5" name="assessment.assessment_date">
												</td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差时间</td>
											<td id="dbf.operator" dbf.type="required">
												<input class="fieldEditable" id="e.dbf.text5" name="assessment.assessment_time">
												</td>
											<td style="text-align: center;" dbf.type="" dbf.source="">联系电话</td>
											<td id="dbf.operator" dbf.type="required">
												<input class="fieldEditable" id="e.dbf.text5" name="assessment.assessment_phone">
												</td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>目的地</td>
											<td id="dbf.text5" dbf.type="required" dbf.source=""><input
												class="fieldEditable" id="e.dbf.text5" name="assessment.assessment_adress"></td>
										</tr>
										<tr>
											<td style="text-align: center;">交通工具</td>
											<td colspan="5">&nbsp;<input name="assessment.assessment_car" id="交通工具"
												type="checkbox">汽车&nbsp;&nbsp;<input name="交通工具"
												id="assessment.assessment_car" type="checkbox">火车&nbsp;&nbsp;<input
												name="assessment.assessment_car" id="交通工具" type="checkbox">飞机&nbsp;&nbsp;<input
												name="assessment.assessment_car" id="交通工具" type="checkbox">轮船&nbsp;&nbsp;<input
												name="assessment.assessment_car" id="交通工具" type="checkbox">私家车&nbsp;&nbsp;<input
												name="assessment.assessment_car" id="交通工具" type="checkbox">其他 <input
												name="assessment.assessment_car" id="其他"></td>
										</tr>
										<tr>
											<td style="text-align: center;">出差事由</td>
												<td id="出差报告" colspan="5" dbf.type="required" dbf.source=""><textarea
													class="fieldEditable" id="e.出差报告" style="height: 80px;" name="assessment.assessment_table"></textarea></td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<div>&nbsp;</div>
							<table align="center" class="tableForm"
								style="table-layout: fixed;" border="0" cellspacing="0"
								cellpadding="0">
								<colgroup>
									<col width="60">
									<col>
								</colgroup>
							</table>
							<div>&nbsp;</div>
							<div align="right" id="_vWorkflowActionsShow">
								<button class="button" >提交主管审批</button>
								<button class="button">取消</button>
							</div>
						</form>
					</div>
					
					<br>
				
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>
	
						
						</body>
</html>
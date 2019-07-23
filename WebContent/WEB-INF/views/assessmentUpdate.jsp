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
					<form class="formTaskflow" action="assessmentUpdate" method="post">
							
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
										<input type="hidden" name="assessment.assessment_id" value="${assessment.assessment_id}"/>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请人</td>
											<td>
												<input type="hidden" name="assessment.asta" value="0"/>
												<input class="fieldEditable" name="assessment.assessment_name" value="${assessment.assessment_name}">
											</td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>所属部门</td>
											<td>
												<input class="fieldEditable" name="assessment.assessment_department" value="${assessment.assessment_department}"></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请时间</td>
											<td>
												<input class="fieldEditable" name="assessment.assessment_date" value="${assessment.assessment_date}">
												</td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差时间</td>
											<td>
												<input class="fieldEditable" name="assessment.assessment_time" value="${assessment.assessment_time}">
												</td>
											<td style="text-align: center;">联系电话</td>
											<td>
												<input class="fieldEditable" name="assessment.assessment_phone" value="${assessment.assessment_phone}">
												</td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>目的地</td>
											<td><input
												class="fieldEditable" name="assessment.assessment_adress" value="${assessment.assessment_adress}"></td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>出差事由</td>
											<td colspan="5"><textarea
													class="fieldEditable" style="height: 80px;" name="assessment.assessment_way">${assessment.assessment_way}</textarea></td>
										</tr>
										<tr>
											<td style="text-align: center;">交通工具</td>
											<td colspan="5">
											<input class="fieldEditable" name="assessment.assessment_car" value="${assessment.assessment_car}">
										    </td>
										</tr>
										<tr>
											<td style="text-align: center;">出差报告</td>
												<td colspan="5"><textarea
													class="fieldEditable" style="height: 80px;" name="assessment.assessment_table">${assessment.assessment_table}</textarea></td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<div>&nbsp;</div>
							
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
	
	<div id="fieldGetValueBySource.dbf.time2"
								style="padding: 5px; border: 1px solid rgb(221, 221, 221); border-image: none; left: 827px; top: 192px; width: 350px; height: 250px; display: none; position: absolute; z-index: 10; cursor: default; -ms-overflow-x: hidden; -ms-overflow-y: auto; box-sizing: border-box; background-color: rgb(255, 255, 255);">
								<iframe src="common/fieldDate.htm?date" frameborder="0"
									style="width: 100%; height: 95%;"></iframe>
							</div>	
	
	<div id="fieldGetValueBySource.dbf.endTime"
								style="padding: 5px; border: 1px solid rgb(221, 221, 221); border-image: none; left: 1026px; top: 81px; width: 350px; height: 250px; display: none; position: absolute; z-index: 10; cursor: default; -ms-overflow-x: hidden; -ms-overflow-y: auto; box-sizing: border-box; background-color: rgb(255, 255, 255);">
		<iframe src="common/fieldDate.htm?date,editable" frameborder="0"
									style="width: 100%; height: 95%;"></iframe>
	</div>
	
	
	<div id="fieldGetValueBySource.dbf.time0"
								style="padding: 5px; border: 1px solid rgb(221, 221, 221); border-image: none; left: 827px; top: 217px; width: 350px; height: 250px; display: none; position: absolute; z-index: 10; cursor: default; -ms-overflow-x: hidden; -ms-overflow-y: auto; box-sizing: border-box; background-color: rgb(255, 255, 255);">
		<iframe src="common/fieldDate.htm?date" frameborder="0"
									style="width: 100%; height: 95%;"></iframe>
	</div>

						
						</body>
</html>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>招聘表单</title>
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
						<form class="formTaskflow" action="addRecritment" method="post">

							<div>
								<div style="text-align: center;">&nbsp;</div>
								<div style="text-align: center;">
									<span style="font-size: 20px;"><strong>招聘申请单</strong></span>
								</div>
							</div>
							<div>
								<table align="center" class="tableListBorder"
									style="table-layout: fixed;" border="0" cellspacing="0"
									cellpadding="0">
									<colgroup>
										<col width="150">
										<col width="300">
										<col width="150">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请人</td>
											<td><input
												class="fieldEditable" id="e.dbf.positionX"
												name="recritment.recritment_name"></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>所属部门</td>
											<td><input
												class="fieldEditable" id="e.dbf.positionX"
												name="recritment.recritment_manage"></td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>需求岗位</td>
											<td><input
												class="fieldEditable" id="e.dbf.positionX"
												name="recritment.recritment_content"></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>申请时间</td>
											<td><input
												class="fieldEditable" id="e.dbf.positionX"
												name="recritment.recritment_time"></td>
										</tr>
										<tr>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>需求人数</td>
											<td><input
												class="fieldEditable" id="e.dbf.number0" value="0"
												name="recritment.recritment_num"></td>
											<td style="text-align: center;"><span
												style="color: rgb(255, 0, 0);">*</span>希望到岗日期</td>
											<td><input
												class="fieldEditable" id="e.dbf.positionX"
												name="recritment.recritment_date"></td>
										</tr>
										<tr>
											<td style="text-align: center;">招聘原因说明</td>
											<td id="招聘原因说明" colspan="3"><textarea
													class="fieldEditable" id="e.招聘原因说明" style="height: 80px;"
													name="recritment.recritment_shuoming"></textarea></td>
										</tr>
										<tr>
											<td style="text-align: center;">工作内容及职责</td>
											<td id="工作内容及职责" colspan="3"><textarea
													class="fieldEditable" id="e.工作内容及职责" style="height: 80px;"
													name="recritment.recritment_neirong"></textarea></td>
										</tr>
										<tr>
											<td style="text-align: center;">外语要求</td>
											<td id="外语要求"><input class="fieldEditable" id="e.外语要求"
												name="recritment.recritment_English"></td>
											<td style="text-align: center;">工作地点</td>
											<td id="工作地点"><input class="fieldEditable" id="e.工作地点"
												name="recritment.recritment_address"></td>
										</tr>
										<tr>
											<td style="text-align: center;">状态</td>
											<td id="年龄"><input class="fieldEditable" id="e.年龄"
												name="recritment.sta"></td>
											<td style="text-align: center;">性别</td>
											<td>&nbsp;<input name="recritment.recritment_gender"
												id="性别" type="radio" value="男">男 <input
												name="recritment.recritment_gender" id="性别" type="radio"
												value="女">女 <input
												name="recritment.recritment_gender" id="性别" type="radio"
												checked="" value="不限">不限
											</td>
										</tr>
										<tr>
											<td style="text-align: center;">学历</td>
											<td id="dbf.positionX" dbf.type="required"><input
												class="fieldEditable" id="e.dbf.positionX"
												name="recritment.recritment_xueli"></td>
											<td style="text-align: center;">专业</td>
											<td id="专业"><input class="fieldEditable" id="e.专业"
												name="recritment.recritment_zhuanye"></td>
										</tr>
										<tr>
											<td style="text-align: center;">工作经验</td>
											<td id="工作经验" colspan="3" dbf.type="" dbf.source=""><textarea
													class="fieldEditable" id="e.工作经验" style="height: 80px;"
													name="recritment.recritment_jingyan"></textarea></td>
										</tr>
										<tr>
											<td style="text-align: center;">行业背景</td>
											<td id="行业背景" colspan="3" dbf.type="" dbf.source=""><textarea
													class="fieldEditable" id="e.行业背景" style="height: 80px;"
													name="recritment.recritment_beijing"></textarea></td>
										</tr>
										<tr>
											<td style="text-align: center;">其他要求</td>
											<td id="其他要求" colspan="3" dbf.type="" dbf.source=""><textarea
													class="fieldEditable" id="e.其他要求" style="height: 80px;"
													name="recritment.recritment_yaoqiu"></textarea></td>
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

							<div align="right" id="_vWorkflowActionsShow">
								<button class="button">提交主管审批</button>
								<button class="button">取消</button>
							</div>
						</form>
					</div>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>

	<!-- <div id="fieldGetValueBySource.dbf.time2"
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
 -->
</body>
</html>
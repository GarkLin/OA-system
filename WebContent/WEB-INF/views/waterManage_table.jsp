<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>水费登记表</title>
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
			<td id="colloaForm">
			<form id="addwater" action="addWater" method="post">
					<div class="textBig">水费登记</div>
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
								<td>
									<input type="hidden" name="water.type_id" value="1"/>
									<input id="dealTime" class="fieldEditable" name="water.pay_date"></input>
								</td>
								<td class="fieldLable"><b style="color: red;">*</b>支出分类</td>
								<td>
									<input id="psidSource" class="fieldEditable" name="water.type"></input></td>
							</tr>
							<tr>
								<td class="fieldLable"><b style="color: red;">*</b>支付金额</td>
								<td><input
									class="fieldEditable textAmount" id="amountOut" name="water.pay_money"></td>
								<td class="fieldLable">地址</td>
								<td><input
									class="fieldEditable" id="address" name="water.source"></td>
							</tr>
							<tr>
								<td class="fieldLable"><b style="color: red;">*</b>登记人</td>
								<td><input
									class="fieldEditable" id="away" name="water.water_user"></td>
								<td class="fieldLable">联系电话</td>
								<td><input
									class="fieldEditable" id="aname" name="water.phone"></td>
							</tr>
							<tr>
								<td class="fieldLable">申请人</td>
								<td>
									<input
									class="fieldEditable" id="ayezhu" name="water.department_is"></td>
								<td class="fieldLable">所属部门</td>
								<td>
									<input
									class="fieldEditable" id="abumen" name="water.department"></td>
							</tr>
							<tr>
								<td class="fieldLable">支出说明
									<div class="textGray">
										（最多输入<br>200个字符）
									</div>
								</td>
								<td colspan="3"><textarea
										class="fieldEditable" id="description"
										style="height: 80px;" name="water.beizhu"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div align="right">
						<a class="button" href="javascript:document:addwater.submit();">提交</a>
						<a class="button" href="javascript:" >取消</a>
					</div>
				</form>
				<br></td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
</html>
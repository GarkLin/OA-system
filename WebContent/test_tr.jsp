<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
table {
	border: 0;
	border-collapse: collapse;
}

td {
	font: normal 12px/17px Arial;
	padding: 2px;
	width: 100px;
}

th {
	font: bold 12px/17px Arial;
	text-align: left;
	padding: 4px;
	border-bottom: 1px solid #333;
	width: 100px;
}

.parent {
	background: #FFF38F;
	cursor: pointer;
}

.odd {
	background: #FFFFEE;
}

.selected {
	background: #FF6500;
	color: #fff;
}
</style>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js"></script>
<script type="text/javascript">
	$(function() {
		$("tr.parent").click(
				function() {
					$(this).toggleClass('selected').siblings(
							'.child_' + this.id).toggle();
				})
	})
</script>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>姓名</th>
				<th>性别</th>
				<th>暂住地</th>
			</tr>
		</thead>
		<tbody>
			<tr class="parent" id="row_01">
				<td colspan="3">前台设计组</td>
			</tr>
			<tr class="child_row_01">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="child_row_01">
				<td>李四</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="parent" id="row_02">
				<td colspan="3">前台设计组</td>
			</tr>
			<tr class="child_row_02">
				<td>王五</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="child_row_02">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="parent" id="row_03">
				<td colspan="3">前台设计组</td>
			</tr>
			<tr class="child_row_03">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="child_row_03">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="parent" id="row_04">
				<td colspan="3">前台设计组</td>
			</tr>
			<tr class="child_row_04">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="child_row_04">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
			<tr class="parent" id="row_05">
				<td colspan="3">前台设计组</td>
			</tr>
			<tr class="child_row_05">
				<td>张山</td>
				<td>男</td>
				<td>浙江</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
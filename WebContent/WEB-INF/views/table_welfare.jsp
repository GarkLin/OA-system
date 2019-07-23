<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>劳动合同登记表</title>
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
<script>
	function check(){
		var name = document.getElementById("text5");
		if(name="text5"){
			document.getElementById("text5").checked=true;
			document.getElementById("text6").checked=false;
			document.getElementById("text7").checked=false;
		}
	}
	function check6(){
		var name = document.getElementById("text6");
		if(name="text6"){
			document.getElementById("text6").checked=true;
			document.getElementById("text5").checked=false;
			document.getElementById("text7").checked=false;
		}
	}
	function check7(){
		var name = document.getElementById("text7");
		if(name="text7"){
			document.getElementById("text7").checked=true;
			document.getElementById("text5").checked=false;
			document.getElementById("text6").checked=false;
		}
	}
	function addWelfare(){
		$.ajax({
			type:"POST",
			dateType:"json",
			url:"addWelfare.action",
			date:$("#addform").serialize(),
			dateType:"text",
			success:function(){
				
			},
			error:function(){
				
			}
		})
		}	
</script>
</head>
<body>
	<table style="min-width: 950px; width: 100%; height: 100%;"
		cellpadding="0" cellspacing="0" border="0">
		<tbody>
			<tr valign="top">
				<td>&nbsp;</td>
				<td id="colloaForm"><div class="formTaskflowContainer">
						<form class="formTaskflow" id="addform" action="addWelfare" method="post">
							<input type="hidden" name="welfare.ids" value="1"/>
							<div style="TEXT-ALIGN: center">&nbsp;</div>
							<div style="TEXT-ALIGN: center">
								<span style="FONT-SIZE: 20px"><strong>劳动合同登记单</strong></span>
							</div>
							<div>
								<table class="tableListBorder" style="TABLE-LAYOUT: fixed"
									cellspacing="0" cellpadding="0" align="center" summary=""
									border="0">
									<colgroup>
										<col width="100">
										<col>
									</colgroup>
									<tbody>
										<tr>
											<td style="TEXT-ALIGN: center"><strong><font
													color="#ff0000">*</font></strong>登记内容</td>
											<td><input class="fieldEditable" name="welfare.welfare_way"></td>
										</tr>
										<tr>
											<td style="TEXT-ALIGN: center"><strong><font
													color="#ff0000">*</font></strong>员工姓名</td>
											<td>
												<input class="fieldEditable" name="welfare.name"></td>
										</tr>
										<tr>
											<td style="TEXT-ALIGN: center"><strong><font
													color="#ff0000">*</font></strong>合同类型</td>
											<td><input id="text5" type="radio" value="固定期限合同" name="welfare.type"
											    onclick="check()">固定期限合同 
												<input id="text6" type="radio" value="无固定期限合同" name="welfare.type"
												onclick="check6()">无固定期限合同
												<input id="text7" type="radio" value="临时用工合同" name="welfare.type"
												onclick="check7()">临时用工合同</td>
										</tr>
										<tr>
											<td style="TEXT-ALIGN: center">签订日期</td>
											<td><input class="fieldEditable" name="welfare.time"></td>
										</tr>
										<tr>
											<td style="TEXT-ALIGN: center">生效日期</td>
											<td><input class="fieldEditable" name="welfare.effective"></td>
										</tr>
										<tr>
											<td style="TEXT-ALIGN: center">终止日期</td>
											<td><input class="fieldEditable" name="welfare.endtime"></td>
										</tr>
										<tr>
											<td style="TEXT-ALIGN: center">附加描述</td>
											<td><textarea class="fieldEditable"
													style="height: 140px; margin: 0px; width: 842px;" name="welfare.welfare_people"></textarea></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div>&nbsp;</div>
							<table class="tableForm" style="TABLE-LAYOUT: fixed"
								cellspacing="0" cellpadding="0" align="center" border="0">
								<colgroup>
									<col width="60">
									<col>
								</colgroup>
								
							</table>
							<div id="_vWorkflowActionsShow" align="right">
						<a class="button" href="javascript:document:addform.submit();">提交</a>
						<a class="button" href="javascript:" >取消</a>
					</div>
					<br>
						</form>
					</div>

				</td>
				<td>&nbsp;</td>
			</tr>
		</tbody>
	</table>

	


</body>
</html>
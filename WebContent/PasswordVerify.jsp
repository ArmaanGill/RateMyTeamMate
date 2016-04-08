<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SignUp</title>
<style type="text/css">
<!--
#Search {
width:350px;
padding: 5px;
padding-right: 40px;
outline: none;
border: 2px solid #999999;
border-radius: 10px;
background-color: #FBFBFB;
font-family: Cambria, Cochin, Georgia, serif;
font-size: 16px;
background-position: 350px -10px;
background-image: url('//www.kirupa.com/images/search.png');
background-repeat: no-repeat;
}
.rcorners13 {	border-radius:5px;
	padding: 5px;
	size:30;
}
.style5 {
	color: #3b3a36;
	font-style: italic;
	font: bold;
	font-size: 20px;
}
.style11 {
	color: #3b3a36;
}
.style16 {
	border-radius:5px;
	padding: 5px;
	background-color:#FFF056;
	color:#3b3a36;
	size:20;
	border-bottom-width: medium;
	border-left-style: solid;
}
.style12 {border-radius:5px;
	padding: 5px;
background-color:#FFF056;
	color:#3b3a36;
	size:20;
}
.style13 {border-radius:5px;
	padding: 5px;
background-color:#FFF056;
	color:#3b3a36;
	size:20;
}
.style14 {border-radius:5px;
	padding: 5px;
	border-color:#FFF056;
	border-width:thin;

}
.txt {
	background-color: #DFE2DB;
}
.style22 {border-radius:5px;
	padding: 5px;
background-color:#FFF056;
	color:#3b3a36;
	size:20;
}
.bcolour {	border-radius:10px;
	padding: 5px;
	background-color:#FFF056;
	font-style: italic;
	font: Bold;
	width: 10em;  
	height: 3em;
}
.rcorners13 {	border-radius:5px;
	padding: 5px;
	size:30;
}
-->
</style>
</head>

<body>
<form id="form1" name="form1" method="post" action="forgetPasswordVerify" >
<table width="100%" height="918" border="0" >
<tr><td><%@ include file="header.jsp" %></td></tr>
<tr> 
  <td height="500" align="center" valign="middle" class="Search" bgcolor="#DFE2DB"><table width="348" height="800" border="0" align="center" cellpadding="0" cellspacing="0" style="	style=border-collapse:collapse;" class="style14">
<c:if test="${!empty message}">
				<div style="padding-bottom:15px; padding-top:15px; padding-left:45px; padding-right:15px; float:none;display: block;" class="error">${message}</div>
			</c:if>
<c:if test="${!empty error}">
				<div style="padding-bottom:15px; padding-top:15px; padding-left:45px; padding-right:15px; float:none;display: block;" class="error">${error}</div>
			</c:if>
  <tr><td width="367"><table width="335" border="0" align="center" 
  class="jumbotron" >
    
    <tr>
      <td width="329" height="23" align="center">&nbsp;</td>
    </tr>
  
    <tr>
      <td align="center" class="style11">Security Question</td>
    </tr>
         <tr>
  <td width="329" align="center">
                <input type="text" name="question" id="question" class="rcorners13" required  readonly="readonly" style="border:none" value="<%=request.getAttribute("question")%>" /> </td>
           </tr>  
           <tr>
      <td align="center">&nbsp;</td>
    </tr>
            <tr>
              <td align="center" class="style11">Answer </td>
            </tr>
            <tr>
              <td width="329" align="center"><label>
                <input type="text" name="answer" id="answer" class="rcorners13" required="required"/>
              </label></td>
           </tr> <tr>
      <td align="center">&nbsp;</td>
    </tr>
           
           <tr>
             <td align="center" class="style11">New Password </td>
           </tr>
           <tr>
              <td width="329" align="center"><label>
                <input type="password" name="password" id="password" class="rcorners13" required="required" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters." maxlength="20" />
              </label></td>
           </tr>
            <tr>
      <td align="center">&nbsp;</td>
    </tr>
 	 <tr>
      	  <td align="center"><label>
          <input name="SignIn" type="submit" class="bcolour" id="SignIn" value="SetNewPassword" size="20" onmouseover="this.style.color = 'white'" onmouseout="this.style.color = '#3b3a36'" />
      	  </label></td>
     		 </tr>
  </table></td></tr></table></td>
</tr>
<tr><td><%@ include file="footer.jsp" %></td></tr>
</table>
</form>
<div id="google_translate_element"></div><script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en', includedLanguages: 'fr', layout: google.translate.TranslateElement.InlineLayout.SIMPLE}, 'google_translate_element');
}
</script><script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
</body>
</html>

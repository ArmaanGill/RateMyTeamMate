<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Rate</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style type="text/css">

div.stars {
  width: 270px;
  display: inline-block;
}
input.star { display: none; }
label.star {
  float: right;
padding: 10px;
font-size: 24px;
color: #444;
transition: all .2s;
}

input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
input.star-1:checked ~ label.star:before { color: #F62; }
label.star:hover { transform: rotate(-15deg) scale(1.3); }
label.star:before {
  content: '\f006';

  font-family: FontAwesome;
}

div.stars1 {
  width: 270px;
  display: inline-block;
}
input.star1 { display: none; }
label.star1 {
  float: right;

  padding: 10px;

  font-size: 24px;

  color: #444;
  transition: all .2s;
}

input.star1:checked ~ label.star1:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.star1-5:checked ~ label.star1:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
input.star1-1:checked ~ label.star1:before { color: #F62; }
label.star1:hover { transform: rotate(-15deg) scale(1.3); }
label.star1:before {
  content: '\f006';

  font-family: FontAwesome;
}


div.starsL {
  width: 270px;
  display: inline-block;
}
input.starL { display: none; }
label.starL {
  float: right;
padding: 10px;
font-size: 24px;
color: #444;
transition: all .2s;
}

input.starL:checked ~ label.starL:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.starL-5:checked ~ label.starL:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
input.starL-1:checked ~ label.starL:before { color: #F62; }
label.starL:hover { transform: rotate(-15deg) scale(1.3); }
label.starL:before {
  content: '\f006';

  font-family: FontAwesome;
}


div.starsT {
  width: 270px;
  display: inline-block;
}
input.starT { display: none; }
label.starT {
  float: right;
padding: 10px;
font-size: 24px;
color: #444;
transition: all .2s;
}

input.starT:checked ~ label.starT:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.starT-5:checked ~ label.starT:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}
input.starT-1:checked ~ label.starT:before { color: #F62; }
label.starT:hover { transform: rotate(-15deg) scale(1.3); }
label.starT:before {
  content: '\f006';

  font-family: FontAwesome;
}

.style1 {
	color: #333333;
	background-color: #3399FF;
}
.style4 {
	font-size: 14px;
	color: #666666;
}
.rcorners13 {	border-radius:5px;
	padding: 5px;
	size:30;
}
.style5 {
	color: #3b3a36;
	font-size: 16px;
}
.txt {
	background-color: #DFE2DB;
}
.rcorners131 {border-radius:5px;
	padding: 5px;
	size:30;
}
.bcolour {border-radius:10px;
	padding: 5px;
	background-color:#FFF056;
	font-style: italic;
	font: Bold;
	width: 10em;  
	height: 3em;
}
.fix {   position:fixed; top:150px;
}
  </style>
</head>

<body>
<form id="form1" name="form1" method="post" action="AddRating" >
<table width="100%" height="654" border="0" >
<tr><td><%@ include file="header.jsp" %></td></tr>
 <tr><td>
    
<tr> 
  <td height="587" align="center" valign="middle" bgcolor="#DFE2DB" class="Search"><table width="1092" height="526" border="0">
   <c:if test="${!empty message}">
				<div style="padding-bottom:15px; padding-top:15px; padding-left:45px; padding-right:15px; float:none;display: block;" class="error">${message}</div>
			</c:if>
<c:if test="${!empty error}">
				<div style="padding-bottom:15px; padding-top:15px; padding-left:45px; padding-right:15px; float:none;display: block;" class="error">${error}</div>
			</c:if><td></tr>
      <td width="185" height="522" align="left"><table width="185" height="85"  border="0" class="fix">
        <tr>
          <td align="left"><div class="col-md-4 col-sm-8">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-user-secret fa-stack-1x text-primary"></i>
                            </span>
                            </div>
                        </div></td>
        </tr>
        <tr>
                <td width="294" align="left"><label> Name :
                  <input type="text" name="name" id="name" value="<%=request.getAttribute("name")%>" class="txt" readonly="readonly" style="border:none"/>
			</label></td>
              </tr>
        <tr>
          <td align="left"><label> Program :
            <input type="text" name="course" id="course" value="<%=request.getAttribute("course")%>" class="txt" readonly="readonly" style="border:none"/>
          </label></td>
        </tr>
        <tr>
          <td align="left"><label> University :
            <input type="text" name="university" id="university" value="<%=request.getAttribute("university")%>" class="txt" readonly="readonly" style="border:none"/>
          </label></td>
        </tr>
        <tr>
          <td align="left"><label> Department :
            <input type="text" name="department" id="department" value="<%=request.getAttribute("department")%>" class="txt"  readonly="readonly" style="border:none"/>
          </label></td>
        </tr>
      </table>
        </div></td>
      <td width="897" align="right" valign="bottom">
       
        <table width="671" border="0" class="jumbotron">
              <tr>
                <td width="326" class="style5">1 &nbsp;&nbsp; Course Code</td>
                <td width="329" align="center"><label> &nbsp;&nbsp;
                      <input name="cc" type="text" class="rcorners131" id="cc" required />
                </label></td>
              </tr>
              <tr>
                <td class="style5" >2 &nbsp;&nbsp; Helpfulness</td>
                <td align="center" class="style8"><div class="stars">
                    <input class="star star-5" id="star-5" type="radio" name="star" value="5" />
                    <label class="star star-5" for="star-5"></label>
                    <input class="star star-4" id="star-4" type="radio" name="star" value="4" />
                    <label class="star star-4" for="star-4"></label>
                    <input class="star star-3" id="star-3" type="radio" name="star" value="3" />
                    <label class="star star-3" for="star-3"></label>
                    <input class="star star-2" id="star-2" type="radio" name="star" value="2" />
                    <label class="star star-2" for="star-2"></label>
                    <input class="star star-1" id="star-1" type="radio" name="star" value="1" />
                    <label class="star star-1" for="star-1"></label>
                </div></td>
              </tr>
              <tr>
                <td class="style5" >3 &nbsp;&nbsp; Knowledgeable</td>
                <td align="center" class="style8"><div class="stars1">
                    <input class="star1 star1-5" id="star1-5" type="radio" name="star1" value="5" />
                    <label class="star1 star1-5" for="star1-5"></label>
                    <input class="star1 star1-4" id="star1-4" type="radio" name="star1" value="4" />
                    <label class="star1 star1-4" for="star1-4"></label>
                    <input class="star1 star1-3" id="star1-3" type="radio" name="star1" value="3" />
                    <label class="star1 star1-3" for="star1-3"></label>
                    <input class="star1 star1-2" id="star1-2" type="radio" name="star1" value="2" />
                    <label class="star1 star1-2" for="star1-2"></label>
                    <input class="star1 star1-1" id="star1-1" type="radio" name="star1" value="1" />
                    <label class="star1 star1-1" for="star1-1"></label>
                </div></td>
              </tr>
              <tr>
                <td class="style5">4 &nbsp;&nbsp; Leadership Skills</td>
                <td align="center" class="style8"><div class="starsL">
                    <input class="starL starL-5" id="starL-5" type="radio" name="starL" value="5" />
                    <label class="starL starL-5" for="starL-5"></label>
                    <input class="starL starL-4" id="starL-4" type="radio" name="starL" value="4" />
                    <label class="starL starL-4" for="starL-4"></label>
                    <input class="starL starL-3" id="starL-3" type="radio" name="starL" value="3" />
                    <label class="starL starL-3" for="starL-3"></label>
                    <input class="starL starL-2" id="starL-2" type="radio" name="starL" value="2" />
                    <label class="starL starL-2" for="starL-2"></label>
                    <input class="starL starL-1" id="starL-1" type="radio" name="starL" value="1" />
                    <label class="starL starL-1" for="starL-1"></label>
                </div></td>
              </tr>
              <tr>
                <td class="style5" >5 &nbsp;&nbsp; Team Participation</td>
                <td align="center"><div class="starsT">
                    <input class="starT starT-5" id="starT-5" type="radio" name="starT" value="5" />
                    <label class="starT starT-5" for="starT-5"></label>
                    <input class="starT starT-4" id="starT-4" type="radio" name="starT" value="4" />
                    <label class="starT starT-4" for="starT-4"></label>
                    <input class="starT starT-3" id="starT-3" type="radio" name="starT" value="3" />
                    <label class="starT starT-3" for="starT-3"></label>
                    <input class="starT starT-2" id="starT-2" type="radio" name="starT" value="2" />
                    <label class="starT starT-2" for="starT-2"></label>
                    <input class="starT starT-1" id="starT-1" type="radio" name="starT" value="1" />
                    <label class="starT starT-1" for="starT-1"></label>
                </div></td>
              </tr>
              <tr>
                <td colspan="2" class="style5" >6 &nbsp;&nbsp; Select suitable tags that best describe this candidate </td>
              </tr>
              <tr>
                <td height="48" colspan="2" ><label> <span class="style5">
                  <input type="checkbox" name="checkbox" id="hilarious" value="Hilarious"/>
                  </span></label>
                    <span class="style5"> Hilarious,
                      <input type="checkbox" name="checkbox" id="Inspirational" value="Inspirational"/>
                      Inspirational ,
                      <input type="checkbox" name="checkbox" id="Active" value="Active"/>
                      Active,
                      <input type="checkbox" name="checkbox" id="Participant" value="Participant" />
                      Participant ,
                      <input type="checkbox" name="checkbox" id="Dominant" value="Dominant" />
                      Dominant ,
                      <input type="checkbox" name="checkbox" id="Helpful" value="Helpful" />
                      Helpful,
                      <input type="checkbox" name="checkbox" id="Competent" value="Competent" />
                      Competent,
                      <input type="checkbox" name="checkbox" id="ARROGANT" value="Arrogant" />
                      Arrogant,
                      <input type="checkbox" name="checkbox" id="Polite" value="Polite" />
                      Polite,
                      <input type="checkbox" name="checkbox" id="Genius" value="Genius" />
                      Genius,
                      <input type="checkbox" name="checkbox" id="Lazy" value="Lazy" />
                      Lazy,
                      <input type="checkbox" name="checkbox" id="Unprofessional" value="Unprofessional" />
                      Unprofessional</span></td>
              </tr>
              <tr>
                <td colspan="2" class="style5" >7 &nbsp;&nbsp; Here's your chance to be more specific</td>
              </tr>
              <tr>
                <td colspan="2" align="center"><label>
                  <textarea name="comment" cols="100" rows="3" class="rcorners131" id="comment" required></textarea>
                </label></td>
              </tr>
              <br></br>
              
              <tr>
                <td>&nbsp;</td>
                <td>
                  <input name="submit" type="submit" class="bcolour" id="submit" value="Submit" />                </td>
              </tr>
          </table>      </td>
    </tr>
  </table>
  </td>
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

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="header.jspf" %>

<h1>Home Page</h1>
<br/>

<form name="new_user_form" method="post" action="/createuser">
	Full Name&nbsp;&nbsp;<input type="text" name="name"><br/>
	
	Gender&nbsp;&nbsp;
	<select name="Gender">
	    <option value="male">Male</option>
	    <option value="female">Female</option>
  	</select><br/>
	
	Address&nbsp;&nbsp;<input type="text" name="address"><br/>
	
	Same mailing address &nbsp;&nbsp;
	<input type="radio" name="same_address" value="yes">Yes&nbsp;&nbsp;
	<input type="radio" name="same_address" value="no">No<br/><br/>
	
	<input type="checkbox" name="marketing" value="mktg_email">Receive marketing email<br/>
	<input type="checkbox" name="voucher" value="mktg_voucher">Receive e-vouchers<br/>
	
	<a href="#" id="create_button" onclick="new_user_form.submit();">Submit</a>&nbsp;&nbsp; ${success}
</form>	

<%@include file="footer.jspf" %>


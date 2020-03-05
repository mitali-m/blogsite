<!-- taglib populates the data received from modelData and the syntax starts with dollar and curly brackets -->
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@include file="adminheader.jspf" %>

<!-- See the controller and you will find the RequestMethod.POST in the annotation -->
<!-- /adminlogin is the uri which will be called by the browser and will submit the form data -->
<form name="admin_form" method="post" action="/adminlogin">
  <div class="form-group">
    <label for="formGroup">User ID</label>
    <input type="text" class="form-control" name="uid" placeholder="Userid for login">
  </div>
  <div class="form-group">
    <label for="formGroup">Password</label>
    <input type="password" class="form-control" name="pwd" placeholder="Secret">
  </div>
  
  <div class="form-group">
    <a href="#" id="login_button" onclick="admin_form.submit();" class="btn btn-primary">Log in</a>&nbsp;&nbsp; ${success}
  </div>
</form>

<%@include file="adminfooter.jspf" %>


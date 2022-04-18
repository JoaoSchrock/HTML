<body bgcolor="#FFFFFF">
<% u_state=request.form("u_state") %>
<form action="<%= request.servervariables("script_name") %>" method="post">
<select name="u_state">
<option<% if u_state="" then %> selected<% end if %>> Select a State </option>
<option<% if u_state="AL" then %> selected<% end if %> value="AL"> Alabama </option>
<option<% if u_state="AR" then %> selected<% end if %> value="AR"> Arkansas </option>
<option<% if u_state="CA" then %> selected<% end if %> value="CA"> California </option>
<option<% if u_state="CO" then %> selected<% end if %> value="CO"> Colorado </option>
<option<% if u_state="CT" then %> selected<% end if %> value="CT"> Connecticut </option>
<option<% if u_state="DE" then %> selected<% end if %> value="DE"> Delaware </option>
<option<% if u_state="MD" then %> selected<% end if %> value="MD"> Maryland </option>
<option<% if u_state="NE" then %> selected<% end if %> value="NE"> Nebraska </option>
<option<% if u_state="NH" then %> selected<% end if %> value="NH"> New Hampshire </option>
<option<% if u_state="NJ" then %> selected<% end if %> value="NJ"> New Jersey </option>
<option<% if u_state="NY" then %> selected<% end if %> value="NY"> New York </option>
<option<% if u_state="PA" then %> selected<% end if %> value="PA"> Pennsylvania </option>
<option<% if u_state="TN" then %> selected<% end if %> value="TN"> Tennessee </option>
<option<% if u_state="TX" then %> selected<% end if %> value="TX"> Texas </option>
<option<% if u_state="VA" then %> selected<% end if %> value="VA"> Virginia </option>
</select>
<input type="submit" value="Submit">
</form>
<p>
<% if u_state = "" then %>
Either this is the first time the page is being used<br>
or the user selected the Select A State choice.
<% else %>
<%= u_state %> was selected by the user.
<% end if %>
</p>
<!--#include file="bottom.inc"-->
<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>

<@C.page>
    Add new user
    ${message}
    <@L.login "/registration"/>
    <#--<form action="/registration" method="post">-->
        <#--<div><label> User Name : <input type="text" name="username"/> </label></div>-->
        <#--<div><label> Password: <input type="password" name="password"/> </label></div>-->
        <#--<input type="hidden" name="_csrf" value="{{_csrf.token}}" />-->
        <#--<div><input type="submit" value="Sign Up"/></div>-->
    <#--</form>-->
</@C.page>
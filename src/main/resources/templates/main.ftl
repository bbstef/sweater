<#import "parts/common.ftl" as C>
<#import "parts/login.ftl" as L>

<@C.page>
    <body>
    <div>
        <@L.logout />
    </div>
    <div>
        <form method="post" action="main">
            <input type="text" name="text" placeholder="Введите сообщение" />
            <input type="text" name="tag" placeholder="Тэг">
            <input type="hidden" name="_csrf" value="${_csrf.token}" />
            <button type="submit">Добавить</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <form method="get" action="/main">
        <input type="text" name="filter" value="${filter}">
        <button type="submit">Найти</button>
    </form>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <string>${message.authorName}</string>
    </div>
    <#else> no message
    </#list>
</@C.page>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes-dynattr.tld" %>
<%@taglib prefix="a4s" uri="http://www.kahowell.net/taglib/ajax4stripes" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ajax4stripes example</title>
    </head>
    
    <body>
        <stripes:form beanclass="${actionBean.class.name}" id="helloForm">
        	<input type="button" onclick="ajax4stripes.refresh('ajaxCounter')" value="+1" />
        </stripes:form>
        <a4s:ajaxArea id="ajaxCounter" name="/counter.jsp" 
        		beanclass="${actionBean.class.name}" event="counter">
        
        </a4s:ajaxArea>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="stripes" uri="http://stripes.sourceforge.net/stripes-dynattr.tld" %>
<%@taglib prefix="a4s" uri="http://www.kahowell.net/taglib/ajax4stripes" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ajax4stripes example</title>
        <jsp:element name="script">
        	<a4s:jsFunction name="plusOne" elementId="ajaxCounter" beanclass="${actionBean.class.name}" event="plusOne"/>
        	<a4s:jsFunction name="minusOne" elementId="ajaxCounter" beanclass="${actionBean.class.name}" event="minusOne"/>
        </jsp:element>
    </head>
    
    <body>
        <stripes:form beanclass="${actionBean.class.name}" id="helloForm">
        	<input type="button" onclick="plusOne()" value="+1" />
        	<input type="button" onclick="minusOne()" value="-1" />
        	<input type="button" onclick="ajax4stripes.refresh('ajaxCounter')" value="refresh" />
        </stripes:form>
        <a4s:ajaxArea id="ajaxCounter" beanclass="${actionBean.class.name}" event="counter" name="/counter.jsp" />
    </body>
</html>

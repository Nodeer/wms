<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ include file="/commons/taglib.jsp"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<link rel="Stylesheet" href="../css/displaytag.css" type="text/css" />
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all"/>
  <script type='text/javascript' src='../js/ea.effect.js'></script>
    <script type='text/javascript' src='../js/ea.validate.js'></script>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body >

<s:form action="javabean_list" namespace="/system"  theme="simple" >
<table width="100%" border="0" cellspacing="0" cellpadding="5">

<tr>
<td>
<table border="0" cellpadding="0" cellspacing="0" class="cTableBorder">
        <tr> 
          <td align="left" class="navig"><delmar:message key="javaclass.location" /></td>
          <td class="navig" align="right"> <table id="normalQuery" cellpadding="0" cellspacing="0" border="0">
              <tr> 
                <td >
                
                  <input type="button"  value="<delmar:message key="common.button.search" />"  class="input_submit">
                  
                  <s:submit method="create" cssClass="input_submit" value="%{#session.resource.get('common.button.create')}" />
                  <s:submit method="deletes" cssClass="input_submit" value="%{#session.resource.get('common.button.delete')}"/>
                 </td>
              </tr>
            </table></td>
         
        </tr>
      </table> 

<!-- <c:out value="${buttons}" escapeXml="false"/> -->
 <display:table name="sessionScope.MAP_KEY_OF_SESSION.javabeanList" cellspacing="0" cellpadding="0"  requestURI=""
		    id="list" pagesize="20" class="table" export="true">
		<display:column style="width:30px;text-align:center" title="<input type='checkbox' name='selectall' onClick='selectAll(\"ids\",this);' style='margin:0px;'/>" media="html" >
		
		<input type="checkbox" name="ids"
				value="<c:out value='${list.id}'/>" style='border: none' />
				
		</display:column>    
		<display:column 
			titleKey="common.label.sequence"
		media="html csv excel xml pdf rtf">
			   <c:out value="${list_rowNum}"/>
    	</display:column>
		     <display:column   	titleKey="common.label.sequence" sortable="true" media="html">
		      <a href="javascript:viewExport('<c:out value="${list.id}"/>')"><c:out value="${list.name}"/>
     		  </a>
		     </display:column>
		     <display:column property="name"    media="csv excel xml pdf rtf"	titleKey="javaclass.column.name"/>
			<display:column property="classname"  escapeXml="true" titleKey="javaclass.column.classname" sortable="true"/>
		    <display:column property="remark"  escapeXml="true"  titleKey="javaclass.column.remark" sortable="true"/>
		</display:table>
</td>
</tr>
</table>


</s:form>

<script type="text/javascript">
    function viewExport(id) {
       window.location='<c:url value="/system/javabean_edit.action"/>?id='+id;
    }
    highlightTableRows("list");
    
   
</script>

</body>
</html>

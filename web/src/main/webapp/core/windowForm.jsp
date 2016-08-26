<%--
  Created by IntelliJ IDEA.
  User: 刘大磊
  Date: 2016-08-25 22:44:28
--%>
<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ include file="/commons/taglib.jsp"%>

<head>

<title>
	窗体
</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" charset="utf-8" />
<link rel="stylesheet" href="../css/style.css" type="text/css" media="all"/>
<link rel="Stylesheet" href="../css/displaytag.css" type="text/css" />
<script type="text/javascript" src="../js/jquery/jquery-1.11.1.min.js"></script>
<script type='text/javascript' src='../js/ea.validate.js'></script>
<script type="text/javascript" src="../js/jquery/jquery-ui-1.11.4.custom/jquery-ui.min.js"></script>
<link rel="Stylesheet" href="../js/jquery/jquery-ui-1.11.4.custom/jquery-ui.min.css" type="text/css" />
<link rel="Stylesheet" href="../js/jquery/jquery-ui-1.11.4.custom/jquery-ui.theme.min.css" type="text/css" />
 <script type='text/javascript' src='../js/dm/delmar.js'></script>
 <script type="text/javascript" src="../js/jquery/plugin/delmar/functions.js"></script>

<script type="text/javascript">
 function gotoList()
 {
	 window.location='<c:url value="/core/window_list.action"/>';
 }
 $(document).ready(function(){
    $('#formDetail tr:odd').addClass("query_one");
     $('#formDetail tr:even').addClass("query_two");
     $("#formDetail").find("tr:last").removeClass("query_one").removeClass("query_two");
 });
</script>
</head>
<body>
<s:form id="editForm" action="window_edit" namespace='/core' theme="simple">
<s:hidden id="id" name="window.id"></s:hidden>
<!--table 01 bgn-->
<table width="100%" border="0" cellspacing="0" cellpadding="5">
  <tr>
    <td valign="top">
        <!--table 02 bgn-->
        <!-- table 页 bgn -->
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="90" height="26" align="center" background="../images/table_page_1.gif">窗体</td>
                <c:choose>
                    <c:when test="${window.id!=null}">
                        <td width="90" height="26" align="center" background="../images/table_page_2.gif">
                            <a href="<c:url value="/core/page_list.action?windowId=${window.id}"></c:url>">页面</a>
                        </td>
                        <td width="90" height="26" align="center" background="../images/table_page_3.gif">
                            字段
                        </td>
                    </c:when>
                    <c:otherwise>
                        <td width="90" height="26" align="center" background="../images/table_page_3.gif">
                            页面
                        </td>
                        <td width="90" height="26" align="center" background="../images/table_page_3.gif">
                            字段
                        </td>
                    </c:otherwise>
                </c:choose>
                <td background="../images/table_page_bg.gif" width="*"  height="26"><div class="C_S_F_L">
                    &nbsp;
                </div></td>
            </tr>
        </table>
        <!-- table 页 end -->
        <!--table 02 end-->
        <!--table 03 bgn-->
    	<table width="100%" border="0" cellpadding="0" cellspacing="0"  class="table_blue">
        <tr align="center" valign="top">
          <td>
          <!--table 04 bgn-->
            <table width="100%" cellpadding="10" cellspacing="0" >
              <tr>
                <td align="center"> <table width="100%" border="0" cellpadding="10" cellspacing="0" bgcolor="#FFFFFF" class="table_blue">
                <tr>
                <td>


                <!--table 05 bgn-->
                <table width="100%" border="0" cellpadding="0" cellspacing="1" id="formDetail">
                        <tr>
                        <td width="20%"><s:label for="name" value="名称" ></s:label></td>
                        <td width="30%">
                          <s:textfield name="window.name" id="name"   ></s:textfield>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="descr" value="描述" ></s:label></td>
                        <td width="30%">
                          <s:textfield name="window.descr" id="descr"  cssStyle="width:500px;" ></s:textfield>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="help" value="帮助" ></s:label></td>
                        <td width="30%">
                          <s:textfield name="window.help" id="help"  cssStyle="width:500px;" ></s:textfield>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="created" value="创建时间" ></s:label></td>
                        <td width="30%">
                        <s:textfield name="window.created" id="created" readonly="true">
                         <s:param name="value"><s:date name="window.created"  format="yyyy-MM-dd HH:mm:ss"/></s:param>
                        </s:textfield>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="createdby" value="创建人" ></s:label></td>
                        <td width="30%">
                           <delmar:user userId="${window.createdby}" module="user"/>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="updated" value="修改时间" ></s:label></td>
                        <td width="30%">
                        <s:textfield name="window.updated" id="updated" readonly="true">
                         <s:param name="value"><s:date name="window.updated"  format="yyyy-MM-dd HH:mm:ss"/></s:param>
                        </s:textfield>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="updatedby" value="修改人" ></s:label></td>
                        <td width="30%">
                           <delmar:user userId="${window.updatedby}" module="user"/>
                          </td>
                        </tr>
                        <tr>
                        <td width="20%"><s:label for="isactive" value="是否有效" ></s:label></td>
                        <td width="30%">
                          <s:radio id="isactive" name="window.isactive" list="#{'Y':'Y','N':'N'}" required="true"></s:radio>
                          </td>
                        </tr>
                <tr>
                <td colspan="4" class="td_page_right">
                    <s:submit method="create" value="%{#session.resource.get('common.button.create')}"  cssClass="input_submit"></s:submit>
						<s:submit method="save" value="%{#session.resource.get('common.button.save')}"  cssClass="input_submit"></s:submit>
						<c:if test="${window.id!=null}">
						<s:submit method="delete"  value="%{#session.resource.get('common.button.delete')}"  cssClass="input_submit" onclick="return confirmDelete()"></s:submit>
						</c:if>
						<input onclick="gotoList()"  type="button" value="<delmar:message key="common.button.back"/>"  class="input_submit" >
                </td>
                </tr>
                </table>
                <!--table 05 end-->
                </td>
                </tr>
                <tr>
                <td colspan="4">
                <s:actionmessage cssStyle="color:red"/>

                </td>
                </tr>
                </table>
                <!--table 04 end-->
                </td></tr></table>
                <!--table 03 end-->
</td></tr></table>
</s:form>
</body>
</html>
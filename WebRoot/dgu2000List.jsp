<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   

  </head>
  
  <body>
    <center>
    	<h2>采集器列表</h2>
    	<h3><s:a action="dgu2000_addUI" namespace="/">添加采集器</s:a> </h3>
        <table width="90%" border="1">
            <tr>
            	<th>id</th>
            	<th>ip</th>
            	<th>项目名称</th>
            	<th>风场名称</th>
            	<th>地址</th>
            	<th>添加时间</th>
            	<th>修改时间</th>
            	<th>操作</th>
            </tr>
	        <s:iterator  value="dgu2000List">
	        	<tr>
	        		<td><s:property value="id"/> </td>
	        		<td><s:property value="ip"/> </td>
	        		<td><s:property value="xiangmuName"/> </td>
	        		<td><s:property value="fengchang"/> </td>
	        		<td><s:property value="address"/> </td>
	        		<td><s:property value="dateTime"/> </td>
	        		<td><s:property value="updateTimeString"/> </td>
	        		<td><s:a action="dgu2000_updateUI" namespace="/"><s:param name="dgu2000.id">${id}</s:param>修改</s:a>
	        		&nbsp;&nbsp;<s:a action="dgu2000_delete" namespace="/"><s:param name="dgu2000.id">${id}</s:param>删除</s:a>
	        		&nbsp;&nbsp;<s:a action="dgu2000_addUI" namespace="/"><s:param name="dgu2000.id">${id}</s:param>复制</s:a></td>
	        	</tr>
	        </s:iterator>
        </table>
    </center>
  </body>
</html>

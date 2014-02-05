<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>添加新用户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">   

  </head>
  
  <body>
    <center>
    	<h1>添加采集器</h1>
    	<s:form action="dgu2000_add" namespace="/" method="post">
    		<s:textfield label="采集器id" name="dgu2000.id"></s:textfield>
    		<s:textfield label="采集器ip" name="dgu2000.ip" value="192.168.0."></s:textfield>
    		<s:textfield label="项目名称" name="dgu2000.xiangmuName"></s:textfield>
    		<s:textfield label="风场名称" name="dgu2000.fengchang"></s:textfield>
    		<s:textfield label="地址" name="dgu2000.address"></s:textfield>
    		<s:submit value="提交"></s:submit>
    	</s:form>
    </center>
  </body>
</html>

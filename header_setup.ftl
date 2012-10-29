[#ftl]
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
    <head>
		<title><@s.text name="admin.config.setup.title"/></title>
    	<link rel="stylesheet" type="text/css" href="${baseURL}/styles/main.css"/>
 		<link rel="stylesheet" type="text/css" href="http://data.canadensys.net/common/styles/common.css"/>
 		<link rel="shortcut icon" href="http://data.canadensys.net/common/images/favicon.png"/>
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>	
		<script type="text/javascript" src="${baseURL}/js/global.js"></script>
<script type="text/javascript">
$(document).ready(function(){
  	initHelp();	
	[#-- see global.js for function defs --]
	initMenu();
	langs("${localeLanguage}","${baseURL}");  
});
</script>
 	</head>
 	<body>
		<div id="header">
			<div id="header_content">
				<div id="nav_title" class="png"><a href="http://data.canadensys.net/">Canadensys</a></div>				
			</div>
		</div>
		<div id="body">
			<div id="content" class="no_side_bar">
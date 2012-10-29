[#ftl]
[#setting date_format="yyyy-MM-dd"]
[#setting time_format="dd/MM/yy"]
[#setting datetime_format="dd/MM/yy"]
[#setting locale="en"]
[#-- 
[#if localeLanguage??]
 [#setting locale=localeLanguage]
[/#if]
--]
[#setting url_escaping_charset="UTF-8"]
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
 		<link rel="stylesheet" type="text/css" href="http://data.canadensys.net/common/styles/common.css"/>
	   	<link rel="stylesheet" type="text/css" href="${baseURL}/styles/main.css"/>
 		<link rel="shortcut icon" href="http://data.canadensys.net/common/images/favicon.png"/>
		<link rel="alternate" type="application/rss+xml" href="${baseURL}/rss.do" title="Latest Resources"/>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.5.1/jquery.min.js"></script>		
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/jquery-ui.min.js"></script>
		<link rel="stylesheet" type="text/css" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.8.4/themes/base/jquery-ui.css"/>
		<script type="text/javascript" src="${baseURL}/js/global.js"></script>
		<script type="text/javascript" src="${baseURL}/js/custom.js"></script>
		<script type="text/javascript" src="http://data.canadensys.net/common/js/sorttable.js"></script>  
		[#-- GOOGLE ANALYTICS - asynchroneous: http://code.google.com/apis/analytics/docs/tracking/asyncTracking.html --]
		[#if cfg.gbifAnalytics || (cfg.analyticsKey!"")?length>1] 
		<script type="text/javascript">
		  var _gaq = _gaq || [];
			[#if (cfg.analyticsKey!"")?length>1] 
			  _gaq.push(['_setAccount', '${cfg.analyticsKey}']);
			  _gaq.push(['_trackPageview']);
			[/#if]
			[#if cfg.gbifAnalytics] 
			  _gaq.push(['gbif._setAccount', '${cfg.getProperty("dev.analytics.gbif")}']);
			  _gaq.push(['gbif._trackPageview']);
			[/#if]
		  (function() {
		    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		  })();
		</script>
		[/#if]
		<script type="text/javascript">
		$(document).ready(function(){
		[#-- see global.js for function defs --]
		    initForm();
			initMenu();
		});
		</script>
[#assign currentMenu = "home"]
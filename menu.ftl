[#ftl]
<script type="text/javascript">	
	$(document).ready(function(){
  		custom_langs("${localeLanguage}","${baseURL}");
	});
</script>
 	</head>
 	<body>
 		<div id="feedback_bar"><a href="http://code.google.com/p/canadensys/issues/entry?template=Interface%20issue&amp;labels=Section-Interface,Type-Defect,IPT" target="_blank" title="[#if localeLanguage=='fr']Signaler un problème[#else]Report a problem[/#if]">&nbsp;</a></div>
		<div id="header">
			<div id="header_content">
				<div id="nav_top">
					[#if (Session.curr_user)??] 
						[@s.text name="menu.loggedin"/] <em>${Session.curr_user.email}</em> | <a href="${baseURL}/account.do">[@s.text name="menu.account"/]</a> | <a href="${baseURL}/logout.do">[@s.text name="menu.logout"/]</a></li>
					[#else]
						<form id="login-form" action="${baseURL}/login.do" method="post">
							<input type="text" size="25" name="email" value="email" class="form-reset" />
							<input type="password" size="20" name="password" value="password" class="form-reset" />
							[@s.submit key="portal.login" name="login-submit"/]
						</form>
				  	[/#if]
				</div>				
				<div id="nav_title"><a href="http://data.canadensys.net/[#if localeLanguage=='fr']?lang=fr[/#if]">Canadensys</a></div>
				<div id="nav_portal"><span class="selected">[#if localeLanguage=='fr']Données[#else]Data[/#if]</span> | <a href="http://www.canadensys.net/[#if localeLanguage=='fr']?lang=fr[/#if]">[#if localeLanguage=='fr']Communauté[#else]Community[/#if]</a></div>
			</div>
			<div id="menu">		
				<ul>
					<li class="menu_first">&nbsp;</li>
					[#if !managerRights]
					<li><a href="http://data.canadensys.net/explorer/[#if localeLanguage=='fr']?lang=fr[/#if]">[#if localeLanguage=='fr']Explorateur[#else]Explorer[/#if]</a></li>
					[/#if]
					<li[#if currentMenu=='home'] class="current"[/#if]><a href="${baseURL}/">[#if localeLanguage=='fr']Dépôt[#else]Repository[/#if][#--[@s.text name="menu.home"/]--]</a></li>
					[#if managerRights]
					<li[#if currentMenu=='manage'] class="current"[/#if]><a href="${baseURL}/manage/">[@s.text name="menu.manage"/]</a></li>
					[/#if]
					[#if adminRights]
					<li[#if currentMenu=='admin'] class="current"[/#if]><a href="${baseURL}/admin/">[@s.text name="menu.admin"/]</a></li>
					[/#if]
					[#if !managerRights]
					<li><a href="http://data.canadensys.net/tools/[#if localeLanguage=='fr']?lang=fr[/#if]">Tools</a></li>
					<li><a href="http://data.canadensys.net/vascan/[#if localeLanguage=='fr']?lang=fr[/#if]">Vascan</a></li>
					[/#if]
					<li class="menu_last">&nbsp;</li>
				</ul>  
			</div>
		</div>
		
		[#--<div id="search">
			<form action="${baseURL}/search" method="get">
				<div>
					<input type="text" name="q" id="search-input" [#if !q??] class="form-reset" value='search ${searchText!" resources"}'[#else] value='${q}'[/#if] />
					<input class="default" type="submit" value="Search" id="search-submit" />
				</div>
			</form>
		</div>--]
		<div id="body" class="fullscreen">
	[#if sideMenuEml!false]			
			<div id="side_bar">
				<ul class="side_menu custom_list round">
				[#list ["basic", "geocoverage", "taxcoverage","tempcoverage", "keywords", "parties", "project", "methods", "citations", "collections", "physical", "additional"] as it]
				 <li[#if currentSideMenu?exists && currentSideMenu==it] class="current"[/#if]><a href="metadata-${it}.do?r=${resource.shortname!r!}">[@s.text name="submenu.${it}"/]</a></li>
				[/#list]
				</ul>
			</div>
			<div id="content">
	[#elseif sideMenuResource!false]
			<div id="side_bar">
			[#if resource.lastPublished??]
				[#if (resource.recordsPublished>0)]
				<p><a class="round big_button no_margin" id="dwc_archive" href="${baseURL}/archive.do?r=${resource.shortname}" onClick="_gaq.push(['_trackEvent', 'Archive', 'Download', '${resource.shortname}']);">[#if localeLanguage=='fr']Télécharger données[#else]Download dataset[/#if]</a></p>
				[/#if]
				<p><a class="round big_button multi_line" id="eml_file" href="${baseURL}/eml.do?r=${resource.shortname}" onClick="_gaq.push(['_trackEvent', 'EML', 'Download', '${resource.shortname}']);">[#if localeLanguage=='fr']Télécharger metadonnées en format EML[#else]Download metadata as an EML file[/#if]</a></p>
				[#if rtfFileExisting]
				<p><a class="round big_button multi_line" id="rtf_file" href="${baseURL}/rtf.do?r=${resource.shortname}" onClick="_gaq.push(['_trackEvent', 'RTF', 'Download', '${resource.shortname}']);">[#if localeLanguage=='fr']Télécharger metadonnées en format RTF[#else]Download metadata as an RTF file[/#if]</a></p>
				[/#if]
					[#if eml.physicalData?has_content]
						[#list eml.physicalData as item]
						[#if item.distributionUrl?starts_with('http://data.canadensys.net/explorer/d/')]
						<p><a class="round big_button[#if localeLanguage=='en'] multi_line[/#if]" id="explorer_link" href="${item.distributionUrl}[#if localeLanguage=='fr']&lang=fr[/#if]" target="_blank" onClick="_gaq.push(['_trackEvent', 'Canadensys explorer', 'Outbound link', '${resource.shortname}']);">[#if localeLanguage=='fr']Voir données sur Canadensys[#else]Explore this dataset on Canadensys[/#if]</a></p>
						[/#if]
						[/#list]
						
						[#list eml.physicalData as item]
						[#if item.distributionUrl?starts_with('http://data.gbif.org/datasets/')]
						<p><a class="round big_button" id="gbif_link" href="${item.distributionUrl}" target="_blank" onClick="_gaq.push(['_trackEvent', 'GBIF data portal', 'Outbound link', '${resource.shortname}']);">[#if localeLanguage=='fr']Voir données sur GBIF[#else]Explore this dataset on GBIF[/#if]</a></p>
						[/#if]
						[/#list]
					[/#if]
			[/#if]
			</div>
			<div id="content" class="clear_fix">
	[#else]
			<div id="content" class="no_side_bar clear_fix">			
	[/#if]

		[@s.actionmessage/]
		[#if warnings?size>0]			
		 <ul class="warnMessage">
		 [#list warnings as w]
		  <li><span>${w!}</span></li>
		 [/#list]
			</ul>
		   [/#if]
		[@s.actionerror/]
		   
		   <div id="dialog-confirm" title="[@s.text name="basic.confirm"/]" style="display: none;">
		</div>
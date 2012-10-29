ipt-customizations
==================

Customize the [Global Biodiversity Information Facility](http://www.gbif.org)'s [Integrated Publishing Toolkit (IPT)](http://code.google.com/p/gbif-providertoolkit/) with alternative freemarker and css files.

These templates and scripts are specific to IPT 2.0.3 and the [Canadensys IPT](http://data.canadensys.net/ipt/) install. They are provided here to illustrate how the Canadensys team coordinates its IPT customization and for its version control of these files.

See <http://www.canadensys.net/2011/updating-a-customized-ipt> for install procedures.

These customizations were developed by Peter Desmet with modifications by David P. Shorthouse.

### TODO

* update to support IPT 2.04

# Manual edits

## portal/resource.ftl

### Sidemenu
Before line 18: `<#include "/WEB-INF/pages/inc/menu.ftl">` add: `<#assign sideMenuResource=true />`

### Quick edit button for managers ###
Line 20: `<h1>${resource.title!resource.shortname}</h1>`, change to: `<h1>${resource.title!resource.shortname}<#if managerRights> <a class="edit" href="${baseURL}/manage/resource.do?r=${resource.shortname}">Edit</a></#if></h1>`

This button will appear for all logged in managers, even if they can't edit the resource (they will be shown a non-authorized page).

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=889>

### Paragraph for introduction
Line 27: `<@textWithFormattedLink resource.description!no_description/>`, change to: `<p><@textWithFormattedLink resource.description!no_description/></p>`

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=810>

### Tracking events
Line 44, 46, 48: right after `href` in the `<a>` link, add:
` onClick="_gaq.push(['_trackEvent', 'Archive', 'Download', '${resource.shortname}']);"`
` onClick="_gaq.push(['_trackEvent', 'EML', 'Download', '${resource.shortname}']);"`
` onClick="_gaq.push(['_trackEvent', 'RTF', 'Download', '${resource.shortname}']);"`

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=812>

### Freemarker bug
Line 306: `<#if eml.citation.citation?has_content>`, change to: `<#if eml.citation?has_content>`

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=824>

## portal/home.ftl

### New introduction
Line 7: `<p><@s.text name="portal.home.intro"/></p>`, change to: `<p><#if localeLanguage=='fr'>Suivez <a href="http://www.canadensys.net/data-publication-guide?lang=fr">notre guide en 7 étapes</a> pour publier votre propre jeu de données sur ce dépôt.<#else>Follow <a href="http://www.canadensys.net/data-publication-guide">our 7-step guide</a> to publish your own dataset on this repository.</#if></p>`

### Sort resources by title
Line 21: `<#list resources as r>`, change to: `<#list resources?sort_by("title") as r>`

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=865>

## manage/overview.ftl

### Sort users
Line 383: `<#list potentialManagers as u>`, change to: `<#list potentialManagers?sort_by("name") as u>`

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=848>

## manage/home.ftl

### Sort resources by shortname (title is not available)
Line 27: `<#list resources as r>`, change to:
`<#list resources?sort_by("shortname") as r>`

Remove once this issue has been fixed: <http://code.google.com/p/gbif-providertoolkit/issues/detail?id=866>

# To remember

## inc/menu.ftl
Line 38: `<li[#if currentMenu=='home'] class="current"[/#if]><a href="${baseURL}/">[#if localeLanguage=='fr']Données[#else]Datasets[/#if][#--[@s.text name="menu.home"/]--]</a></li>`

Since the name of this menu item ('Datasets') is the only part that is different from the default titles, we customize it here, instead of overwriting the properties files. If more parts were customized, the properties files should be used.


# Run script

`chmod +x apply-customization.sh`
`sh ./apply-customization.sh`
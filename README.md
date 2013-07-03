ipt-customizations
==================

Customize the [Global Biodiversity Information Facility](http://www.gbif.org)'s [Integrated Publishing Toolkit (IPT)](http://code.google.com/p/gbif-providertoolkit/) v. 2.0.5 with alternative freemarker, css, and js. A similar set of customized files was produced for IPT v. 2.0.3 and are available from [a previous release](https://github.com/Canadensys/ipt-customization/releases/v2.0.3).

These patch is specific to IPT 2.0.5 and the [Canadensys IPT](http://data.canadensys.net/ipt/) install. It is provided here to illustrate how the Canadensys team coordinates its IPT customization and for its version control.

Copy canadensys_ipt_2.0.5.patch into the Tomcat directory for your IPT (i.e. where you have its META-INF, WEB-INF, images, js, and styles directories) and execute:

$ patch -p1 < canadeneys_ipt_2.0.5.patch

Copy the two image files in images/dataTables into the directory by the same name on your IPT.

To reverse the patch:

$ patch -p1 -R < canadeneys_ipt_2.0.5.patch

This patch was made by David P. Shorthouse.
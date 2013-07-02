ipt-customizations
==================

Customize the [Global Biodiversity Information Facility](http://www.gbif.org)'s [Integrated Publishing Toolkit (IPT)](http://code.google.com/p/gbif-providertoolkit/) with alternative freemarker and css files.

These patch is specific to IPT 2.0.5 and the [Canadensys IPT](http://data.canadensys.net/ipt/) install. It is provided here to illustrate how the Canadensys team coordinates its IPT customization and for its version control.

Install by executing the following from the application directory where the IPT is installed:

$ patch -p1 < canadeneys_ipt_2.0.5.patch

Then copying the two image files in images/dataTables into the identical location on the server.

To reverse the patch, execute the following:

$ patch -p1 -R < canadeneys_ipt_2.0.5.patch

This patch was made by David P. Shorthouse.
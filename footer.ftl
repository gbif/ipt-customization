			</div><#-- content -->
		</div><#-- body -->	
		<div id="footer">
			<div id="footer_content">
				<#if localeLanguage=='fr'>
				<div class="footer_section left">
					<a id="cc0" class="cc_logo" href="http://creativecommons.org/publicdomain/zero/1.0/deed.fr" title="CC0 1.0 Universel Transfert au Domaine Public">&nbsp;</a>
					<p>La plupart des participants de Canadensys ont transféré leurs données au <a href="http://creativecommons.org/publicdomain/zero/1.0/deed.fr">domaine public</a>.</p>
					<ul>
						<li><a href="http://www.canadensys.net/norms?lang=fr">Normes</a></li>
						<li>Propulsé par <a href="http://code.google.com/p/gbif-providertoolkit/">IPT version ${cfg.version!"???"}</a> &copy; <a href="http://www.gbif.org">GBIF</a></li>
					</ul>
				</div>
				<div class="footer_section right">
					<a rel="license" id="cc_by" class="cc_logo" href="http://creativecommons.org/licenses/by/3.0/deed.fr" title="Creative Commons Attribution 3.0 non transposé">&nbsp;</a>
					<p>Tous les autres contenus de ce site opèrent sous <a rel="license" href="http://creativecommons.org/licenses/by/3.0/deed.fr">CC-BY</a>, sauf pour le <a href="http://www.canadensys.net/documents?lang=fr">logo de Canadensys</a>, qui est sous copyright.</p>
					<ul>
						<li><a href="http://www.canadensys.net/about?lang=fr">À propos de Canadensys</a></li>
						<li><a href="http://www.canadensys.net/contact?lang=fr">Nous contacter</a></li>
					</ul>
				</div>
				<#elseif localeLanguage=='en'>
				<div class="footer_section left">
					<a id="cc0" class="cc_logo" href="http://creativecommons.org/publicdomain/zero/1.0/" title="CC0 1.0 Universal Public Domain Dedication">&nbsp;</a>
					<p>Most Canadensys participants have dedicated their data to the <a href="http://creativecommons.org/publicdomain/zero/1.0/">public domain</a>.</p>
					<ul>
						<li><a href="http://www.canadensys.net/norms">Data usage norms</a></li>
						<li>Powered by <a href="http://code.google.com/p/gbif-providertoolkit/">IPT version ${cfg.version!"???"}</a> &copy; <a href="http://www.gbif.org">GBIF</a></li>
					</ul>
				</div>
				<div class="footer_section right">
					<a rel="license" id="cc_by" class="cc_logo" href="http://creativecommons.org/licenses/by/3.0/" title="Creative Commons Attribution 3.0 Unported">&nbsp;</a>
					<p>All other content on this website is licensed under <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">CC-BY</a>, except for the copyrighted <a href="http://www.canadensys.net/documents">Canadensys logo</a>.</p>
					<ul>
						<li><a href="http://www.canadensys.net/about">About Canadensys</a></li>
						<li><a href="http://www.canadensys.net/contact">Contact us</a></li>
					</ul>
				</div>
				</#if>
			</div>
		</div>
<div id="modalbox">
 <div id="modalback"></div>
 <div id="modalcontainer">
   <div id="modalcontent"></div>
 </div>
</div>

	</body>
</html>
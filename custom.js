/*
 * This method replaces the function langs from global.js
 * It is called from menu.ftl and includ
 */
function custom_langs(localLanguage,baseUrl) {
	var location = window.location+'';
	var request = '?request_locale';
	if(location.indexOf("request_locale") != -1){
		location = location.slice(0,location.indexOf("request_locale")-1);
	}
	if(location.indexOf("?") != -1){
		request = '&request_locale';		
	}

	if (localLanguage == "en") { $("#nav_top").append('| <a href="'+location+request+'=fr">Fran&ccedil;ais</a>'); }
	else if (localLanguage == "fr") { $("#nav_top").append('| <a href="'+location+request+'=en">English</a>'); }

}
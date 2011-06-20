component{

	This.name = "hoytstaff";
	This.ormenabled = true;
	This.datasource = "hoytstaff";
	This.customTagPaths = GetDirectoryFromPath(GetCurrentTemplatePath()) & "customtags";
	This.ormsettings.eventHandler = "hoytstaff.cfc.eventHandler";
	This.ormsettings.dbcreate = "update";
	This.ormsettings.logSQL = true;


	public boolean function onRequestStart() {

		if (structKeyExists(url, "reset_app")){
			ApplicationStop();
			location(cgi.script_name, false);
		}

		return true;
	}

	public boolean function onApplicationStart() {
		application.personService = new hoytstaff.services.personService();
		return true;
	}
}
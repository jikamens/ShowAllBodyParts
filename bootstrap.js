function startup() {
    var prefBranch = Components.classes["@mozilla.org/preferences-service;1"]
        .getService(Components.interfaces.nsIPrefBranch);
    prefBranch.setBoolPref("mailnews.display.show_all_body_parts_menu", true);
}

function shutdown() {
    var prefBranch = Components.classes["@mozilla.org/preferences-service;1"]
        .getService(Components.interfaces.nsIPrefBranch);
    prefBranch.setBoolPref("mailnews.display.show_all_body_parts_menu", false);
}

function install() {}
function uninstall() {}

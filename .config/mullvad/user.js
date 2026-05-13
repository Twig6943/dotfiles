// Manual proxy configuration
user_pref("network.proxy.type", 1);

// Disable HTTPS only mode
user_pref("dom.security.https_only_mode", false);
user_pref("dom.security.https_only_mode_pbm", false);
user_pref("dom.security.https_only_mode_ever_enabled", false);
user_pref("dom.security.https_only_mode_ever_enabled_pbm", false);
user_pref("services.sync.prefs.sync.dom.security.https_only_mode_ever_enabled", false);
user_pref("services.sync.prefs.sync.dom.security.https_only_mode_ever_enabled_pbm", false);

// Set HTTP Proxy
user_pref("network.proxy.http", "127.0.0.1");
user_pref("network.proxy.http_port", 4444);

// Use the same proxy for HTTPS
user_pref("network.proxy.ssl", "127.0.0.1");
user_pref("network.proxy.ssl_port", 4444);

// Clear SOCKS proxy settings
user_pref("network.proxy.socks", "");
user_pref("network.proxy.socks_port", 0);

// Set SOCKS version (v5 in this case)
user_pref("network.proxy.socks_version", 5);

// Bypass proxy for localhost and 127.0.0.1
user_pref("network.proxy.no_proxies_on", "localhost, 127.0.0.1");

// Enable remote DNS through SOCKS v5
user_pref("network.proxy.socks_remote_dns", true);

// Vertical tabs
user_pref("sidebar.verticalTabs", false); // Do not enable need bookmarks to not cover half of the screen.

user_pref("privacy.clearOnShutdown.siteSettings", false); // [DEFAULT: false]
user_pref("privacy.cpd.cache", false);    // [DEFAULT: true]
user_pref("privacy.cpd.formdata", false); // [DEFAULT: true]
user_pref("privacy.cpd.history", false);  // [DEFAULT: true]
user_pref("privacy.cpd.sessions", false); // [DEFAULT: true]
user_pref("privacy.cpd.offlineApps", false); // [DEFAULT: false]
user_pref("privacy.cpd.cookies", false);

// Helps against forensic tools.
user_pref("places.history.enabled", true);

// Animations
user_pref("sidebar.animation.enabled", false);

// Restore session
user_pref("browser.sessionstore.resume_session_once", true);

// Bookmark bar on the top that looks good
user_pref("browser.toolbars.bookmarks.visibility", true);

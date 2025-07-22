//OVERRIDES (Insert these to the end of arkenfox user.js)

//HW ACCEL (On)
user_pref("webgl.disabled", false);
user_pref("webgl.force-enabled", false)
user_pref("media.hardware-video-decoding.enabled", true)
user_pref("media.ffmpeg.vaapi.enabled", true);
user_pref("gfx.webrender.all", true);
user_pref("layers.acceleration.force-enabled", true);
user_pref("media.ffmpeg.vaapi.enabled", true);
user_pref("media.rdd-vpx.enabled", true);

//Enable autscroll
user_pref("general.autoScroll", true);

//Useless web dark theme thing
user_pref("browser.in-content.dark-mode", true);

//Disable download prompts
user_pref("browser.download.alwaysOpenPanel", false);
user_pref("browser.download.always_ask_before_handling_new_types", false);

//Developer console pin to right
user_pref("devtools.toolbox.host", "right");

//Vertical tabs
user_pref("sidebar.revamp", true);
user_pref("sidebar.verticalTabs", true);
user_pref("sidebar.main.tools", "aichat,bookmarks,history")

//Bookmarks
user_pref("browser.toolbars.bookmarks.visibility", "always");

//Disable firefox's password manager.
user_pref("signon.rememberSignons", false);
//Disable Pocket, it's proprietary trash
user_pref("extensions.pocket.enabled", false);
// Disable Mozilla account
user_pref("identity.fxaccounts.enabled", false);

//Disable Safe Browsing, this phones home to Google.
user_pref("browser.safebrowsing.malware.enabled", false);
user_pref("browser.safebrowsing.phishing.enabled", false);
user_pref("browser.safebrowsing.downloads.enabled", false);

// Enable IPv6 
user_pref("network.dns.disableIPv6", false);
user_pref("network.dns.preferIPv6", true);

//Reenable search engines
user_pref("keyword.enabled", true);
//Enable Search Engine suggestion
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.suggest.searches", false);
// Disk caching, which might improve performance if enabled.
user_pref("browser.cache.disk.enable", true);
//Enable favicons, the icons in bookmarks
user_pref("browser.shell.shortcutFavicons", true);
//Redundant with Total Cookie Protection, but useful if you have multiple accounts
//with the same provider (e.g. a work Google account and a personal Google account)
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);

// Strict third party requests, may cause images/video to break.
user_pref("network.http.referer.XOriginPolicy", 2);

//WebRTC settings, things like video calls
// user_pref("media.peerconnection.enabled", false);
// Disable Media Plugins
// user_pref("media.gmp-provider.enabled", false);

// Disable DRM, FCKDRM
user_pref("media.gmp-widevinecdm.enabled", false);

user_pref("media.eme.enabled", false);
//Autoplaying settings
//0=Allow all, 1=Block non-muted media (default), 5=Block all
// user_pref("media.autoplay.default", 5);
//If some websites REALLY need autoplaying...
//0=sticky (default), 1=transient, 2=user
user_pref("media.autoplay.blocking_policy", 2);

//Use Disconnect's blocklist to block ads
user_pref("browser.contentblocking.category", "strict");

//Delete cookies on close, but see below to make exceptions
/* 2801: delete cookies and site data on exit
 / /* 0=keep until they expire (default), 2=keep until you cl*ose Firefox
 * [NOTE] A "cookie" block permission also controls localStorage/sessionStorage, indexedDB,
* sharedWorkers and serviceWorkers. serviceWorkers require an "Allow" permission
* [SETTING] Privacy & Security>Cookies and Site Data>Delete cookies and site data when Firefox is closed
* [SETTING] to add site exceptions: Ctrl+I>Permissions>Cookies>Allow
* [SETTING] to manage site exceptions: Options>Privacy & Security>Permissions>Settings ***/
user_pref("network.cookie.lifetimePolicy", 0);
//Disabling disk cache is better, but try this if you like performance
// user_pref("privacy.clearsitedata.cache.enabled", true);

//Clear data on shutdown
user_pref("privacy.sanitize.sanitizeOnShutdown", false);
user_pref("privacy.clearOnShutdown.cache", false);     // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.downloads", false); // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.formdata", false);  // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.history", false);   // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.sessions", false);  // [DEFAULT: true]
user_pref("privacy.clearOnShutdown.offlineApps", false); // [DEFAULT: false]
user_pref("privacy.clearOnShutdown.cookies", false); // Cookies
user_pref("services.sync.prefs.sync.privacy.clearOnShutdown.history", false);
user_pref("privacy.clearOnShutdown.cookies", false); // Cookies
user_pref("privacy.clearOnShutdown.offlineApps", false); // Site Data
user_pref("privacy.clearOnShutdown.sessions", false);  // Active Logins [DEFAULT: true]
user_pref("privacy.clearOnShutdown_v2.cookiesAndStorage", false); // Cookies, Site Data, Active Logins [FF128+]

// user_pref("privacy.clearOnShutdown.siteSettings", false); // [DEFAULT: false]
// Manual wiping, such as the forget-me-not button
user_pref("privacy.cpd.cache", false);    // [DEFAULT: true]
user_pref("privacy.cpd.formdata", false); // [DEFAULT: true]
user_pref("privacy.cpd.history", false);  // [DEFAULT: true]
user_pref("privacy.cpd.sessions", false); // [DEFAULT: true]
user_pref("privacy.cpd.offlineApps", false); // [DEFAULT: false]
user_pref("privacy.cpd.cookies", false);
// user_pref("privacy.cpd.downloads", true); // not used, see note above
// user_pref("privacy.cpd.passwords", false); // [DEFAULT: false] not listed
// user_pref("privacy.cpd.siteSettings", false); // [DEFAULT: false]
// Delete everything ever.
//user_pref("privacy.sanitize.timeSpan", 0);
//Delete history, although might be security theater.
//Helps against forensic tools.
user_pref("places.history.enabled", true);

//Animations
user_pref("sidebar.animation.enabled", false);

//Restore session
user_pref("browser.sessionstore.resume_session_once", true);

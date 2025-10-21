// user.js - Firefox custom configuration

// Manual proxy configuration
user_pref("network.proxy.type", 1);

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

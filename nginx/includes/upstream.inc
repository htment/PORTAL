upstream example_app {
    server php1:9000 weight=3;
    server php2:9000;
    
    keepalive 32;
    keepalive_requests 1000;
    keepalive_timeout 60s;
}
How to work with supervisor. 

`cat /etc/supervisor/conf.d/{appName}.conf`

```ini
[program:{appName}]
command=/usr/bin/node /path/to/bin/www
directory=/path/to
autostart=true
autorestart=true
startretries=3
stderr_logfile=/var/log/{appName}/err.log
stdout_logfile=/var/log/{appName}/out.log
user={appUserName}
environment=
        NODE_ENV=production,
        CLIENT_ID=cl13n7_1d,
        CLIENT_SECRET=cl13n7_53cr37,
        APP_ID=4pp_1d,
        APP_SECRET=4pp_53cr37
```

# Important thing is
1. `supervisorctl restart {appName}` does not reread config files.
1. `supervisorctl update` reloads config and restarts if necessary.

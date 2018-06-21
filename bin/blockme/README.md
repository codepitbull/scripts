# THERE IS NO GUARANTEE ASSOCIATED WITH THESES SCRIPTS
I wrote this scripts for Mac OS X (should also work on Linux) to easily block sites while trying to focus (e.g. Pomodor Technique).
The following scripts will replace your /etc/hosts file with one that blocks certain sites by redirecting them to localhost.

# SETUP
Make two copies /etc/hosts in the directory of the scripts. One named __hosts__ will be used for the blocklist. The other named __hosts_sav__ is your backup of the original one.Modify _hosts_ by appending the sites you want to block.
The ones I appended are:

```
127.0.0.1       www.reddit.com
127.0.0.1	reddit.com
127.0.0.1	sz.de
127.0.0.1	spiegel.de
127.0.0.1	heise.de
127.0.0.1       www.heise.de
127.0.0.1	slashdot.org
127.0.0.1	belloflostsouls.com
127.0.0.1	www.belloflostsouls.net
127.0.0.1	rockpapershotgun.com
127.0.0.1	www.rockpapershotgun.com
```
# BLOCKING
To replace your /etc/hosts file and clear the DNS-caches run _sudo ./blockme.sh_.

# UNBLOCKING
To revert to the orignal run _sudo ./unblockme.sh_.

# BACKUPS
hosts_sav will never be modified by the script, that's up to you. But as you might overlook modifications done by other software (OpenVPN does such things) I create a backup of the current /etc/hosts file under the name hosts_sav_<timestamp>. If you ever find yourself with a non-working /etc/hosts file check the scripts dir for the last version.

# DISCLAIMER
These scripts are provided as is and I take no responsibility for thigs that might go wrong using them.

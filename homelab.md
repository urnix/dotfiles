code ~/.ssh/config
```
Host *
  ForwardAgent no
  Compression no
  ServerAliveInterval 60
  ServerAliveCountMax 3
  HashKnownHosts yes
  UserKnownHostsFile ~/.ssh/known_hosts
  ControlMaster no
  ControlPath ~/.ssh/master-%r@%n:%p
  ControlPersist no

  Host homelab
    HostName 165.173.1.38
    User urnix
    Port 52479
```

ssh homelab

sudo su
mta6kRFetddzxjhnbnwUQE8q2tWicYQt
passwd
hostnamectl

---

install homelab from readme
https://github.com/spy4x/homelab/tree/stacks-refactoring

clone servers/home folder and edit .env file inside and also 

Ports for SyncThing
ssh -L 8385:localhost:8384 homelab


# jellyna

A jellyfyn instance ready to load on a Pi through balena.
It will auto mount a freebox to `/media/freebox` if it finds one on the network.

Make sure to properly fill the `/root/root/.smbcredentials` with the info provided on your freebox:

```
username=jellyna
password=something pretty secret
domain=WORKGROUP
```

# Freebox

A recent update now allow using the SMBv2 protocol on the Freebox Server (Mini, Revolution, Pop & Delta).
With the many exploits existing for SMBv1, it is advised to use SMBv2 instead.


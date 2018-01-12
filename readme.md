# facter_ipaddress_primary

A custom fact for facter that reliably determines the primary NIC based upon the NIC chosen adjacent to the default gateway by using UDP sockets.

Since facter lacks the ability to locate custom facts within gems a wrapper/handler can be used to manage the FACTERLIB environment for you.

Usage:

```
$ # Appends to FACTERLIB environment variable and execs the specified program
$ ipaddress_primary_path facter | grep ipaddress
ipaddress => 10.11.90.148
ipaddress_en0 => 10.11.90.148
ipaddress_en5 => 10.10.27.133
ipaddress_lo0 => 127.0.0.1
ipaddress_primary => 10.10.27.133
lib => /usr/local/lib/ruby/gems/2.1.0/gems/facter_ipaddress_primary-1.0.0.pre/lib/facter

$ # No arguments returns the path where the library resides..
$ ipaddress_primary_path facter
/usr/local/lib/ruby/gems/2.1.0/gems/facter_ipaddress_primary-1.0.0.pre/lib/facter

# And this can alternatively be used to add to the path in a script if you prefer that approach
export FACTERLIB="${FACTERLIB}:`ipaddress_primary_path`"
```
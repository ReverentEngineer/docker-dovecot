# docker-dovecot

A docker image running dovecot that connects to an LDAP server

# Configuration

The image can be configured using the following bullets:

* **LDAP_HOST** - The LDAP host URI
* **LDAP_BASE** - THe LDAP base DN
* **LDAP_DN** - The LDAP DN to use for lookups
* **LDAP_DNPASS** - The password for LDAP_DN
* **LDAP_BIND_TEMPLATE** - The template for user's DN (for bind lookups)
* **TLS_CERT** - The location of the TLS certificate
* **TLS_KEY** - The location of the TLSK certificate private key

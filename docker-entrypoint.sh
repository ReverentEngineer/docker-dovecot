#!/bin/sh
echo "ssl_cert = <$TLS_CERT" >> /etc/dovecot/dovecot.conf
echo "ssl_key = <$TLS_KEY" >> /etc/dovecot/dovecot.conf

cat << EOM > /etc/dovecot/dovecot-ldap.conf.ext
hosts = $LDAP_HOST
base = $LDAP_BASE
scope = subtree
auth_bind = yes
auth_bind_userdn = $LDAP_BIND_TEMPLATE
EOM

dovecot -F

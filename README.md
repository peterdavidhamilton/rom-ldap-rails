# README

```
rails new my-app

rails db:create

rails db:seed

LDAPURI=ldap://localhost:3389 \
LDAPBINDDN='cn=Directory Manager' \
LDAPBINDPW=topsecret \
LDAPDIR=./config/ldif \
DEBUG=y \
rails ldap:modify

rails server
```
# frozen_string_literal: true

ROM.env.commands[:animals][:create].call([
                                           {
                                             dn: 'uid=rare,ou=animals,dc=rom,dc=ldap',
                                             uid: 'rare',
                                             objectclass: 'extensibleObject'
                                           },
                                           {
                                             dn: 'uid=common,ou=animals,dc=rom,dc=ldap',
                                             uid: 'common',
                                             objectclass: 'extensibleObject'
                                           }
                                         ])

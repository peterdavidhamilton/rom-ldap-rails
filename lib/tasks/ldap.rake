# frozen_string_literal: true

# Use ldapmodify
# @example
#   rake ldap:modify[dir]
#
load 'rom/ldap/tasks/ldap.rake'

# Use rom-ldap
# @example
#   rake ldif:import[file]
#
load 'rom/ldap/tasks/ldif.rake'

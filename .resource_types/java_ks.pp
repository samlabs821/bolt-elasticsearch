# This file was automatically generated on 2020-05-25 20:47:41 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manages the entries in a java keystore, and uses composite namevars to
# accomplish the same alias spread across multiple target keystores.
Puppet::Resource::ResourceType3.new(
  'java_ks',
  [
    # Has three states: present, absent, and latest.  Latest
    # will compare the on disk SHA1 fingerprint of the certificate to that
    # in keytool to determine if insync? returns true or false.  We redefine
    # insync? for this parameter to accomplish this.
    # 
    # Valid values are `present`, `absent`, `latest`.
    Puppet::Resource::Param(Enum['present', 'absent', 'latest'], 'ensure')
  ],
  [
    # The alias that is used to identify the entry in the keystore. This will be
    # converted to lowercase.
    Puppet::Resource::Param(Any, 'name', true),

    # Destination file for the keystore.  This will autorequire the parent directory of the file.
    Puppet::Resource::Param(Any, 'target', true),

    # A server certificate, followed by zero or more intermediate certificate authorities.
    # All certificates will be placed in the keystore.  This will autorequire the specified file.
    Puppet::Resource::Param(Any, 'certificate'),

    # Optional storetype
    # Valid options: <jceks>, <pkcs12>, <jks>
    # 
    # Valid values are `jceks`, `pkcs12`, `jks`.
    Puppet::Resource::Param(Enum['jceks', 'pkcs12', 'jks'], 'storetype'),

    # If you want an application to be a server and encrypt traffic,
    # you will need a private key.  Private key entries in a keystore must be
    # accompanied by a signed certificate for the keytool provider. This will autorequire the specified file.
    Puppet::Resource::Param(Any, 'private_key'),

    # The type of the private key. Usually the private key is of type RSA
    # key but it can also be an Elliptic Curve key (EC) or DSA.
    # Valid options: <rsa>, <dsa>, <ec>. Defaults to <rsa>
    # 
    # Valid values are `rsa`, `dsa`, `ec`.
    Puppet::Resource::Param(Enum['rsa', 'dsa', 'ec'], 'private_key_type'),

    # The intermediate certificate authorities, if they are to be taken
    # from a file separate from the server certificate. This will autorequire the specified file.
    Puppet::Resource::Param(Any, 'chain'),

    # The password used to protect the keystore.  If private keys are
    # subsequently also protected this password will be used to attempt
    # unlocking. Must be six or more characters in length. Cannot be used
    # together with :password_file, but you must pass at least one of these parameters.
    Puppet::Resource::Param(Any, 'password'),

    # The path to a file containing the password used to protect the
    # keystore. This cannot be used together with :password, but you must pass at least one of these parameters.
    Puppet::Resource::Param(Any, 'password_file'),

    # If the supplied password does not succeed in unlocking the
    # keystore file, then delete the keystore file and create a new one.
    # Default: false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'password_fail_reset'),

    # The password used to protect the key in keystore.
    Puppet::Resource::Param(Any, 'destkeypass'),

    # Certificate authorities aren't by default trusted so if you are adding a CA you need to set this to true.
    # Defaults to :false.
    # 
    # Valid values are `true`, `false`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false']], 'trustcacerts'),

    # The search path used for command (keytool, openssl) execution.
    # Paths can be specified as an array or as a ':' separated list.
    Puppet::Resource::Param(Any, 'path'),

    # Timeout for the keytool command in seconds.
    Puppet::Resource::Param(Any, 'keytool_timeout'),

    # The source keystore password
    Puppet::Resource::Param(Any, 'source_password'),

    # The source certificate alias
    Puppet::Resource::Param(Any, 'source_alias'),

    # The specific backend to use for this `java_ks`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # keytool
    # : Uses a combination of openssl and keytool to manage Java keystores
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /^([^:]+)$/ => ['name'],
    /(?i-mx:^(.*):([a-z]:(\/|\\).*)$)/ => ['name', 'target'],
    /^(.*):(.*)$/ => ['name', 'target']
  },
  true,
  false)

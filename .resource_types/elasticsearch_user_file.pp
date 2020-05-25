# This file was automatically generated on 2020-05-25 20:47:41 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Type to model Elasticsearch users.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_user_file',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Hashed password for user.
    # 
    # Values can match `/^[$]2a[$].{56}$/`.
    # 
    # Requires features manages_encrypted_passwords.
    Puppet::Resource::Param(Pattern[/^[$]2a[$].{56}$/], 'hashed_password')
  ],
  [
    # User name.
    Puppet::Resource::Param(Any, 'name', true),

    # Path to the elasticsearch configuration directory (ES_PATH_CONF).
    Puppet::Resource::Param(Any, 'configdir'),

    # The specific backend to use for this `elasticsearch_user_file`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # oss_xpack
    # : Provider for OSS X-Pack users using plain files.
    # 
    #   * Supported features: `manages_encrypted_passwords`.
    # 
    # shield
    # : Provider for Shield esusers using plain files.
    # 
    #   * Supported features: `manages_encrypted_passwords`.
    # 
    # xpack
    # : Provider for X-Pack esusers using plain files.
    # 
    #   * Supported features: `manages_encrypted_passwords`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

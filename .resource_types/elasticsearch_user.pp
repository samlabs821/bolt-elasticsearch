# This file was automatically generated on 2020-05-25 20:47:41 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Type to model Elasticsearch users.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_user',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # User name.
    Puppet::Resource::Param(Any, 'name', true),

    # Path to the elasticsearch configuration directory (ES_PATH_CONF).
    Puppet::Resource::Param(Any, 'configdir'),

    # Plaintext password for user.
    # 
    # 
    # 
    # Requires features manages_plaintext_passwords.
    Puppet::Resource::Param(Any, 'password'),

    # The specific backend to use for this `elasticsearch_user`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # elasticsearch_users
    # : Provider for OSS X-Pack user resources.
    # 
    #   * Required binaries: `/usr/share/elasticsearch/bin/elasticsearch-users`, `/usr/share/elasticsearch/bin/elasticsearch`.
    #   * Supported features: `manages_plaintext_passwords`.
    # 
    # esusers
    # : Provider for Shield file (esusers) user resources.
    # 
    #   * Required binaries: `/usr/share/elasticsearch/bin/elasticsearch`, `/usr/share/elasticsearch/bin/shield/esusers`.
    #   * Supported features: `manages_plaintext_passwords`.
    # 
    # users
    # : Provider for X-Pack file (users) user resources.
    # 
    #   * Required binaries: `/usr/share/elasticsearch/bin/elasticsearch`, `/usr/share/elasticsearch/bin/x-pack/users`.
    #   * Supported features: `manages_plaintext_passwords`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

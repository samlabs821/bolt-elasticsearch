# This file was automatically generated on 2020-05-25 20:47:39 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manages an Elasticsearch keystore settings file.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_keystore',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # A key/value hash of settings names and values.
    Puppet::Resource::Param(Any, 'settings')
  ],
  [
    # Elasticsearch instance this keystore belongs to.
    Puppet::Resource::Param(Any, 'instance', true),

    # Path to the elasticsearch configuration directory (ES_PATH_CONF).
    Puppet::Resource::Param(Any, 'configdir'),

    # Whether to proactively remove settings that exist in the keystore but
    # are not present in this resource's settings.
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'purge'),

    # The specific backend to use for this `elasticsearch_keystore`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # elasticsearch_keystore
    # : Provider for `elasticsearch-keystore` based secret management.
    # 
    #   * Required binaries: `/usr/share/elasticsearch/bin/elasticsearch-keystore`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['instance']
  },
  true,
  false)

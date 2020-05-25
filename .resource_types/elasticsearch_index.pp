# This file was automatically generated on 2020-05-25 20:47:36 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manages Elasticsearch index settings.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_index',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Structured settings for the index in hash form.
    Puppet::Resource::Param(Any, 'settings')
  ],
  [
    # Absolute path to a CA file to authenticate server certs against.
    Puppet::Resource::Param(Any, 'ca_file'),

    # Absolute path to a directory containing CA files.
    Puppet::Resource::Param(Any, 'ca_path'),

    # Hostname or address of Elasticsearch instance.
    Puppet::Resource::Param(Any, 'host'),

    # Optional HTTP basic auth plaintext password for Elasticsearch.
    Puppet::Resource::Param(Any, 'password'),

    # Port to use for Elasticsearch HTTP API operations.
    Puppet::Resource::Param(Any, 'port'),

    # Protocol to use for communication with Elasticsearch.
    Puppet::Resource::Param(Any, 'protocol'),

    # HTTP timeout for reading/writing content to Elasticsearch.
    Puppet::Resource::Param(Any, 'timeout'),

    # Optional HTTP basic auth username for Elasticsearch.
    Puppet::Resource::Param(Any, 'username'),

    # Whether to verify TLS/SSL certificates.
    # 
    # Valid values are `true`, `false`, `yes`, `no`.
    Puppet::Resource::Param(Variant[Boolean, Enum['true', 'false', 'yes', 'no']], 'validate_tls'),

    # Index name.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `elasticsearch_index`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # ruby
    # : A REST API based provider to manage Elasticsearch index settings.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

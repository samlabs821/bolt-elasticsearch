# This file was automatically generated on 2020-05-25 20:47:40 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Type to model Elasticsearch role mappings.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_role_mapping',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # List of role mappings.
    Puppet::Resource::Param(Any, 'mappings')
  ],
  [
    # Role name.
    # 
    # Values can match `/^[a-zA-Z_]{1}[-\w@.$]{0,29}$/`.
    Puppet::Resource::Param(Pattern[/^[a-zA-Z_]{1}[-\w@.$]{0,29}$/], 'name', true),

    # The specific backend to use for this `elasticsearch_role_mapping`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # oss_xpack
    # : Provider for OSS X-Pack role mappings.
    # 
    # shield
    # : Provider for Shield role mappings.
    # 
    # xpack
    # : Provider for X-Pack role mappings.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

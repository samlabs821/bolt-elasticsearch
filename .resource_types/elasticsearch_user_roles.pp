# This file was automatically generated on 2020-05-25 20:47:41 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Type to model Elasticsearch user roles.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_user_roles',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Array of roles that the user should belong to.
    Puppet::Resource::Param(Any, 'roles')
  ],
  [
    # User name.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `elasticsearch_user_roles`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # oss_xpack
    # : Provider for X-Pack user roles (parsed file.)
    # 
    # shield
    # : Provider for Shield user roles (parsed file.)
    # 
    # xpack
    # : Provider for X-Pack user roles (parsed file.)
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

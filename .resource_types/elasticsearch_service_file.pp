# This file was automatically generated on 2020-05-25 20:47:40 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Manages elasticsearch service files.
Puppet::Resource::ResourceType3.new(
  'elasticsearch_service_file',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # Service file contents in erb template form.
    Puppet::Resource::Param(Any, 'content')
  ],
  [
    # Fully qualified path to the service file.
    Puppet::Resource::Param(Any, 'name', true),

    # File path to defaults file.
    Puppet::Resource::Param(Any, 'defaults_location'),

    # Group to run service under.
    Puppet::Resource::Param(Any, 'group'),

    # Elasticsearch home directory.
    Puppet::Resource::Param(Any, 'homedir'),

    # Elasticsearch instance name.
    Puppet::Resource::Param(Any, 'instance'),

    # Memlock setting for service.
    Puppet::Resource::Param(Any, 'memlock'),

    # Service NOFILE ulimit.
    Puppet::Resource::Param(Any, 'nofile'),

    # Service NPROC ulimit.
    Puppet::Resource::Param(Any, 'nproc'),

    # Name of the system Elasticsearch package.
    Puppet::Resource::Param(Any, 'package_name'),

    # Directory to use for storing service PID.
    Puppet::Resource::Param(Any, 'pid_dir'),

    # User to run service under.
    Puppet::Resource::Param(Any, 'user'),

    # The specific backend to use for this `elasticsearch_service_file`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # ruby
    # : Provides management of elasticsearch service files.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

# This file was automatically generated on 2020-05-25 20:47:39 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Plugin installation type
Puppet::Resource::ResourceType3.new(
  'elasticsearch_plugin',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # An arbitrary name used as the identity of the resource.
    Puppet::Resource::Param(Any, 'name', true),

    # Path to the elasticsearch configuration directory (ES_PATH_CONF).
    Puppet::Resource::Param(Any, 'configdir'),

    # Name of the system Elasticsearch package.
    Puppet::Resource::Param(Any, 'elasticsearch_package_name'),

    # Optional array of Java options for ES_JAVA_OPTS.
    Puppet::Resource::Param(Any, 'java_opts'),

    # Optional string to set the environment variable JAVA_HOME.
    Puppet::Resource::Param(Any, 'java_home'),

    # Url of the package
    Puppet::Resource::Param(Any, 'url'),

    # Source of the package. puppet:// or file:// resource
    Puppet::Resource::Param(Any, 'source'),

    # Proxy Host
    Puppet::Resource::Param(Any, 'proxy'),

    # Path to the Plugins directory
    Puppet::Resource::Param(Any, 'plugin_dir'),

    # Override name of the directory created for the plugin
    Puppet::Resource::Param(Any, 'plugin_path'),

    # The specific backend to use for this `elasticsearch_plugin`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # elasticsearch_plugin
    # : Post-5.x provider for Elasticsearch bin/elasticsearch-plugin
    #   command operations.'
    # 
    #   * Required binaries: `/usr/share/elasticsearch/bin/elasticsearch-plugin`, `/usr/share/elasticsearch/bin/elasticsearch`.
    # 
    # plugin
    # : Pre-5.x provider for Elasticsearch bin/plugin command operations.
    # 
    #   * Required binaries: `/usr/share/elasticsearch/bin/elasticsearch`, `/usr/share/elasticsearch/bin/plugin`.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

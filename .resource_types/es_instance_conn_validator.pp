# This file was automatically generated on 2020-05-25 20:47:41 +0600.
# Use the 'puppet generate types' command to regenerate this file.

# Verify that a connection can be successfully established between a
# node and the Elasticsearch instance. It could potentially be used for other
# purposes such as monitoring.
Puppet::Resource::ResourceType3.new(
  'es_instance_conn_validator',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure')
  ],
  [
    # An arbitrary name used as the identity of the resource.
    Puppet::Resource::Param(Any, 'name', true),

    # DNS name or IP address of the server where Elasticsearch instance should be running.
    Puppet::Resource::Param(Any, 'server'),

    # The port that the Elasticsearch instance should be listening on.
    Puppet::Resource::Param(Any, 'port'),

    # The max number of seconds that the validator should wait before giving up and deciding that the Elasticsearch instance is not running; defaults to 60 seconds.
    Puppet::Resource::Param(Any, 'timeout'),

    # The specific backend to use for this `es_instance_conn_validator`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # tcp_port
    # : A provider for the resource type `es_instance_conn_validator`,
    #   which validates the  connection by attempting an https
    #   connection to the Elasticsearch instance.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)

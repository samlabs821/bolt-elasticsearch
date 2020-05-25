plan apache::elasticsearch(
  TargetSpec $nodes,
) {
  # Compile the manifest block into a catalog
  apply($nodes) {
    class { 'elasticsearch':
    version          => "6.x.x",
    manage_repo      => true,
    datadir          => '/some/dir',
    security_plugin  => 'x-pack',
    license => lookup($lookup_array.map |$value| { "$value/license" }, {'default_value' => undef}),
    service_provider => 'systemd',
    api_basic_auth_username => "user",
    api_basic_auth_password => "password",
    validate_tls            => false,
    config           => {}
    }
  }
}


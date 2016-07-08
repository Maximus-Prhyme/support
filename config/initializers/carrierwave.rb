CarrierWave.configure do |config|                       # required
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'access key here',                        # required
    :aws_secret_access_key  => 'secret access key here'                      # required
  }
  config.fog_directory  = 'biotrack'                          # required
end
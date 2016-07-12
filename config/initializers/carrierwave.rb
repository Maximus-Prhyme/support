CarrierWave.configure do |config|                       # required
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'add access key here',                        # required
    :aws_secret_access_key  => 'secret access key'                      # required
  }
  config.fog_directory  = 'biotrack'                          # required
end
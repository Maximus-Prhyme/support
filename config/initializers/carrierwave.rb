CarrierWave.configure do |config|                       # required
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => ENV['S3_KEY'],                        # required
    :aws_secret_access_key  => ENV['S3_SECRET'],
    :region                 => ENV['S3_REGION']                     # required
  }
  config.fog_directory  = 'biotrack'                          # required
end
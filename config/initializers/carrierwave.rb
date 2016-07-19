CarrierWave.configure do |config|                       # required
  config.fog_credentials = {
    :provider              => 'AWS',
    :aws_access_key_id     => 'AKIAIGR66DIUTX7VGMAA',
    :aws_secret_access_key => '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'
    # :region                => ENV['S3_REGION']
                     # required
  }
  config.fog_directory  = 'biotrack'                          # required
end

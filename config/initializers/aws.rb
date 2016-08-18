CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJE2GGYJMD2FXHVKQ',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'fthkhk'                          # required
end
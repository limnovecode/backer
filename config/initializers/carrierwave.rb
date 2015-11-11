# config/initializers/carrierwave.rb

# Be sure to restart your server when you modify this file.

# Note: Environment Variables are setup in config/application.yml

# Amazon S3 stores data as objects within resources called "buckets."
# You can store as many objects as you want within a bucket,
# and write, read, and delete objects in your bucket.
# Objects can be up to 5 terabytes in size.
CarrierWave.configure do |config|
  if Rails.env.development? || Rails.env.test?
    config.storage = :file
  else
    config.fog_credentials = {
      provider: "AWS",
      region: ENV["STORAGE_REGION"] || "please-run-figaro",
      aws_access_key_id: ENV["STORAGE_ACCESS_KEY_ID"] || "please-run-figaro",
      aws_secret_access_key: ENV["STORAGE_SECRET_ACCESS_KEY"] || "please-run-figaro"
    }
    config.storage = :fog
    config.fog_public = true
    config.fog_attributes = { "Cache-Control" => "max-age=#{60.day.to_i}" }
    config.fog_directory = ENV["STORAGE_BUCKET"]
  end
end

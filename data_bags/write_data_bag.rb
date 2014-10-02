require 'rubygems'
require 'chef/encrypted_data_bag_item'

secret = Chef::EncryptedDataBagItem.load_secret('../insecure_data_bag_key')
data = {"id" => "wildcard", "cert" => "not a cert", "key" => "not a key", "chain" => "not a chain"}
encrypted_data = Chef::EncryptedDataBagItem.encrypt_data_bag_item(data, secret)

FileUtils.mkpath('certificates')
File.open('certificates/wildcard.json', 'w') do |f|
  f.print encrypted_data.to_json
end

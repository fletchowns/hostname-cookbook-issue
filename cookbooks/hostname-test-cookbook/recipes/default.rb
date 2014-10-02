#
# Cookbook Name:: hostname-test-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

certificate_manage "wildcard" do
	cert_file lazy { "#{node['fqdn']}.pem" }
	key_file lazy { "#{node['fqdn']}.key" }
	chain_file lazy { "#{node['fqdn']}-bundle.crt" }
end

template "/home/vagrant/fqdn_test" do
	source "fqdn_test.erb"
	owner "vagrant"
	group "vagrant"
end

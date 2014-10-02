#
# Cookbook Name:: hostname-test-cookbook
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

certificate_manage "wildcard"

template "/home/vagrant/fqdn_test" do
	source "fqdn_test.erb"
	owner "vagrant"
	group "vagrant"
end

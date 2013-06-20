package "memcached"

# use custom memcached configuration file.
template "/etc/memcached.conf" do
  owner "root"
  group "root"
  mode "0755"
  source "memcached.conf.erb"
end

execute "service memcached restart"

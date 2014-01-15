###
# Base stuff
###
default[:timezone][:tz] = "UTC"

default[:sysctl][:params][:vm][:swappiness] = 10
default[:sysctl][:params][:net][:core][:rmem_max] = 16777216
default[:sysctl][:params][:net][:core][:wmem_max] = 16777216
default[:sysctl][:params][:net][:core][:netdev_max_backlog] = 30000
default[:sysctl][:params][:net][:core][:somaxconn] = 262144

default[:sysctl][:params][:net][:ipv4][:tcp_rmem] = "4096 87380 16777216"
default[:sysctl][:params][:net][:ipv4][:tcp_wmem] = "4096 65536 16777216"
default[:sysctl][:params][:net][:ipv4][:tcp_fin_timeout] = 3
default[:sysctl][:params][:net][:ipv4][:tcp_no_metrics_save] = 1
default[:sysctl][:params][:net][:ipv4][:tcp_syncookies] = 1
default[:sysctl][:params][:net][:ipv4][:tcp_max_orphans] = 262144
default[:sysctl][:params][:net][:ipv4][:tcp_max_syn_backlog] = 262144
default[:sysctl][:params][:net][:ipv4][:tcp_synack_retries] = 2
default[:sysctl][:params][:net][:ipv4][:tcp_syn_retries] = 2
default[:sysctl][:params][:net][:ipv4][:tcp_keepalive_probes] = 5
default[:sysctl][:params][:net][:ipv4][:tcp_keepalive_intvl] = 15
default[:sysctl][:params][:net][:ipv4][:tcp_tw_recycle] = 1
default[:sysctl][:params][:net][:ipv4][:tcp_tw_reuse] = 1
default[:sysctl][:params][:net][:ipv4][:icmp_echo_ignore_broadcasts] = 1
default[:sysctl][:params][:net][:ipv4][:conf][:all][:rp_filter] = 1

###
# Users
###
default[:openssh][:server][:password_authentication] = "no"
default[:openssh][:server][:subsystem] = "sftp /usr/lib/openssh/sftp-server"
default[:openssh][:server][:t_c_p_keep_alive] = "yes"
default[:openssh][:client][:forward_agent] = 'yes'


default['authorization']['sudo']['users'] = ["deployer","vagrant"]
default['authorization']['sudo']['passwordless'] = true

default[:ssh_keys][:root] = ["alex"]
default['ssh_keys']['deployer'] = ["alex"]

###
# Java
###
default[:java][:oracle][:accept_oracle_download_terms] = true
default[:java][:oracle][:accept_oracle_terms] = true
default[:java][:install_flavor] = "oracle"

###
# NodeJS
###
default[:nodejs][:install_method] = "package"
default[:nodejs][:version] = "0.8.8"
default[:nodejs][:legacy_packages] = true

###
# MongoDB
###
default[:mongodb][:enable_rest] = false
# -*- mode: ruby -*-
# vi: set ft=ruby :

# Specify Vagrant version and Vagrant API version
Vagrant.require_version '>= 2.0.2'
VAGRANTFILE_API_VERSION = '2'

# Require 'yaml' module
require 'yaml'

# Read YAML file with VM details (box, CPU, and RAM)
machines = YAML.load_file(File.join(File.dirname(__FILE__),'envitonment.yml'))
require'vagrant-openstack-provider'

Vagrant.configure(VAGRANTFILE_API_VERSION) do|config |
    
    config.ssh.username = 'ubuntu'
    config.ssh.private_key_path = "win-abel2.pem"
    config.vm.provider :openstack do|os, override |
        os.identity_api_version = '3'
        os.openstack_auth_url = 'http://10.28.3.240:5000/v3'
        os.domain_name = machines['domain_name']
        os.username = machines['user']
        os.password = machines['pass']
        os.tenant_name = machines['tenant_name']
        os.project_name  = 'fj_abelmallcu_at08-desktop'
        os.keypair_name   = 'win-abel2'
        os.image = 'ubuntu-14.04-amd64-server_18062018'
        os.flavor = 'f2.desktop.large'
        os.server_name = 'AT08-AGMC-desktop1'
        override.vm.synced_folder '.', '/vagrant', disabled:true
      
    end
end








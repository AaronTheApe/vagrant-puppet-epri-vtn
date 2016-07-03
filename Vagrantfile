Vagrant.configure("2") do |config|
  config.vm.box = "puppetlabs/ubuntu-12.04-64-puppet"

  config.vm.provision  :puppet do |puppet|
    puppet.environment_path = "environments"
    puppet.environment = "production"
  end
end

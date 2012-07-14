Vagrant::Config.run do |config|
  config.vm.box = "base-precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.customize ["modifyvm", :id, "--memory", "1024"]

  config.vm.network :hostonly, "33.33.33.33"

  # Change to preferred file location.
  #config.vm.share_folder("web", "/var/www", "web")

 config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end

end

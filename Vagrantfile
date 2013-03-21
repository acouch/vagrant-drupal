Vagrant::Config.run do |config|
  config.vm.box = "nuams-precise32"
  config.vm.box_url = "http://files.nuamsdev.com/nuams-precise32.box"

  config.vm.customize ["modifyvm", :id, "--memory", "1024"]

  config.vm.network :hostonly, "33.33.33.33"

  # Remove this if you don't have access to nuams repo.
  config.ssh.private_key_path = "modules/nuams/files/id_dsa"
  # Change to preferred file location.
  #config.vm.share_folder("web", "/var/www", "web", :extra => 'dmode=770,fmode=770')

 config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end

end

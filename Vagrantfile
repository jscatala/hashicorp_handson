Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
  config.vm.provision "shell", path: "provisionamiento.sh", privileged: false
  config.vm.network :forwarded_port, guest: 8080, host: 8080 
end

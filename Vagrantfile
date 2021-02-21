Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.box_version = "20210208.0.0"
  config.vm.box_url = "https://vagrantcloud.com/hashicorp/bionic64"

  config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip:"127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provider "virtualbox" do |v|
  v.gui = true
  v.memory = 1024
  v.cpus = 1
  v.customize ["modifyvm", :id, "--vram", "128"]
  end

  config.vm.provision "shell", inline: <<-SHELL
  apt-get update
  apt-get install -y vim
  SHELL
  config.vm.provision "shell", inline: <<-SHELL
  apt-get update
  apt-get install -y ansible
  SHELL
  config.vm.provision "shell", inline: <<-SHELL
  apt-get update
  # apt-get install -y docker-ce
  apt-get install -y docker
  SHELL
  end
  
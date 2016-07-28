Vagrant.configure(2) do |config|
  config.vm.provision "shell", inline: <<-SHELL
    echo "deb http://ftp.de.debian.org/debian-archive/debian squeeze main" > /etc/apt/sources.list
  SHELL
end

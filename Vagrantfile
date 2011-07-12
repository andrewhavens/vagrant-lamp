Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.network "33.33.33.10"
  config.vm.share_folder("web-folder", "/var/www", "/Users/nickshepherd/Sites/cogsworth")

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "vagrant_main"
	
	chef.json.merge!({
		:mysql => {
			:server_root_password => "root",
			:allow_remote_root => true,
			:bind_address => "0.0.0.0"
		},
		:apache => {
			:listen_ports => [ "80" ],
			:allow_override_default => "All"
		}
	})
  end
end

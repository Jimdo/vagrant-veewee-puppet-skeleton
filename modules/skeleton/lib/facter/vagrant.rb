Facter.add(:is_vagrant) do
	setcode do
	if FileTest.exists?("/vagrant") or FileTest.exists?("/tmp/vagrant-network-interfaces") or FileTest.exists?("/tmp/vagrant-network-entry") or FileTest.exists?("/etc/vagrant_box_build_time")
		is_vagrant = true
	else
		is_vagrant = false
	end
	is_vagrant
	end
end

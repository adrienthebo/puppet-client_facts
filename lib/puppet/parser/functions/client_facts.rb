doc = <<-EOD
Retrieve all facts for a node during compilation.

Example
-------

client_facts()
# => {"architecture"=>"amd64", "kernel"=>"Linux", "blockdevice_sda_size"=>"500107862016", "blockdevice_sda_vendor"=>"ATA", "blockdevice_sda_model"=>"Samsung SSD 840", [...]}

EOD

Puppet::Parser::Functions.newfunction(:client_facts, :type => :rvalue, :doc => doc) do |args|
  compiler.node.facts.values
end

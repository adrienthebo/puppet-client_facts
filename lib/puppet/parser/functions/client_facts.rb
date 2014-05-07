doc = <<-EOD
Retrieve the client facts for the currently compiling catalog

EOD

Puppet::Parser::Functions.newfunction(:client_facts, :type => :rvalue, :doc => doc) do |args|
  compiler.node.facts.values
end

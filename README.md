puppet-client_facts
===================

Retrieve all facts for a node during compilation.

Examples
--------

```puppet
# test.pp
notify { 'myfacts':
  message => client_facts()
}
```

Returns:

```
Notice: {"architecture"=>"amd64", "kernel"=>"Linux", "blockdevice_sda_size"=>"500107862016", "blockdevice_sda_vendor"=>"ATA", "blockdevice_sda_model"=>"Samsung SSD 840", [...]}
Notice: /Stage[main]//Notify[myfacts]/message: defined 'message' as {"architecture"=>"amd64", "kernel"=>"Linux", "blockdevice_sda_size"=>"500107862016", "blockdevice_sda_vendor"=>"ATA", "blockdevice_sda_model"=>"Samsung SSD 840", [...]}
Notice: Finished catalog run in 0.10 seconds
```

# Scripts Deployed to Systems
Create scripts to deploy to machines in the network here.
* The common script group is installed automatically to all systems.


## Structure of Script directories
A script folder will be copied to the system. All script entry points should be present in `bin`.
They will be symlinked on the system automatically. If there is any script that needs to be run on boot, name it `autorun.lua`.
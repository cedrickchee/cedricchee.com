+++
title = "Learning WireGuard"
#description = "This is a showcase post."
date = 2020-03-01T23:23:00Z
#updated = 2022-11-10
#weight = 0
#slug = "future post"
#path = "/launch"
#draft = true

[taxonomies]
tags = ["wireguard"]

[extra]
ToC = false
+++

A random and wild adventure into the WireGuard land.

**What is WireGuard?**

Is it the replacement of OpenVPN, IPSec? Is it the future of VPN. I don't want to do injustice to WireGuard. I think [WireGuard website](https://www.wireguard.com/) explained it pretty well, even for not very technical people.

## Installation for Ubuntu 16.04

You can see the full glory in the logs/terminal output of this adventure. If you pay enough attention, you will notice that I banged my head trying to get WireGuard kernel module works. To save you from repeating my mistakes, do remember where (which environment: virtualized, VM, container or host) you run your commands; DO NOT install Linux kernel while you are inside Docker container.

**Step 0:**

- [Check if a process is running inside docker container](https://stackoverflow.com/q/23513045)
- If you are installing and using Wireguard with containers, please refer to this blog post and instructions here: https://blog.jessfraz.com/post/installing-and-using-wireguard/

**Step 1:**

[Steps and instructions](https://www.wireguard.com/install/).

1. Install and setup WireGuard kernel module:

```sh
$ sudo add-apt-repository ppa:wireguard/wireguard

$ sudo apt-get update

$ sudo apt install wireguard

Reading package lists... Done
Building dependency tree       
Reading state information... Done
The following additional packages will be installed:
  wireguard-dkms wireguard-tools
The following NEW packages will be installed:
  wireguard wireguard-dkms wireguard-tools
0 upgraded, 3 newly installed, 0 to remove and 2 not upgraded.
Need to get 358 kB of archives.
After this operation, 2,042 kB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://ppa.launchpad.net/wireguard/wireguard/ubuntu xenial/main amd64 wireguard-dkms all 0.0.20200215-0ppa1~16.04 [259 kB]
Get:2 http://ppa.launchpad.net/wireguard/wireguard/ubuntu xenial/main amd64 wireguard-tools amd64 1.0.20200206-0ppa1~16.04 [91.6 kB]
Get:3 http://ppa.launchpad.net/wireguard/wireguard/ubuntu xenial/main amd64 wireguard all 1.0.20200206-0ppa1~16.04 [7,334 B]
Fetched 358 kB in 4s (77.5 kB/s)      
Selecting previously unselected package wireguard-dkms.
(Reading database ... 553444 files and directories currently installed.)
Preparing to unpack .../wireguard-dkms_0.0.20200215-0ppa1~16.04_all.deb ...
Unpacking wireguard-dkms (0.0.20200215-0ppa1~16.04) ...
Selecting previously unselected package wireguard-tools.
Preparing to unpack .../wireguard-tools_1.0.20200206-0ppa1~16.04_amd64.deb ...
Unpacking wireguard-tools (1.0.20200206-0ppa1~16.04) ...
Selecting previously unselected package wireguard.
Preparing to unpack .../wireguard_1.0.20200206-0ppa1~16.04_all.deb ...
Unpacking wireguard (1.0.20200206-0ppa1~16.04) ...
Processing triggers for man-db (2.7.5-1) ...
Setting up wireguard-dkms (0.0.20200215-0ppa1~16.04) ...
Loading new wireguard-0.0.20200215 DKMS files...
First Installation: checking all kernels...
Building for 4.4.0-173-generic and 4.9.12-040912-generic
Building initial module for 4.4.0-173-generic
Secure Boot not enabled on this system.
Done.

wireguard:
Running module version sanity check.
 - Original module
   - No original module exists within this kernel
 - Installation
   - Installing to /lib/modules/4.4.0-173-generic/updates/dkms/

depmod....

DKMS: install completed.
Setting up wireguard-tools (1.0.20200206-0ppa1~16.04) ...
Setting up wireguard (1.0.20200206-0ppa1~16.04) ...
```

2. The following problem troubleshooting steps (`lsmod` kernel) are from: https://www.kevin-messer.net/how-to-setup-a-vpn-on-ubuntu-19-10-using-wireguard/

> As Wireguard is a kernel module, soon to be mainlined (included inside the Linux kernel), you will need to check if it's enabled and enable it if it's not.

To check if you will have to do so:

```sh
$ lsmod | grep wireguard
```

If it’s ok, you will get something like this:

```sh
root@starlite:~# lsmod | grep wireguard
wireguard             208896  0
ip6_udp_tunnel         16384  1 wireguard
udp_tunnel             16384  1 wireguard
```

If you get nothing, you will have to enable it:

```sh
$ modprobe wireguard
modprobe: ERROR: could not insert 'wireguard': Operation not permitted
```

If you encountered error, run in verbose mode to check log:

```sh
root@starlite:~$ modprobe -vvv wireguard                                                                    
modprobe: INFO: ../libkmod/libkmod.c:364 kmod_set_log_fn() custom logging function 0x559bfb4c2750 registered                                                       
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.dep.bin                 
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.alias.bin                    
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.symbols.bin              
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.builtin.bin                     
modprobe: DEBUG: ../libkmod/libkmod-module.c:556 kmod_module_new_from_lookup() input alias=wireguard, normalized=wireguard             
modprobe: DEBUG: ../libkmod/libkmod-module.c:562 kmod_module_new_from_lookup() lookup modules.dep wireguard                                
modprobe: DEBUG: ../libkmod/libkmod.c:574 kmod_search_moddep() use mmaped index 'modules.dep' modname=wireguard                 
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='wireguard' found=(nil)                         
modprobe: DEBUG: ../libkmod/libkmod.c:410 kmod_pool_add_module() add 0x559bfd41c050 key='wireguard'                            
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='ip6_udp_tunnel' found=(nil)                                       
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='ip6_udp_tunnel' found=(nil)                                            
modprobe: DEBUG: ../libkmod/libkmod.c:410 kmod_pool_add_module() add 0x559bfd41c180 key='ip6_udp_tunnel'                                       
modprobe: DEBUG: ../libkmod/libkmod-module.c:196 kmod_module_parse_depline() add dep: /lib/modules/4.15.0-1057/kernel/net/ipv6/ip6_udp_tunnel.ko  
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='udp_tunnel' found=(nil)                                             
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='udp_tunnel' found=(nil)
modprobe: DEBUG: ../libkmod/libkmod.c:410 kmod_pool_add_module() add 0x559bfd41c2b0 key='udp_tunnel'                                                  
modprobe: DEBUG: ../libkmod/libkmod-module.c:196 kmod_module_parse_depline() add dep: /lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko
modprobe: DEBUG: ../libkmod/libkmod-module.c:202 kmod_module_parse_depline() 2 dependencies for wireguard                                                
modprobe: DEBUG: ../libkmod/libkmod-module.c:583 kmod_module_new_from_lookup() lookup wireguard=0, list=0x559bfd41c160                         
modprobe: DEBUG: ../libkmod/libkmod.c:501 lookup_builtin_file() use mmaped index 'modules.builtin' modname=wireguard               
modprobe: DEBUG: ../libkmod/libkmod-module.c:1750 kmod_module_get_initstate() could not open '/sys/module/wireguard/initstate': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1760 kmod_module_get_initstate() could not open '/sys/module/wireguard': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_pcsp mod->name=udp_tunnel mod->alias=(null)        
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_usb_audio mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=cx88_alsa mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_atiixp_modem mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_intel8x0m mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_via82xx_modem mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=md_mod mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=bonding mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=dummy mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=nvme_core mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod.c:501 lookup_builtin_file() use mmaped index 'modules.builtin' modname=udp_tunnel
modprobe: DEBUG: ../libkmod/libkmod-module.c:1750 kmod_module_get_initstate() could not open '/sys/module/udp_tunnel/initstate': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1760 kmod_module_get_initstate() could not open '/sys/module/udp_tunnel': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko'
insmod /lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko'
modprobe: INFO: ../libkmod/libkmod-module.c:886 kmod_module_insert_module() Failed to insert module '/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko': Operation not permitted
modprobe: ERROR: could not insert 'wireguard': Operation not permitted
modprobe: DEBUG: ../libkmod/libkmod-module.c:468 kmod_module_unref() kmod_module 0x559bfd41c050 released
modprobe: DEBUG: ../libkmod/libkmod.c:418 kmod_pool_del_module() del 0x559bfd41c050 key='wireguard'
modprobe: DEBUG: ../libkmod/libkmod-module.c:468 kmod_module_unref() kmod_module 0x559bfd41c2b0 released
modprobe: DEBUG: ../libkmod/libkmod.c:418 kmod_pool_del_module() del 0x559bfd41c2b0 key='udp_tunnel'
modprobe: DEBUG: ../libkmod/libkmod-module.c:468 kmod_module_unref() kmod_module 0x559bfd41c180 released
modprobe: DEBUG: ../libkmod/libkmod.c:418 kmod_pool_del_module() del 0x559bfd41c180 key='ip6_udp_tunnel'
modprobe: INFO: ../libkmod/libkmod.c:331 kmod_unref() context 0x559bfd41b490 released
```

Retry running command with `sudo`:

```sh
ubuntu@starlite:~$ sudo modprobe -vvv
modprobe: INFO: ../libkmod/libkmod.c:364 kmod_set_log_fn() custom logging function 0x55a9e2d4c750 registered                                                       
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.dep.bin                                                  
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.alias.bin
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.symbols.bin                                              
modprobe: DEBUG: ../libkmod/libkmod-index.c:755 index_mm_open() file=/lib/modules/4.15.0-1057/modules.builtin.bin             
modprobe: DEBUG: ../libkmod/libkmod-module.c:556 kmod_module_new_from_lookup() input alias=wireguard, normalized=wireguard             
modprobe: DEBUG: ../libkmod/libkmod-module.c:562 kmod_module_new_from_lookup() lookup modules.dep wireguard                        
modprobe: DEBUG: ../libkmod/libkmod.c:574 kmod_search_moddep() use mmaped index 'modules.dep' modname=wireguard                           
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='wireguard' found=(nil)                               
modprobe: DEBUG: ../libkmod/libkmod.c:410 kmod_pool_add_module() add 0x55a9e48c1010 key='wireguard'                                        
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='ip6_udp_tunnel' found=(nil)                   
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='ip6_udp_tunnel' found=(nil)                    
modprobe: DEBUG: ../libkmod/libkmod.c:410 kmod_pool_add_module() add 0x55a9e48c1140 key='ip6_udp_tunnel'                       
modprobe: DEBUG: ../libkmod/libkmod-module.c:196 kmod_module_parse_depline() add dep: /lib/modules/4.15.0-1057/kernel/net/ipv6/ip6_udp_tunnel.ko
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='udp_tunnel' found=(nil)                                                
modprobe: DEBUG: ../libkmod/libkmod.c:402 kmod_pool_get_module() get module name='udp_tunnel' found=(nil)                                      
modprobe: DEBUG: ../libkmod/libkmod.c:410 kmod_pool_add_module() add 0x55a9e48c1270 key='udp_tunnel'                                                  
modprobe: DEBUG: ../libkmod/libkmod-module.c:196 kmod_module_parse_depline() add dep: /lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko      
modprobe: DEBUG: ../libkmod/libkmod-module.c:202 kmod_module_parse_depline() 2 dependencies for wireguard
modprobe: DEBUG: ../libkmod/libkmod-module.c:583 kmod_module_new_from_lookup() lookup wireguard=0, list=0x55a9e48c1120                                
modprobe: DEBUG: ../libkmod/libkmod.c:501 lookup_builtin_file() use mmaped index 'modules.builtin' modname=wireguard
modprobe: DEBUG: ../libkmod/libkmod-module.c:1750 kmod_module_get_initstate() could not open '/sys/module/wireguard/initstate': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1760 kmod_module_get_initstate() could not open '/sys/module/wireguard': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_pcsp mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_usb_audio mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=cx88_alsa mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_atiixp_modem mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_intel8x0m mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_via82xx_modem mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=md_mod mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=bonding mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=dummy mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=nvme_core mod->name=udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod.c:501 lookup_builtin_file() use mmaped index 'modules.builtin' modname=udp_tunnel
modprobe: DEBUG: ../libkmod/libkmod-module.c:1750 kmod_module_get_initstate() could not open '/sys/module/udp_tunnel/initstate': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1760 kmod_module_get_initstate() could not open '/sys/module/udp_tunnel': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko'
insmod /lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv4/udp_tunnel.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_pcsp mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_usb_audio mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=cx88_alsa mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_atiixp_modem mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_intel8x0m mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_via82xx_modem mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=md_mod mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=bonding mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=dummy mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=nvme_core mod->name=ip6_udp_tunnel mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod.c:501 lookup_builtin_file() use mmaped index 'modules.builtin' modname=ip6_udp_tunnel
modprobe: DEBUG: ../libkmod/libkmod-module.c:1750 kmod_module_get_initstate() could not open '/sys/module/ip6_udp_tunnel/initstate': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1760 kmod_module_get_initstate() could not open '/sys/module/ip6_udp_tunnel': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='ip6_udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv6/ip6_udp_tunnel.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='ip6_udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv6/ip6_udp_tunnel.ko'
insmod /lib/modules/4.15.0-1057/kernel/net/ipv6/ip6_udp_tunnel.ko
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='ip6_udp_tunnel' path='/lib/modules/4.15.0-1057/kernel/net/ipv6/ip6_udp_tunnel.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_pcsp mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_usb_audio mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=cx88_alsa mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_atiixp_modem mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_intel8x0m mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=snd_via82xx_modem mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=md_mod mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=bonding mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=dummy mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1393 kmod_module_get_options() modname=nvme_core mod->name=wireguard mod->alias=(null)
modprobe: DEBUG: ../libkmod/libkmod-module.c:1750 kmod_module_get_initstate() could not open '/sys/module/wireguard/initstate': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:1760 kmod_module_get_initstate() could not open '/sys/module/wireguard': No such file or directory
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='wireguard' path='/lib/modules/4.15.0-1057/updates/dkms/wireguard.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='wireguard' path='/lib/modules/4.15.0-1057/updates/dkms/wireguard.ko'
insmod /lib/modules/4.15.0-1057/updates/dkms/wireguard.ko
modprobe: DEBUG: ../libkmod/libkmod-module.c:744 kmod_module_get_path() name='wireguard' path='/lib/modules/4.15.0-1057/updates/dkms/wireguard.ko'
modprobe: DEBUG: ../libkmod/libkmod-module.c:468 kmod_module_unref() kmod_module 0x55a9e48c1010 released
modprobe: DEBUG: ../libkmod/libkmod.c:418 kmod_pool_del_module() del 0x55a9e48c1010 key='wireguard'
modprobe: DEBUG: ../libkmod/libkmod-module.c:468 kmod_module_unref() kmod_module 0x55a9e48c1270 released
modprobe: DEBUG: ../libkmod/libkmod.c:418 kmod_pool_del_module() del 0x55a9e48c1270 key='udp_tunnel'
modprobe: DEBUG: ../libkmod/libkmod-module.c:468 kmod_module_unref() kmod_module 0x55a9e48c1140 released
modprobe: DEBUG: ../libkmod/libkmod.c:418 kmod_pool_del_module() del 0x55a9e48c1140 key='ip6_udp_tunnel'
modprobe: INFO: ../libkmod/libkmod.c:331 kmod_unref() context 0x55a9e48c0450 released
```

Modprobe run looks fine. FINALLY!!!??? Let's verify.

```sh
$ lsmod | grep wireguard
wireguard             221184  0
ip6_udp_tunnel         16384  1 wireguard
udp_tunnel             16384  1 wireguard
```

Now you’re ready to get to the next step.

## Using Ubuntu as a Client with WireGuard

WireGuard server was provisoned by Trails of Bits' [Algo VPN](https://github.com/trailofbits/algo/blob/master/docs/client-linux-wireguard.md).

1. Locate the config file and configure WireGuard:

```sh
$ cd ~/dev/work/repo/algo

$ sudo install -o root -g root -m 600 configs/{algo_server_pub_ip}/wireguard/zen.conf /etc/wireguard/wg0.conf
```

2. Start WireGuard client using systemd:

```sh
$ sudo systemctl start wg-quick@wg0
```

3. Check WireGuard client status:

```sh
$ sudo systemctl status wg-quick@wg0
```

4. Verify WireGuard client connection to server:

```sh
$ sudo wg

interface: wg0
  public key: **********sIV0RZ*******=
  private key: (hidden)
  listening port: 52180

peer: ***********seEYg3*********=
  preshared key: (hidden)
  endpoint: {server public ip}:port
  allowed ips: 10.x.x.2/32
  latest handshake: 21 seconds ago
  transfer: 8.88 KiB received, 14.36 KiB sent
```

4. Check for IP leak.

The WireGuard client IP should be the same as the WireGuard server IP, not the public IP assigned by your ISP. Otherwise, your connection is leaking your ISP IP and to some extent, may even be leaking DNS requests.

```sh
$ curl http://zx2c4.com/ip
```

5. Configure WireGuard to auto-restart connection across OS restart:

```sh
$ sudo systemctl enable wg-quick@wg0
```

That's all! Happy hacking...

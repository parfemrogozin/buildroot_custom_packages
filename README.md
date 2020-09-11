# Buildroot custom packages

Buildroot is a set of Makefiles and patches that simplifies and automates the process of building a complete and bootable Linux environment for an embedded system (
https://en.wikipedia.org/wiki/Buildroot)

Couple of handy apps are missing in buildroot. I offer my atempts to add them to public.

## Installation

1. Copy package directory to package/
2. In package/Config.in add line source "package/<package_name>/Config.in" in appropriate section. For example, procmail will be there:

    menu "Mail"
      ...
      source "package/procmail/Config.in"
      ...
    endmenu
    

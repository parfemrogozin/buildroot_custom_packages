################################################################################
#
# procmail
#
################################################################################

PROCMAIL_VERSION = 3.22
PROCMAIL_SOURCE = procmail-$(PROCMAIL_VERSION).tar.gz
PROCMAIL_SITE = http://ftp.osuosl.org/pub/blfs/conglomeration/procmail
PROCMAIL_LICENSE =  GPL or Artistic License
PROCMAIL_LICENSE_FILES = COPYING

PROCMAIL_CFLAGS += -Os -lm -DPROCMAIL

define LIBFOO_PRE_PATCH_HOOKS
	sed -i 's/getline/get_line/' $(@D)/src/*.[ch]
endef

define PROCMAIL_BUILD_CMDS
	$(MAKE) -C $(@D)/src -f $(@D)/Makefile.openwrt $(TARGET_CONFIGURE_OPTS) CFLAGS="$(PROCMAIL_CFLAGS)"
endef

define PROCMAIL_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/src/procmail $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/src/formail $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

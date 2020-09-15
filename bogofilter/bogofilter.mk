################################################################################
#
# bogofilter
#
################################################################################

BOGOFILTER_VERSION = 1.2.5
BOGOFILTER_SOURCE = bogofilter-$(BOGOFILTER_VERSION).tar.xz
BOGOFILTER_SITE =  https://downloads.sourceforge.net/bogofilter
BOGOFILTER_DEPENDENCIES = berkeleydb

BOGOFILTER_AUTORECONF = YES
BOGOFILTER_CONF_OPTS = --oldincludedir=$(STAGING_DIR)/usr/include/ --includedir=$(STAGING_DIR)/usr/include/  --with-included-gsl
$(eval $(autotools-package))

################################################################################
#
# raid_util
#
################################################################################

#RAID_UTIL_VERSION ?= 
#RAID_UTIL_SITE ?=

RAID_UTIL_VERSION = v007.1017.0000.0000
RAID_UTIL_SITE = /home/joy/tool/raid_tool/storcli64_007.1017.0000.0000
RAID_UTIL_SITE_METHOD = local

RAID_UTIL_LICENSE = Apache-2.0
RAID_UTIL_LICENSE_FILES = COPYING

define RAID_UTIL_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/storcli64 $(TARGET_DIR)/sbin/storcli
endef

$(eval $(generic-package))

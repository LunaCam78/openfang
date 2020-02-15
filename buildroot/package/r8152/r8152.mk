KERNEL_MODULE_R8152_VERSION = 1.0
KERNEL_MODULE_R8152_SITE = ./package/r8152/src
KERNEL_MODULE_R8152_SITE_METHOD = local

define KERNEL_MODULE_R8152_BUILD_CMDS
	$(MAKE) -C '$(@D)' LINUX_DIR='$(LINUX_DIR)' PWD='$(@D)' CC='$(TARGET_CC)' LD='$(TARGET_LD)'
endef

define KERNEL_MODULE_R8152_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 '$(@D)/r8152.ko' '$(TARGET_DIR)/r8152.ko'
endef

$(eval $(kernel-module))
$(eval $(generic-package))
# SPDX-License-Identifier: AGPL-3.0-or-later

all:
	echo -n

include build.mk

install:
	$(call install_conf, conf/amavisd.conf.in)
	$(call install_conf, conf/dspam.conf.in)
	$(call install_conf, conf/amavisd/amavisd-custom.conf)

	$(call mk_install_dir, data/amavisd/mysql)
	cp conf/amavisd/mysql/antispamdb.sql $(INSTALL_DIR)/data/amavisd/mysql/antispamdb.sql

clean:
	echo -n

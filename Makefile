#include .env
#export $(shell sed 's/=.*//' .env)

terraform-init:
	cd terraform && terraform init && cd -

terraform-plan:
	cd terraform && \
	terraform plan && \
	cd -

terraform-apply:
	cd terraform && \
	terraform apply && \
	cd -

packer-build:
	cd packer && \
	packer build template.json && \
	cd -

win2019-core-gui:
	packer build -only=vmware-iso win2019-gui.json

win2019-core:
	packer build -only=vmware-iso win2019-core.json

win2019-core-gui-efi:
	packer build -only=vmware-iso win2019-gui_uefi.json

win2019-core-efi:
	packer build -only=vmware-iso win2019-core_uefi.json

win2019-core-gui-vb:
	packer build -only=virtualbox-iso win2019-gui.json

win2019-core-vb:
	packer build -only=virtualbox-iso win2019-core.json

win2019-core-gui-efi-vb:
	packer build -only=virtualbox-iso win2019-gui_uefi.json

win2019-core-efi-vb:
	packer build -only=virtualbox-iso win2019-core_uefi.json
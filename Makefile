CLUSTER?=test5
SHORE_URL?=https://test.us.api.shoreline-${CLUSTER}.io
SHORE_TOKEN?=`grep -B1 ${CLUSTER} ~/.ops_auth.yaml | grep "Token:" | tail -n 1 | cut -d':' -f2 | tr -d ' '`

init:
	SHORELINE_URL=$(SHORE_URL) SHORELINE_TOKEN=$(SHORE_TOKEN) terraform init

apply:
	SHORELINE_URL=$(SHORE_URL) SHORELINE_TOKEN=$(SHORE_TOKEN) terraform apply --auto-approve

apply-na:
	SHORELINE_URL=$(SHORE_URL) SHORELINE_TOKEN=$(SHORE_TOKEN) terraform apply

destroy:
	SHORELINE_URL=$(SHORE_URL) SHORELINE_TOKEN=$(SHORE_TOKEN) terraform destroy --auto-approve


distclean:
	rm -rf terraform.tfstate terraform.tfstate.backup
	rm -rf .terraform .terraform.lock.hcl

.PHONY: distclean

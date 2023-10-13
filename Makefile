.PHONY: lint
lint:
	@hack/lint.sh

.PHONY: doc
doc:
	@hack/generate-docs.sh

.PHONY: fmt
fmt:
	terraform fmt -diff=true -recursive

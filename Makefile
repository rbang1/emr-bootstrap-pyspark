BUILDDIR:=$(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
VENVDIR:=$(BUILDDIR)/venv

venv: environment.yml
	test -L $(VENVDIR)/bin/python || conda env create -f $(BUILDDIR)/environment.yml -p $(VENVDIR)

run: venv config.yml
	./venv/bin/python emr_loader.py

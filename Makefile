.PHONY: compile rel ct doc

all: compile

REBAR ?= $(shell which ./rebar 2>/dev/null || which rebar)

compile:
	$(REBAR) compile

deps:
	$(REBAR) get-deps

clean:
	$(REBAR) clean

doc:
	$(REBAR) doc

xref: deps compile
	$(REBAR) xref

eunit: deps compile
	$(REBAR) eunit -v

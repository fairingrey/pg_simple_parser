MODULE_big = simple_parser
OBJS = simple_parser.o
PGFILEDESC = "simple_parser - simple parser for full-text search"
EXTENSION = simple_parser
DATA = simple_parser--1.0.sql simple_parser--unpackaged--1.0.sql

REGRESS = simple_parser

PG_CONFIG = pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION simple_parser" to load this file. \quit

CREATE FUNCTION simpleprs_start(internal, int4)
RETURNS internal
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION simpleprs_getlexeme(internal, internal, internal)
RETURNS internal
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION simpleprs_end(internal)
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION simpleprs_lextype(internal)
RETURNS internal
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE TEXT SEARCH PARSER simpleparser (
    START    = simpleprs_start,
    GETTOKEN = simpleprs_getlexeme,
    END      = simpleprs_end,
    HEADLINE = pg_catalog.prsd_headline,
    LEXTYPES = simpleprs_lextype
);

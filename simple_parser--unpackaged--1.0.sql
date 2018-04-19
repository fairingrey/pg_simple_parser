-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION simple_parser FROM unpackaged" to load this file. \quit

ALTER EXTENSION simple_parser ADD function simpleprs_start(internal,integer);
ALTER EXTENSION simple_parser ADD function simpleprs_getlexeme(internal,internal,internal);
ALTER EXTENSION simple_parser ADD function simpleprs_end(internal);
ALTER EXTENSION simple_parser ADD function simpleprs_lextype(internal);
ALTER EXTENSION simple_parser ADD text search parser simpleparser;

# pg_simple_parser

Simple parser for full text search in PostgreSQL. Breaks up text into tokens with whitespace, and that's it.

For most users, the default PostgreSQL text parser fits their need. But some users like myself want this particular sort of parser since it's the perfect fit for their application. In my particular use case, the default postgres text parser breaks up tokens on the underscore symbol (`_`), which is what I don't want.

This is blatantly mooched from the postgres test modules [here](https://github.com/postgres/postgres/tree/master/src/test/modules/test_parser).

Installing it is pretty simple on a Unix-like machine running PostgreSQL. Much like installing any other extension using PGXS, you clone this repository, navigate to it, and then run `make install`.

# License

PostgreSQL is released under the [PostgreSQL License](https://www.postgresql.org/about/licence/), a liberal Open Source license similar to the BSD and MIT licenses. You can read the terms there, but since this is practically a direct copy of their source code, the same terms should apply here.

Unless I make extensive changes to it, to the extent where I can call most of the code that I'm using here my own, then the license shouldn't change.

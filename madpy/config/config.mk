madlib_schema = SCHEMA_PLACEHOLDER

%.sql: %.sql.in
	sed 's,MODULE_PATHNAME,$$libdir/$*,g' $< | sed 's,MADLIB_SCHEMA,$(madlib_schema),g'  >$@
	
clean_data_built: 
	rm $(DATA_built)


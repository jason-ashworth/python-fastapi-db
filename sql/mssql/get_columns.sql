select
    row_number() over(order by (select 1)) as id
,	COLUMN_NAME as column_name
,	TABLE_SCHEMA as table_schema
,   TABLE_CATALOG as table_catalog
,   ORDINAL_POSITION as ordinal_position
from
	INFORMATION_SCHEMA.COLUMNS
where
	1 = 1
	and	TABLE_SCHEMA = @schema_name
	and	TABLE_NAME = @table_name
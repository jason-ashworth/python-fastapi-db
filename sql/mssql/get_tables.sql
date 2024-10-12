select
    row_number() over(order by (select 1)) as id
,	TABLE_TYPE as table_type
,	TABLE_SCHEMA as table_schema
,	TABLE_NAME as table_name
,	TABLE_CATALOG as table_catalog
from
	INFORMATION_SCHEMA.TABLES
order by
	TABLE_TYPE
,	TABLE_SCHEMA
,	TABLE_NAME
,	TABLE_CATALOG
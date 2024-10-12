select
	row_number() over(order by (select 1)) as id
,	database_id
,	[name] as [database_name]
from
	[master].[sys].[databases]
where
	1 = 1
	and	[name] not in (
		'master'
	,	'tempdb'
	,	'model'
	,	'msdb'
	,	'ReportServer'
	,	'ReportServerTempDB'
	)
order by
	[name]
SELECT
migs.avg_total_user_cost,
migs.avg_user_impact,
mid.statement AS table_name,
mid.equality_columns,
mid.inequality_columns,
mid.included_columns
FROM sys.dm_db_missing_index_group_stats migs
JOIN sys.dm_db_missing_index_groups mig
ON migs.group_handle = mig.index_group_handle
JOIN sys.dm_db_missing_index_details mid
ON mig.index_handle = mid.index_handle
ORDER BY migs.avg_user_impact DESC;

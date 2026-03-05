SELECT
session_id,
status,
start_time,
total_elapsed_time / 1000 AS elapsed_seconds,
command
FROM sys.dm_exec_requests
WHERE status = 'running'
ORDER BY elapsed_seconds DESC;

alter table migration_log
alter column success TYPE boolean USING CASE WHEN success=0 THEN FALSE ELSE TRUE END;

alter table temp_user
alter column email_sent TYPE boolean USING CASE WHEN email_sent=0 THEN FALSE ELSE TRUE END;

alter table public.user
alter column is_admin TYPE boolean USING CASE WHEN is_admin=0 THEN FALSE ELSE TRUE END,
alter column email_verified TYPE boolean USING CASE WHEN email_verified=0 THEN FALSE ELSE TRUE END;

ALTER TABLE dashboard ALTER COLUMN is_folder DROP DEFAULT;
ALTER TABLE dashboard ALTER COLUMN has_acl DROP DEFAULT;
alter table dashboard
alter column is_folder TYPE boolean USING CASE WHEN is_folder=0 THEN FALSE ELSE TRUE END,
alter column has_acl TYPE boolean USING CASE WHEN has_acl=0 THEN FALSE ELSE TRUE END;
ALTER TABLE dashboard ALTER COLUMN is_folder SET DEFAULT FALSE;
ALTER TABLE dashboard ALTER COLUMN has_acl SET DEFAULT FALSE;

ALTER TABLE data_source ALTER COLUMN with_credentials DROP DEFAULT;
alter table data_source
alter column basic_auth TYPE boolean USING CASE WHEN basic_auth=0 THEN FALSE ELSE TRUE END,
alter column is_default TYPE boolean USING CASE WHEN is_default=0 THEN FALSE ELSE TRUE END,
alter column with_credentials TYPE boolean USING CASE WHEN with_credentials=0 THEN FALSE ELSE TRUE END,
alter column read_only TYPE boolean USING CASE WHEN read_only=0 THEN FALSE ELSE TRUE END;
ALTER TABLE data_source ALTER COLUMN with_credentials SET DEFAULT FALSE;

alter table dashboard_snapshot
alter column external TYPE boolean USING CASE WHEN external=0 THEN FALSE ELSE TRUE END;

alter table plugin_setting
alter column enabled TYPE boolean USING CASE WHEN enabled=0 THEN FALSE ELSE TRUE END,
alter column pinned TYPE boolean USING CASE WHEN pinned=0 THEN FALSE ELSE TRUE END;

alter table alert
alter column silenced TYPE boolean USING CASE WHEN silenced=0 THEN FALSE ELSE TRUE END;

ALTER TABLE alert_notification ALTER COLUMN is_default DROP DEFAULT;
alter table alert_notification
alter column is_default TYPE boolean USING CASE WHEN is_default=0 THEN FALSE ELSE TRUE END;
ALTER TABLE alert_notification ALTER COLUMN is_default SET DEFAULT FALSE;
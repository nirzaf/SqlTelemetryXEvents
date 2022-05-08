CREATE EVENT SESSION [telemetry_xevents] ON SERVER 
ADD EVENT [sqlserver].[error_reported]
    (
    WHERE ([severity]>=(16) OR ([error_number]=(18456) OR [error_number]=(17803) OR [error_number]=(701) OR [error_number]=(802) OR [error_number]=(8645) OR [error_number]=(8651) OR [error_number]=(8657) OR [error_number]=(8902) OR [error_number]=(41354) OR [error_number]=(41355) OR [error_number]=(41367) OR [error_number]=(41384) OR [error_number]=(41336) OR [error_number]=(41309) OR [error_number]=(41312) OR [error_number]=(41313) OR [error_number]=(33065) OR [error_number]=(33066)))
    ), 
ADD EVENT [sqlserver].[missing_column_statistics], 
ADD EVENT [sqlserver].[missing_join_predicate], 
ADD EVENT [sqlserver].[server_memory_change], 
ADD EVENT [sqlserver].[stretch_database_disable_completed], 
ADD EVENT [sqlserver].[stretch_database_enable_completed], 
ADD EVENT [sqlserver].[stretch_database_reauthorize_completed], 
ADD EVENT [sqlserver].[stretch_index_reconciliation_codegen_completed], 
ADD EVENT [sqlserver].[stretch_remote_column_execution_completed], 
ADD EVENT [sqlserver].[stretch_remote_column_reconciliation_codegen_completed], 
ADD EVENT [sqlserver].[stretch_remote_index_execution_completed], 
ADD EVENT [sqlserver].[stretch_table_codegen_completed], 
ADD EVENT [sqlserver].[stretch_table_alter_ddl], 
ADD EVENT [sqlserver].[stretch_table_create_ddl], 
ADD EVENT [sqlserver].[stretch_table_predicate_not_specified], 
ADD EVENT [sqlserver].[stretch_table_predicate_specified], 
ADD EVENT [sqlserver].[stretch_table_remote_creation_completed], 
ADD EVENT [sqlserver].[stretch_table_row_migration_results_event], 
ADD EVENT [sqlserver].[stretch_table_row_unmigration_results_event], 
ADD EVENT [sqlserver].[stretch_table_data_reconciliation_results_event], 
ADD EVENT [sqlserver].[stretch_table_unprovision_completed], 
ADD EVENT [sqlserver].[stretch_table_validation_error], 
ADD EVENT [sqlserver].[stretch_table_hinted_admin_update_event], 
ADD EVENT [sqlserver].[stretch_table_hinted_admin_delete_event], 
ADD EVENT [sqlserver].[stretch_table_query_error], 
ADD EVENT [sqlserver].[stretch_remote_error], 
ADD EVENT [sqlserver].[stretch_query_telemetry], 
ADD EVENT [sqlserver].[temporal_ddl_system_versioning], 
ADD EVENT [sqlserver].[temporal_dml_transaction_fail], 
ADD EVENT [sqlserver].[temporal_ddl_period_add], 
ADD EVENT [sqlserver].[temporal_ddl_period_drop], 
ADD EVENT [sqlserver].[temporal_ddl_schema_check_fail], 
ADD EVENT [sqlserver].[data_masking_ddl_column_definition], 
ADD EVENT [sqlserver].[data_masking_traffic], 
ADD EVENT [sqlserver].[data_masking_traffic_masked_only], 
ADD EVENT [sqlserver].[data_classification_ddl_column_definition], 
ADD EVENT [sqlserver].[data_classification_traffic], 
ADD EVENT [sqlserver].[data_classification_auditing_traffic], 
ADD EVENT [sqlserver].[feature_restriction_ddl], 
ADD EVENT [sqlserver].[feature_restriction_usage], 
ADD EVENT [sqlserver].[always_encrypted_query_count], 
ADD EVENT [sqlserver].[rls_query_count], 
ADD EVENT [sqlserver].[auto_stats], 
ADD EVENT [sqlserver].[database_cmptlevel_change], 
ADD EVENT [sqlserver].[database_created], 
ADD EVENT [sqlserver].[database_dropped], 
ADD EVENT [sqlserver].[reason_many_foreign_keys_operator_not_used], 
ADD EVENT [sqlserver].[interleaved_exec_status], 
ADD EVENT [sqlserver].[table_variable_deferred_compilation], 
ADD EVENT [sqlserver].[graph_match_query_compiled], 
ADD EVENT [sqlserver].[approximate_count_distinct_query_compiled], 
ADD EVENT [sqlserver].[login_protocol_count], 
ADD EVENT [sqlserver].[column_store_index_build_low_memory], 
ADD EVENT [sqlserver].[column_store_index_build_throttle], 
ADD EVENT [sqlserver].[columnstore_delete_buffer_flush_failed], 
ADD EVENT [sqlserver].[columnstore_delta_rowgroup_closed], 
ADD EVENT [sqlserver].[columnstore_index_reorg_failed], 
ADD EVENT [sqlserver].[columnstore_log_exception], 
ADD EVENT [sqlserver].[columnstore_rowgroup_merge_failed], 
ADD EVENT [sqlserver].[columnstore_tuple_mover_delete_buffer_truncate_timed_out], 
ADD EVENT [sqlserver].[columnstore_tuple_mover_end_compress], 
ADD EVENT [sqlserver].[query_memory_grant_blocking], 
ADD EVENT [sqlserver].[natively_compiled_module_inefficiency_detected], 
ADD EVENT [sqlserver].[natively_compiled_proc_slow_parameter_passing], 
ADD EVENT [sqlserver].[xtp_alter_table], 
ADD EVENT [sqlserver].[xtp_db_delete_only_mode_updatedhktrimlsn], 
ADD EVENT [sqlserver].[xtp_stgif_container_added], 
ADD EVENT [sqlserver].[xtp_stgif_container_deleted], 
ADD EVENT [XtpCompile].[cl_duration], 
ADD EVENT [XtpEngine].[xtp_physical_db_restarted], 
ADD EVENT [XtpEngine].[xtp_db_delete_only_mode_enter], 
ADD EVENT [XtpEngine].[xtp_db_delete_only_mode_update], 
ADD EVENT [XtpEngine].[xtp_db_delete_only_mode_exit], 
ADD EVENT [XtpEngine].[parallel_alter_stats], 
ADD EVENT [XtpEngine].[serial_alter_stats], 
ADD EVENT [sqlserver].[json_function_compiled]
    (
    ACTION ([sqlserver].[database_id])
    ), 
ADD EVENT [sqlserver].[string_escape_compiled]
    (
    ACTION ([sqlserver].[database_id])
    ), 
ADD EVENT [sqlserver].[window_function_used]
    (
    ACTION ([sqlserver].[database_id])
    ), 
ADD EVENT [sqlserver].[sequence_function_used]
    (
    ACTION ([sqlserver].[database_id])
    ), 
ADD EVENT [qds].[query_store_db_diagnostics], 
ADD EVENT [sqlserver].[index_defragmentation], 
ADD EVENT [sqlserver].[create_index_event], 
ADD EVENT [sqlserver].[index_build_error_event], 
ADD EVENT [sqlserver].[alter_column_event], 
ADD EVENT [sqlserver].[cardinality_estimation_version_usage], 
ADD EVENT [sqlserver].[query_optimizer_compatibility_level_hint_usage], 
ADD EVENT [sqlserver].[query_tsql_scalar_udf_inlined], 
ADD EVENT [sqlserver].[tsql_scalar_udf_not_inlineable], 
ADD EVENT [sqlserver].[recovery_checkpoint_stats], 
ADD EVENT [sqlserver].[multistep_execution]
    (
    ACTION ([sqlserver].[database_id])
    ), 
ADD EVENT [sqlserver].[fulltext_filter_usage], 
ADD EVENT [sqlserver].[tx_commit_abort_stats], 
ADD EVENT [sqlserver].[server_start_stop] 
ADD TARGET [package0].[ring_buffer]
    (
    SET occurrence_number = 100
    )
WITH  (
        MAX_MEMORY = 4 MB,
        EVENT_RETENTION_MODE = ALLOW_SINGLE_EVENT_LOSS,
        MAX_DISPATCH_LATENCY = 120 SECONDS,
        MEMORY_PARTITION_MODE = NONE,
        TRACK_CAUSALITY = OFF,
        STARTUP_STATE = ON
      );


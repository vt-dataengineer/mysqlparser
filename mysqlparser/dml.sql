/*
Table: job_instance_annotator
*/
# INSERT
BEGIN
  INSERT INTO aiml.job_instance_annotator('job_id', 'job_instance_id', 'run_dt')
     VALUES('ai-annototor-ddmmyyy-hhmmss','ai-annototor-ddmmyyy-hhmmss_run_001','date');
END;

# UPDATE
BEGIN	
  UPDATE aiml.job_instance_annotator
  SET 'run_dt'='date' 
  WHERE 'job_instance_id'='ai-annototor-ddmmyyy-hhmmss_run_001'; 
END;

# DELETE
BEGIN
  DELETE
  FROM
  aiml.job_instance_annotator
  WHERE 'job_instance_id'='ai-annototor-ddmmyyy-hhmmss_run_001'; 
END;

# SELECT
BEGIN
  SELECT 'job_instance_id', 'run_dt' INTO 'Job Instance Id', 'Run date' 
   FROM aiml.job_instance_annotator
   WHERE 'job_id'='ai-annotator-ddmmyyy-hhmmss';
END;

/*
Table: job_instance_mlbuild
*/
# INSERT
BEGIN
  INSERT INTO aiml.job_instance_mlbuild('job_id', 'job_instance_id', 'run_dt')
     VALUES('ai-train-ddmmyyy-hhmmss','ai-train-ddmmyyy-hhmmss_run_001','date');
END;

# UPDATE
BEGIN	
  UPDATE aiml.job_instance_mlbuild
  SET 'run_dt'='date' 
  WHERE 'job_instance_id'='ai-train-ddmmyyy-hhmmss_run_001'; 
END;

# DELETE
BEGIN
  DELETE
  FROM
  aiml.job_instance_mlbuild
  WHERE 'job_instance_id'='ai-train-ddmmyyy-hhmmss_run_001'; 
END;

# SELECT
BEGIN
  SELECT 'job_instance_id', 'run_dt' INTO 'Job Instance Id', 'Run date' 
   FROM aiml.job_instance_mlbuild
   WHERE 'job_id'='ai-train-ddmmyyy-hhmmss';
END;

/*
Table: job_registry_annotator
*/
# INSERT
BEGIN
  INSERT INTO aiml.job_registry_annotator('job_id', 'input_data_src', 'output_data_dst', 'media_type', 'annotation_type', 'created_dt', 'job_name' )
     VALUES('ai-annotator-ddmmyyy-hhmmss','https://myaccount.blob.core.windows.net/mycontainer/my-blob-media-in','https://myaccount.blob.core.windows.net/mycontainer/my-blob-annotation-out','image','objectdetection','date','image-annotator-01');
END;

# UPDATE
BEGIN	
  UPDATE aiml.job_registry_annotator
  SET 'annotation_type'='objectdetection' 
  WHERE 'job_id'='ai-annotator-ddmmyyy-hhmmss'; 
END;

# DELETE
BEGIN
  DELETE
  FROM
  aiml.job_registry_annotator
  WHERE 'job_id'='ai-annotator-ddmmyyy-hhmmss'; 
END;

# SELECT
BEGIN
  SELECT 'job_id', 'media_type' INTO 'Job Name', 'Type' 
   FROM aiml.job_registry_annotator
   WHERE 'job_id'='ai-annotator-ddmmyyy-hhmmss';
END;

/*
Table: job_registry_mlbuild
*/
# INSERT
BEGIN
  INSERT INTO aiml.job_registry_mlbuild('job_id', 'subscription_id', 'resource_group_id', 'ml_workspace_name', 'ml_environment_name', 'ml_compute_name', 'ml_experiment_name', 'ml_input_dataset_name', 'ml_notebook_url', 'created_dt', 'job_name', 'azure_user_id', 'tenant_id', 'ml_step')
     VALUES('ai-train-ddmmyyy-hhmmss', 'subscription-guid', 'res-group-01', 'az-ml-workspace-01', 'az-ml-env-01', 'az-ml-comp-01', 'az-ml-exp-01', 'az-ml-dataset-01', 'url', 'date', 'job-01', 'az-user-01', 'tenant-guid', 'ml-step-train');
END;

# UPDATE
BEGIN	
  UPDATE aiml.job_registry_mlbuild
  SET 'ml_compute_name'='az-ml-comp-02' 
  WHERE 'job_id'='ai-train-ddmmyyy-hhmmss'; 
END;

# DELETE
BEGIN
  DELETE
  FROM
  aiml.job_registry_mlbuild
  WHERE 'job_id'='ai-train-ddmmyyy-hhmmss'; 
END;

# SELECT
BEGIN
  SELECT 'job_id', 'ml_step' INTO 'Job Name', 'Type' 
   FROM aiml.job_registry_mlbuild
   WHERE 'azure_user_id'='az-user-01';
END;
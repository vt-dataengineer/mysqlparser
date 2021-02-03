/* 
Table: job_instance_annotator
*/

DROP TABLE IF EXISTS 'job_instance_annotator';

CREATE TABLE 'job_instance_annotator' (
  'job_id' varchar(100) NOT NULL,
  'run_dt' varchar(100) NOT NULL,
  'job_instance_id' varchar(100) NOT NULL,
  PRIMARY KEY ('job_instance_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* 
Table: job_instance_mlbuild
*/
DROP TABLE IF EXISTS 'job_instance_mlbuild';

CREATE TABLE 'job_instance_mlbuild' (
  'job_id' varchar(100) NOT NULL,
  'job_instance_id' varchar(100) NOT NULL,
  'run_dt' varchar(100) NOT NULL,
  PRIMARY KEY ('job_instance_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/* 
Table: job_registry_annotator
*/
DROP TABLE IF EXISTS 'job_registry_annotator';

CREATE TABLE 'job_registry_annotator'(
  'job_id' varchar(100) NOT NULL,
  'input_data_src' varchar(100) NOT NULL,
  'output_data_dst' varchar(100) NOT NULL,
  'media_type' varchar(100) NOT NULL,
  'annotation_type' varchar(100) NOT NULL,
  'created_dt' varchar(100) NOT NULL,
  'job_name' varchar(100) NOT NULL,
  PRIMARY KEY ('job_id'),
  UNIQUE KEY 'job_id_UNIQUE' ('job_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


/*
Table: job_registry_mlbuild
*/
DROP TABLE IF EXISTS 'job_registry_mlbuild';

CREATE TABLE 'job_registry_mlbuild' (
  'subscription_id' varchar(100) NOT NULL,
  'job_id' varchar(100) NOT NULL,
  'resource_group_id' varchar(100) NOT NULL,
  'ml_workspace_name' varchar(100) NOT NULL,
  'ml_environment_name' varchar(100) NOT NULL,
  'ml_compute_name' varchar(100) NOT NULL,
  'ml_experiment_name' varchar(100) NOT NULL,
  'ml_input_dataset_name' varchar(100) NOT NULL,
  'ml_notebook_url' varchar(255) NOT NULL,
  'created_dt' varchar(100) NOT NULL,
  'job_name' varchar(100) NOT NULL,
  'azure_user_id' varchar(100) NOT NULL,
  'tenant_id' varchar(100) NOT NULL,
  'ml_step' varchar(100) NOT NULL,
  PRIMARY KEY ('job_id')
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
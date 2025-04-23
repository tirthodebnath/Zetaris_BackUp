INSERT INTO metastore.pipeline_container (id, name, case_sensitive_name, description, fk_organisation_id) VALUES ('1568601', 'nyc_pipelines', 'nyc_pipelines', NULL, '1568338');
INSERT INTO metastore.pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1569931', 'my_temp_pipeline', 'my_temp_pipeline', NULL, '1568601');
INSERT INTO metastore.pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1568673', 'yellow_taxi_aggregates', 'yellow_taxi_aggregates', NULL, '1568601');
INSERT INTO metastore.pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1568653', 'taxi_zones_join', 'taxi_zones_join', NULL, '1568601');
INSERT INTO metastore.pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1568636', 'crash_data_quality', 'crash_data_quality', NULL, '1568601');
INSERT INTO metastore.pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1568624', 'crash_data_aggregation', 'crash_data_aggregation', NULL, '1568601');
INSERT INTO metastore.pipeline_relation (id, name, case_sensitive_name, description, fk_pipeline_container_id) VALUES ('1568602', 'crash_data_filter', 'crash_data_filter', NULL, '1568601');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1568637', NULL, 'SELECT collision_id, crash_date, borough, zip_code 
FROM NY_VEHICLE_COLLISIONS.crash 
WHERE borough IS NOT NULL and zip_code IS NOT NULL');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1568661', NULL, 'select LocationID, zone from NY_TAXI.taxi_zones');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1568674', NULL, 'select month(tpep_pickup_datetime) as month, fare_amount, total_amount, round(total_amount - fare_amount, 2) as extras, trip_distance from NY_TAXI.yellow_taxi');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1568625', NULL, 'SELECT collision_id, crash_date, borough, number_of_persons_injured, number_of_persons_killed
FROM NY_VEHICLE_COLLISIONS.crash 
WHERE borough IS NOT NULL');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1569932', NULL, 'SELECT * from my_test_db.myallice_ticket');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1569947', NULL, 'select * from my_test_db.myallice_ticket_conversion');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1568603', NULL, 'SELECT collision_id, crash_date, borough, zip_code 
FROM NY_VEHICLE_COLLISIONS.crash');
INSERT INTO metastore.pipeline_sqltable (id, source_tables, sql_query) VALUES ('1568654', NULL, 'select tpep_pickup_datetime, tpep_dropoff_datetime, fare_amount, total_amount, PULocationID, DOLocationID
from NY_TAXI.yellow_taxi');
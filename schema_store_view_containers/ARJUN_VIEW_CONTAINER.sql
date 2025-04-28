INSERT INTO metastore.schema_store_view_container (id, name, case_sensitive_name, fk_organisation_id, description) VALUES ('1570178', 'ARJUN_VIEW_CONTAINER', 'arjun_view_container', '1568338', '');
INSERT INTO metastore.schema_store_view (id, name, query, description, materialized_table, generator, fk_organisation_id, fk_schema_store_view_container_id) VALUES ('1570179', 'TEMP_MYALLICE_VIEW', ' (select * from my_test_db.myallice_ticket t1 INNER JOIN 
my_test_db.myallice_ticket_conversion t2 
on t1.ticket_id = t2.ticket_id )', NULL, NULL, 'query_builder', '1568338', '1570178');
INSERT INTO metastore.schema_store_view (id, name, query, description, materialized_table, generator, fk_organisation_id, fk_schema_store_view_container_id) VALUES ('1570819', 'ORDER_SHIPMENT', ' (select * from my_test_db.orders_order t1 INNER JOIN
my_test_db.order_shipment t2 on t1.order_no_final = t2.order_no)', NULL, NULL, 'query_builder', '1568338', '1570178');
INSERT INTO metastore.schema_store_view (id, name, query, description, materialized_table, generator, fk_organisation_id, fk_schema_store_view_container_id) VALUES ('1570860', 'CATEGORY_ORDERS', ' (select product_catalog.category,orders_order.sku,sum(cast(orders_order.total as float)) as gmv from my_test_db.orders_order  INNER JOIN
my_test_db.product_catalog  on product_catalog.sku =  orders_order.sku
GROUP BY product_catalog.category,orders_order.sku)', NULL, NULL, 'query_builder', '1568338', '1570178');
INSERT INTO metastore.schema_store_view (id, name, query, description, materialized_table, generator, fk_organisation_id, fk_schema_store_view_container_id) VALUES ('1571407', 'COLLISON_BY_AGE', ' (select t1.crash_date,t2.person_age, count(t1.collision_id) as total_collison  from NY_VEHICLE_COLLISIONS.crash t1 left join NY_VEHICLE_COLLISIONS.person t2
on t1.collision_id = t2.collision_id
group by t1.crash_date,t2.person_age ORDER BY 1,2)', NULL, NULL, 'query_builder', '1568338', '1570178');
INSERT INTO metastore.schema_store_view (id, name, query, description, materialized_table, generator, fk_organisation_id, fk_schema_store_view_container_id) VALUES ('1571783', 'ZIPCODE_WISE_ACCIDENT', ' ( select t1.zip_code,sum(t1.number_of_persons_injured) as number_of_persons_injured,min(person_age) as min_age,max(person_age) max_age from NY_VEHICLE_COLLISIONS.crash t1   inner join 
NY_VEHICLE_COLLISIONS.person t2 on t1.collision_id = t2.collision_id
group by t1.zip_code)', NULL, NULL, 'query_builder', '1568338', '1570178');
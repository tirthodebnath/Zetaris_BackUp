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
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570820', '1570819', 'order_date', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570821', '1570819', 'uid', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570822', '1570819', 'order_no_final', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570823', '1570819', 'order_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570824', '1570819', 'booked_device', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570825', '1570819', 'order_item_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570826', '1570819', 'order_status', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570827', '1570819', 'line_status', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570828', '1570819', 'product_title', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570829', '1570819', 'tax_inclusive_price', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570830', '1570819', 'order_quantity', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570831', '1570819', 'order_tax', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570832', '1570819', 'coupoun_discount', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570833', '1570819', 'total', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570834', '1570819', 'logical_cp', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570835', '1570819', 'total_cp', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570836', '1570819', 'sku', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570837', '1570819', 'payment_mode', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570838', '1570819', 'state', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570839', '1570819', 'city', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570840', '1570819', 'utm_source', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570841', '1570819', 'shipping_charge', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570842', '1570819', 'ib_cash_debit', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570843', '1570819', 'cod_charge', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570844', '1570819', 'bulk_discount', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570845', '1570819', 'utm_campaign', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570846', '1570819', 'utm_medium', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570847', '1570819', 'pincode', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570848', '1570819', 'category_env', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570849', '1570819', 'order_no', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570850', '1570819', 'tax_exclusive_price', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570851', '1570819', 'allocation_mode', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570852', '1570819', 'warehouse_code', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570853', '1570819', 'order_check_gstin', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570854', '1570819', 'gstin_number', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570855', '1570819', 'shipped_date', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570856', '1570819', 'delivered_date', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570857', '1570819', 'lsp_name', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570858', '1570819', 'B_GMV', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570859', '1570819', 'sku', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571408', '1571407', 'crash_date', 'date');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571409', '1571407', 'person_age', 'integer');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571410', '1571407', 'total_collison', 'long');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570861', '1570860', 'category', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570862', '1570860', 'sku', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570863', '1570860', 'gmv', 'double');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570181', '1570179', 'created_date', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570182', '1570179', 'ticket_status', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570183', '1570179', 'agent_name', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570184', '1570179', 'agent_code', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570185', '1570179', 'group_code', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570186', '1570179', 'customer_name', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570187', '1570179', 'phone', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570188', '1570179', 'conversation_count', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570189', '1570179', 'first_message_timestamp', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570190', '1570179', 'is_seen', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570191', '1570179', 'is_delivered', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570192', '1570179', 'conversation_status', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570193', '1570179', 'time_to_first_message', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570194', '1570179', 'conversation_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570195', '1570179', 'ticket_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570196', '1570179', 'source', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570197', '1570179', 'type', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570198', '1570179', 'platform_type', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570199', '1570179', 'timestamp', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570200', '1570179', 'platform_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570201', '1570179', 'project_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570202', '1570179', 'customer_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570203', '1570179', 'is_seen', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570204', '1570179', 'is_delivered', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570205', '1570179', 'conversation_status', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570206', '1570179', 'message_body', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1570180', '1570179', 'ticket_id', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571784', '1571783', 'zip_code', 'string');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571785', '1571783', 'number_of_persons_injured', 'long');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571786', '1571783', 'min_age', 'integer');
INSERT INTO metastore.schema_store_view_schema (id, fk_schema_store_view_id, column_name, data_type) VALUES ('1571787', '1571783', 'max_age', 'integer');
INSERT INTO metastore.schema_store_view_meta (id, meta_data, fk_schema_store_view_id) VALUES ('dfa7e26b-60b9-42bb-9894-34a8cc60b759', '{"viewName":"order_shipment","tables":[],"selectedItems":[],"groupbyColumns":[],"groupbyRollupColumns":[],"groupbyCubeColumns":[],"predicates":[],"orderbys":[],"havings":[],"emptyItems":[],"columnConnections":[],"tableConnections":[],"tableUi":[],"__type":"Object"}', '1570819');
INSERT INTO metastore.schema_store_view_meta (id, meta_data, fk_schema_store_view_id) VALUES ('828edb0c-8140-4280-9e8f-97b95c5abcf3', '{"viewName":"collison_by_age","tables":[],"selectedItems":[],"groupbyColumns":[],"groupbyRollupColumns":[],"groupbyCubeColumns":[],"predicates":[],"orderbys":[],"havings":[],"emptyItems":[],"columnConnections":[],"tableConnections":[],"tableUi":[],"__type":"Object"}', '1571407');
INSERT INTO metastore.schema_store_view_meta (id, meta_data, fk_schema_store_view_id) VALUES ('84743432-489f-4310-b966-0e00831c6068', '{"viewName":"category_orders","tables":[],"selectedItems":[],"groupbyColumns":[],"groupbyRollupColumns":[],"groupbyCubeColumns":[],"predicates":[],"orderbys":[],"havings":[],"emptyItems":[],"columnConnections":[],"tableConnections":[],"tableUi":[],"__type":"Object"}', '1570860');
INSERT INTO metastore.schema_store_view_meta (id, meta_data, fk_schema_store_view_id) VALUES ('84970985-a5f0-4209-9b19-34120f92aea4', '{"viewName":"temp_myallice_view","tables":[],"selectedItems":[],"groupbyColumns":[],"groupbyRollupColumns":[],"groupbyCubeColumns":[],"predicates":[],"orderbys":[],"havings":[],"emptyItems":[],"columnConnections":[],"tableConnections":[],"tableUi":[],"__type":"Object"}', '1570179');
INSERT INTO metastore.schema_store_view_meta (id, meta_data, fk_schema_store_view_id) VALUES ('7d100a2c-faa3-4f19-8ca5-31124077faa9', '{"viewName":"zipcode_wise_accident","tables":[],"selectedItems":[],"groupbyColumns":[],"groupbyRollupColumns":[],"groupbyCubeColumns":[],"predicates":[],"orderbys":[],"havings":[],"emptyItems":[],"columnConnections":[],"tableConnections":[],"tableUi":[],"__type":"Object"}', '1571783');
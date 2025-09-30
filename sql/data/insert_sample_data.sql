-- ==========================================================
-- File: insert_sample_data.sql
-- Description: SQL script to insert sample data into the freightlink_v7 database
-- ==========================================================

-- Insert sample data into location table
INSERT INTO location (location_id,street_address,city,province_code,zip_code) VALUES
	 (1,'1245 Robson Street','Vancouver','BC','V6E2K3'),
	 (2,'567 Queen Street West','Toronto','ON','M5V2B4'),
	 (3,'890 Rue Sainte-Catherine','Montreal','QC','H3B1A7'),
	 (4,'234 8th Avenue SW','Calgary','AB','T2P1B9'),
	 (5,'456 Portage Avenue','Winnipeg','MB','R3C0E6'),
	 (6,'789 Spring Garden Road','Halifax','NS','B3H1X8'),
	 (7,'123 Government Street','Victoria','BC','V8W1Y2'),
	 (8,'345 Rideau Street','Ottawa','ON','K1N5Y3'),
	 (9,'678 Jasper Avenue','Edmonton','AB','T5J3N4'),
	 (10,'901 Broadway Avenue','Saskatoon','SK','S7N1B5');
INSERT INTO location (location_id,street_address,city,province_code,zip_code) VALUES
	 (11,'2468 Kensington Road NW','Calgary','AB','T2N3T1'),
	 (12,'1357 Commercial Drive','Vancouver','BC','V5L3X9'),
	 (13,'159 King Street East','Hamilton','ON','L8N1B2'),
	 (14,'753 Sparks Street','Ottawa','ON','K1A0A6'),
	 (15,'951 Water Street','St. Johns','NL','A1C1A9'),
	 (16,'357 Main Street','Moncton','NB','E1C8R3'),
	 (17,'159 University Avenue','Toronto','ON','M5H3M7'),
	 (18,'753 Granville Street','Vancouver','BC','V6Z1K3'),
	 (19,'852 17th Avenue SW','Calgary','AB','T2S0B8'),
	 (20,'741 Rue Saint-Jean','Quebec City','QC','G1R1R1');
INSERT INTO location (location_id,street_address,city,province_code,zip_code) VALUES
	 (21,'100 Industrial Blvd','Mississauga','ON','L4Z1X1'),
	 (22,'200 Distribution Way','Richmond','BC','V6X2A8'),
	 (23,'300 Logistics Drive','Brampton','ON','L6T5G1'),
	 (24,'400 Warehouse Road','Surrey','BC','V3W5A8'),
	 (25,'500 Freight Avenue','Laval','QC','H7S1Z5'),
	 (26,'600 Transport Street','Burlington','ON','L7R4A6'),
	 (27,'700 Cargo Lane','Burnaby','BC','V5A4E2'),
	 (28,'800 Shipping Circle','Markham','ON','L3R9W3'),
	 (29,'900 Delivery Drive','Longueuil','QC','J4G2H5'),
	 (30,'1000 Supply Chain Way','Oakville','ON','L6H7B3');
INSERT INTO location (location_id,street_address,city,province_code,zip_code) VALUES
	 (31,'1500 Railway Terminal','Vancouver','BC','V6A2Z1'),
	 (32,'1600 CN Rail Yard','Toronto','ON','M5W1E1'),
	 (33,'1700 Port Authority','Montreal','QC','H2Y3Y5'),
	 (34,'1800 Airport Cargo','Calgary','AB','T2E6W5'),
	 (35,'1900 Marine Terminal','Halifax','NS','B3J3J4');


-- Inserting initial data into the vehicles table
INSERT INTO vehicles (vehicle_id,`type`,licenseplate_car_number,capacity_weight_kg,capacity_volume_m3,status) VALUES
	 (1,'Semi-Truck','FL001-ON',40000.00,85.50,'Available'),
	 (2,'Semi-Truck','FL002-BC',40000.00,85.50,'Available'),
	 (3,'Semi-Truck','FL003-QC',40000.00,85.50,'Maintenance'),
	 (4,'Semi-Truck','FL004-AB',40000.00,85.50,'Available'),
	 (5,'Straight Truck','FL005-ON',15000.00,45.20,'Available'),
	 (6,'Straight Truck','FL006-BC',15000.00,45.20,'Maintenance'),
	 (7,'Straight Truck','FL007-AB',15000.00,45.20,'Available'),
	 (8,'Cargo Van','FL008-ON',3000.00,12.50,'Available'),
	 (9,'Cargo Van','FL009-BC',3000.00,12.50,'Available'),
	 (10,'Cargo Van','FL010-QC',3000.00,12.50,'Available');
INSERT INTO vehicles (vehicle_id,`type`,licenseplate_car_number,capacity_weight_kg,capacity_volume_m3,status) VALUES
	 (11,'Flatbed Truck','FL011-AB',25000.00,65.00,'Available'),
	 (12,'Refrigerated Truck','FL012-ON',20000.00,55.75,'Available'),
	 (13,'Freight Train','CN-8901',2000000.00,5000.00,'Available'),
	 (14,'Freight Train','CP-7802',1800000.00,4500.00,'Available'),
	 (15,'Container Train','VIA-6703',1500000.00,3500.00,'Maintenance'),
	 (16,'Cargo Ship','MV-PACIFIC-01',50000000.00,75000.00,'Available'),
	 (17,'Container Ship','MV-ATLANTIC-02',45000000.00,68000.00,'Available'),
	 (18,'Cargo Plane','C-FLCA-001',150000.00,850.00,'Available'),
	 (19,'Cargo Plane','C-FLCA-002',150000.00,850.00,'Available');

-- Inserting initial data into the operators table
INSERT INTO operators (operator_id,name,license_number,license_type,phone,email,employment_status,driving_hours_limit) VALUES
	 (1,'John MacDonald','ON123456789','Class 1','4161234567','john.macdonald@freightlink.ca','Active',12),
	 (2,'Sarah Patel','BC987654321','Class 1','6045551234','sarah.patel@freightlink.ca','Active',11),
	 (3,'Mike Tremblay','QC456789123','Class 1','5142345678','mike.tremblay@freightlink.ca','Active',12),
	 (4,'Lisa Chen','AB789123456','Class 1','4033456789','lisa.chen@freightlink.ca','Active',10),
	 (5,'Robert Johnson','MB123789456','Class 1','2044567890','robert.johnson@freightlink.ca','Active',12),
	 (6,'Jennifer Wong','BC654321987','Class 1','6045678901','jennifer.wong@freightlink.ca','Active',11),
	 (7,'David Kowalski','ON321654987','Class 1','4166789012','david.kowalski@freightlink.ca','Active',12),
	 (8,'Amanda Singh','AB147258369','Class 1','4037890123','amanda.singh@freightlink.ca','Active',11),
	 (9,'Kevin Brown','SK369258147','Class 1','3069012345','kevin.brown@freightlink.ca','Active',12),
	 (10,'Michelle Taylor','NS852741963','Class 1','9021123456','michelle.taylor@freightlink.ca','Active',10);
INSERT INTO operators (operator_id,name,license_number,license_type,phone,email,employment_status,driving_hours_limit) VALUES
	 (11,'Captain William Fraser','TC-ENG-001','Train Engineer','6042345678','william.fraser@freightlink.ca','Active',8),
	 (12,'Engineer Marie Lapointe','TC-ENG-002','Train Engineer','5143456789','marie.lapointe@freightlink.ca','Active',8),
	 (13,'Conductor James O''Sullivan','TC-CON-001','Train Conductor','4164567890','james.osullivan@freightlink.ca','Active',8),
	 (14,'Captain Elizabeth Maritime','MC-CAP-001','Ship Captain','9025556789','elizabeth.maritime@freightlink.ca','Active',12),
	 (15,'First Mate Robert Seaworth','MC-MAT-001','Ship Mate','6045557890','robert.seaworth@freightlink.ca','Active',12),
	 (16,'Captain Alexandra Skyler','AC-PIL-001','Commercial Pilot','4035558901','alexandra.skyler@freightlink.ca','Active',10),
	 (17,'First Officer Michael Airborne','AC-FO-001','Commercial Pilot','6135559012','michael.airborne@freightlink.ca','Active',10),
	 (18,'Brian Wilson','AB963852741','Class 1','7802234567','brian.wilson@freightlink.ca','Active',12),
	 (19,'Carol Davis','ON741963852','Class 1','4163345678','carol.davis@freightlink.ca','Active',11),
	 (20,'Paul Jackson','BC159753486','Class 1','6044456789','paul.jackson@freightlink.ca','Active',12);

-- Inserting initial data into the vehicle_operator_assignments table
INSERT INTO vehicle_operator_assignments (assignment_id,vehicle_id,operator_id,assigned_from,assigned_to) VALUES
	 (1,1,1,'2025-09-01 08:00:00',NULL),
	 (2,2,2,'2025-09-01 08:00:00',NULL),
	 (3,4,4,'2025-09-01 08:00:00',NULL),
	 (4,5,5,'2025-09-01 08:00:00',NULL),
	 (5,7,7,'2025-09-01 08:00:00',NULL),
	 (6,8,8,'2025-09-01 08:00:00',NULL),
	 (7,9,9,'2025-09-01 08:00:00',NULL),
	 (8,10,10,'2025-09-01 08:00:00',NULL),
	 (9,11,18,'2025-09-01 08:00:00',NULL),
	 (10,12,19,'2025-09-01 08:00:00',NULL);
INSERT INTO vehicle_operator_assignments (assignment_id,vehicle_id,operator_id,assigned_from,assigned_to) VALUES
	 (11,13,11,'2025-09-01 06:00:00',NULL),
	 (12,14,12,'2025-09-01 06:00:00',NULL),
	 (13,16,14,'2025-09-01 08:00:00',NULL),
	 (14,17,15,'2025-09-01 08:00:00',NULL),
	 (15,18,16,'2025-09-01 05:00:00',NULL),
	 (16,19,17,'2025-09-01 05:00:00',NULL),
	 (17,1,3,'2025-08-15 08:00:00','2025-08-31 18:00:00'),
	 (18,2,6,'2025-08-15 08:00:00','2025-08-31 18:00:00'),
	 (19,4,20,'2025-08-15 08:00:00','2025-08-31 18:00:00');

-- Inserting initial data into the channels table
INSERT INTO channels (channel_id,name,status) VALUES
	 (1,'Website','Active'),
	 (2,'Sales Person','Active'),
	 (3,'Third Party','Active'),
	 (4,'Legacy Partner','Inactive');

-- Inserting initial data into the customers table
INSERT INTO customers (customer_id,company_name,employee_contact_name_primary,employee_contact_name_secondary,email,phone,location_id) VALUES
	 (1,'Maple Leaf Manufacturing Inc.','Sarah Johnson','Mike Chen','sarah.johnson@mapleleafmfg.ca','6041234567',1),
	 (2,'Great White North Distributors','David Thompson','Lisa Wong','david.thompson@gwnorth.ca','4165551234',2),
	 (3,'Fleur-de-Lis Logistics','Marie Dubois','Jean Tremblay','marie.dubois@fdllogistics.ca','5142345678',3),
	 (4,'Rocky Mountain Freight Co.','James MacLeod','Amanda Singh','james.macleod@rmfreight.ca','4033456789',4),
	 (5,'Prairie Sky Transport','Robert Kowalski','Jennifer Taylor','robert.kowalski@prairiesky.ca','2044567890',5),
	 (6,'Atlantic Coastal Shipping','Michael OBrien','Susan MacDonald','michael.obrien@atlanticcoastal.ca','9025678901',6),
	 (7,'Island Express Cargo','Patricia Williams','Kevin Lee','patricia.williams@islandexpress.ca','2506789012',7),
	 (8,'Capital City Courier','Andrew Clark','Michelle Brown','andrew.clark@capitalcity.ca','6137890123',8),
	 (9,'Northern Lights Logistics','Linda Anderson','Brian Wilson','linda.anderson@northernlights.ca','7808901234',9),
	 (10,'Wheat City Warehousing','Mark Robinson','Carol Davis','mark.robinson@wheatcity.ca','3069012345',10);
INSERT INTO customers (customer_id,company_name,employee_contact_name_primary,employee_contact_name_secondary,email,phone,location_id) VALUES
	 (11,'Chinook Distribution','Nancy Martinez','Paul Jackson','nancy.martinez@chinookdist.ca','4031123456',11),
	 (12,'Pacific Rim Trading','Steven Kim','Rachel Green','steven.kim@pacificrim.ca','6042234567',12),
	 (13,'Steel City Logistics','Karen White','Tony Rossi','karen.white@steelcity.ca','9053345678',13),
	 (14,'Bytown Express','Daniel Murphy','Angela Scott','daniel.murphy@bytownexpress.ca','6134456789',14),
	 (15,'Avalon Freight Services','Christine Power','Ryan Murphy','christine.power@avalon.ca','7095567890',15),
	 (16,'Fundy Bay Shipping','Gary Leblanc','Diane Richard','gary.leblanc@fundybay.ca','5066678901',16),
	 (17,'Tower Bridge Cargo','Helen Zhang','Alex Patel','helen.zhang@towerbridge.ca','4167789012',17),
	 (18,'West Coast Ventures','Thomas Reid','Samantha Liu','thomas.reid@westcoast.ca','6048890123',18),
	 (19,'Stampede Logistics','Barbara Mitchell','Jordan Campbell','barbara.mitchell@stampede.ca','4039901234',19),
	 (20,'Old Quebec Trading','François Gagnon','Isabelle Roy','francois.gagnon@oldquebec.ca','4181012345',20);

-- Inserting values into shipments table
INSERT INTO shipments (shipment_id,customer_id,created_at,expected_delivery_date_time,origin_location_id,destination_location_id,weight_in_kg,volume_in_m3,price,channel_id,cargo_type,cargo_restrictions) VALUES
	 (1,1,'2025-09-28 09:15:00','2025-10-02 14:00:00',1,21,5500.50,12.25,1500.00,1,'Electronics','Fragile, Keep Dry'),
	 (2,2,'2025-09-28 10:30:00','2025-10-03 16:30:00',2,22,12000.75,28.50,3500.00,2,'Machinery Parts','Heavy Load'),
	 (3,3,'2025-09-27 14:20:00','2025-10-01 11:00:00',3,23,8750.25,18.75,2250.00,1,'Textiles','Keep Dry'),
	 (4,4,'2025-09-27 11:45:00','2025-09-30 15:45:00',4,24,15500.00,35.20,4800.00,3,'Construction Materials','None'),
	 (5,5,'2025-09-26 16:10:00','2025-09-29 12:30:00',5,25,3200.80,8.90,1200.00,1,'Food Products','Refrigerated'),
	 (6,6,'2025-09-25 13:25:00','2025-09-28 17:15:00',6,26,6800.45,15.60,2800.00,2,'Automotive Parts','None'),
	 (7,7,'2025-09-25 08:50:00','2025-09-27 14:20:00',7,27,4150.90,9.80,1650.00,1,'Pharmaceuticals','Temperature Controlled'),
	 (8,8,'2025-09-24 15:35:00','2025-09-26 10:00:00',8,28,9500.25,22.40,3800.00,3,'Industrial Equipment','Heavy Load'),
	 (9,9,'2025-09-24 12:15:00','2025-09-26 16:45:00',9,29,7200.65,16.80,3100.00,2,'Paper Products','Keep Dry'),
	 (10,10,'2025-09-23 09:40:00','2025-09-25 13:10:00',10,30,2850.30,7.25,950.00,1,'Office Supplies','None');
INSERT INTO shipments (shipment_id,customer_id,created_at,expected_delivery_date_time,origin_location_id,destination_location_id,weight_in_kg,volume_in_m3,price,channel_id,cargo_type,cargo_restrictions) VALUES
	 (11,11,'2025-09-23 14:55:00','2025-09-25 18:20:00',11,31,11200.85,26.15,4200.00,2,'Furniture','Fragile'),
	 (12,12,'2025-09-22 11:20:00','2025-09-24 15:30:00',12,32,5900.40,13.70,2400.00,1,'Electronics','Fragile, Keep Dry'),
	 (13,13,'2025-09-22 16:45:00','2025-09-24 12:00:00',13,33,8300.75,19.50,3350.00,3,'Chemical Products','Hazardous Materials'),
	 (14,14,'2025-09-21 10:10:00','2025-09-23 14:40:00',14,34,4750.20,11.30,1850.00,2,'Clothing','Keep Dry'),
	 (15,15,'2025-09-21 13:30:00','2025-09-23 17:50:00',15,35,13500.60,31.85,5200.00,1,'Mining Equipment','Heavy Load'),
	 (16,16,'2025-09-20 08:25:00','2025-09-25 11:15:00',31,16,250000.50,1200.40,8500.00,2,'Grain','Keep Dry'),
	 (17,17,'2025-09-19 15:50:00','2025-09-24 19:20:00',32,17,180000.35,850.20,7200.00,3,'Coal','None'),
	 (18,18,'2025-09-18 12:40:00','2025-10-05 16:00:00',33,18,1500000.55,3500.90,15000.00,1,'Containers','Various'),
	 (19,19,'2025-09-17 09:15:00','2025-10-02 13:45:00',34,19,2200000.25,5200.60,22000.00,2,'Bulk Cargo','None'),
	 (20,20,'2025-09-16 14:05:00','2025-09-17 10:30:00',35,20,8500.70,45.85,4500.00,1,'Express Cargo','Priority');
INSERT INTO shipments (shipment_id,customer_id,created_at,expected_delivery_date_time,origin_location_id,destination_location_id,weight_in_kg,volume_in_m3,price,channel_id,cargo_type,cargo_restrictions) VALUES
	 (21,1,'2025-09-15 11:30:00','2025-09-16 15:00:00',21,1,4500.80,25.25,2750.00,2,'Medical Supplies','Temperature Controlled'),
	 (22,3,'2025-09-14 16:20:00','2025-09-17 12:45:00',23,3,9200.45,21.70,3600.00,1,'Furniture Components','None'),
	 (23,5,'2025-09-13 10:45:00','2025-09-16 14:15:00',25,5,6750.30,15.80,2750.00,3,'Agricultural Products','Temperature Controlled'),
	 (24,7,'2025-09-12 13:55:00','2025-09-15 17:30:00',27,7,3850.65,9.10,1500.00,2,'Medical Supplies','Temperature Controlled'),
	 (25,9,'2025-09-11 08:10:00','2025-09-14 11:50:00',29,9,12500.90,29.40,4850.00,1,'Packaging Materials','None'),
	 (26,11,'2025-09-10 15:25:00','2025-09-13 18:40:00',21,11,5650.20,13.20,2300.00,2,'Art Supplies','Fragile'),
	 (27,13,'2025-09-09 12:40:00','2025-09-12 16:20:00',23,13,8950.75,20.85,3550.00,3,'Building Materials','None'),
	 (28,15,'2025-09-08 09:50:00','2025-09-11 13:30:00',25,15,4200.40,9.75,1680.00,1,'Craft Supplies','Keep Dry'),
	 (29,17,'2025-09-07 14:15:00','2025-09-10 17:45:00',27,17,7400.85,17.30,2950.00,2,'Garden Supplies','None'),
	 (30,19,'2025-09-06 11:35:00','2025-09-09 15:10:00',29,19,10200.60,23.90,4100.00,1,'Laboratory Equipment','Fragile');
INSERT INTO shipments (shipment_id,customer_id,created_at,expected_delivery_date_time,origin_location_id,destination_location_id,weight_in_kg,volume_in_m3,price,channel_id,cargo_type,cargo_restrictions) VALUES
	 (31,2,'2025-09-05 16:50:00','2025-09-08 12:25:00',22,2,6150.95,14.35,2550.00,3,'Printing Materials','Keep Dry'),
	 (32,4,'2025-09-04 10:20:00','2025-09-07 14:00:00',24,30,13800.30,32.50,5300.00,2,'Heavy Machinery','Heavy Load'),
	 (33,6,'2025-09-03 13:45:00','2025-09-06 17:15:00',26,6,3950.50,9.20,1580.00,1,'Beauty Products','None'),
	 (34,8,'2025-09-02 08:30:00','2025-09-05 11:55:00',28,8,8650.75,20.10,3450.00,2,'Fitness Equipment','None'),
	 (35,10,'2025-09-01 15:10:00','2025-09-04 18:30:00',30,10,5450.85,12.70,2200.00,3,'Pet Supplies','None'),
	 (36,12,'2025-08-31 12:25:00','2025-09-03 16:45:00',22,12,9800.40,22.85,3900.00,1,'Musical Instruments','Fragile'),
	 (37,14,'2025-08-30 09:40:00','2025-09-02 13:20:00',24,14,4350.60,10.15,1750.00,2,'Stationery','Keep Dry'),
	 (38,16,'2025-08-29 14:55:00','2025-09-01 18:10:00',26,16,7250.25,16.90,2900.00,3,'Hardware Tools','None'),
	 (39,18,'2025-08-28 11:15:00','2025-08-31 14:40:00',28,18,6800.90,15.85,2750.00,1,'Kitchen Appliances','Fragile'),
	 (40,20,'2025-08-27 16:30:00','2025-08-30 12:15:00',30,20,11500.70,26.95,4600.00,2,'Computer Hardware','Fragile');


-- Inserting initial data into the shipment_tracking table
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (74,1,1,1,'2025-09-28 09:30:00','Awaiting Pickup'),
	 (75,2,2,2,'2025-09-28 10:45:00','Awaiting Pickup'),
	 (76,1,3,3,'2025-09-27 14:35:00','Picked Up'),
	 (77,2,3,23,'2025-09-28 16:20:00','In Transit'),
	 (78,4,4,4,'2025-09-27 12:00:00','Picked Up'),
	 (79,4,4,24,'2025-09-30 15:45:00','Delivered'),
	 (80,5,5,5,'2025-09-26 16:25:00','Picked Up'),
	 (81,5,5,25,'2025-09-29 12:30:00','Delivered'),
	 (82,8,6,6,'2025-09-25 13:40:00','Picked Up'),
	 (83,8,6,26,'2025-09-26 10:15:00','In Transit');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (84,9,7,7,'2025-09-25 09:05:00','Picked Up'),
	 (85,9,7,27,'2025-09-27 08:20:00','Delivered'),
	 (86,10,8,8,'2025-09-24 15:50:00','Picked Up'),
	 (87,10,8,28,'2025-09-25 18:30:00','In Transit'),
	 (88,11,9,9,'2025-09-24 12:30:00','Picked Up'),
	 (89,11,9,29,'2025-09-26 16:45:00','Delivered'),
	 (90,12,10,10,'2025-09-23 09:55:00','Picked Up'),
	 (91,12,10,30,'2025-09-25 13:10:00','Delivered'),
	 (92,1,11,11,'2025-09-23 15:10:00','Awaiting Pickup'),
	 (93,2,12,12,'2025-09-22 11:35:00','Awaiting Pickup');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (94,4,13,13,'2025-09-22 17:00:00','Pending'),
	 (95,5,14,14,'2025-09-21 10:25:00','Pending'),
	 (96,8,15,15,'2025-09-21 13:45:00','Awaiting Pickup'),
	 (97,13,16,31,'2025-09-20 08:40:00','Picked Up'),
	 (98,13,16,16,'2025-09-23 14:20:00','In Transit'),
	 (99,14,17,32,'2025-09-19 16:05:00','Picked Up'),
	 (100,14,17,17,'2025-09-22 18:45:00','In Transit'),
	 (101,16,18,33,'2025-09-18 12:55:00','Picked Up'),
	 (102,16,18,18,'2025-09-25 10:30:00','In Transit'),
	 (103,17,19,34,'2025-09-18 06:00:00','Picked Up');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (104,17,19,19,'2025-09-28 16:20:00','In Transit'),
	 (105,18,20,35,'2025-09-16 14:20:00','Picked Up'),
	 (106,18,20,20,'2025-09-19 07:30:00','Delivered'),
	 (107,19,21,21,'2025-09-15 11:45:00','Picked Up'),
	 (108,19,21,1,'2025-09-16 15:00:00','Delivered'),
	 (109,1,22,23,'2025-09-14 16:35:00','Picked Up'),
	 (110,1,22,3,'2025-09-17 12:45:00','Delivered'),
	 (111,2,23,25,'2025-09-13 11:00:00','Picked Up'),
	 (112,2,23,5,'2025-09-16 14:15:00','Delivered'),
	 (113,4,24,27,'2025-09-12 14:10:00','Picked Up');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (114,4,24,7,'2025-09-15 17:30:00','Delivered'),
	 (115,5,25,29,'2025-09-11 08:25:00','Picked Up'),
	 (116,5,25,9,'2025-09-14 11:50:00','Delivered'),
	 (117,8,26,21,'2025-09-10 15:40:00','Picked Up'),
	 (118,8,26,11,'2025-09-13 18:40:00','Delivered'),
	 (119,9,27,23,'2025-09-09 12:55:00','Picked Up'),
	 (120,9,27,13,'2025-09-19 16:20:00','Delivered'),
	 (121,10,28,25,'2025-09-08 10:05:00','Picked Up'),
	 (122,10,28,15,'2025-09-11 13:30:00','Delivered'),
	 (123,11,29,27,'2025-09-07 14:30:00','Picked Up');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (124,11,29,17,'2025-09-10 17:45:00','Delivered'),
	 (125,12,30,29,'2025-09-06 11:50:00','Picked Up'),
	 (126,12,30,19,'2025-09-09 15:10:00','Delivered'),
	 (127,1,31,22,'2025-09-05 17:05:00','Picked Up'),
	 (128,1,31,2,'2025-09-08 12:25:00','Delivered'),
	 (129,2,32,24,'2025-09-04 10:35:00','Picked Up'),
	 (130,2,32,4,'2025-09-07 14:00:00','Delivered'),
	 (131,4,33,26,'2025-09-03 14:00:00','Picked Up'),
	 (132,4,33,6,'2025-09-06 17:15:00','Delivered'),
	 (133,5,34,28,'2025-09-02 08:45:00','Picked Up');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (134,5,34,8,'2025-09-04 11:55:00','Delivered'),
	 (135,8,35,30,'2025-09-01 15:25:00','Picked Up'),
	 (136,8,35,10,'2025-09-04 18:30:00','Delivered'),
	 (137,9,36,22,'2025-08-31 12:40:00','Picked Up'),
	 (138,9,36,12,'2025-09-03 16:45:00','Delivered'),
	 (139,10,37,24,'2025-08-30 09:55:00','Picked Up'),
	 (140,10,37,14,'2025-09-02 16:20:00','Delivered'),
	 (141,11,38,26,'2025-08-29 15:10:00','Picked Up'),
	 (142,11,38,16,'2025-09-04 18:10:00','Delivered'),
	 (143,12,39,28,'2025-08-28 11:30:00','Picked Up');
INSERT INTO shipment_tracking (tracking_id,last_used_assignment,shipment_id,location_id,created_at,shipment_status) VALUES
	 (144,12,39,18,'2025-08-31 14:40:00','Delivered'),
	 (145,1,40,30,'2025-08-27 16:45:00','Picked Up'),
	 (146,1,40,20,'2025-08-30 12:15:00','Delivered');
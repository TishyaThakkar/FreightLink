-- =================================================================
-- File: create_tables.sql
-- Description: SQL script to create tables for the freightlink_v7 database
-- =================================================================

-- Location table to store address details
CREATE TABLE `location` (
  `location_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each location',
  `street_address` VARCHAR(100) NOT NULL COMMENT 'Street address of the location',
  `city` VARCHAR(100) NOT NULL COMMENT 'City where the location is situated',
  `province_code` CHAR(2) NOT NULL COMMENT 'Two-letter code for the province',
  `zip_code` VARCHAR(6) NOT NULL COMMENT 'Postal code for the location'
);

-- Customers table to store customer details
CREATE TABLE `customers` (
  `customer_id` int PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each customer',
  `company_name` varchar(100) NOT NULL COMMENT 'Name of the customer company',
  `employee_contact_name_primary` varchar(100) NOT NULL COMMENT 'Primary contact person at the company',
  `employee_contact_name_secondary` varchar(100) COMMENT 'Secondary contact person at the company',
  `email` varchar(150) UNIQUE NOT NULL COMMENT 'Primary email address of the customer',
  `phone` varchar(10) UNIQUE NOT NULL COMMENT '10-digit phone number of the customer',
  `location_id` int NOT NULL COMMENT 'Customer address, Foreign key referencing location',
  CONSTRAINT chk_phone CHECK (`phone` REGEXP '^[0-9]{10}$'),
  CONSTRAINT chk_email CHECK (`email` REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$')
);

-- Operators table to store driver/operator details
CREATE TABLE `operators` (
  `operator_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each operator',
  `name` VARCHAR(100) NOT NULL COMMENT 'Full name of the operator',
  `license_number` VARCHAR(50) UNIQUE NOT NULL COMMENT 'Operator’s license number',
  `license_type` VARCHAR(20) NOT NULL COMMENT 'Type of license held by the operator',
  `phone` VARCHAR(10) UNIQUE COMMENT '10-digit phone number of the operator',
  `email` VARCHAR(100) UNIQUE COMMENT 'Email address of the operator',
  `employment_status` VARCHAR(20) DEFAULT 'Active' COMMENT 'Employment status of the operator',
  `driving_hours_limit` INT COMMENT 'Maximum allowed driving hours per day',
  CHECK (`phone` IS NULL OR `phone` REGEXP '^[0-9]{10}$'),
  CHECK (`email` IS NULL OR `email` REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$')
);

-- Vehicles table to store vehicle details
CREATE TABLE `vehicles` (
  `vehicle_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each vehicle',
  `type` VARCHAR(20) NOT NULL COMMENT 'Type of vehicle (e.g., truck, van)',
  `licenseplate_car_number` VARCHAR(50) UNIQUE NOT NULL COMMENT 'License plate number of the vehicle',
  `capacity_weight_kg` DECIMAL(10,2) COMMENT 'Maximum weight capacity in kilograms',
  `capacity_volume_m3` DECIMAL(10,2) COMMENT 'Maximum volume capacity in cubic meters',
  `status` VARCHAR(20) DEFAULT 'Available' COMMENT 'Availability status of the vehicle'
);

--  Shipments table to store shipment details
CREATE TABLE `shipments` (
  `shipment_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each shipment',
  `customer_id` INT NOT NULL COMMENT 'Foreign key referencing the customer',
  `created_at` DATETIME NOT NULL COMMENT 'Timestamp when the shipment was created',
  `expected_delivery_date_time` DATETIME NOT NULL COMMENT 'Expected delivery date and time',
  `origin_location_id` INT NOT NULL COMMENT 'Location where the shipment originates',
  `destination_location_id` INT NOT NULL COMMENT 'Location where the shipment is to be delivered',
  `weight_in_kg` DECIMAL(10,2) COMMENT 'Weight of the shipment in kilograms',
  `volume_in_m3` DECIMAL(10,2) COMMENT 'Volume of the shipment in cubic meters',
  `price` DECIMAL(8,2) COMMENT 'Price of the shipment',
  `channel_id` INT NOT NULL COMMENT 'Foreign key referencing the shipping channel',
  `cargo_type` VARCHAR(100) COMMENT 'Type of cargo being shipped',
  `cargo_restrictions` VARCHAR(100) COMMENT 'Any restrictions applicable to the cargo'
);

-- Shipment tracking table to log tracking updates
CREATE TABLE `shipment_tracking` (
  `tracking_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each tracking entry',
  `last_used_assignment` INT NOT NULL COMMENT 'Reference to the last vehicle-driver assignment used',
  `shipment_id` INT NOT NULL COMMENT 'Foreign key referencing the shipment',
  `location_id` INT NOT NULL COMMENT 'Current location of the shipment',
  `created_at` DATETIME NOT NULL COMMENT 'Timestamp of the tracking update',
  `shipment_status` VARCHAR(100) DEFAULT 'Pending' COMMENT 'Current status of the shipment'
);

-- Vehicle-Operator Assignments table to manage assignments
CREATE TABLE `vehicle_operator_assignments` (
  `assignment_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each assignment',
  `vehicle_id` INT NOT NULL COMMENT 'Foreign key referencing the assigned vehicle',
  `operator_id` INT NOT NULL COMMENT 'Foreign key referencing the assigned operator',
  `assigned_from` DATETIME NOT NULL COMMENT 'Start time of the assignment',
  `assigned_to` DATETIME COMMENT 'End time of the assignment',
  CONSTRAINT `fk_vehicle_assignment_vehicle`
    FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles`(`vehicle_id`),
  CONSTRAINT `fk_vehicle_assignment_operator`
    FOREIGN KEY (`operator_id`) REFERENCES `operators`(`operator_id`)
);

-- Channels table to store shipping channel details
CREATE TABLE `channels` (
  `channel_id` INT PRIMARY KEY AUTO_INCREMENT COMMENT 'Unique identifier for each channel',
  `name` VARCHAR(50) NOT NULL COMMENT 'Name of the shipping channel',
  `status` VARCHAR(20) DEFAULT 'Active' COMMENT 'Status of the channel (e.g., Active, Inactive)'
);

-- Adding foreign key constraints to ensure referential integrity
ALTER TABLE `shipments` ADD FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`);

ALTER TABLE `shipments` ADD FOREIGN KEY (`origin_location_id`) REFERENCES `location` (`location_id`);

ALTER TABLE `shipments` ADD FOREIGN KEY (`destination_location_id`) REFERENCES `location` (`location_id`);

ALTER TABLE `shipment_tracking` ADD FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

ALTER TABLE `shipment_tracking` ADD FOREIGN KEY (`last_used_assignment`) REFERENCES `vehicle_operator_assignments` (`assignment_id`);

ALTER TABLE `shipment_tracking` ADD FOREIGN KEY (`shipment_id`) REFERENCES `shipments` (`shipment_id`);

ALTER TABLE `vehicle_operator_assignments` ADD CONSTRAINT `fk_operator_assignment` FOREIGN KEY (`operator_id`) REFERENCES `operators` (`operator_id`);

ALTER TABLE `vehicle_operator_assignments` ADD FOREIGN KEY (`vehicle_id`) REFERENCES `vehicles` (`vehicle_id`);

ALTER TABLE `customers` ADD FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`);

ALTER TABLE `shipments` ADD FOREIGN KEY (`channel_id`) REFERENCES `channels` (`channel_id`);
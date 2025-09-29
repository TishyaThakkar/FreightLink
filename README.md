# FreightLink - Freight and Logistics Management Database

A comprehensive **MySQL database system** for managing multi-modal freight operations including road, rail, marine, and air transportation.

---

## 📌 Overview
FreightLink is a **relational database management system** designed for freight and logistics companies operating across multiple transportation modes.  

The system tracks customers, operators, vehicles, and shipments, and provides **real-time tracking with performance analytics**.

---

## 🚀 Features
- **Multi-modal Transportation Support**: Trucks, trains, ships, and aircraft  
- **Real-time Shipment Tracking**: Complete tracking history from origin to destination  
- **Customer Management**: Full customer profiles with contact information  
- **Fleet Management**: Vehicle tracking across all transportation modes  
- **Operator Management**: Drivers, pilots, captains, and engineers  
- **Business Intelligence Views**: Destination analysis, delivery efficiency, and channel performance  
- **Geographic Coverage**: Canadian operations across all provinces  

---

## 📊 Data Volume
- **40 shipments**  
- **20 customers**  
- **19 vehicles**  
- **20 operators**  

---

## 🌍 Geographic Scope
- **35 locations across Canadian provinces**  

---

## 🗄️ Database Schema

### Core Tables (8)
- `location` – Geographic addresses  
- `customers` – Customer information and contacts  
- `operators` – Multi-modal operators (drivers, pilots, captains, engineers)  
- `vehicles` – Fleet across transportation modes  
- `channels` – Sales and marketing channels  
- `shipments` – Core shipment data  
- `vehicle_operator_assignments` – Assignment management  
- `shipment_tracking` – Real-time tracking with status updates  

### Analytical Views (3)
- `vw_top_destinations_delivered` – Market analysis and route optimization  
- `vw_delivery_efficiency_analysis` – SLA monitoring and performance metrics  
- `vw_comprehensive_channel_performance` – Marketing ROI and channel analysis  

---

## 🛠️ Tech Stack
- **Database**: MySQL 8.0+  

---

## 🚦 Getting Started

### ✅ Prerequisites
- [MySQL 8.0 or higher](https://dev.mysql.com/downloads/mysql/)  
- [MySQL Workbench](https://dev.mysql.com/downloads/workbench/) (optional, for GUI)  

---

### ⚙️ Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/TishyaThakkar/FreightLink.git
    cd FreightLink
    ```
2. **Create the database**:
    ```sql
    mysql -u your_username -p < sql/schema/create_database.sql
    ```
3. **Create tables**:
    ```sql
    mysql -u your_username -p freightlink < sql/schema/create_tables.sql
    ```
4. **Insert sample data**:
    ```sql
    mysql -u your_username -p freightlink < sql/data/insert_sample_data.sql
    ```
5. **Create views**:
    ```sql
    mysql -u your_username -p freightlink < sql/views/create_views.sql
    ```
6. **Run sample queries**:
    ```sql
    mysql -u your_username -p freightlink < sql/queries/sample_queries.sql
    ```
---
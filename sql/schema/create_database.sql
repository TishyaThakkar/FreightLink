-- =================================================================
-- File: create_database.sql
-- Description: SQL script to create the freightlink_v7 database
-- =================================================================

-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'freightlink_v7'
)
CREATE DATABASE freightlink_v7
GO

-- Connect to the newly created database
USE freightlink_v7
GO

CREATE DATABASE IF NOT EXISTS BloodBankManagement;

USE BloodBankManagement;


-- =========================================================
-- 1. DONOR
-- Stores information about people who donate blood.
-- =========================================================

CREATE TABLE Donor (
    Donor_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INT NOT NULL,
    Gender VARCHAR(10),
    Blood_Group VARCHAR(3) NOT NULL,
    Address VARCHAR(255),
    Contact VARCHAR(15),
    Disease VARCHAR(100),
    Team_ID INT
);


-- =========================================================
-- 2. BLOOD BANK
-- Stores information about each blood bank.
-- =========================================================

CREATE TABLE Blood_Bank (
    Blood_Bank_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL
);


-- =========================================================
-- 3. HOSPITAL
-- Stores information about hospitals requesting blood.
-- =========================================================

CREATE TABLE Hospital (
    Hospital_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255) NOT NULL
);


-- =========================================================
-- 4. REGISTRATION TEAM
-- Teams responsible for registering donors and patients.
-- =========================================================

CREATE TABLE Registration_Team (
    Team_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);


-- =========================================================
-- 5. CLINICAL ANALYST
-- Stores information about analysts who examine donations.
-- =========================================================

CREATE TABLE Clinical_Analyst (
    Analyst_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);


-- =========================================================
-- 6. MANAGER
-- Each manager supervises a hospital.
-- =========================================================

CREATE TABLE Manager (
    Manager_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(255),
    Hospital_ID INT NOT NULL,

    FOREIGN KEY (Hospital_ID)
        REFERENCES Hospital(Hospital_ID)
);


-- =========================================================
-- 7. PATIENT
-- Stores information about patients receiving blood.
-- =========================================================

CREATE TABLE Patient (
    Patient_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    Blood_Group VARCHAR(3) NOT NULL,
    Address VARCHAR(255),
    Contact VARCHAR(15),
    Date_of_Intake DATE,
    Hospital_ID INT NOT NULL,
    Team_ID INT,

    FOREIGN KEY (Hospital_ID)
        REFERENCES Hospital(Hospital_ID),

    FOREIGN KEY (Team_ID)
        REFERENCES Registration_Team(Team_ID)
);


-- =========================================================
-- 8. BLOOD
-- Represents blood inventory stored in a blood bank.
-- =========================================================

CREATE TABLE Blood (
    Blood_ID INT PRIMARY KEY,
    Blood_Group VARCHAR(3) NOT NULL,
    Quantity_ml INT NOT NULL,
    Blood_Bank_ID INT NOT NULL,

    FOREIGN KEY (Blood_Bank_ID)
        REFERENCES Blood_Bank(Blood_Bank_ID),

    UNIQUE (Blood_Group, Blood_Bank_ID)
);


-- =========================================================
-- 9. DONATION
-- Records every individual donation made by a donor.
-- =========================================================

CREATE TABLE Donation (
    Donation_ID INT PRIMARY KEY,
    Donor_ID INT NOT NULL,
    Blood_Bank_ID INT NOT NULL,
    Analyst_ID INT,
    Blood_Group VARCHAR(3) NOT NULL,
    Quantity_ml INT NOT NULL,
    Donation_Date DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Pending',

    FOREIGN KEY (Donor_ID)
        REFERENCES Donor(Donor_ID),

    FOREIGN KEY (Blood_Bank_ID)
        REFERENCES Blood_Bank(Blood_Bank_ID),

    FOREIGN KEY (Analyst_ID)
        REFERENCES Clinical_Analyst(Analyst_ID)
);


-- =========================================================
-- 10. BLOOD REQUEST
-- Records requests made by hospitals for blood.
-- =========================================================

CREATE TABLE Blood_Request (
    Request_ID INT PRIMARY KEY,
    Hospital_ID INT NOT NULL,
    Blood_Bank_ID INT NOT NULL,
    Blood_Group VARCHAR(3) NOT NULL,
    Quantity_ml INT NOT NULL,
    Request_Date DATE NOT NULL,
    Status VARCHAR(20) DEFAULT 'Pending',

    FOREIGN KEY (Hospital_ID)
        REFERENCES Hospital(Hospital_ID),

    FOREIGN KEY (Blood_Bank_ID)
        REFERENCES Blood_Bank(Blood_Bank_ID)
);


-- =========================================================
-- ADD FOREIGN KEY TO DONOR
-- We create Donor before Registration_Team, so the FK
-- is added after both tables exist.
-- =========================================================

ALTER TABLE Donor
ADD CONSTRAINT fk_donor_team
FOREIGN KEY (Team_ID)
REFERENCES Registration_Team(Team_ID);
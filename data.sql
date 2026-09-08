USE BloodBankManagement;


-- =========================================================
-- 1. REGISTRATION TEAMS
-- =========================================================

INSERT INTO Registration_Team (Team_ID, Name)
VALUES
(1, 'Team Alpha'),
(2, 'Team Beta'),
(3, 'Team Gamma'),
(4, 'Team Delta'),
(5, 'Team Omega');


-- =========================================================
-- 2. BLOOD BANKS
-- =========================================================

INSERT INTO Blood_Bank (Blood_Bank_ID, Name, Location)
VALUES
(1, 'City Blood Bank', 'Downtown'),
(2, 'Health Blood Bank', 'Midtown'),
(3, 'LifeBlood Center', 'Uptown'),
(4, 'Red Cross Blood Bank', 'East End'),
(5, 'Universal Donor Blood Bank', 'West End');


-- =========================================================
-- 3. HOSPITALS
-- =========================================================

INSERT INTO Hospital (Hospital_ID, Name, Location)
VALUES
(1, 'General Hospital', 'City Center'),
(2, 'HealthPlus Clinic', 'East Side'),
(3, 'WellCare Hospital', 'West Side'),
(4, 'Prime Health', 'Downtown'),
(5, 'Life Care Clinic', 'Midtown');


-- =========================================================
-- 4. CLINICAL ANALYSTS
-- =========================================================

INSERT INTO Clinical_Analyst (Analyst_ID, Name)
VALUES
(1, 'Dr. Rohini Parasher'),
(2, 'Dr. Jay Agrawal'),
(3, 'Dr. Sushant Khan'),
(4, 'Dr. Manisha Salodkar'),
(5, 'Dr. Anil Gupta');


-- =========================================================
-- 5. DONORS
-- =========================================================

INSERT INTO Donor
    (Donor_ID, Name, Age, Gender, Blood_Group, Address, Contact, Disease, Team_ID)
VALUES
(1, 'Arjun Mehta', 29, 'Male', 'A+', 'Mumbai', '9876500011', 'None', 1),
(2, 'Riya Sharma', 24, 'Female', 'O-', 'Delhi', '9876500012', 'None', 2),
(3, 'Kabir Singh', 34, 'Male', 'B+', 'Pune', '9876500013', 'None', 3),
(4, 'Ananya Rao', 28, 'Female', 'AB+', 'Bengaluru', '9876500014', 'None', 4),
(5, 'Rahul Verma', 41, 'Male', 'O+', 'Chennai', '9876500015', 'Hypertension', 5),
(6, 'Meera Iyer', 31, 'Female', 'A-', 'Hyderabad', '9876500016', 'None', 1),
(7, 'Vikram Joshi', 37, 'Male', 'B-', 'Jaipur', '9876500017', 'None', 2),
(8, 'Simran Kaur', 26, 'Female', 'A+', 'Chandigarh', '9876500018', 'None', 3),
(9, 'Aditya Nair', 30, 'Male', 'O+', 'Kochi', '9876500019', 'Asthma', 4),
(10, 'Ishita Kapoor', 22, 'Female', 'B+', 'Delhi', '9876500020', 'None', 5),
(11, 'Rohan Malhotra', 45, 'Male', 'AB-', 'Noida', '9876500021', 'None', 1),
(12, 'Pooja Desai', 33, 'Female', 'A-', 'Ahmedabad', '9876500022', 'None', 2),
(13, 'Sahil Gupta', 27, 'Male', 'O-', 'Lucknow', '9876500023', 'None', 3),
(14, 'Nikita Shah', 36, 'Female', 'B+', 'Surat', '9876500024', 'None', 4),
(15, 'Manav Bhatia', 39, 'Male', 'O+', 'Gurugram', '9876500025', 'None', 5);


-- =========================================================
-- 6. PATIENTS
-- =========================================================

INSERT INTO Patient
    (Patient_ID, Name, Gender, Blood_Group, Address, Contact, Date_of_Intake, Hospital_ID, Team_ID)
VALUES
(1, 'Aarav Kapoor', 'Male', 'A+', 'Mumbai', '9876500101', '2026-01-10', 1, 1),
(2, 'Isha Verma', 'Female', 'B+', 'Delhi', '9876500102', '2026-01-18', 2, 2),
(3, 'Vihaan Shah', 'Male', 'O-', 'Pune', '9876500103', '2026-02-05', 3, 3),
(4, 'Anvi Patel', 'Female', 'AB+', 'Ahmedabad', '9876500104', '2026-02-14', 4, 4),
(5, 'Reyansh Nair', 'Male', 'O+', 'Kochi', '9876500105', '2026-02-20', 5, 5),
(6, 'Myra Joshi', 'Female', 'A-', 'Jaipur', '9876500106', '2026-03-02', 1, 2),
(7, 'Arnav Singh', 'Male', 'B-', 'Chandigarh', '9876500107', '2026-03-11', 2, 3),
(8, 'Sara Mehta', 'Female', 'A+', 'Mumbai', '9876500108', '2026-03-19', 3, 4),
(9, 'Dhruv Rao', 'Male', 'O+', 'Bengaluru', '9876500109', '2026-03-27', 4, 5),
(10, 'Kiara Das', 'Female', 'B+', 'Kolkata', '9876500110', '2026-04-04', 5, 1),
(11, 'Advik Malhotra', 'Male', 'AB-', 'Noida', '9876500111', '2026-04-12', 1, 3),
(12, 'Aanya Iyer', 'Female', 'A-', 'Chennai', '9876500112', '2026-04-20', 2, 4),
(13, 'Rudra Gupta', 'Male', 'O-', 'Lucknow', '9876500113', '2026-05-01', 3, 5),
(14, 'Tara Shah', 'Female', 'B+', 'Surat', '9876500114', '2026-05-09', 4, 1),
(15, 'Yash Bhatia', 'Male', 'O+', 'Gurugram', '9876500115', '2026-05-18', 5, 2);


-- =========================================================
-- 7. BLOOD INVENTORY
-- =========================================================

INSERT INTO Blood
    (Blood_ID, Blood_Group, Quantity_ml, Blood_Bank_ID)
VALUES
(1, 'A+', 500, 1),
(2, 'B+', 650, 1),
(3, 'O-', 300, 1),
(4, 'AB+', 250, 1),

(5, 'O+', 700, 2),
(6, 'A-', 400, 2),
(7, 'B-', 300, 2),

(8, 'A+', 350, 3),
(9, 'B+', 500, 3),
(10, 'O+', 450, 3),

(11, 'AB-', 200, 4),
(12, 'O-', 350, 4),
(13, 'A-', 300, 4),

(14, 'B+', 400, 5),
(15, 'O+', 600, 5);



-- =========================================================
-- 8. DONATIONS
-- Records each blood donation made by a donor.
-- =========================================================

INSERT INTO Donation
    (Donation_ID, Donor_ID, Blood_Bank_ID, Analyst_ID,
     Blood_Group, Quantity_ml, Donation_Date, Status)
VALUES
(1, 1, 1, 1, 'A+', 450, '2026-01-05', 'Approved'),
(2, 2, 1, 2, 'O-', 400, '2026-01-12', 'Approved'),
(3, 3, 2, 3, 'B+', 450, '2026-01-20', 'Approved'),
(4, 4, 2, 4, 'AB+', 350, '2026-01-28', 'Approved'),
(5, 5, 3, 5, 'O+', 450, '2026-02-06', 'Approved'),
(6, 6, 3, 1, 'A-', 400, '2026-02-15', 'Approved'),
(7, 7, 4, 2, 'B-', 350, '2026-02-23', 'Approved'),
(8, 8, 4, 3, 'A+', 450, '2026-03-03', 'Approved'),
(9, 9, 5, 4, 'O+', 450, '2026-03-12', 'Approved'),
(10, 10, 5, 5, 'B+', 400, '2026-03-21', 'Approved'),
(11, 11, 1, 1, 'AB-', 300, '2026-04-02', 'Approved'),
(12, 12, 2, 2, 'A-', 450, '2026-04-10', 'Approved'),
(13, 13, 3, 3, 'O-', 400, '2026-04-19', 'Pending'),
(14, 14, 4, 4, 'B+', 450, '2026-05-02', 'Approved'),
(15, 15, 5, 5, 'O+', 450, '2026-05-11', 'Pending');


-- =========================================================
-- 9. BLOOD REQUESTS
-- Records blood requests made by hospitals.
-- =========================================================

INSERT INTO Blood_Request
    (Request_ID, Hospital_ID, Blood_Bank_ID, Blood_Group,
     Quantity_ml, Request_Date, Status)
VALUES
(1, 1, 1, 'A+', 300, '2026-01-15', 'Fulfilled'),
(2, 2, 1, 'O-', 250, '2026-01-22', 'Fulfilled'),
(3, 3, 2, 'B+', 400, '2026-02-03', 'Fulfilled'),
(4, 4, 2, 'AB+', 200, '2026-02-12', 'Pending'),
(5, 5, 3, 'O+', 350, '2026-02-25', 'Fulfilled'),
(6, 1, 3, 'A-', 250, '2026-03-06', 'Fulfilled'),
(7, 2, 4, 'B-', 200, '2026-03-15', 'Pending'),
(8, 3, 4, 'A+', 300, '2026-03-25', 'Fulfilled'),
(9, 4, 5, 'O+', 400, '2026-04-05', 'Fulfilled'),
(10, 5, 5, 'B+', 300, '2026-04-15', 'Pending'),
(11, 1, 1, 'AB-', 150, '2026-04-25', 'Fulfilled'),
(12, 2, 2, 'A-', 300, '2026-05-04', 'Fulfilled'),
(13, 3, 3, 'O-', 250, '2026-05-14', 'Pending'),
(14, 4, 4, 'B+', 350, '2026-05-24', 'Fulfilled'),
(15, 5, 5, 'O+', 300, '2026-06-02', 'Pending');


-- =========================================================
-- 10. MANAGERS
-- Each manager supervises a hospital.
-- =========================================================

INSERT INTO Manager
    (Manager_ID, Name, Location, Hospital_ID)
VALUES
(1, 'Rajiv Menon', 'Mumbai', 1),
(2, 'Neha Kapoor', 'Delhi', 2),
(3, 'Amit Sharma', 'Pune', 3),
(4, 'Priya Nair', 'Bengaluru', 4),
(5, 'Karan Patel', 'Chennai', 5);
USE BloodBankManagement;


-- =========================================================
-- PROCEDURE 1
-- Find donors by blood group.
-- =========================================================

DELIMITER $$

CREATE PROCEDURE GetDonorsByBloodGroup(
    IN requested_group VARCHAR(3)
)
BEGIN

    SELECT
        Donor_ID,
        Name,
        Age,
        Gender,
        Blood_Group,
        Contact
    FROM Donor
    WHERE Blood_Group = requested_group;

END $$

DELIMITER ;


-- =========================================================
-- PROCEDURE 2
-- Show available blood for a particular blood group.
-- =========================================================

DELIMITER $$

CREATE PROCEDURE GetBloodAvailability(
    IN requested_group VARCHAR(3)
)
BEGIN

    SELECT
        b.Blood_ID,
        b.Blood_Group,
        b.Quantity_ml,
        bb.Blood_Bank_ID,
        bb.Name AS Blood_Bank_Name,
        bb.Location
    FROM Blood b
    JOIN Blood_Bank bb
        ON b.Blood_Bank_ID = bb.Blood_Bank_ID
    WHERE b.Blood_Group = requested_group
      AND b.Quantity_ml > 0;

END $$

DELIMITER ;


-- =========================================================
-- PROCEDURE 3
-- Show all pending blood requests.
-- =========================================================

DELIMITER $$

CREATE PROCEDURE GetPendingBloodRequests()
BEGIN

    SELECT
        br.Request_ID,
        h.Name AS Hospital_Name,
        bb.Name AS Blood_Bank_Name,
        br.Blood_Group,
        br.Quantity_ml,
        br.Request_Date,
        br.Status
    FROM Blood_Request br
    JOIN Hospital h
        ON br.Hospital_ID = h.Hospital_ID
    JOIN Blood_Bank bb
        ON br.Blood_Bank_ID = bb.Blood_Bank_ID
    WHERE br.Status = 'Pending';

END $$

DELIMITER ;
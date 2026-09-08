USE BloodBankManagement;


-- =========================================================
-- TRIGGER 1
-- Automatically add approved donations to blood inventory.
-- =========================================================

DELIMITER $$

CREATE TRIGGER after_donation_approved
AFTER INSERT ON Donation
FOR EACH ROW
BEGIN

    IF NEW.Status = 'Approved' THEN

        UPDATE Blood
        SET Quantity_ml = Quantity_ml + NEW.Quantity_ml
        WHERE Blood_Group = NEW.Blood_Group
          AND Blood_Bank_ID = NEW.Blood_Bank_ID;

    END IF;

END $$

DELIMITER ;


-- =========================================================
-- TRIGGER 2
-- Prevents donations greater than 450 ml.
-- =========================================================

DELIMITER $$

CREATE TRIGGER validate_donation_quantity
BEFORE INSERT ON Donation
FOR EACH ROW
BEGIN

    IF NEW.Quantity_ml > 450 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Donation quantity cannot exceed 450 ml';
    END IF;

END $$

DELIMITER ;
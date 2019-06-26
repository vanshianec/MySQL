CREATE PROCEDURE usp_transfer_money(from_account_id INT, to_account_id INT, amount DECIMAL(19,4))
BEGIN
IF amount > 0 
AND from_account_id != to_account_id 
AND (SELECT COUNT(1) FROM accounts a WHERE a.id = to_account_id) != 0 
AND (SELECT COUNT(1) FROM accounts a WHERE a.id = from_account_id) != 0
THEN 
	START TRANSACTION;
	UPDATE accounts a
    SET a.balance = a.balance - amount
    WHERE a.id = from_account_id;
    UPDATE accounts a
    SET a.balance = a.balance + amount
    WHERE a.id = to_account_id;
    IF (SELECT a.balance FROM accounts a WHERE a.id = from_account_id) < 0
    THEN ROLLBACK;
	END IF;
END IF;
END
CREATE PROCEDURE usp_withdraw_money(account_id INT , money_amount DECIMAL(19,4))
BEGIN
IF money_amount > 0 THEN
	START TRANSACTION;
	UPDATE accounts a
    SET a.balance = a.balance - money_amount
    WHERE a.id = account_id;
    IF (SELECT a.balance FROM accounts a WHERE a.id = account_id) < 0
    THEN ROLLBACK;
	END IF;
END IF;
END
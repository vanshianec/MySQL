CREATE FUNCTION ufn_calculate_future_value(initial_sum DOUBLE,interest_rate DOUBLE)
RETURNS DECIMAL(10,4)
RETURN (
   initial_sum * POWER((1 + interest_rate), 5)
);

CREATE PROCEDURE usp_calculate_future_value_for_account(id INT, interest_rate DECIMAL(10,4))
BEGIN
SELECT a.id, ah.first_name, ah.last_name, a.balance, ufn_calculate_future_value(a.balance, interest_rate)
FROM account_holders ah
JOIN accounts a
ON ah.id = a.account_holder_id
WHERE a.id = id;
END
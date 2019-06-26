CREATE FUNCTION ufn_calculate_future_value(initial_sum DOUBLE,interest_rate DOUBLE, years INT)
RETURNS DOUBLE
RETURN (
   initial_sum * POWER((1 + interest_rate), years)
);
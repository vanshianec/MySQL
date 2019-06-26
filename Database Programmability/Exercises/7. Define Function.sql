CREATE FUNCTION ufn_is_word_comprised(set_of_letters varchar(50), word varchar(50))
RETURNS BIT
RETURN (
   word REGEXP (CONCAT('^[', set_of_letters, ']+$'))
);
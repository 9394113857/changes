SELECT id,
       username,
       password,
       email,
       firstname,
       lastname,
       phonenumber,
       email_verified,
       phone_verified,
       blocked,
       created_on,
       password_modifications_count
  FROM accounts;

-- Delete the last entry from the 'accounts' table
DELETE FROM accounts
-- Identify the last entry by finding the maximum 'id' value
WHERE id = (SELECT MAX(id) FROM accounts);

--ALTER TABLE accounts
--ADD COLUMN password_modifications_count INTEGER DEFAULT 0;

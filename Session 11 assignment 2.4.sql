SELECT 
    *
FROM
    client_
        JOIN
    account_ ON account_.account_id = client_.client_account
WHERE
    account_type = 'savings';


SELECT 
    client_.client_name, client_.client_address
FROM client_
WHERE client_.client_id
IN
	(SELECT account_.account_id
	FROM account_, loan_
	WHERE account_.account_id = loan_.account_no
	AND loan_.loan_amount > 50000);
        
UPDATE client_ 
SET 
    client_name = 'ABC'
WHERE
    (client_id = '1');


SELECT DISTINCT
    transaction_.transaction_account AS account_number
FROM
    transaction_
WHERE
    transaction_.transaction_amount > 80000;

SELECT 
    COUNT(*) AS 'Fixed account'
FROM
    account_
WHERE
    account_.account_type = 'fixed';


SELECT 
    *
FROM
    client_
WHERE
    client_.client_id IN (SELECT 
            account_.account_id
        FROM
            account_
        WHERE
            account_.account_creation_date >= '2008-01-20'
                AND account_.account_creation_date <= '2008-08-20');

SELECT 
    *
FROM
    transaction_
WHERE
    transaction_.transaction_date = '28-Aug-08';


SELECT 
    deposits AS 'Amount Deposited',
    withdrawals AS 'Amount Withdrawn'
FROM
    (SELECT 
        SUM(T1.transaction_amount) AS deposits
    FROM
        transaction_ T1
    WHERE
        T1.transaction_type = 'deposit'
            AND T1.transaction_date = '29-Aug-08') deposit,
    (SELECT 
        SUM(T1.transaction_amount) AS withdrawals
    FROM
        transaction_ T1
    WHERE
        T1.transaction_type = 'withdraw'
            AND T1.transaction_date = '29-Aug-08') withdraw;
            
SELECT 
    *
FROM
    client_
WHERE
    client_.client_id IN (SELECT 
            account_.account_id
        FROM
            account_,
            loan_
        WHERE
            account_.account_id = loan_.account_no);
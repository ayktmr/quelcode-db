BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE
    users
SET
    is_deleted = 1
WHERE
    office_phone IS NULL
AND
    mobile IS NULL
AND
    is_deleted = 0;
COMMIT;

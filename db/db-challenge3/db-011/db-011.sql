BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE
    tasks
SET
    is_completion = 1,
    update_user_id = 1
WHERE
    (
        created_at >= '2020/04/26 09:00:00'
    AND created_at <= '2020/04/26 11:30:00'
    )
AND
    is_deleted = 0
AND
    is_completion = 0;
COMMIT;

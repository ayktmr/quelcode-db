BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
DELETE
FROM
    chatroom_users
WHERE
    users_id IN (
                SELECT id
                FROM users
                WHERE is_deleted = 1);
COMMIT;

BEGIN;
SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE
    chatrooms
SET
    is_send = 0,
    update_user_id = 1
WHERE
    is_deleted = 0
AND
    (id NOT IN(
        SELECT DISTINCT chatroom_users_id
        FROM chatroom_users
        WHERE users_id = 1
        )
    AND is_send = 1);
COMMIT;

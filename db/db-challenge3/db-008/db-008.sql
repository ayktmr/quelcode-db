SELECT
    users.name as user_name,
    chatrooms.name as chatroom_name,
DATE_FORMAT
    (joined_at, '%Y-%m-%d') AS joined_at
FROM
    chatroom_users
JOIN
    users
    ON chatroom_users.users_id = users.id
JOIN
    chatrooms
    ON chatroom_users.chatroom_users_id = chatrooms.id
WHERE
    users.is_deleted = '0'
AND
    chatrooms.is_deleted = '0'
ORDER BY
    joined_at;

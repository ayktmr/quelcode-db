SELECT
    COUNT(posts.id) AS 投稿数,
    chatrooms.name AS chatroom_name
FROM
    posts
JOIN
    chatrooms
    ON posts.chatroom_id = chatrooms.id
JOIN
    users
    ON posts.post_user_id = users.id
WHERE
    posts.is_deleted = '0'
AND
    users.is_deleted = '0'
GROUP BY
    posts.chatroom_id
ORDER BY
    COUNT(posts.id) DESC;

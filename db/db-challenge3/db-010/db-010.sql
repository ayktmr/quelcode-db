SELECT
    users_new_name.name AS 最新投稿者,
    posts_new.最新投稿日時 AS 最新投稿日,
    chatroom_new_name.name AS チャットルーム名
FROM
    (
        SELECT
            MAX(posted_at) AS 最新投稿日時,
            posts.chatroom_id AS chatroom_id_new
        FROM
            posts
        JOIN
            users
            ON posts.post_user_id = users.id
        WHERE
            users.is_deleted = '0'
        GROUP BY
            chatroom_id
    ) AS posts_new
JOIN
    posts AS posts_new_user_id
    ON posted_at = posts_new.最新投稿日時
    AND chatroom_id = posts_new.chatroom_id_new
JOIN
    users AS users_new_name
    ON posts_new_user_id.post_user_id = users_new_name.id
JOIN
    chatrooms AS chatroom_new_name
    ON posts_new_user_id.chatroom_id = chatroom_new_name.id
ORDER BY
    posts_new.chatroom_id_new;

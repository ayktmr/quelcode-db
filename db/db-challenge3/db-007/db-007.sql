SELECT
    id,
    name,
    description,
CASE
    is_send
    WHEN '0' THEN '許可'
    WHEN '1' THEN '禁止' END AS is_send,
    is_direct,
    is_deleted,
    created_at,
    create_user_id,
    updated_at,
    update_user_id
FROM
    chatrooms
WHERE
    is_deleted = '0'
AND
    description LIKE '%ダイレクトチャット'
ORDER BY
    id;

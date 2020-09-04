SELECT 
    id,
    email,
    password,
    name,
    biography,
    office_phone,
    mobile,
    is_deleted,
    created_at,
    updated_at
FROM
    users
ORDER BY
    id;

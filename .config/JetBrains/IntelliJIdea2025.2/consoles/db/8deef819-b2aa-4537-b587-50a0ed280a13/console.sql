ALTER table events
ADD COLUMN created_at bigint

ALTER table user_posts
ADD COLUMN post_id bigint GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
ADD COLUMN username varchar(255),
ADD COLUMN handle varchar(255),
ADD COLUMN created_at bigint,
ADD COLUMN post_text varchar(255);

select *
FROM user_posts;
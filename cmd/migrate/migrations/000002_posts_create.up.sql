CREATE TABLE IF NOT EXISTS posts (
    id bigserial PRIMARY KEY,
    title  text NOT NULL,
    content text NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp(0) without time zone NOT NULL DEFAULT now(),
    updated_at timestamp(0) without time zone NOT NULL DEFAULT now()
);

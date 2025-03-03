DROP TABLE IF EXISTS public.open_ai_bigrams;
CREATE TABLE IF NOT EXISTS public.open_ai_bigrams
(
    chat_id double precision,
    bigrams_tagged text COLLATE pg_catalog."default",
	created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.open_ai_bigrams OWNER to postgres;
	
DROP TABLE IF EXISTS public.open_ai_chat_store;
CREATE TABLE IF NOT EXISTS public.open_ai_chat_store
(
    chat_id double precision,
    question text COLLATE pg_catalog."default",
    instruction text COLLATE pg_catalog."default",
    chat_output text COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.open_ai_chat_store
    OWNER to postgres;
	
	
DROP TABLE IF EXISTS public.open_ai_chat_translated;
CREATE TABLE IF NOT EXISTS public.open_ai_chat_translated
(
    natural_language text COLLATE pg_catalog."default",
    translated_to_english text COLLATE pg_catalog."default",
    org_chat_id double precision,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.open_ai_chat_translated    OWNER to postgres;
	
DROP TABLE IF EXISTS public.open_ai_coreferences;
CREATE TABLE IF NOT EXISTS public.open_ai_coreferences
(
    chat_id double precision,
    coreferences_tagged text COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.open_ai_coreferences OWNER to pdi_dev;

DROP TABLE IF EXISTS public.open_ai_tagged_data;
CREATE TABLE IF NOT EXISTS public.open_ai_tagged_data
(
    org_chat_id double precision,
    sentiment_tagged text COLLATE pg_catalog."default",
    ner_tagged text COLLATE pg_catalog."default",
    pos_tagged text COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.open_ai_tagged_data OWNER to postgres;


DROP TABLE IF EXISTS public.python_similarity_measure;
CREATE TABLE IF NOT EXISTS public.python_similarity_measure
(
    chat_op1 text COLLATE pg_catalog."default",
    chat_op2 text COLLATE pg_catalog."default",
    similartity_score double precision,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.python_similarity_measure OWNER to postgres;
DROP TABLE IF EXISTS public.nlp_bigrams;
CREATE TABLE IF NOT EXISTS public.nlp_bigrams
(
    chat_id double precision,
    bigrams_tagged text COLLATE pg_catalog."default",
	created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_bigrams OWNER to postgres;
ALTER TABLE IF EXISTS public.nlp_bigrams OWNER to pdi_dev;

DROP TABLE IF EXISTS public.nlp_chat_store;
CREATE TABLE IF NOT EXISTS public.nlp_chat_store
(
    chat_id double precision,
    question text COLLATE pg_catalog."default",
    instruction text COLLATE pg_catalog."default",
    chat_output text COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    genai_model character varying(255) COLLATE pg_catalog."default"
)TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_chat_store    OWNER to postgres;
ALTER TABLE IF EXISTS public.nlp_chat_store    OWNER to pdi_dev;

DROP TABLE IF EXISTS public.nlp_chat_translated;
CREATE TABLE IF NOT EXISTS public.nlp_chat_translated
(
    natural_language text COLLATE pg_catalog."default",
    translated_to_english text COLLATE pg_catalog."default",
    chat_id double precision,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_chat_translated    OWNER to postgres;
ALTER TABLE IF EXISTS public.nlp_chat_translated    OWNER to pdi_dev;
	
DROP TABLE IF EXISTS public.nlp_coreferences;
CREATE TABLE IF NOT EXISTS public.nlp_coreferences
(
    chat_id double precision,
    coreferences_tagged text COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_coreferences OWNER to postgres;
ALTER TABLE IF EXISTS public.nlp_coreferences OWNER to pdi_dev;

DROP TABLE IF EXISTS public.nlp_tagged_data;
CREATE TABLE IF NOT EXISTS public.nlp_tagged_data
(
    chat_id double precision,
    sentiment_tagged text COLLATE pg_catalog."default",
    ner_tagged text COLLATE pg_catalog."default",
    pos_tagged text COLLATE pg_catalog."default",
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_tagged_data OWNER to postgres;
ALTER TABLE IF EXISTS public.nlp_tagged_data OWNER to pdi_dev;


DROP TABLE IF EXISTS public.nlp_cosine_similarity;
CREATE TABLE IF NOT EXISTS public.nlp_cosine_similarity
(
    chat_op1 text COLLATE pg_catalog."default",
    chat_op2 text COLLATE pg_catalog."default",
    cosine_similartity_score double precision,
    chat_id_sent_1 double precision,
    chat_id_sent_2 double precision,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
)TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_cosine_similarity    OWNER to postgres;
ALTER TABLE IF EXISTS public.nlp_cosine_similarity    OWNER to pdi_dev;

DROP TABLE IF EXISTS public.nlp_chat_language;
CREATE TABLE IF NOT EXISTS public.nlp_chat_language
(
    natural_language text COLLATE pg_catalog."default",
    chat_id double precision,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
) TABLESPACE pg_default;
ALTER TABLE IF EXISTS public.nlp_chat_language     OWNER to pdi_dev;
ALTER TABLE IF EXISTS public.nlp_chat_language     OWNER to postgres;
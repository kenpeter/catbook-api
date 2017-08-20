--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.4
-- Dumped by pg_dump version 9.6.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: catbook
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO catbook;

--
-- Name: cat_hobbies; Type: TABLE; Schema: public; Owner: catbook
--

CREATE TABLE cat_hobbies (
    id integer NOT NULL,
    cat_id integer,
    hobby_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE cat_hobbies OWNER TO catbook;

--
-- Name: cat_hobbies_id_seq; Type: SEQUENCE; Schema: public; Owner: catbook
--

CREATE SEQUENCE cat_hobbies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cat_hobbies_id_seq OWNER TO catbook;

--
-- Name: cat_hobbies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: catbook
--

ALTER SEQUENCE cat_hobbies_id_seq OWNED BY cat_hobbies.id;


--
-- Name: cats; Type: TABLE; Schema: public; Owner: catbook
--

CREATE TABLE cats (
    id integer NOT NULL,
    name character varying,
    breed character varying,
    weight character varying,
    temperament character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE cats OWNER TO catbook;

--
-- Name: cats_id_seq; Type: SEQUENCE; Schema: public; Owner: catbook
--

CREATE SEQUENCE cats_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cats_id_seq OWNER TO catbook;

--
-- Name: cats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: catbook
--

ALTER SEQUENCE cats_id_seq OWNED BY cats.id;


--
-- Name: hobbies; Type: TABLE; Schema: public; Owner: catbook
--

CREATE TABLE hobbies (
    id integer NOT NULL,
    name character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE hobbies OWNER TO catbook;

--
-- Name: hobbies_id_seq; Type: SEQUENCE; Schema: public; Owner: catbook
--

CREATE SEQUENCE hobbies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hobbies_id_seq OWNER TO catbook;

--
-- Name: hobbies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: catbook
--

ALTER SEQUENCE hobbies_id_seq OWNED BY hobbies.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: catbook
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO catbook;

--
-- Name: cat_hobbies id; Type: DEFAULT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY cat_hobbies ALTER COLUMN id SET DEFAULT nextval('cat_hobbies_id_seq'::regclass);


--
-- Name: cats id; Type: DEFAULT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY cats ALTER COLUMN id SET DEFAULT nextval('cats_id_seq'::regclass);


--
-- Name: hobbies id; Type: DEFAULT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY hobbies ALTER COLUMN id SET DEFAULT nextval('hobbies_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: catbook
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2017-08-19 13:44:15.715942	2017-08-19 13:44:15.715942
\.


--
-- Data for Name: cat_hobbies; Type: TABLE DATA; Schema: public; Owner: catbook
--

COPY cat_hobbies (id, cat_id, hobby_id, created_at, updated_at) FROM stdin;
1	1	1	2017-08-20 00:00:00	2017-08-20 00:00:00
2	2	2	2017-08-20 00:00:00	2017-08-20 00:00:00
\.


--
-- Name: cat_hobbies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: catbook
--

SELECT pg_catalog.setval('cat_hobbies_id_seq', 1, false);


--
-- Data for Name: cats; Type: TABLE DATA; Schema: public; Owner: catbook
--

COPY cats (id, name, breed, weight, temperament, created_at, updated_at) FROM stdin;
1	Moe	Tabby	fat	entitled	2017-08-20 00:00:00	2017-08-20 00:00:00
2	BlaCat	Tabby	fat	entitled	2017-08-20 00:00:00	2017-08-20 00:00:00
\.


--
-- Name: cats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: catbook
--

SELECT pg_catalog.setval('cats_id_seq', 1, false);


--
-- Data for Name: hobbies; Type: TABLE DATA; Schema: public; Owner: catbook
--

COPY hobbies (id, name, created_at, updated_at) FROM stdin;
1	eat	2017-08-20 00:00:00	2017-08-20 00:00:00
2	sleep	2017-08-20 00:00:00	2017-08-20 00:00:00
\.


--
-- Name: hobbies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: catbook
--

SELECT pg_catalog.setval('hobbies_id_seq', 1, false);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: catbook
--

COPY schema_migrations (version) FROM stdin;
20160614212044
20160614212209
20160614212350
\.


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: cat_hobbies cat_hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY cat_hobbies
    ADD CONSTRAINT cat_hobbies_pkey PRIMARY KEY (id);


--
-- Name: cats cats_pkey; Type: CONSTRAINT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY cats
    ADD CONSTRAINT cats_pkey PRIMARY KEY (id);


--
-- Name: hobbies hobbies_pkey; Type: CONSTRAINT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY hobbies
    ADD CONSTRAINT hobbies_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: catbook
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_cat_hobbies_on_cat_id; Type: INDEX; Schema: public; Owner: catbook
--

CREATE INDEX index_cat_hobbies_on_cat_id ON cat_hobbies USING btree (cat_id);


--
-- Name: index_cat_hobbies_on_hobby_id; Type: INDEX; Schema: public; Owner: catbook
--

CREATE INDEX index_cat_hobbies_on_hobby_id ON cat_hobbies USING btree (hobby_id);


--
-- PostgreSQL database dump complete
--


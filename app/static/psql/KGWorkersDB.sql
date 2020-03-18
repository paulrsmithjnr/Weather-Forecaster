--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)
-- Dumped by pg_dump version 11.5 (Ubuntu 11.5-0ubuntu0.19.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: alembic_version; Type: TABLE; Schema: public; Owner: ppt
--

CREATE TABLE public.alembic_version (
    version_num character varying(32) NOT NULL
);


ALTER TABLE public.alembic_version OWNER TO ppt;

--
-- Name: workers; Type: TABLE; Schema: public; Owner: ppt
--

CREATE TABLE public.workers (
    id integer NOT NULL,
    first_name character varying(80),
    last_name character varying(80),
    address1 character varying(80),
    city character varying(50),
    country character varying(50),
    telephone_no character varying(20),
    role character varying(80),
    email character varying(60),
    addresslocation character varying(80)
);


ALTER TABLE public.workers OWNER TO ppt;

--
-- Name: workers_id_seq; Type: SEQUENCE; Schema: public; Owner: ppt
--

CREATE SEQUENCE public.workers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.workers_id_seq OWNER TO ppt;

--
-- Name: workers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ppt
--

ALTER SEQUENCE public.workers_id_seq OWNED BY public.workers.id;


--
-- Name: workers id; Type: DEFAULT; Schema: public; Owner: ppt
--

ALTER TABLE ONLY public.workers ALTER COLUMN id SET DEFAULT nextval('public.workers_id_seq'::regclass);


--
-- Data for Name: alembic_version; Type: TABLE DATA; Schema: public; Owner: ppt
--

COPY public.alembic_version (version_num) FROM stdin;
d16e81d66572
\.


--
-- Data for Name: workers; Type: TABLE DATA; Schema: public; Owner: ppt
--

COPY public.workers (id, first_name, last_name, address1, city, country, telephone_no, role, email, addresslocation) FROM$
1       Monique Satchwell       Portmore        Kingston        Jamaica 876456789       IT      mkayla510@hotmail.com   K$
2       Paul    Smith   Yallahs Kingston        Jamaica 879456123       Temp    paulrsmithjnr@gmail.com Montego Bay
\.


--
-- Name: workers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ppt
--

SELECT pg_catalog.setval('public.workers_id_seq', 7, true);


--
-- Name: alembic_version alembic_version_pkc; Type: CONSTRAINT; Schema: public; Owner: ppt
--

ALTER TABLE ONLY public.alembic_version
    ADD CONSTRAINT alembic_version_pkc PRIMARY KEY (version_num);


--
-- Name: workers workers_pkey; Type: CONSTRAINT; Schema: public; Owner: ppt
--

ALTER TABLE ONLY public.workers
    ADD CONSTRAINT workers_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: students; Type: TABLE; Schema: public; Owner: WTF
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    username character varying(255) NOT NULL,
    password character(60) NOT NULL,
    auth integer DEFAULT 4 NOT NULL
);


ALTER TABLE public.students OWNER TO "WTF";

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: WTF
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO "WTF";

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: WTF
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: WTF
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: WTF
--

COPY public.students (id, first_name, last_name, username, password, auth) FROM stdin;
6	test	test	tested	#WTFv2                                                      	4
7	John	Doe	Joe	                                                            	4
8	test	test2	tester	hello                                                       	4
9	def	def	pdf	sdf                                                         	4
10	erer	dis	pdf	sdf                                                         	4
11	John	doe	Joe	sdadsa                                                      	4
12	hello	dude	wazza	$2b$12$X4tM1iXt1i5r.cc0u77MreXnw7uabakzx60Elk4RreHsEddqjoDRm	4
13	as	as	as	$2b$12$2OaO38nL7tkFfXsTXnpwD.fxDxVqSr5PwYUdkP9Itjl95qwRAilqG	4
14	erik	nord	postnord	$2b$12$HXI1z/EXCmAd7PlkaowS1.Kx9uE74AKAnsXHFlpPa6w31lsXr9Kv6	1
15	sda	sda	sda	$2b$12$v3zv4BoTTrbDpYbJbg1WJ.cRM17tyHEiR6//6PSLQRwtnTiMC221u	4
\.


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: WTF
--

SELECT pg_catalog.setval('public.students_id_seq', 15, true);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: WTF
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


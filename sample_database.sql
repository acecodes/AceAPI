--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.6
-- Dumped by pg_dump version 9.3.6
-- Started on 2015-03-10 13:08:10 PDT

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 193 (class 3079 OID 11787)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2135 (class 0 OID 0)
-- Dependencies: 193
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 177 (class 1259 OID 17970)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO root;

--
-- TOC entry 176 (class 1259 OID 17968)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO root;

--
-- TOC entry 2136 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 179 (class 1259 OID 17980)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO root;

--
-- TOC entry 178 (class 1259 OID 17978)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO root;

--
-- TOC entry 2137 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 175 (class 1259 OID 17960)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO root;

--
-- TOC entry 174 (class 1259 OID 17958)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO root;

--
-- TOC entry 2138 (class 0 OID 0)
-- Dependencies: 174
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 181 (class 1259 OID 17990)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO root;

--
-- TOC entry 183 (class 1259 OID 18000)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO root;

--
-- TOC entry 182 (class 1259 OID 17998)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO root;

--
-- TOC entry 2139 (class 0 OID 0)
-- Dependencies: 182
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 180 (class 1259 OID 17988)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO root;

--
-- TOC entry 2140 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 185 (class 1259 OID 18010)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO root;

--
-- TOC entry 184 (class 1259 OID 18008)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO root;

--
-- TOC entry 2141 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 187 (class 1259 OID 18064)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO root;

--
-- TOC entry 186 (class 1259 OID 18062)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO root;

--
-- TOC entry 2142 (class 0 OID 0)
-- Dependencies: 186
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 173 (class 1259 OID 17950)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO root;

--
-- TOC entry 172 (class 1259 OID 17948)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO root;

--
-- TOC entry 2143 (class 0 OID 0)
-- Dependencies: 172
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 171 (class 1259 OID 17939)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO root;

--
-- TOC entry 170 (class 1259 OID 17937)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO root;

--
-- TOC entry 2144 (class 0 OID 0)
-- Dependencies: 170
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- TOC entry 188 (class 1259 OID 18086)
-- Name: django_session; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO root;

--
-- TOC entry 190 (class 1259 OID 18099)
-- Name: restapi_animal; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE restapi_animal (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    mammal boolean NOT NULL
);


ALTER TABLE public.restapi_animal OWNER TO root;

--
-- TOC entry 189 (class 1259 OID 18097)
-- Name: restapi_animal_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE restapi_animal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restapi_animal_id_seq OWNER TO root;

--
-- TOC entry 2145 (class 0 OID 0)
-- Dependencies: 189
-- Name: restapi_animal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE restapi_animal_id_seq OWNED BY restapi_animal.id;


--
-- TOC entry 192 (class 1259 OID 18107)
-- Name: restapi_person; Type: TABLE; Schema: public; Owner: root; Tablespace: 
--

CREATE TABLE restapi_person (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    birthday date NOT NULL,
    employed boolean NOT NULL
);


ALTER TABLE public.restapi_person OWNER TO root;

--
-- TOC entry 191 (class 1259 OID 18105)
-- Name: restapi_person_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE restapi_person_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.restapi_person_id_seq OWNER TO root;

--
-- TOC entry 2146 (class 0 OID 0)
-- Dependencies: 191
-- Name: restapi_person_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE restapi_person_id_seq OWNED BY restapi_person.id;


--
-- TOC entry 1929 (class 2604 OID 17973)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 1930 (class 2604 OID 17983)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 1928 (class 2604 OID 17963)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 1931 (class 2604 OID 17993)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 1932 (class 2604 OID 18003)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 1933 (class 2604 OID 18013)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 1934 (class 2604 OID 18067)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 1927 (class 2604 OID 17953)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 1926 (class 2604 OID 17942)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- TOC entry 1936 (class 2604 OID 18102)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY restapi_animal ALTER COLUMN id SET DEFAULT nextval('restapi_animal_id_seq'::regclass);


--
-- TOC entry 1937 (class 2604 OID 18110)
-- Name: id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY restapi_person ALTER COLUMN id SET DEFAULT nextval('restapi_person_id_seq'::regclass);


--
-- TOC entry 2112 (class 0 OID 17970)
-- Dependencies: 177
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- TOC entry 2147 (class 0 OID 0)
-- Dependencies: 176
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- TOC entry 2114 (class 0 OID 17980)
-- Dependencies: 179
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2148 (class 0 OID 0)
-- Dependencies: 178
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 2110 (class 0 OID 17960)
-- Dependencies: 175
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add person	7	add_person
20	Can change person	7	change_person
21	Can delete person	7	delete_person
22	Can add animal	8	add_animal
23	Can change animal	8	change_animal
24	Can delete animal	8	delete_animal
\.


--
-- TOC entry 2149 (class 0 OID 0)
-- Dependencies: 174
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_permission_id_seq', 24, true);


--
-- TOC entry 2116 (class 0 OID 17990)
-- Dependencies: 181
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- TOC entry 2118 (class 0 OID 18000)
-- Dependencies: 183
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- TOC entry 2150 (class 0 OID 0)
-- Dependencies: 182
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- TOC entry 2151 (class 0 OID 0)
-- Dependencies: 180
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- TOC entry 2120 (class 0 OID 18010)
-- Dependencies: 185
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2152 (class 0 OID 0)
-- Dependencies: 184
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 2122 (class 0 OID 18064)
-- Dependencies: 187
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- TOC entry 2153 (class 0 OID 0)
-- Dependencies: 186
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- TOC entry 2108 (class 0 OID 17950)
-- Dependencies: 173
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	person	restapi	person
8	animal	restapi	animal
\.


--
-- TOC entry 2154 (class 0 OID 0)
-- Dependencies: 172
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_content_type_id_seq', 8, true);


--
-- TOC entry 2106 (class 0 OID 17939)
-- Dependencies: 171
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2015-03-04 14:19:05.315591-08
2	auth	0001_initial	2015-03-04 14:19:05.421237-08
3	admin	0001_initial	2015-03-04 14:19:05.472854-08
4	sessions	0001_initial	2015-03-04 14:19:05.488086-08
5	restapi	0001_initial	2015-03-04 14:19:42.182481-08
6	restapi	0002_auto_20150304_2220	2015-03-04 14:20:45.893704-08
\.


--
-- TOC entry 2155 (class 0 OID 0)
-- Dependencies: 170
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('django_migrations_id_seq', 6, true);


--
-- TOC entry 2123 (class 0 OID 18086)
-- Dependencies: 188
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- TOC entry 2125 (class 0 OID 18099)
-- Dependencies: 190
-- Data for Name: restapi_animal; Type: TABLE DATA; Schema: public; Owner: root
--

COPY restapi_animal (id, name, mammal) FROM stdin;
4	Toucan	t
5	Zebra	t
6	Iguana	t
\.


--
-- TOC entry 2156 (class 0 OID 0)
-- Dependencies: 189
-- Name: restapi_animal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('restapi_animal_id_seq', 6, true);


--
-- TOC entry 2127 (class 0 OID 18107)
-- Dependencies: 192
-- Data for Name: restapi_person; Type: TABLE DATA; Schema: public; Owner: root
--

COPY restapi_person (id, name, birthday, employed) FROM stdin;
1	Zeke	1900-07-23	f
\.


--
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 191
-- Name: restapi_person_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('restapi_person_id_seq', 1, true);


--
-- TOC entry 1951 (class 2606 OID 17977)
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 1957 (class 2606 OID 17987)
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 1959 (class 2606 OID 17985)
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 1953 (class 2606 OID 17975)
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 1946 (class 2606 OID 17967)
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 1948 (class 2606 OID 17965)
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 1968 (class 2606 OID 18005)
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 1970 (class 2606 OID 18007)
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 1961 (class 2606 OID 17995)
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 1974 (class 2606 OID 18015)
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 1976 (class 2606 OID 18017)
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 1964 (class 2606 OID 17997)
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 1980 (class 2606 OID 18073)
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 1941 (class 2606 OID 17957)
-- Name: django_content_type_app_label_7ffa34799e7a58db_uniq; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_7ffa34799e7a58db_uniq UNIQUE (app_label, model);


--
-- TOC entry 1943 (class 2606 OID 17955)
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 1939 (class 2606 OID 17947)
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 1983 (class 2606 OID 18093)
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 1986 (class 2606 OID 18104)
-- Name: restapi_animal_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY restapi_animal
    ADD CONSTRAINT restapi_animal_pkey PRIMARY KEY (id);


--
-- TOC entry 1988 (class 2606 OID 18112)
-- Name: restapi_person_pkey; Type: CONSTRAINT; Schema: public; Owner: root; Tablespace: 
--

ALTER TABLE ONLY restapi_person
    ADD CONSTRAINT restapi_person_pkey PRIMARY KEY (id);


--
-- TOC entry 1949 (class 1259 OID 18024)
-- Name: auth_group_name_30cb5cec7a29f779_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_group_name_30cb5cec7a29f779_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 1954 (class 1259 OID 18035)
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 1955 (class 1259 OID 18036)
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 1944 (class 1259 OID 18023)
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- TOC entry 1965 (class 1259 OID 18049)
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- TOC entry 1966 (class 1259 OID 18048)
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- TOC entry 1971 (class 1259 OID 18061)
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 1972 (class 1259 OID 18060)
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 1962 (class 1259 OID 18037)
-- Name: auth_user_username_122fcaaabc7845ba_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX auth_user_username_122fcaaabc7845ba_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 1977 (class 1259 OID 18084)
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 1978 (class 1259 OID 18085)
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- TOC entry 1981 (class 1259 OID 18094)
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- TOC entry 1984 (class 1259 OID 18095)
-- Name: django_session_session_key_11316d562e028e43_like; Type: INDEX; Schema: public; Owner: root; Tablespace: 
--

CREATE INDEX django_session_session_key_11316d562e028e43_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 1989 (class 2606 OID 18018)
-- Name: auth_content_type_id_393be70dab2bac97_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_content_type_id_393be70dab2bac97_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1990 (class 2606 OID 18025)
-- Name: auth_group_permissio_group_id_4f257e7aafc74190_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_group_id_4f257e7aafc74190_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1991 (class 2606 OID 18030)
-- Name: auth_group_permission_id_2cbb84277f41d18f_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permission_id_2cbb84277f41d18f_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1995 (class 2606 OID 18055)
-- Name: auth_user__permission_id_5bd42207379010ca_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user__permission_id_5bd42207379010ca_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1993 (class 2606 OID 18043)
-- Name: auth_user_groups_group_id_444afcd712795ef4_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_444afcd712795ef4_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1992 (class 2606 OID 18038)
-- Name: auth_user_groups_user_id_3dd9a28e6f7b3dfd_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_3dd9a28e6f7b3dfd_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1994 (class 2606 OID 18050)
-- Name: auth_user_user_permiss_user_id_6f05d4e51c5ac638_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permiss_user_id_6f05d4e51c5ac638_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1996 (class 2606 OID 18074)
-- Name: djang_content_type_id_7655d8ad3f84fc3_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT djang_content_type_id_7655d8ad3f84fc3_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 1997 (class 2606 OID 18079)
-- Name: django_admin_log_user_id_2aaa15b7214f4ba9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_2aaa15b7214f4ba9_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2134 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2015-03-10 13:08:10 PDT

--
-- PostgreSQL database dump complete
--


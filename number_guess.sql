--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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

SET default_table_access_method = heap;

--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(30) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (20, 'user_1655319479284', 2, 890);
INSERT INTO public.users VALUES (19, 'user_1655319479285', 5, 125);
INSERT INTO public.users VALUES (22, 'user_1655319516326', 2, 111);
INSERT INTO public.users VALUES (21, 'user_1655319516327', 5, 123);
INSERT INTO public.users VALUES (24, 'user_1655319538742', 2, 315);
INSERT INTO public.users VALUES (23, 'user_1655319538743', 5, 388);
INSERT INTO public.users VALUES (26, 'user_1655319564554', 2, 399);
INSERT INTO public.users VALUES (25, 'user_1655319564555', 5, 149);
INSERT INTO public.users VALUES (28, 'user_1657872262313', 2, 501);
INSERT INTO public.users VALUES (27, 'user_1657872262314', 5, 186);
INSERT INTO public.users VALUES (30, 'user_1657872971364', 2, 189);
INSERT INTO public.users VALUES (29, 'user_1657872971365', 5, 308);
INSERT INTO public.users VALUES (32, 'user_1658823961752', 2, 334);
INSERT INTO public.users VALUES (31, 'user_1658823961753', 5, 165);
INSERT INTO public.users VALUES (44, 'user_1658824729931', 2, 317);
INSERT INTO public.users VALUES (43, 'user_1658824729932', 5, 160);
INSERT INTO public.users VALUES (34, 'user_1658824027146', 2, 201);
INSERT INTO public.users VALUES (33, 'user_1658824027147', 5, 264);
INSERT INTO public.users VALUES (46, 'user_1658825283979', 2, 152);
INSERT INTO public.users VALUES (36, 'user_1658824276573', 2, 292);
INSERT INTO public.users VALUES (45, 'user_1658825283980', 5, 165);
INSERT INTO public.users VALUES (35, 'user_1658824276574', 5, 150);
INSERT INTO public.users VALUES (38, 'user_1658824293475', 2, 420);
INSERT INTO public.users VALUES (37, 'user_1658824293476', 5, 148);
INSERT INTO public.users VALUES (48, 'user_1658825299675', 2, 21);
INSERT INTO public.users VALUES (47, 'user_1658825299676', 5, 242);
INSERT INTO public.users VALUES (40, 'user_1658824297700', 2, 209);
INSERT INTO public.users VALUES (39, 'user_1658824297701', 5, 107);
INSERT INTO public.users VALUES (42, 'user_1658824312262', 2, 819);
INSERT INTO public.users VALUES (50, 'user_1658826665920', 2, 303);
INSERT INTO public.users VALUES (41, 'user_1658824312263', 5, 16);
INSERT INTO public.users VALUES (49, 'user_1658826665921', 5, 23);
INSERT INTO public.users VALUES (52, 'user_1658826670352', 2, 148);
INSERT INTO public.users VALUES (51, 'user_1658826670353', 5, 125);
INSERT INTO public.users VALUES (54, 'user_1658826673587', 2, 82);
INSERT INTO public.users VALUES (53, 'user_1658826673588', 5, 303);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 54, true);


--
-- Name: users username; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

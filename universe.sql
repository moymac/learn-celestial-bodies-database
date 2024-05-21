--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: cluster; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cluster (
    cluster_id integer NOT NULL,
    name character varying(30) NOT NULL,
    black_holes integer NOT NULL
);


ALTER TABLE public.cluster OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.cluster_cluster_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cluster_cluster_id_seq OWNER TO freecodecamp;

--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.cluster_cluster_id_seq OWNED BY public.cluster.cluster_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    distance_from_earth integer NOT NULL,
    form character varying(20) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    is_gray boolean,
    planet_id integer NOT NULL,
    diameter integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    has_water boolean,
    size integer,
    population numeric,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    life_stage character varying(20) NOT NULL,
    surface_temperature integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: cluster cluster_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster ALTER COLUMN cluster_id SET DEFAULT nextval('public.cluster_cluster_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: cluster; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cluster VALUES (1, 'Bullet Cluster', 50);
INSERT INTO public.cluster VALUES (2, 'Abell 520', 600);
INSERT INTO public.cluster VALUES (3, 'El Gordo', 400);
INSERT INTO public.cluster VALUES (4, 'Musket Ball Cluster', 5000);
INSERT INTO public.cluster VALUES (5, 'Pandora', 8000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 260000, 2537000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Antennae', 500000, 45000000, 'Interacting');
INSERT INTO public.galaxy VALUES (3, 'Bear Paw', 5000000, 46000, 'Compact dwarf');
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 17300000, 10710000, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Bodes', 18000000, 20000000, 'Spiral');
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 1100000, 500000, 'Lenticular ring');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 1, 4000);
INSERT INTO public.moon VALUES (2, 'Europa', false, 2, 6000);
INSERT INTO public.moon VALUES (3, 'Callisto', false, 3, 4000);
INSERT INTO public.moon VALUES (4, 'Ganymede', true, 3, 4000);
INSERT INTO public.moon VALUES (5, 'Himalia', true, 2, 4000);
INSERT INTO public.moon VALUES (6, 'Amalthea', true, 4, 4000);
INSERT INTO public.moon VALUES (7, 'Thebe', true, 4, 4000);
INSERT INTO public.moon VALUES (8, 'Themisto', true, 4, 4000);
INSERT INTO public.moon VALUES (9, 'Carpo', true, 4, 4000);
INSERT INTO public.moon VALUES (10, 'Cyllene', true, 5, 4000);
INSERT INTO public.moon VALUES (11, 'Herse', true, 5, 4000);
INSERT INTO public.moon VALUES (12, 'Hyperion', true, 5, 4000);
INSERT INTO public.moon VALUES (13, 'Mimas', true, 5, 4000);
INSERT INTO public.moon VALUES (14, 'Iapetus', true, 6, 4000);
INSERT INTO public.moon VALUES (15, 'Ananke', true, 7, 4000);
INSERT INTO public.moon VALUES (16, 'Tethys', true, 8, 4000);
INSERT INTO public.moon VALUES (17, 'Adrastea', true, 9, 4000);
INSERT INTO public.moon VALUES (18, 'Praxidike', true, 10, 4000);
INSERT INTO public.moon VALUES (19, 'Elara', true, 11, 4000);
INSERT INTO public.moon VALUES (20, 'Sinope', true, 11, 4000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Cool planet', true, 12742, 8, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 'Red', true, 15742, 0, 1);
INSERT INTO public.planet VALUES (3, 'Uranus', 'Big planet', false, 50742, 0, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 'Small planet', false, 10742, 0, 1);
INSERT INTO public.planet VALUES (5, 'Arion', 'Far planet', NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (6, 'Orbitar', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (7, 'Taphao Thong', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (8, 'Dimidium', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (9, 'Galileo', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (10, 'Brahe', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Lipperhey', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'Janssen', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, 'Harriet', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Polaris', 1, 'White supergiant', 45000);
INSERT INTO public.star VALUES (2, 'Rigel', 2, 'Blue supergiant', 50000);
INSERT INTO public.star VALUES (3, 'Sirius', 3, 'Red giant', 99400);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 4, 'Red supergiant', 90000);
INSERT INTO public.star VALUES (5, 'Antares', 5, 'Red supergiant', 95000);
INSERT INTO public.star VALUES (6, 'Vega', 6, 'Bright blue', 80000);


--
-- Name: cluster_cluster_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cluster_cluster_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: cluster cluster_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_name_key UNIQUE (name);


--
-- Name: cluster cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cluster
    ADD CONSTRAINT cluster_pkey PRIMARY KEY (cluster_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


--
-- PostgreSQL database dump
--

-- Dumped from database version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.14 (Ubuntu 12.14-0ubuntu0.20.04.1)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30),
    galaxy_id integer NOT NULL,
    age_in_mil_yr integer,
    weight_in_g numeric(4,1),
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    name character varying(30),
    moon_id integer NOT NULL,
    age_in_mil_yr integer,
    weight_in_g numeric(4,1),
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer
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
    name character varying(30),
    planet_id integer NOT NULL,
    age_in_mil_yr integer,
    weight_in_g numeric(4,1),
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    star_id integer
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
    name character varying(30),
    star_id integer NOT NULL,
    age_in_mil_yr integer,
    weight_in_g numeric(4,1),
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    galaxy_id integer
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
-- Name: starwars; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.starwars (
    name character varying(30),
    starwars_id integer NOT NULL,
    age_in_mil_yr integer,
    weight_in_g numeric(4,1),
    distance_from_earth integer,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.starwars OWNER TO freecodecamp;

--
-- Name: starwars_starwars_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.starwars_starwars_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.starwars_starwars_id_seq OWNER TO freecodecamp;

--
-- Name: starwars_starwars_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.starwars_starwars_id_seq OWNED BY public.starwars.starwars_id;


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
-- Name: starwars starwars_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars ALTER COLUMN starwars_id SET DEFAULT nextval('public.starwars_starwars_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Mercury', 1, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.galaxy VALUES ('Two', 2, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.galaxy VALUES ('Three', 3, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.galaxy VALUES ('Four', 4, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.galaxy VALUES ('Five', 5, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.galaxy VALUES ('Six', 6, 4, 4.1, 3, 'Fun', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('One', 1, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.moon VALUES ('Two', 2, 4, 4.1, 3, 'Fun', true, true, 2);
INSERT INTO public.moon VALUES ('Three', 3, 4, 4.1, 3, 'Fun', true, true, 4);
INSERT INTO public.moon VALUES ('Four', 4, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.moon VALUES ('Five', 5, 4, 4.1, 3, 'Fun', true, true, 2);
INSERT INTO public.moon VALUES ('Six', 6, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.moon VALUES ('Seven', 7, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.moon VALUES ('Eight', 8, 4, 4.1, 3, 'Fun', true, true, 8);
INSERT INTO public.moon VALUES ('Nine', 9, 4, 4.1, 3, 'Fun', true, true, 9);
INSERT INTO public.moon VALUES ('Ten', 10, 4, 4.1, 3, 'Fun', true, true, 11);
INSERT INTO public.moon VALUES ('Eleven', 11, 4, 4.1, 3, 'Fun', true, true, 12);
INSERT INTO public.moon VALUES ('Twevle', 12, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.moon VALUES ('Thirteen', 13, 4, 4.1, 3, 'Fun', true, true, 4);
INSERT INTO public.moon VALUES ('Fourteen', 14, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.moon VALUES ('Fifteen', 15, 4, 4.1, 3, 'Fun', true, true, 3);
INSERT INTO public.moon VALUES ('Sixteen', 16, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.moon VALUES ('Eighteen', 17, 4, 4.1, 3, 'Fun', true, true, 2);
INSERT INTO public.moon VALUES ('Nineteen', 18, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.moon VALUES ('Tweenty', 19, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.moon VALUES ('One1', 20, 4, 4.1, 3, 'Fun', true, true, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('One', 1, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.planet VALUES ('Two', 2, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.planet VALUES ('Three', 3, 4, 4.1, 3, 'Fun', true, true, 3);
INSERT INTO public.planet VALUES ('Four', 4, 4, 4.1, 3, 'Fun', true, true, 4);
INSERT INTO public.planet VALUES ('Five', 5, 4, 4.1, 3, 'Fun', true, true, 2);
INSERT INTO public.planet VALUES ('Six', 6, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.planet VALUES ('Seven', 7, 4, 4.1, 3, 'Fun', true, true, 5);
INSERT INTO public.planet VALUES ('Eight', 8, 4, 4.1, 3, 'Fun', true, true, 3);
INSERT INTO public.planet VALUES ('Nine', 9, 4, 4.1, 3, 'Fun', true, true, 4);
INSERT INTO public.planet VALUES ('Ten', 10, 4, 4.1, 3, 'Fun', true, true, 4);
INSERT INTO public.planet VALUES ('Eleven', 11, 4, 4.1, 3, 'Fun', true, true, 2);
INSERT INTO public.planet VALUES ('Twevle', 12, 4, 4.1, 3, 'Fun', true, true, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('One', 1, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.star VALUES ('Two', 2, 4, 4.1, 3, 'Fun', true, true, 1);
INSERT INTO public.star VALUES ('Three', 3, 4, 4.1, 3, 'Fun', true, true, 3);
INSERT INTO public.star VALUES ('Four', 4, 4, 4.1, 3, 'Fun', true, true, 4);
INSERT INTO public.star VALUES ('Five', 5, 4, 4.1, 3, 'Fun', true, true, 2);
INSERT INTO public.star VALUES ('Six', 6, 4, 4.1, 3, 'Fun', true, true, 5);


--
-- Data for Name: starwars; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.starwars VALUES ('One1', 1, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.starwars VALUES ('Two2', 2, 4, 4.1, 3, 'Fun', true, true);
INSERT INTO public.starwars VALUES ('Three3', 3, 4, 4.1, 3, 'Fun', true, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: starwars_starwars_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.starwars_starwars_id_seq', 3, true);


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
-- Name: starwars starwars_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars
    ADD CONSTRAINT starwars_name_key UNIQUE (name);


--
-- Name: starwars starwars_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.starwars
    ADD CONSTRAINT starwars_pkey PRIMARY KEY (starwars_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


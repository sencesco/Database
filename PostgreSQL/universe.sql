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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_type character varying(255),
    distance_from_earth integer,
    description text
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
    name character varying(255) NOT NULL,
    planet_id integer,
    moon_type character varying(255),
    radius numeric,
    has_life boolean
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
    name character varying(255) NOT NULL,
    star_id integer,
    planet_type character varying(255),
    is_spherical boolean,
    age_in_millions_of_years integer
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(255) NOT NULL,
    number_of_stars integer NOT NULL,
    number_of_planets integer NOT NULL,
    description text
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer,
    star_type character varying(255),
    age_in_millions_of_years integer,
    has_life boolean
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 0, 'Our home galaxy');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 2537000, 'Closest spiral galaxy');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 3000000, 'Third-largest member of the Local Group');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral', 23000000, 'Famous spiral galaxy');
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Elliptical', 29000000, 'Galaxy with a bright nucleus');
INSERT INTO public.galaxy VALUES (6, 'Messier 81', 'Spiral', 12000000, 'Galaxy in the constellation Ursa Major');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 'Natural', 1737.1, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, 'Natural', 11.1, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, 'Natural', 6.2, false);
INSERT INTO public.moon VALUES (4, 'Io', 4, 'Natural', 1821.6, false);
INSERT INTO public.moon VALUES (5, 'Europa', 4, 'Natural', 1560.8, false);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4, 'Natural', 2634.1, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 4, 'Natural', 2410.3, false);
INSERT INTO public.moon VALUES (8, 'Titan', 5, 'Natural', 2575.5, false);
INSERT INTO public.moon VALUES (9, 'Enceladus', 5, 'Natural', 252.1, false);
INSERT INTO public.moon VALUES (10, 'Mimas', 5, 'Natural', 198.2, false);
INSERT INTO public.moon VALUES (11, 'Triton', 7, 'Natural', 1353.4, false);
INSERT INTO public.moon VALUES (12, 'Nereid', 7, 'Natural', 170, false);
INSERT INTO public.moon VALUES (13, 'Charon', 8, 'Natural', 606, false);
INSERT INTO public.moon VALUES (14, 'Styx', 8, 'Natural', 10, false);
INSERT INTO public.moon VALUES (15, 'Nix', 8, 'Natural', 35, false);
INSERT INTO public.moon VALUES (16, 'Kerberos', 8, 'Natural', 19, false);
INSERT INTO public.moon VALUES (17, 'Hydra', 8, 'Natural', 51, false);
INSERT INTO public.moon VALUES (18, 'Proxima b I', 8, 'Artificial', 20, false);
INSERT INTO public.moon VALUES (19, 'Alpha Centauri Bb I', 9, 'Artificial', 22, false);
INSERT INTO public.moon VALUES (20, 'Betelgeuse b I', 10, 'Natural', 142, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, 'Terrestrial', true, 4500);
INSERT INTO public.planet VALUES (2, 'Mars', 1, 'Terrestrial', true, 4500);
INSERT INTO public.planet VALUES (3, 'Venus', 1, 'Terrestrial', true, 4500);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, 'Gas Giant', true, 4500);
INSERT INTO public.planet VALUES (5, 'Saturn', 1, 'Gas Giant', true, 4500);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, 'Ice Giant', true, 4500);
INSERT INTO public.planet VALUES (7, 'Neptune', 1, 'Ice Giant', true, 4500);
INSERT INTO public.planet VALUES (8, 'Proxima b', 2, 'Terrestrial', true, 4500);
INSERT INTO public.planet VALUES (9, 'Alpha Centauri Bb', 3, 'Terrestrial', true, 4600);
INSERT INTO public.planet VALUES (10, 'Betelgeuse b', 5, 'Gas Giant', true, 8500);
INSERT INTO public.planet VALUES (11, 'Sirius b', 6, 'Ice Giant', true, 300);
INSERT INTO public.planet VALUES (12, 'Messier 81 b', 6, 'Gas Giant', true, 12000);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', 1, 8, 'Our solar system with the Sun and eight planets.');
INSERT INTO public.solar_system VALUES (2, 'Alpha Centauri System', 3, 1, 'A triple star system with a known planet around Alpha Centauri B.');
INSERT INTO public.solar_system VALUES (3, 'Proxima Centauri System', 1, 1, 'A single star system with one known planet, Proxima b.');
INSERT INTO public.solar_system VALUES (4, 'Trappist-1 System', 1, 7, 'A system with seven Earth-sized planets.');
INSERT INTO public.solar_system VALUES (5, 'Kepler-90 System', 1, 8, 'A system with eight known planets, similar to our own solar system.');
INSERT INTO public.solar_system VALUES (6, 'Gliese 581 System', 1, 4, 'A red dwarf star system with four known planets.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 'G-type', 4600, true);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 2, 'Red Dwarf', 4500, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 2, 'G-type', 4600, false);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 2, 'K-type', 4600, false);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 3, 'Red Supergiant', 8500, false);
INSERT INTO public.star VALUES (6, 'Sirius', 1, 'A-type', 300, false);


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
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


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


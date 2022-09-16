--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
    description text,
    galaxy_types text NOT NULL,
    number_of_stars integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30),
    planet_id integer,
    description text NOT NULL,
    is_spherical boolean,
    moon_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30),
    planet_type text NOT NULL,
    has_life boolean,
    star_id integer,
    planet_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar (
    name character varying(30),
    number_of_metors integer NOT NULL,
    solar_id integer NOT NULL
);


ALTER TABLE public.solar OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30),
    description text,
    distance_from_earth numeric NOT NULL,
    galaxy_id integer,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('milky', 's', 'terrestial', 344, 1);
INSERT INTO public.galaxy VALUES ('sdfsf', 'f', 'terrestial', 314, 2);
INSERT INTO public.galaxy VALUES ('asda', 'v', 'restial', 114, 3);
INSERT INTO public.galaxy VALUES ('asaaasdsa', 'v', 'restial', 1154, 4);
INSERT INTO public.galaxy VALUES ('vfvdvda', 'v', 'restial', 11544, 5);
INSERT INTO public.galaxy VALUES ('dvsdf', 'a', 'restial', 544, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('moon1', 1, 'a', true, 1);
INSERT INTO public.moon VALUES ('moon2', 2, 'a', true, 2);
INSERT INTO public.moon VALUES ('moon3', 3, 'a', true, 3);
INSERT INTO public.moon VALUES ('moon4', 4, 'a', true, 4);
INSERT INTO public.moon VALUES ('moon5', 5, 'a', true, 5);
INSERT INTO public.moon VALUES ('moon6', 6, 'a', true, 6);
INSERT INTO public.moon VALUES ('moon7', 1, 'a', true, 7);
INSERT INTO public.moon VALUES ('moon8', 2, 'a', true, 8);
INSERT INTO public.moon VALUES ('moon9', 3, 'a', true, 9);
INSERT INTO public.moon VALUES ('moon10', 4, 'a', true, 10);
INSERT INTO public.moon VALUES ('moon11', 5, 'a', true, 11);
INSERT INTO public.moon VALUES ('moon12', 6, 'a', false, 12);
INSERT INTO public.moon VALUES ('moon13', 1, 'a', false, 13);
INSERT INTO public.moon VALUES ('moon14', 2, 'a', false, 14);
INSERT INTO public.moon VALUES ('moon15', 3, 'a', false, 15);
INSERT INTO public.moon VALUES ('moon16', 4, 'a', false, 16);
INSERT INTO public.moon VALUES ('moon17', 5, 'a', false, 17);
INSERT INTO public.moon VALUES ('moon18', 6, 'a', false, 18);
INSERT INTO public.moon VALUES ('moon19', 1, 'a', false, 19);
INSERT INTO public.moon VALUES ('moon20', 5, 'a', false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('planet1', 'a', true, 1, 1);
INSERT INTO public.planet VALUES ('planet2', 'a', true, 2, 2);
INSERT INTO public.planet VALUES ('planet3', 'a', false, 3, 3);
INSERT INTO public.planet VALUES ('planet4', 'a', false, 4, 4);
INSERT INTO public.planet VALUES ('planet5', 'a', false, 5, 5);
INSERT INTO public.planet VALUES ('planet6', 'a', true, 6, 6);
INSERT INTO public.planet VALUES ('planet8', 'a', true, 1, 7);
INSERT INTO public.planet VALUES ('planet7', 'a', true, 2, 8);
INSERT INTO public.planet VALUES ('planet9', 'a', true, 3, 9);
INSERT INTO public.planet VALUES ('planet10', 'a', false, 4, 10);
INSERT INTO public.planet VALUES ('planet11', 'a', false, 5, 11);
INSERT INTO public.planet VALUES ('planet12', 'a', true, 6, 12);


--
-- Data for Name: solar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar VALUES ('solar', 5, 1);
INSERT INTO public.solar VALUES ('solar1', 2, 2);
INSERT INTO public.solar VALUES ('solar2', 6, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('sdfsdfdf', 'a', 5675.2, 1, 2);
INSERT INTO public.star VALUES ('star', 'a', 2375.2, 2, 1);
INSERT INTO public.star VALUES ('starr', 'a', 235.2, 3, 3);
INSERT INTO public.star VALUES ('starrr', 'a', 225.2, 4, 4);
INSERT INTO public.star VALUES ('starrrr', 'a', 25.2, 5, 5);
INSERT INTO public.star VALUES ('starrrrr', 'a', 5.2, 6, 6);


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
-- Name: solar solar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_name_key UNIQUE (name);


--
-- Name: solar solar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar
    ADD CONSTRAINT solar_pkey PRIMARY KEY (solar_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


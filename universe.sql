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
-- Name: foreign_objects; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.foreign_objects (
    foreign_objects_id integer NOT NULL,
    name character varying(50) NOT NULL,
    type text
);


ALTER TABLE public.foreign_objects OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(50) NOT NULL,
    no_of_systems integer,
    no_of_discoverers integer,
    age numeric(5,2),
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    planets integer,
    reservoirs integer,
    age numeric(5,2),
    moon_id integer NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    moons integer,
    orbits integer,
    age numeric(5,2),
    system text,
    has_life boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    threats integer,
    no_of_elements integer,
    age numeric(5,2),
    galaxy_id integer,
    star_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: foreign_objects; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.foreign_objects VALUES (1, 'Croom Boom', NULL);
INSERT INTO public.foreign_objects VALUES (2, 'Oracle', NULL);
INSERT INTO public.foreign_objects VALUES (3, 'Glendale', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.galaxy VALUES ('Croom Boom', NULL, 3, NULL, NULL, 2);
INSERT INTO public.galaxy VALUES ('Oracle', NULL, 5, NULL, NULL, 3);
INSERT INTO public.galaxy VALUES ('NASPERS', NULL, 8, NULL, NULL, 4);
INSERT INTO public.galaxy VALUES ('Rubicon', NULL, 2, NULL, NULL, 5);
INSERT INTO public.galaxy VALUES ('Metrofibre', NULL, 4, NULL, NULL, 6);
INSERT INTO public.galaxy VALUES ('Discovery', NULL, 5, NULL, NULL, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Croom Boom', NULL, 3, NULL, 1, 1);
INSERT INTO public.moon VALUES ('Oracle', NULL, 5, NULL, 2, 2);
INSERT INTO public.moon VALUES ('NASPERS', NULL, 8, NULL, 3, 3);
INSERT INTO public.moon VALUES ('Rubicon', NULL, 2, NULL, 4, 4);
INSERT INTO public.moon VALUES ('Metrofibre', NULL, 4, NULL, 5, 5);
INSERT INTO public.moon VALUES ('Discovery', NULL, 5, NULL, 6, 6);
INSERT INTO public.moon VALUES ('Croom Boom', NULL, 3, NULL, 7, 1);
INSERT INTO public.moon VALUES ('Oracle', NULL, 5, NULL, 8, 2);
INSERT INTO public.moon VALUES ('NASPERS', NULL, 8, NULL, 9, 3);
INSERT INTO public.moon VALUES ('Rubicon', NULL, 2, NULL, 10, 4);
INSERT INTO public.moon VALUES ('Metrofibre', NULL, 4, NULL, 11, 5);
INSERT INTO public.moon VALUES ('Discovery', NULL, 5, NULL, 12, 6);
INSERT INTO public.moon VALUES ('Croom Boom', NULL, 3, NULL, 13, 1);
INSERT INTO public.moon VALUES ('Oracle', NULL, 5, NULL, 14, 2);
INSERT INTO public.moon VALUES ('NASPERS', NULL, 8, NULL, 15, 3);
INSERT INTO public.moon VALUES ('Rubicon', NULL, 2, NULL, 16, 4);
INSERT INTO public.moon VALUES ('Metrofibre', NULL, 4, NULL, 17, 5);
INSERT INTO public.moon VALUES ('Discovery', NULL, 5, NULL, 18, 6);
INSERT INTO public.moon VALUES ('Croom Boom', NULL, 3, NULL, 19, 1);
INSERT INTO public.moon VALUES ('Oracle', NULL, 5, NULL, 20, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Croom Boom', 3, NULL, NULL, NULL, NULL, 1, 1);
INSERT INTO public.planet VALUES ('Oracle', 5, NULL, NULL, NULL, NULL, 2, 2);
INSERT INTO public.planet VALUES ('NASPERS', 8, NULL, NULL, NULL, NULL, 3, 3);
INSERT INTO public.planet VALUES ('Rubicon', 2, NULL, NULL, NULL, NULL, 4, 4);
INSERT INTO public.planet VALUES ('Metrofibre', 4, NULL, NULL, NULL, NULL, 5, 5);
INSERT INTO public.planet VALUES ('Discovery', 5, NULL, NULL, NULL, NULL, 6, 6);
INSERT INTO public.planet VALUES ('Croom Boom', 3, NULL, NULL, NULL, NULL, 7, 1);
INSERT INTO public.planet VALUES ('Oracle', 5, NULL, NULL, NULL, NULL, 8, 2);
INSERT INTO public.planet VALUES ('NASPERS', 8, NULL, NULL, NULL, NULL, 9, 3);
INSERT INTO public.planet VALUES ('Rubicon', 2, NULL, NULL, NULL, NULL, 10, 4);
INSERT INTO public.planet VALUES ('Metrofibre', 4, NULL, NULL, NULL, NULL, 11, 5);
INSERT INTO public.planet VALUES ('Discovery', 5, NULL, NULL, NULL, NULL, 12, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Tamititus', 4, 16, NULL, 1, 1);
INSERT INTO public.star VALUES ('Croom Boom', 3, NULL, NULL, 2, 2);
INSERT INTO public.star VALUES ('Oracle', 5, NULL, NULL, 3, 3);
INSERT INTO public.star VALUES ('NASPERS', 8, NULL, NULL, 4, 4);
INSERT INTO public.star VALUES ('Rubicon', 2, NULL, NULL, 5, 5);
INSERT INTO public.star VALUES ('Metrofibre', 4, NULL, NULL, 6, 6);
INSERT INTO public.star VALUES ('Discovery', 5, NULL, NULL, 7, 7);


--
-- Name: foreign_objects foreign_objects_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.foreign_objects
    ADD CONSTRAINT foreign_objects_name_key UNIQUE (name);


--
-- Name: foreign_objects foreign_objects_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.foreign_objects
    ADD CONSTRAINT foreign_objects_pkey PRIMARY KEY (foreign_objects_id);


--
-- Name: foreign_objects foreign_objects_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.foreign_objects
    ADD CONSTRAINT foreign_objects_unique UNIQUE (foreign_objects_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (star_id);


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


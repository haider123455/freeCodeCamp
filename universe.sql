--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    distance_from_earth double precision,
    is_spherical boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    descri character varying(30),
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_types (
    planet_types_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planet_types OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_earth integer,
    age_in_millions_of_years integer,
    has_life boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest major galaxy', 10000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral galaxy', 8000, false);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Grand design spiral', 9000, false);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Bright spiral galaxy', 13000, false);
INSERT INTO public.galaxy VALUES (6, 'Cartwheel', 'Ring galaxy', 12000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 384400, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 78000000, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 78000000, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 628300000, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 628300000, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 628300000, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 628300000, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 1270000000, true);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 1270000000, true);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 1270000000, true);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 1270000000, true);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 1270000000, true);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 1270000000, true);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 1270000000, true);
INSERT INTO public.moon VALUES (15, 'Miranda', 7, 2700000000, true);
INSERT INTO public.moon VALUES (16, 'Ariel', 7, 2700000000, true);
INSERT INTO public.moon VALUES (17, 'Umbriel', 7, 2700000000, true);
INSERT INTO public.moon VALUES (18, 'Titania', 7, 2700000000, true);
INSERT INTO public.moon VALUES (19, 'Oberon', 7, 2700000000, true);
INSERT INTO public.moon VALUES (20, 'Triton', 8, 4300000000, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Small rocky planet', false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hot rocky planet', false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'Our home planet', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet', false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Planet with rings', false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant planet', false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Distant ice giant', false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Exoplanet candidate', false, 4);
INSERT INTO public.planet VALUES (10, 'Vega b', 'Possible exoplanet', false, 5);
INSERT INTO public.planet VALUES (11, 'Rigel b', 'Hypothetical planet', false, 6);
INSERT INTO public.planet VALUES (12, 'Sirius b', 'Compact orbiting planet', false, 2);


--
-- Data for Name: planet_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_types VALUES (1, 'Terrestrial', 'Rocky planets with solid surfaces');
INSERT INTO public.planet_types VALUES (2, 'Gas Giant', 'Large planets composed mainly of hydrogen and helium');
INSERT INTO public.planet_types VALUES (3, 'Ice Giant', 'Large planets composed mainly of water, ammonia, and methane');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4600, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 861, 242, false, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 642, 10, false, 1);
INSERT INTO public.star VALUES (4, 'Proxima Centauri', 4246, 4850, false, 1);
INSERT INTO public.star VALUES (5, 'Vega', 258, 455, false, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 860, 8, false, 1);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet_types planet_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_name_key UNIQUE (name);


--
-- Name: planet_types planet_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_types
    ADD CONSTRAINT planet_types_pkey PRIMARY KEY (planet_types_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_planet_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


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


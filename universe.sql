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
    name character varying(30) NOT NULL,
    has_life boolean,
    size integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance_from_planet integer,
    planet_id integer,
    circumference_in_km integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_life boolean,
    age_in_millions_of_years numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text,
    age_in_millions_of_years numeric
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', false, 100000, 'Big');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 220000, 'Big');
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic Cloud', false, 14000, 'Big');
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic Cloud', false, 7000, 'Small');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', false, 76000, 'Big');
INSERT INTO public.galaxy VALUES (6, 'Triangulum', false, 60000, 'Big');
INSERT INTO public.galaxy VALUES (7, 'Pinwheel Galaxy', false, 170000, 'Big');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Ganymede', 1070400, 1, 16569);
INSERT INTO public.moon VALUES (2, 'Titan', 1222000, 12, 16174);
INSERT INTO public.moon VALUES (3, 'Callisto', 1882700, 4, 15144);
INSERT INTO public.moon VALUES (4, 'Io', 421700, 8, 11444);
INSERT INTO public.moon VALUES (5, 'Luna', 384400, 7, 10920);
INSERT INTO public.moon VALUES (6, 'Europa', 670900, 3, 9807);
INSERT INTO public.moon VALUES (7, 'Triton', 354800, 4, 8503);
INSERT INTO public.moon VALUES (8, 'Titania', 436300, 11, 4955);
INSERT INTO public.moon VALUES (9, 'Rhea', 527100, 9, 4797);
INSERT INTO public.moon VALUES (10, 'Oberon', 583500, 10, 4782);
INSERT INTO public.moon VALUES (11, 'lampetus', 3561300, 5, 4613);
INSERT INTO public.moon VALUES (12, 'Charon', 19570, 8, 3808);
INSERT INTO public.moon VALUES (13, 'Ariel', 191000, 3, 3637);
INSERT INTO public.moon VALUES (14, 'Umbriel', 266000, 10, 3673);
INSERT INTO public.moon VALUES (15, 'Dione', 377400, 12, 3526);
INSERT INTO public.moon VALUES (16, 'Tethys', 294700, 9, 3337);
INSERT INTO public.moon VALUES (17, 'Enceladus', 238000, 6, 1584);
INSERT INTO public.moon VALUES (18, 'Mimas', 185500, 2, 1245);
INSERT INTO public.moon VALUES (19, 'Miranda', 129900, 4, 1481);
INSERT INTO public.moon VALUES (20, 'Mars', 6000, 5, 70);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Sirius b', false, 150, 1);
INSERT INTO public.planet VALUES (3, 'Kepler-186', false, 1000, 1);
INSERT INTO public.planet VALUES (5, 'WASP-12b', false, 1000, 1);
INSERT INTO public.planet VALUES (10, '55 Cancri e', false, 1000, 1);
INSERT INTO public.planet VALUES (11, 'K2-18b', false, 1000, 1);
INSERT INTO public.planet VALUES (2, 'Centauri b', false, 4500, 2);
INSERT INTO public.planet VALUES (4, 'TRAPPIST-1e', false, 500, 2);
INSERT INTO public.planet VALUES (6, 'Osiris', false, 1000, 3);
INSERT INTO public.planet VALUES (8, 'GJ 667Cc', false, 2000, 4);
INSERT INTO public.planet VALUES (9, 'LHS 1140 b', false, 4000, 5);
INSERT INTO public.planet VALUES (7, 'HD 40307 g', false, 1000, 6);
INSERT INTO public.planet VALUES (12, 'LTT 1445Ab', false, 4000, 6);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Alpha Centauri', 2);
INSERT INTO public.solar_system VALUES (2, 'Trappist-1', 5);
INSERT INTO public.solar_system VALUES (3, 'Kepler-452', 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mirach', 2, 'Old', 197);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 'Old', 197);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 1, 'Young', 10);
INSERT INTO public.star VALUES (4, 'M33 Star 1', 6, 'Old', 10);
INSERT INTO public.star VALUES (5, 'M51-ULS-1', 5, 'Old', 100);
INSERT INTO public.star VALUES (6, 'M101 Star 1', 7, 'Old', 100);


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
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

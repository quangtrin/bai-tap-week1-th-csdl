--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

-- Started on 2022-04-12 11:43:37

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
-- TOC entry 210 (class 1259 OID 16433)
-- Name: country_new; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_new (
    country_id character(2) NOT NULL,
    country_name character varying(40) NOT NULL,
    region_id integer NOT NULL
);


ALTER TABLE public.country_new OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16443)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    department_id integer NOT NULL,
    department_name character varying(30) NOT NULL,
    manager_id integer NOT NULL,
    location_id integer NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16451)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(25) NOT NULL,
    email character varying(25) NOT NULL,
    phone_number character varying(20) NOT NULL,
    hire_date date NOT NULL,
    job_id character varying(10) NOT NULL,
    salary integer NOT NULL,
    commission_pct integer NOT NULL,
    manager_id integer NOT NULL,
    department_id integer NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16461)
-- Name: job_grades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_grades (
    grade_level character varying(2) NOT NULL,
    lowest_sal integer NOT NULL,
    highest_sal integer NOT NULL
);


ALTER TABLE public.job_grades OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16448)
-- Name: job_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_history (
    employee_id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_id character varying(10) NOT NULL,
    department_id integer NOT NULL
);


ALTER TABLE public.job_history OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16456)
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    job_id character varying(10) NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary integer NOT NULL,
    max_salary integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16471)
-- Name: locations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.locations (
    id integer NOT NULL,
    location_id integer NOT NULL,
    street_address character varying(25) NOT NULL,
    postal_code character varying(12) NOT NULL,
    state character varying(12) NOT NULL,
    region_id integer NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.locations OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16425)
-- Name: regions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.regions (
    region_id double precision NOT NULL,
    region_name character varying(25) NOT NULL
);


ALTER TABLE public.regions OWNER TO postgres;

--
-- TOC entry 3194 (class 2606 OID 16437)
-- Name: country_new countries_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_new
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);


--
-- TOC entry 3196 (class 2606 OID 16447)
-- Name: departments departments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);


--
-- TOC entry 3198 (class 2606 OID 16455)
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3202 (class 2606 OID 16465)
-- Name: job_grades job_grades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_grades
    ADD CONSTRAINT job_grades_pkey PRIMARY KEY (grade_level);


--
-- TOC entry 3200 (class 2606 OID 16460)
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (job_id);


--
-- TOC entry 3192 (class 2606 OID 16432)
-- Name: regions region_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.regions
    ADD CONSTRAINT region_id PRIMARY KEY (region_id);


-- Completed on 2022-04-12 11:43:37

--
-- PostgreSQL database dump complete
--


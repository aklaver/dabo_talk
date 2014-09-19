--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Name: projection_lid_seq; Type: SEQUENCE; Schema: public; Owner: app_admin
--

CREATE SEQUENCE projection_lid_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.projection_lid_seq OWNER TO app_admin;

--
-- Name: projection_lid_seq; Type: SEQUENCE SET; Schema: public; Owner: app_admin
--

SELECT pg_catalog.setval('projection_lid_seq', 12188, true);


--
-- Name: projection_lid_seq; Type: ACL; Schema: public; Owner: app_admin
--

REVOKE ALL ON SEQUENCE projection_lid_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE projection_lid_seq FROM postgres;
GRANT SELECT,UPDATE ON SEQUENCE projection_lid_seq TO app_admin;
GRANT SELECT,UPDATE ON SEQUENCE projection_lid_seq TO production;


--
-- PostgreSQL database dump complete
--


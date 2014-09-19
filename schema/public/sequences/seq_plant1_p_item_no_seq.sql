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
-- Name: plant1_p_item_no_seq; Type: SEQUENCE; Schema: public; Owner: app_admin
--

CREATE SEQUENCE plant1_p_item_no_seq
    INCREMENT BY 1
    NO MAXVALUE
    NO MINVALUE
    CACHE 1;


ALTER TABLE public.plant1_p_item_no_seq OWNER TO app_admin;

--
-- Name: plant1_p_item_no_seq; Type: SEQUENCE SET; Schema: public; Owner: app_admin
--

SELECT pg_catalog.setval('plant1_p_item_no_seq', 3165, true);


--
-- Name: plant1_p_item_no_seq; Type: ACL; Schema: public; Owner: app_admin
--

REVOKE ALL ON SEQUENCE plant1_p_item_no_seq FROM PUBLIC;
REVOKE ALL ON SEQUENCE plant1_p_item_no_seq FROM postgres;
GRANT SELECT,UPDATE ON SEQUENCE plant1_p_item_no_seq TO app_admin;
GRANT SELECT,UPDATE ON SEQUENCE plant1_p_item_no_seq TO production;


--
-- PostgreSQL database dump complete
--


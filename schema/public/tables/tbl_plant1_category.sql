--
-- PostgreSQL database dump
--

SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;


SET default_tablespace = '';


--
-- Name: plant1_category; Type: TABLE; Schema: utility; Owner: app_admin; Tablespace: 
--

CREATE TABLE plant1_category (
    category_type character varying(5) NOT NULL,
    category_sub_type character varying(15) NOT NULL,
    default_type boolean DEFAULT false NOT NULL
);


ALTER TABLE plant1_category OWNER TO app_admin;

--
-- Name: TABLE plant1_category; Type: COMMENT; Schema: utility; Owner: app_admin
--

COMMENT ON TABLE plant1_category IS 'Version 11/16/05';


--
-- Data for Name: plant1_category; Type: TABLE DATA; Schema: utility; Owner: app_admin
--

COPY plant1_category (category_type, category_sub_type, default_type) FROM stdin;
plant	normal	t
plant	fall_bulb	f
plant	assy	f
tag	regular	t
tag	price_group	f
tag	sub_price_group	f
asst	none	t
\.


--
-- Name: cat_pkey; Type: CONSTRAINT; Schema: utility; Owner: app_admin; Tablespace: 
--

ALTER TABLE ONLY plant1_category
    ADD CONSTRAINT cat_pkey PRIMARY KEY (category_type, category_sub_type);


--
-- Name: plant1_category_uidx; Type: CONSTRAINT; Schema: utility; Owner: app_admin; Tablespace: 
--

ALTER TABLE ONLY plant1_category
    ADD CONSTRAINT plant1_category_uidx UNIQUE (category_type, category_sub_type);


--
-- Name: plant1_category; Type: ACL; Schema: utility; Owner: app_admin
--

REVOKE ALL ON TABLE plant1_category FROM PUBLIC;
REVOKE ALL ON TABLE plant1_category FROM postgres;
GRANT ALL ON TABLE plant1_category TO app_admin;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE plant1_category TO production;


--
-- PostgreSQL database dump complete
--


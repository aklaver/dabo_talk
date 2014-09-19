--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';


--
-- Name: container; Type: TABLE; Schema: public; Owner: app_admin; Tablespace: 
--

CREATE TABLE container (
    c_id character varying(10) NOT NULL,
    cdesc character varying(30) NOT NULL,
    cell_per smallint NOT NULL,
    c_size character varying(10) NOT NULL,
    ts_insert timestamp(0) without time zone DEFAULT now(),
    ts_update timestamp(0) without time zone,
    user_update character varying(20),
    user_insert character varying(20) DEFAULT "session_user"(),
    v_number integer,
    us_vol numeric(5,2),
    metric_vol numeric(5,2),
    metric_unit character varying(3),
    c_number character varying(20),
    us_unit character varying(5),
    c_note text,
    c_units integer NOT NULL
);


ALTER TABLE public.container OWNER TO app_admin;

--
-- Name: TABLE container; Type: COMMENT; Schema: public; Owner: app_admin
--

COMMENT ON TABLE container IS 'Base table for plant container info. Used as source of c_id for other tables.';


--
-- Data for Name: container; Type: TABLE DATA; Schema: public; Owner: app_admin
--

COPY container (c_id, cdesc, cell_per, c_size, ts_insert, ts_update, user_update, user_insert, v_number, us_vol, metric_vol, metric_unit, c_number, us_unit, c_note, c_units) FROM stdin;
6CLTR	6" Clay Trellis	1	6CL	2004-01-01 00:00:00	2005-04-08 09:14:05	postgres	postgres	58	1.55	1.47	L	6" Euro Rose	qt	\N	1
6CLWR	6" Clay Wreath	1	6CL	2004-01-01 00:00:00	2005-04-08 09:14:10	postgres	postgres	58	1.55	1.47	L	6" Euro rose	qt	\N	1
200PT	200 Plug Tray	200	200PT	2004-01-01 00:00:00	2005-04-07 10:06:02	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	200
288PT	288 Plug Tray	288	288PT	2004-01-01 00:00:00	2005-04-07 10:06:26	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	288
4MNIF	4" Mini Flat	16	4MNI	2004-01-01 00:00:00	2005-06-20 10:01:41	postgres	postgres	63	12.40	367.00	ml	04.00 AZ TW	fl oz	McConkey # DIL4A-1980	1
32PT	32 Plug Tray	32	32PT	2004-01-01 00:00:00	2005-04-07 10:06:40	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	32
6RCLP	6" clay ribbed pot	1	6RCL	2004-01-01 00:00:00	2005-11-03 08:43:02	aklaver	postgres	58	1.00	950.00	ml	6" Ribbed	qt	\N	1
8CCLP	8" Campana Clay Pot	1	8CL	2004-01-01 00:00:00	2005-04-08 09:15:00	postgres	postgres	58	1.96	1.86	L	8" Campana	qt	\N	1
8SPCLP	8" Seed Pan Clay Pot	1	8SPCL	2005-03-25 12:04:09	2005-04-08 09:15:18	postgres	postgres	58	2.48	2.36	L	8" Seed Pan	qt	\N	1
3CLTOP	3" Clay Topiary	1	3CL	2004-01-01 00:00:00	2005-04-07 10:06:51	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
4RPLBH	4" Round Plastic Bush	1	4RPL	2004-01-01 00:00:00	2005-06-20 10:01:59	postgres	postgres	63	15.48	458.00	ml	04.00 STD TW	fl oz	McConkey #DIL4S-1550	1
4RPLF	4" Round Flat	16	4RPL	2004-01-01 00:00:00	2005-06-20 10:03:09	postgres	postgres	63	15.48	458.00	ml	04.00 STD TW	fl oz	McConkey #DIL4S-1550	1
4RPLTOP	4" Round Plastic Topiary	1	4RPL	2004-01-01 00:00:00	2005-06-20 10:03:27	postgres	postgres	63	15.48	458.00	ml	04.00 STD TW	fl oz	MConkey #DIL4S-1550	1
95SPCLP	9.5" Seed Pan Clay pot	1	95SPCL	2005-03-25 12:00:56	2005-04-08 09:15:32	postgres	postgres	58	3.21	3.05	L	9.5" Seed Pan	qt	\N	1
10PANTP	10" Panterra Pot	1	10PANT	2005-10-04 15:27:29	\N	\N	mgarcia	61	1.92	7.26	L	PA.10000	gal	Order from OBC	1
7BRRP	7" Brass round pot	1	7BRR	2004-12-15 15:30:42	2005-04-07 10:08:07	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
7CLBH	7" Clay Bush	1	7CL	2004-01-01 00:00:00	2005-04-07 10:08:08	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
7CRW	7" Crate wood	1	7CRW	2005-03-28 09:26:37	2005-04-07 10:08:09	postgres	postgres	59	0.00	\N	\N	7" Crate wood	\N	\N	1
7CURP	7" Copper round pot	1	7CUR	2004-12-15 15:31:20	2005-04-07 10:08:10	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
82PT	82 Plug Tray	82	82PT	2004-01-01 00:00:00	2005-04-07 10:08:12	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	82
84PT	84 Plug Tray	84	84PT	2004-01-01 00:00:00	2005-04-07 10:08:14	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	84
85WWW6PL	8.5" White Washed 6 Pl	6	85WWWBKT	2005-09-26 12:02:38	2005-11-10 10:21:51	aklaver	mgarcia	59	8.45	250.00	ml	8.5" White Washed	fl oz	Total volume 1.58 qt/ 1.5 L. WW basket w/6 2.5" pots	6
10CEHB	10" Cedar Hanging Basket	1	10CEHB	2004-01-01 00:00:00	2005-06-07 09:24:29	postgres	postgres	65	1.70	6.45	L	H800	gal	\N	1
95CMCLP	9.5 Cm Clay Pot	1	95CMCL	2004-01-01 00:00:00	2005-04-07 10:08:22	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
BULB	Bulb	1	BULB	2004-01-01 00:00:00	2005-04-07 10:08:25	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
CUTTING	Cutting	1	CUTTING	2004-01-01 00:00:00	2005-04-07 10:08:26	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
PLUG	Plug	1	PLUG	2004-01-01 00:00:00	2005-04-07 10:08:29	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
PROP	Prop	0	PROP	2004-01-01 00:00:00	2005-04-07 10:08:30	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
SEED	Seed	1	SEED	2004-01-01 00:00:00	2005-04-07 10:08:32	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
STRIPS	Strips	0	STRIPS	2004-01-01 00:00:00	2005-04-07 10:08:33	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
4PLHB	4" Plastic Hanging Basket	1	4PLHB	2004-01-01 00:00:00	2005-04-07 10:07:12	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
1GPLP	1 Gallon plastic pot	1	1GPL	2005-06-15 09:06:53	2005-06-15 09:07:30	postgres	postgres	56	2.74	2.60	L	JMCS55-1	qt	\N	1
UNKNOWN	UNKNOWN	0	UNKNOWN	2004-01-01 00:00:00	2005-04-07 10:08:35	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
10GBCLP	10" Geranium Bowl Clay Pot	1	10GBCL	2004-01-01 00:00:00	2005-04-08 09:07:12	postgres	postgres	58	3.85	3.65	L	10" Geranium Bowl	qt	\N	1
1GPLF	1 Gallon Flat	8	1GPL	2004-01-01 00:00:00	2005-04-08 09:07:35	postgres	postgres	56	2.74	2.60	L	JMCS55-1	qt	\N	1
2MICROF	2" Micro Flat	42	2MICRO	2005-02-15 09:33:54	2005-04-08 09:08:06	postgres	postgres	61	2.73	81.00	ml	ST.55MM	fl oz	\N	1
35CLBH	3.5" Clay Bush	1	35CL	2004-01-01 00:00:00	2005-04-08 09:08:27	postgres	postgres	58	11.83	350.00	ml	3.5" Euro Rose	fl oz	\N	1
35CLP	3.5" Clay Pot	1	35CL	2004-01-01 00:00:00	2005-04-08 09:08:43	postgres	postgres	58	11.83	350.00	ml	3.5" Euro Rose	fl oz	\N	1
14PUHB	14" Pulp hanging basket	1	14PUHB	2004-12-17 08:43:16	2005-06-13 15:44:55	postgres	postgres	68	3.96	15.00	L		gal	McConkey # WPU107112	1
35CLTOP	3.5" Clay Topiary	1	35CL	2004-01-01 00:00:00	2005-04-08 09:08:53	postgres	postgres	58	11.83	350.00	ml	3.5" Euro Rose	fl oz	\N	1
4CLBH	4" Clay Bush	1	4CL	2004-01-01 00:00:00	2005-04-08 09:09:55	postgres	postgres	58	1.21	575.00	ml	4" Euro Rose	pt	\N	1
4CLP	4" Clay Pot	1	4CL	2004-01-01 00:00:00	2005-04-08 09:10:08	postgres	postgres	58	1.21	575.00	ml	4" Euro Rose	pt	\N	1
4CLTOP	4" Clay Topiary	1	4CL	2004-01-01 00:00:00	2005-04-08 09:10:15	postgres	postgres	58	1.21	575.00	ml	4" Euro Rose	pt	\N	1
4MDIF	4" Midi Flat	16	4MDI	2004-01-01 00:00:00	2005-04-08 09:10:35	postgres	postgres	56	1.37	650.00	ml	JMCRT425	pt	\N	1
512PT	512 Plug Tray	512	512PT	2004-01-01 00:00:00	2005-04-07 10:07:23	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	512
OPKF	Open Pak Flat	12	OPK	2004-01-01 00:00:00	2005-06-20 07:56:53	postgres	postgres	62	1.13	536.00	ml	A 12-01	pt	McConkey#EJPA1201	1
35DPF	3.5" Deep Pot Flat	18	35DP	2004-01-01 00:00:00	2005-06-06 11:57:35	postgres	postgres	56	1.24	590.00	ml	JMCSR350-1	pt	\N	1
4SCLP	4" Standard Clay Pot	1	4SCL	2005-03-25 12:02:21	2005-04-08 09:11:28	postgres	postgres	58	1.05	500.00	ml	4" Standard	pt	\N	1
4SQF	4 Square Flat	16	4SQ	2004-01-01 00:00:00	2005-04-08 09:11:44	postgres	postgres	56	1.58	750.00	ml	JMCTS4	pt	\N	1
100PT	100 Plug Tray	100	100PT	2004-01-01 00:00:00	2005-12-09 10:54:34	aklaver	postgres	\N	0.00	\N	\N	\N	\N	\N	100
105PT	105 Plug Tray	105	105PT	2004-01-01 00:00:00	2005-04-07 07:40:48	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	105
5CLP	5" Clay Pot	1	5CL	2004-01-01 00:00:00	2005-05-03 14:54:49	postgres	postgres	58	1.03	980.00	ml	5" Euro Rose	qt	\N	1
5CLTOP	5" Clay Topiary	1	5CL	2004-01-01 00:00:00	2005-05-03 14:54:53	postgres	postgres	58	1.03	980.00	ml	5" Euro Rose	qt	\N	1
5CLTR	5" Clay Trellis	1	5CL	2004-05-26 14:44:39	2005-05-03 14:54:58	postgres	postgres	58	1.03	980.00	ml	5" Euro Rose	qt	\N	1
5CLWR	5" Clay Wreath	1	5CL	2004-01-01 00:00:00	2005-05-03 14:55:04	postgres	postgres	58	1.03	980.00	ml	5" Euro Rose	qt	\N	1
4PKF	4 Pak Flat	12	4PK	2004-01-01 00:00:00	2005-06-20 07:57:37	postgres	postgres	62	4.19	124.00	ml	A 12-04S	fl oz	McConkey#EJPA1204S	4
65SPCLP	6.5" Seed Pan Clay pot	1	65SPCL	2005-03-25 11:48:55	2005-04-08 09:12:55	postgres	postgres	58	1.37	1.30	L	6.5" Seed Pan	qt	\N	1
6CLBH	6" Clay Bush	1	6CL	2004-01-01 00:00:00	2005-04-08 09:13:05	postgres	postgres	58	1.55	1.47	L	6" Euro rose	qt	\N	1
3GPTBTR	3 Gallon Pulp Tub Trellis	1	3GPTB	2004-01-01 00:00:00	2005-06-13 15:47:22	postgres	postgres	68	2.51	9.52	L		gal	McConkey #WPU1010R	1
6CLCOL	6" Clay Column	1	6CL	2004-01-01 00:00:00	2005-04-08 09:13:23	postgres	postgres	58	1.55	1.47	L	6" Euro Rose	qt	\N	1
10CLBH	10" Clay Bush	1	10CL	2004-01-01 00:00:00	2005-04-07 07:41:57	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
6CLP	6" Clay Pot	1	6CL	2004-01-01 00:00:00	2005-04-08 09:13:37	postgres	postgres	58	1.55	1.47	L	6" Euro Rose	qt	\N	1
6CLPFY	6" Clay pot foofy	1	6CL	2004-01-01 00:00:00	2005-04-08 09:13:52	postgres	postgres	58	1.55	1.47	L	6" Euro Rose	qt	\N	1
10CLTOP	10" Clay Topiary	1	10CL	2004-01-01 00:00:00	2005-04-07 07:41:59	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
6CLTOP	6" Clay Topiary	1	6CL	2004-01-01 00:00:00	2005-04-08 09:13:58	postgres	postgres	58	1.55	1.47	L	6" Euro Rose	qt	\N	1
10CUOP	10" Copper oval pot	1	10CUO	2004-12-15 15:32:36	2005-04-07 07:42:02	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
25PF	2.5" Premium Flat	32	25P	2004-01-01 00:00:00	2005-04-07 10:06:09	postgres	postgres	57	8.45	250.00	ml	SVD-250W	fl oz	\N	1
125PT	125 Plug Tray	125	125PT	2004-01-01 00:00:00	2005-04-07 07:42:19	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	125
128PT	128 Plug Tray	128	128PT	2004-01-01 00:00:00	2005-04-07 07:42:21	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	128
12CLP	12" Clay Pot	1	12CL	2004-01-01 00:00:00	2005-04-07 07:42:23	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
14BIRD	14" Bird house planter	1	14BIRD	2005-03-28 09:28:44	2005-04-07 07:42:25	postgres	postgres	59	0.00	\N	\N	14" Bird house 	\N	\N	1
6SWPLHB	6" Swirl Pl Hanging Basket	1	6SWPL	2005-10-04 16:16:28	\N	\N	mgarcia	63	1.56	1.47	L	06.00 Euro WS HB	qt	\N	1
25SQF	2.5" Square Flat	36	25SQ	2004-01-01 00:00:00	2005-04-07 10:06:20	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
14CRW	14" Crate wood	1	14CRW	2005-03-28 09:27:33	2005-04-07 07:42:27	postgres	postgres	59	0.00	\N	\N	14" Crate wood	\N	\N	1
6RPLF	6" round plastic flat	9	6RPL	2004-01-01 00:00:00	2005-06-06 12:09:01	postgres	postgres	56	1.58	1.50	L	JMCR600AUG	qt	green	1
162PT	162 Plug Tray	162	162PT	2004-01-01 00:00:00	2005-04-07 07:42:31	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	162
25RF	2.5" Regular Flat	32	25R	2004-01-01 00:00:00	2005-04-07 10:06:11	postgres	postgres	57	8.45	250.00	ml	SVD-250	fl oz	\N	1
6RPLP	6" Round std. plastic pot	1	6RPL	2004-01-01 00:00:00	2005-06-06 12:10:44	postgres	postgres	56	1.58	1.50	L	JMCR600AUG	qt	green	1
6RPLTCF	6" Round pl. terra cotta flat	9	6RPL	2005-05-18 09:45:37	2005-06-06 12:11:41	postgres	postgres	56	1.58	1.50	L	JMCRT600	qt	terra cotta	1
10DGP	10" Dec grow	1	10DG	2005-08-02 15:44:36	2005-08-03 08:05:21	postgres	postgres	\N	2.23	8.45	L	10" Dec-grow	gal	From McConkey # NSWCDG10	1
115CMCLTOP	11.5 Cm Clay Topiary	1	115CMCL	2004-01-01 00:00:00	2005-04-07 07:42:10	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
11CRW	11" Crate wood	1	11CRW	2005-03-28 09:27:14	2005-04-07 07:42:11	postgres	postgres	59	0.00	\N	\N	11" Crate wood	\N	\N	1
6RPLTCP	6" Round pl. terra cotta pot	1	6RPL	2005-05-18 09:45:37	2005-06-06 12:12:09	postgres	postgres	56	1.58	1.50	L	JMCRT600	qt	terra cotta	1
35PF	3.5" Premium Flat	18	35P	2004-01-01 00:00:00	2005-04-07 10:06:49	postgres	postgres	57	1.08	515.00	ml	SVD-350W	pt	\N	1
35RF	3.5" Regular Flat	18	35R	2004-01-01 00:00:00	2005-04-07 10:06:50	postgres	postgres	57	1.08	515.00	ml	SVD-350	pt	\N	1
3PKF	3 Pak Flat	12	3PK	2004-01-01 00:00:00	2005-04-07 10:07:02	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	3
55RPLP	5.5" Round Plastic Pot	1	55RPL	2004-01-01 00:00:00	2005-04-07 10:07:25	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
5CURP	5" Copper round pot	1	5CUR	2004-12-15 15:32:05	2005-04-07 10:07:32	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
5GPLP	5 Gallon Plastic Pot	1	5GPL	2004-01-01 00:00:00	2005-04-07 10:07:33	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
5MSF	5" Miscanthus Flat	8	5MS	2004-11-09 10:37:20	2005-04-07 10:07:34	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
5RPLP	5" Round Plastic Pot	1	5RPL	2004-01-01 00:00:00	2005-04-07 10:07:35	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
5RPLTOP	5" Round Plastic Topiary	1	5RPL	2004-01-01 00:00:00	2005-04-07 10:07:36	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
6SQP	6" square pot	1	6SQ	2004-01-01 00:00:00	2005-04-07 10:07:55	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
6WSBOX	6" Wood sq. box	1	6WS	2004-01-01 00:00:00	2005-04-07 10:07:56	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	1
70PT	70 Plug Tray	70	70PT	2004-01-01 00:00:00	2005-04-07 10:08:02	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	70
72PT	72 Plug Tray	72	72PT	2004-01-01 00:00:00	2005-04-07 10:08:05	postgres	postgres	\N	0.00	\N	\N	\N	\N	\N	72
5CLBH	5" Clay Bush	1	5CL	2004-01-01 00:00:00	2005-05-03 14:54:43	postgres	postgres	58	1.03	980.00	ml	5" Euro Rose	qt	\N	1
1QRPLF	1 QT ROUND PLASTIC	12	1 QT	2006-06-21 15:20:11	2006-06-23 10:37:25	mgarcia	mgarcia	\N	1.00	950.00	ml	\N	qt	green round plastic pot	1
7SPCLP	7" seed pan CLAY POT	1	7SPCL	2006-08-17 13:36:28	2006-08-21 07:42:32	mgarcia	mgarcia	58	62.00	\N	\N	7" seed pan	fl oz	62 fl oz/ 1823 ml	1
6PLHB	6" Plastic Hanging Basket	1	6PLHB	2004-01-01 00:00:00	2005-10-05 10:47:56	mgarcia	postgres	69	1.26	600.00	ml	6" Hanging Basket	pt	This container has been discontinued. 10/05/05	1
1GRPLF	1 Gallon Round Flat	9	1GRPL	2004-01-01 00:00:00	2005-10-18 11:36:06	mgarcia	postgres	67	3.17	3.00	L	#1	qt	Order from McConkey #NSW1PB-60	1
8CLBH	8" Clay Bush	1	8CL	2004-01-01 00:00:00	2005-10-07 14:45:53	mgarcia	postgres	58	3.88	3.67	L	8" Standard	qt	\N	1
8PLHB	8" Plastic Hanging Basket	1	8PLHB	2004-01-01 00:00:00	2005-06-20 10:06:09	postgres	postgres	63	2.92	2.76	L	08.00 TRAD WS HB	qt	McConkey#DIL8HBT-50	1
10PLHB	10" Plastic Hanging Basket	1	10PLHB	2004-01-01 00:00:00	2005-06-20 13:20:23	postgres	postgres	63	1.65	6.27	L	10.00 TRAD WS HB	gal	McConkey # DIL10HBT-50	1
6RPLTOP	6" Round Plastic Topiary	1	6RPL	2004-01-01 00:00:00	2005-06-06 12:12:49	postgres	postgres	56	1.58	1.50	L	JMCR600AUG	qt	green	1
3GPTB	3 Gallon Pulp Tub	1	3GPTB	2004-01-01 00:00:00	2005-06-13 15:47:26	postgres	postgres	68	2.51	9.52	L		gal	McConkey #WPU1010R	1
10PKBSKT	10" Peck Basket	1	10PK	2005-02-04 09:38:59	2005-06-06 13:31:05	postgres	postgres	64	2.32	8.80	L	430-SH	gal	\N	1
25RTOP	2.5" Regular Topiary	1	25R	2004-01-01 00:00:00	2005-09-13 15:56:48	mgarcia	postgres	57	8.45	250.00	ml	SVD-250	fl oz	\N	1
5RBUCK	5" Round Bucket	1	5RBUCK	2005-09-16 10:59:17	2005-09-16 10:59:17	postgres	postgres	\N	\N	\N	\N	\N	\N	\N	1
65SPCLTOP	6.5" Seed Pan Topiary	1	65SPCL	2005-09-21 14:56:16	2005-09-21 14:56:45	postgres	postgres	58	1.37	1.30	L	6.5" seed pan	qt	\N	1
12PUHB	12" Pulp Hanging Basket	1	12PUHB	2005-09-16 11:33:12	2005-09-16 11:56:22	postgres	postgres	68	2.12	8.04	L	\N	gal	McConkey #WPU12HBR	1
95SPCLTOP	9.5" Seed Pan Clay Topiary	1	95SPCL	2005-09-21 14:58:37	\N	\N	postgres	58	3.21	3.05	L	9.5" seed pan	qt	\N	1
11CRW2PL	11" Crate Wood 2 Pl.	2	11CRW	2005-09-26 11:58:36	2005-09-26 11:59:59	mgarcia	mgarcia	59	1.08	515.00	ml	11" Crate Wood	pt	Total volume  1.08 qt/1.03 L	2
4COLF	4" Circle of Life flat	15	4COL	2005-11-10 07:38:17	2005-12-02 12:44:22	aklaver	aklaver	\N	16.06	475.00	ml		fl oz		1
8CLTOP	8" Clay Topiary	1	8CL	2004-01-01 00:00:00	2005-10-07 14:46:16	mgarcia	postgres	58	3.88	3.67	L	8" Standard	qt	\N	1
14CRW4PL	14" Crate Wood 4 Pl	4	14CRW	2005-09-21 15:47:44	2005-09-21 15:56:19	postgres	postgres	59	1.08	515.00	ml	14" Crate Wood	pt	total volume 2.17 qt/2.06 L	4
11CRW3PL	11" Crate Wood 3 Pl.	3	11CRW	2005-09-21 15:52:28	2005-09-21 15:56:22	postgres	postgres	59	1.08	515.00	ml	11" Crate Wood	pt	Total volume 1.63 qt/1.54 L	3
14CRW4CL	14" Crate Wood 4 Cl	4	14CRW	2005-09-21 15:56:13	2005-09-21 15:57:01	postgres	postgres	59	11.83	350.00	ml	14" Crate Wood	fl oz	Total volume 1.47 qt/1.4 L	4
11CRW3CL	11" Crate Wood 3 Cl	3	11CRW	2005-09-21 15:59:19	\N	\N	postgres	59	11.83	350.00	ml	11" Crate Wood	fl oz	Total volume 1.10 qt/1.05 L	3
14BIRD4PL	14" Birdhouse Planter 4 Pl	4	14BIRD	2005-09-21 16:01:57	\N	\N	postgres	59	1.08	515.00	ml	14" Birdhouse	pt	Total volume 2.17 qt/2.06 L	4
REINDEER	Topiary Reindeer	1	REINDEER	2005-05-20 11:51:12	2005-09-21 16:25:12	postgres	postgres	\N	1.24	1.17	L	\N	qt	\N	1
2GPLP	2 Gallon Plastic Pot	1	2GPL	2004-01-01 00:00:00	2005-09-26 14:22:02	mgarcia	postgres	67	2.53	9.61	L	PT-3P	gal	Brought through McConkey #NS3	1
5KBALL	5" Kissing Ball	1	5KBALL	2005-05-20 11:51:12	2005-09-21 16:26:33	postgres	postgres	\N	12.43	367.72	ml	\N	fl oz	\N	1
2GPLPTR	2 Gallon Plastic Pot Trellis	1	2GPL	2005-09-26 14:18:33	2005-09-26 14:22:36	mgarcia	mgarcia	67	2.53	9.61	L	PT-3P	gal	Brought through McConkey.#NS3	1
7RPLP	7" Round Plastic Pot	1	7RPL	2005-10-10 14:04:04	\N	\N	mgarcia	56	2.64	2.50	L	JMCR7A	qt	\N	1
1GRPLP	1 Gallon round plastic pot	1	1GRPL	2005-10-18 09:08:59	2005-10-18 11:36:59	mgarcia	mgarcia	67	3.17	3.00	L	#1	qt	Order from McConkey #NSW1PB-60	1
6COLF	6" Circle of Life flat	6	6COL	2005-11-10 07:38:51	2005-12-02 12:45:23	aklaver	aklaver	\N	1.31	1.24	L	\N	qt	\N	1
85WWWBKT	8.5" White washed wood bskt	1	85WWWBKT	2004-01-01 00:00:00	2005-11-10 14:49:30	aklaver	postgres	59	2.89	2.73	L	8.5" White Washed	qt	\N	1
7CRW2PL	7" wood crate w/2 pl. pots	2	7CRW	2005-11-10 14:52:24	\N	\N	aklaver	59	1.08	515.00	ml	7" wood crate	pt	Total volume 1.08 qt/1.03 L	2
135DSPN	13.5 DecoStone Planter	1	135DSPN	2005-11-10 07:41:47	2005-11-10 07:43:22	aklaver	aklaver	61	3.38	12.81	L	SH 1350	gal	Bought from OBC	1
8NVP	8" nova pot	1	8NVP	2006-11-22 11:32:15	\N	\N	mgarcia	52	1.75	7.00	L	8" pot	gal	\N	1
8JMCPLP	8" JMCSCR8	1	8JMCPLP	2006-10-10 13:08:50	2006-10-10 13:09:41	mgarcia	mgarcia	52	0.00	3.10	L	8"	\N	JMC	1
8VAP	8" vaso pot	1	8" 	2007-02-13 09:43:01	\N	\N	mgarcia	\N	190.00	3.10	L	\N	fl oz	\N	1
7NVP	nova 7"	1	7"	2006-11-29 10:54:25	2006-11-29 13:51:32	mgarcia	mgarcia	\N	1.25	4.75	L	\N	gal	\N	1
repTest	replication test	1	re	2008-08-07 15:04:01	\N	\N	aklaver	\N	\N	\N	\N	\N	\N	\N	1
repTest2	replication test 2	2	re	2008-08-07 15:05:22	\N	\N	aklaver	\N	\N	\N	\N	\N	\N	\N	1
\.


--
-- Name: container_pkey; Type: CONSTRAINT; Schema: public; Owner: app_admin; Tablespace: 
--

ALTER TABLE ONLY container
    ADD CONSTRAINT container_pkey PRIMARY KEY (c_id);




--
-- Name: container_ts_update; Type: TRIGGER; Schema: public; Owner: app_admin
--

CREATE TRIGGER container_ts_update
    BEFORE UPDATE ON container
    FOR EACH ROW
    EXECUTE PROCEDURE ts_update();


--
-- Name: container_user_update; Type: TRIGGER; Schema: public; Owner: app_admin
--

CREATE TRIGGER container_user_update
    BEFORE UPDATE ON container
    FOR EACH ROW
    EXECUTE PROCEDURE user_update();


--
-- Name: container; Type: ACL; Schema: public; Owner: app_admin
--

REVOKE ALL ON TABLE container FROM PUBLIC;
REVOKE ALL ON TABLE container FROM postgres;
GRANT ALL ON TABLE container TO app_admin;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE container TO production;


--
-- PostgreSQL database dump complete
--


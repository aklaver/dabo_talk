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

SET default_with_oids = false;

--
-- Name: plant1; Type: TABLE; Schema: public; Owner: app_admin; Tablespace: 
--

CREATE TABLE plant1 (
    p_item_no smallint DEFAULT nextval(('plant1_p_item_no_seq'::text)::regclass) NOT NULL,
    common character varying(40) NOT NULL,
    genus character varying(20),
    species character varying(30),
    variety character varying(40),
    plant_type character varying(6) DEFAULT 'flower'::character varying NOT NULL,
    series character varying(20),
    season character varying(9) DEFAULT 'annual'::character varying,
    ts_insert timestamp(0) without time zone DEFAULT now(),
    ts_update timestamp(0) without time zone,
    user_update character varying(20),
    user_insert character varying(20) DEFAULT "session_user"(),
    color character varying(30),
    category_type character varying(5) DEFAULT 'plant'::character varying NOT NULL,
    category_sub_type character varying(15) DEFAULT 'normal'::character varying NOT NULL
);


ALTER TABLE public.plant1 OWNER TO app_admin;

--
-- Name: TABLE plant1; Type: COMMENT; Schema: public; Owner: app_admin
--

COMMENT ON TABLE plant1 IS 'Version 11/14/05';


--
-- Data for Name: plant1; Type: TABLE DATA; Schema: public; Owner: app_admin
--

COPY plant1 (p_item_no, common, genus, species, variety, plant_type, series, season, ts_insert, ts_update, user_update, user_insert, color, category_type, category_sub_type) FROM stdin;
2151	lily dipo lolo light/pink	longiflorum/asiatic	cross hybrid	dipo lolo	flower	LA  pot collection	perennial	2004-04-20 10:55:53	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2153	lily alladin glow yellow	llongiflorum/asiatic	cross hybrid	alladin glow	flower	LA pot collection	perennial	2004-04-20 10:57:46	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2172	zygo cactus gold charm	schlumbergera	\N	gold charm	flower	\N	annual	2004-05-05 09:21:57	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2521	zygo cactus dancer cyber	schlumbergera	\N	dancer cyber	flower	\N	annual	2005-05-17 14:31:51	2005-06-22 11:49:51	postgres	postgres	pink	plant	normal
2174	zygo cactus christmas fantasy	schlumbergera	\N	christmas fantasy	flower	\N	annual	2004-05-05 09:24:12	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2168	zygo cactus christmas charm	schlumbergera	\N	christmas charm	flower	\N	annual	2004-05-05 09:15:38	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2182	zinnia short stuff mix	zinnia	\N	short stuff mix	flower	\N	annual	2004-05-06 12:37:09	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2170	zygo cactus white fantasy	schlumbergera	\N	white fantasy	flower	\N	annual	2004-05-05 09:19:34	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
3060	argyranthemum madiera white improved	argyranthemum	\N	white improved	flower	madeira	annual	2007-02-13 09:25:36	\N	\N	mgarcia	\N	plant	normal
1710	3.5"cosmos	cascade cuts logo	\N	\N	flower	C4RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
1711	3.5" petunia	cascade cuts logo	\N	\N	flower	C4RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
1712	1 gallon dianthus	cascade cuts logo	\N	\N	flower	C5RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
1713	1 gallon anemone	cascade cuts logo	\N	\N	flower	PGRegularE	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
1721	1 gallon assorted peony	cascade cuts logo	\N	\N	flower	PGPremiumG	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
1722	1 gallon hardy fuchsia	cascade cuts logo	\N	\N	flower	PGRegularA	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
3160	fescue blue				flower		annual	2008-02-15 16:53:31	2008-08-09 14:15:22	aklaver	postgres		plant	normal
2111	2.5" basket stuffers	cascade cuts logo	\N	\N	flower	F2RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1272	chionodoxa pink giant	chionodoxa	\N	pink giant	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2059	amaryllis desert dawn	hippeastrum	\N	desert dawn	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	true salmon	plant	fall_bulb
2061	amaryllis miracle	hippeastrum	\N	miracle	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	cardinal red	plant	fall_bulb
2066	amaryllis pizzazz	hippeastrum	\N	pizzazz	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	red w/wh star	plant	fall_bulb
2055	amaryllis blushing bride	hippeastrum	\N	brushing bride	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	rose	plant	fall_bulb
2139	strawberry hood	fragaria	\N	hood	flower	\N	perennial	2004-03-24 12:32:55	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2057	amaryllis razzmatazz	hippeastrum	\N	razzmatazz	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	red/white	plant	fall_bulb
2054	amaryllis barotse	hippeastrum	\N	barotse	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	cherry	plant	fall_bulb
2065	amaryllis honeymoon	hippeastrum	\N	amaryllis	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	magenta	plant	fall_bulb
2069	amaryllis double six	hippeastrum	\N	double six	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	light red	plant	fall_bulb
2058	amaryllis rozetta	hippeastrum	\N	rozetta	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	dbl rose pink	plant	fall_bulb
2070	amaryllis virgin	hippeastrum	\N	virgin	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	white	plant	fall_bulb
2062	amaryllis intokazi	hippeastrum	\N	amaryllis intokazi	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	white	plant	fall_bulb
2063	amaryllis cocktail	hippeastrum	\N	cocktail	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	red with white center	plant	fall_bulb
2510	angelonia serena mix	angelonia	\N	serena mix	flower	\N	annual	2005-03-09 09:10:14	2006-02-15 08:36:26	mgarcia	postgres	\N	plant	normal
2071	amaryllis joker	hippeastrum	\N	joker	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	dlb burgundy	plant	fall_bulb
1325	tulip anthony van leewen	\N	\N	anthony van leewen	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1714	cyclamen assorted	cascade cuts logo	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	regular
2928	geranium royal salmon	pelargonium	\N	royal salmon	flower	royal	annual	2006-07-27 08:15:40	\N	\N	mgarcia	\N	plant	normal
1837	hyacinth assorted	cascade cuts logo	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	regular
2908	muscari aucheri blue magic	muscari	aucheri	blue magic	flower	\N	perennial	2006-06-14 13:19:58	\N	\N	mgarcia	\N	plant	fall_bulb
2079	amaryllis generic upc #	cascade cuts logo	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	regular
1723	paperwhite narcissus gallilea	cascade cuts logo	gallilea	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	regular
2133	dianthus sweet coral	dianthus	\N	sweet coral	flower	\N	annual	2004-03-19 08:31:48	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2148	heuchera ebony & ivory	heuchera	\N	ebony & ivory	flower	\N	perennial	2004-04-13 16:01:25	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2135	dianthus sweet white	dianthus	\N	sweet white	flower	\N	annual	2004-03-19 08:32:39	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2136	dianthus sweet purple	dianthus	\N	sweet purple	flower	\N	annual	2004-03-19 08:37:03	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2137	dianthus sweet red	dianthus	\N	sweet red	flower	\N	annual	2004-03-19 08:37:52	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
1691	annual color 4 (reg A)	cascade cuts logo	\N	\N	flower	C4RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1692	annual color 4 (prem A)	cascade cuts logo	\N	\N	flower	C4PremiumA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1693	perennial 4 (reg A)	cascade cuts logo	\N	\N	flower	P4RegularA	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1694	perennial 4 (prem A)	cascade cuts logo	\N	\N	flower	P4PremiumA	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
2140	strawberry puget reliance	fragaria	\N	puget reliance	flower	\N	perennial	2004-03-24 12:38:14	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2150	torenia dutchess light blue	torenia	\N	light blue	flower	\N	annual	2004-04-19 13:28:00	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2164	coleus merlot	solestemon	\N	merlot	flower	\N	annual	2004-04-21 09:01:20	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2157	pansy whiskers purple white	viola	\N	whiskers purple white	flower	whiskers	perennial	2004-04-20 16:09:03	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2152	lily fangio plum pink	longiflorum/asiatic	cross hybrid	fangio	flower	LA pot collection	perennial	2004-04-20 10:56:55	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2829	geranium sanguineium vision violet	pelargonium	sanguineum 	violet	flower	vision	perennial	2005-11-29 09:16:50	\N	\N	mgarcia	\N	plant	normal
1696	perennial gallon (reg A)	cascade cuts logo	\N	\N	flower	PGRegularA	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1697	perennial gallon (reg C)	cascade cuts logo	\N	\N	flower	PGRegularC	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1698	10" ivy geranium hb	cascade cuts logo	\N	\N	flower	HBBasketC	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
1699	3.5 "ivy geranium (Ivy 4)	cascade cuts logo	\N	\N	flower	I4RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1700	2.5" ivy geranium (Ivy 3)	cascade cuts logo	\N	\N	flower	I3RegularA	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1701	BMCalla (4"spring calla lily )	cascade cuts logo	\N	\N	flower	BMCalla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1702	pak bedding 	cascade cuts logo	\N	\N	flower	PBPakbed	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1703	C5PremiumA	cascade cuts logo	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1704	mums 5.5	cascade cuts logo	\N	\N	flower	M5RegularA	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1705	mums 4	cascade cuts logo	\N	\N	flower	M4RegularA	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	price_group
1706	1 gallon crocosmia	cascade cuts logo	\N	\N	flower	PGRegularD	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	tag	sub_price_group
3039	catmint waker's low	nepeta	racemosa	wakers low	herb	\N	perennial	2006-11-08 13:21:59	2007-03-13 08:18:47	mgarcia	mgarcia	\N	plant	normal
1356	tulip palestrina	\N	\N	palestrina	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1653	narcissus magnet	narcissus	\N	magnet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1366	tulip sparkling fire	\N	\N	sparkling fire	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1348	tulip maytime	\N	\N	maytime	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2558	geranium blizzard holiday red	pelargonium	\N	blizzard holiday red	flower	\N	annual	2005-05-30 09:04:55	\N	\N	postgres	\N	plant	normal
1299	muscari album white grape hyacinth	muscari	botryoides	album white grape hyacinth	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1327	tulip atila	\N	\N	atila	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1307	daffodil ice follies	narcissus	\N	ice follies	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1382	tulip yellow present	\N	\N	yellow present	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1361	tulip princess irene	\N	\N	princess irene	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1376	tulip vvdenskyi tangerine beauty	\N	\N	vvdenskyi tangerine beauty	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1328	tulip batalini bronze charm	\N	\N	batalini bronze charm	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1312	narcissus geranium	narcissus	\N	geranium	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1335	tulip corsage	\N	\N	corsage	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1336	tulip dreamboat	\N	\N	dreamboat	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1339	tulip flair	\N	\N	flair	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1340	tulip fritz kreisler	\N	\N	fritz kreisler	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1345	tulip lady diana	\N	\N	lady diana	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1347	tulip lilac wonder	\N	\N	lilac wonder	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1359	tulip plaisir	\N	\N	plaisir	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1360	tulip polychroma	\N	\N	polychroma	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1365	tulip red ridinghood	\N	\N	red ridinghood	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1368	tulip stressa	\N	\N	stressa	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2402	lisianthus sapphire blue	lisianthus	\N	sapphire blue	flower	circle of life	annual	2004-12-10 08:48:42	2005-01-14 14:38:26	postgres	postgres	\N	plant	normal
1369	tulip sweet lady	\N	\N	sweet lady	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1370	tulip tarda dasystemon	\N	\N	tarda dasystemon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1371	tulip toronto	\N	\N	toronto	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1372	tulip trinket	\N	\N	trinket	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1374	tulip turkestanica	\N	\N	turkestanica	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
206	immortalle lime lite	helichrysum	petiolare	immortalle lime lite	flower		annual	2004-01-01 00:00:00	2005-12-06 11:23:13	mgarcia	postgres	\N	plant	normal
1375	tulip violacea	\N	\N	violacea	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1330	tulip blenda	\N	\N	blenda	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1338	tulip fantasy	\N	\N	fantasy	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1342	tulip greenland	\N	\N	greenland	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1357	tulip parrot mixed	\N	\N	parrot mixed	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1363	tulip purple star	\N	\N	purple star	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1364	tulip red matador	\N	\N	red matador	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1367	tulip spring green	\N	\N	spring green	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1649	tulip purissima	\N	\N	purissima	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1381	tulip yellow flight	\N	\N	yellow flight	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1354	tulip orange emperor	\N	\N	orange emperor	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1334	tulip christmas dream	\N	\N	christmas dream	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2606	geranium holiday ruby dream	pelargonium	\N	holiday ruby dream	flower	\N	annual	2005-08-02 09:38:06	2005-11-29 09:45:00	mgarcia	postgres	\N	plant	normal
1352	tulip negrita	\N	\N	negrita	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1308	daffodil mt. hood	narcissus	\N	mt. hood	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1309	daffodil salome	narcissus	\N	salome	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1310	daffodil standard value	narcissus	\N	standard value	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2074	amaryllis mini veneto	hippeastrum	\N	veneto	flower	mini	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	pk w/wht oter ege grnish thrt	plant	fall_bulb
1319	narcissus thalia	narcissus	\N	thalia	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1305	narcissus bridal crown	narcissus	\N	bridal crown	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1326	tulip artist	\N	\N	artist	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1284	hyacinth carnegie	\N	\N	carnegie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1290	hyacinth ostara	\N	\N	ostara	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1292	hyacinth violet pearl	\N	\N	violet pearl	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2188	foxglove strawberry	digitalis	mertonensis	strwberry	flower	\N	perennial	2004-05-18 08:29:29	\N	\N	postgres	\N	plant	normal
1285	hyacinth gypsy princess	\N	\N	gypsy princess	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1286	hyacinth gypsy queen	\N	\N	gypsy queen	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1282	hyacinth atlantic	\N	\N	atlantic	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1283	hyacinth blue jacket	\N	\N	blue jacket	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1650	hyacinth l'innocence	\N	\N	l'innocence	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1287	hyacinth jan bos	\N	\N	jan bos	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2194	primula primera mix	primula	\N	primera  mix	flower	\N	perennial	2004-05-25 09:20:17	2004-05-25 09:23:19	postgres	postgres	\N	plant	normal
1289	hyacinth marconi	\N	\N	marconi	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1294	iris reticulata cantab	iris	reticulata	cantab	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1379	tulip wonderful	\N	\N	wonderful	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1355	tulip orange monarch	\N	\N	orange monarch	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2196	primula donova mix	primula	\N	donova mix	flower	\N	perennial	2004-05-25 09:23:57	2004-05-25 09:27:33	postgres	postgres	\N	plant	normal
1314	narcissus jack snipe	narcissus	\N	jack snipe	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1313	narcissus ice wings	narcissus	\N	ice wings	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2068	amaryllis candy floss	hippeastrum	\N	candy floss	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	dark rose	plant	fall_bulb
2075	amaryllis mini piccolo	hippeastrum	\N	piccolo	flower	mini	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	red/white center	plant	fall_bulb
2077	amaryllis amico	hippeastrum	\N	amico	flower	mini	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	dk red/wht stripes in throat	plant	fall_bulb
1295	iris reticulata harmony	iris	reticulata	harmony	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1281	hyacinth anna marie	\N	\N	anna marie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1264	anemone blanda blue star	anemone	blanda	blue star	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1265	anemone blanda rosea	anemone	blanda	rosea	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1266	anemone blanda white splendor	anemone	blanda	white splendor	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1296	iris reticulata j.s ditt	iris	reticulata	j.s. ditt	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2072	amaryllis top choice	hippeastrum	\N	top choice	flower	mini	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	orient red	plant	fall_bulb
1269	camassia leichtlinii blue danube	camassia	leichtlinii	blue danube	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1270	camassia leichtlinii semiplena white	camassia	leichtlinii	semiplena	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1298	leucojum aestivum	leucojum	aestivum	summer snowflake	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1278	fritillaria michaylowski	fritillaria	\N	michaylowski	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1300	muscari armeniacum blue	muscari	\N	armeniacum blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1301	muscari latifolium	muscari	latifolium	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1280	galanthus nivalis snowdrops	galanthus	nivalis	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1274	chionodoxa sardensis	chionodoxa	sardensis	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1271	chionodoxa lucillae	chionodoxa	lucillae	lucillae	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1275	chionodoxa gigantea alba	chionodoxa	gigantea	alba	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1303	daffodil barret browning	narcissus	\N	barret browning	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1835	tulip gabriella	\N	\N	gabriella	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1306	daffodil dutch master	narcissus	\N	dutch master	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1582	zinnia benary's giant white	zinnia	elegans	white	flower	benary's giant	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1583	zinnia benary's giant purple	zinnia	elegans	purple	flower	benary's giant	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1584	zinnia benary's giant coral	zinnia	elegans	coral	flower	benary's giant	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1995	nasturtium caribbean cocktail	tropaeolum	\N	caribbean cocktail	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1255	geranium fancy leaf skies of italy	geranium	\N	skies of italy	flower	fancy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1425	corydalis blackberry wine	corydalis	\N	blackberry wine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1122	cylamen laser red	cyclamen	\N	red	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2094	geranium caliente coral	pelargonium	\N	\N	flower	caliente	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1021	bacopa golden leaved/white	sutera	cordata	golden leaved/white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	white	plant	normal
1866	geranium purple pillows	pelargonium	cinereum	purple pillows	flower	\N	perennial	2004-01-01 00:00:00	2005-11-29 09:46:26	mgarcia	postgres	\N	plant	normal
1191	lily manhatten dark pink	lilium	longiflorum/asiatic	manhatten 	flower	LA pot collection	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	daark pink	plant	normal
1511	peony duchesse de nemours	paeonia	\N	duchesse de nemours	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1877	peony charlies white	paeonia	\N	charlies white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2852	circle of life 4E	cascade cuts logo	\N	circle of life	flower	CL4E	annual	2005-12-14 15:43:55	2007-01-15 12:08:40	mgarcia	mgarcia	\N	tag	price_group
1276	eranthus cilicica	eranthis	cilicica	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1393	alstroemeria mojinner hybrid	alstroemeria	\N	mojinner hybrid	flower	\N	perennial	2004-01-01 00:00:00	2005-12-15 14:47:46	mgarcia	postgres	\N	plant	normal
1626	fuchsia sunbeam samba	fuchsia	\N	sunbeam samba	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1623	fuchsia sunbeam cherry	fuchsia	\N	cherry	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1573	calla lily hot shot	zantedeschia	\N	hot shot	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2053	amaryllis alfresco	hippeastrum	\N	alfresco	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	double white	plant	fall_bulb
1322	puschkinia libanotica	puschkinia	libanotica	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1323	scilla siberica	scilla	siberica	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2914	euphorbia rudolph	euphorbia	\N	rudolph	flower	\N	perennial	2006-06-27 14:20:09	\N	\N	mgarcia	\N	plant	normal
1291	hyacinth splendid cornelia	\N	\N	splendid cornelia	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1293	hyacinth woodstock	\N	\N	woodstock	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2073	amaryllis christmas star	hippeastrum	\N	christmas star	flower	mini	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	red/wht star center	plant	fall_bulb
2076	amaryllis mini cupido	hippeastrum	\N	cupido	flower	mini	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	rose/white center	plant	fall_bulb
1344	tulip inzell	\N	\N	inzell	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1329	tulip bestseller	\N	\N	bestseller	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2311	hosta sieboldiana elegans	hosta	sieboldiana	elegans	flower	\N	perennial	2004-09-30 15:58:13	2005-04-06 10:53:45	postgres	postgres	\N	plant	normal
2324	amaranthus perfecta tricolor	amaranthus	perfecta	tricolor	flower	\N	annual	2004-10-06 11:22:26	2004-10-25 14:23:41	postgres	postgres	\N	plant	normal
1349	tulip merry christmas	\N	\N	merry christmas	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
2060	amaryllis milady	hippeastrum	\N	milady	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	magenta rose	plant	fall_bulb
1350	tulip monte carlo	\N	\N	monte carlo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1346	tulip libretto	\N	\N	libretto	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1380	tulip christmas marvel	\N	\N	christmas marvel	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1315	narcissus jet fire	narcissus	\N	jet fire	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1316	narcissus minnow	narcissus	\N	minnow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1353	tulip orange cassini	\N	\N	orange cassini	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1317	narcissus ripp van winkle	narcissus	\N	ripp van winkle	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1318	narcissus tete a tete	narcissus	\N	tete a tete	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1487	hosta golden tiara	hosta	\N	golden tiara	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1489	hosta richland gold	hosta	\N	richland gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1490	hosta shade fanfare	hosta	\N	shade fanfare	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1491	hosta wide brim	hosta	\N	wide brim	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
291	lavatera olbia	lavatera		olbia	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1657	anemone harmony orchid	anemone	\N	orchid	flower	harmony	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	rose	plant	normal
817	lobelia speciosa fan scarlet	lobelia	speciosa	scarlet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1236	geranium global ruby red	pelargonium	\N	rudy red	flower	global	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1235	geranium global neon cherry	pelargonium	\N	neon cherry	flower	global	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1234	geranium global merlot	pelargonium	\N	merlot	flower	global	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1233	geranium global purple	pelargonium	\N	purple	flower	global	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1232	geranium freestyle salmon	pelargonium	\N	salmon	flower	freestyle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1230	geranium freestyle lavender light	pelargonium	\N	lavender light	flower	freestyle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1229	geranium freestyle white	pelargonium	\N	white	flower	freestyle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1211	geranium amethyst	pelargonium	\N	amethyst	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2112	basil lemon	ocimum	\N	lemon	herb	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1183	lily miss america	lilium	oriental	miss america	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	rose and white	plant	normal
2025	calla lily hot flashes	zantedeschia	\N	hot flashes	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2026	calla lily neon amour	zantedeschia	\N	neon amour	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2027	calla lily pot black	zantedeschia	\N	pot black	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2028	calla lily hot chocolate	zantedeschia	\N	hot chocolate	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2091	alstromeria inca glow	alstromeria	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1492	knautia macedonica	knautia	macedonica	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2029	calla lily gold rush	zantedeschia	\N	gold rush	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1199	calla lily maculata alba white	zantedeschia	maculata	alba white	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2131	lily muscadet	lilium	oriental	muscadet	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	white/pink dots	plant	normal
796	centaurea florence mix	centaurea	\N	florence mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1757	lily rosy baron	lilium	longiflorum/asiatic	rosy baron 	flower	LA pot collections	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	rose pink	plant	normal
1608	calibrachoa mini famous apricot	calibrachoa	\N	apricot	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1028	calibrachoa mini famous cherry pink	calibrachoa	\N	cherry pink	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1609	calibrachoa mini famous dark blue	calibrachoa	\N	dark blue	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2189	leucanthemum full sail	leucanthemum	\N	full sail	flower	\N	perennial	2004-05-18 08:30:56	\N	\N	postgres	\N	plant	normal
1126	cylamen miracle red	\N	\N	red	flower	miracle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1128	cylamen miracle assorted	\N	\N	assorted	flower	miracle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1123	cylamen laser white	\N	\N	white	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1124	cylamen laser violet	\N	\N	violet	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1210	calla lily firelight	zantedeschia	\N	firelight	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1125	cylamen laser assorted	\N	\N	assorted	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
877	craspedia globosa drumsticks	craspedia	globosa	drumsticks	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1087	chrysanthemum terano white	chrysanthemum	\N	terano	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1433	crocosmia lucifer	crocosmia	\N	lucifer	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2089	zinnia swizzle scarlet and yellow	zinnia		\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1432	crocosmia george davidson	crocosmia	\N	george davidson	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1431	crocosmia emily mckenzie	crocosmia	\N	emily mckenzie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
803	cosmos sonata white	cosmos	\N	white	flower	sonata	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
799	cosmos sonata carmine	cosmos	\N	carmine	flower	sonata	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
798	cosmos sensation mix	cosmos	\N	sensation mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
802	cosmos pink blush	cosmos	\N	pink blush	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1200	calla lily parfait	zantedeschia	\N	parfait	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1424	coreopsis tequila sunrise	coreopsis	\N	tequila sunrise	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1176	dahlia gallery vincent	dahlia	\N	vincent	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1172	dahlia moonfire	dahlia	\N	moonfire	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
815	lavatera silver cup	lavatera	\N	silver cup	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1213	geranium beach	pelargonium	\N	beach	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1739	caryopteris bluebeard worcester gold	caryopteris	x clandonensis	bluebeard worcester gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
59	artemisia powis castle	artemisia		powis castle	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2067	amaryllis snowhite	hippeastrum	\N	snowhite	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	double white	plant	normal
2605	geranium ruby dream	pelargonium	\N	ruby dream	flower	\N	annual	2005-08-02 09:36:42	2005-11-29 09:47:01	mgarcia	postgres	\N	plant	normal
650	verbena bonariensis	verbena	bonariensis	verbena bonariensis	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1033	clownaria white flower	clownaria	\N	white flower	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
813	gazania kiss mix	gazania	\N	kiss mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2022	calla lily peach chiffon	zantedeschia	\N	peach chiffon	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2288	convallaria rosea	convallaria	rosea	\N	flower	\N	perennial	2004-09-30 13:34:33	2004-10-06 09:12:10	postgres	postgres	\N	plant	normal
2023	calla lily strawberry parfait	zantedeschia	\N	strawberry parfait	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1580	zinnia benary's giant orange	zinnia	elegans	orange	flower	benary's giant	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1867	helenium rubinzwerg	helenium	\N	rubinzwerg	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2668	scaevola brilliant	scaevola	aemula	brilliant	flower	\N	annual	2005-10-13 09:08:18	2006-01-18 14:34:42	mgarcia	aklaver	\N	plant	normal
1500	leucanthemum white night	leucanthemum	\N	white knight	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1212	geranium barock	pelargonium	\N	barock	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1486	hosta fried green tomatoes	hosta	\N	fried green tomatoes	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1304	narcissus blue ribbon	narcissus	\N	blue ribbon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1069	lamium orchid frost	lamium	\N	orchid frost	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1429	crambe cordifolia	crambe	cordifolia	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1023	bacopa penny candy violet	sutera	\N	violet	flower	penny candy	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1022	bacopa penny candy pink	sutera	\N	pink	flower	penny candy	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1025	bacopa mauve pink	sutera	\N	mauve pink	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1020	bacopa candy floss blue	sutera	\N	blue	flower	candy floss	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1777	verbena blue	verbena	\N	blue	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1019	bacopa blue showers	sutera	\N	blue showers	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1408	astilbe rosea peach blossom	astilbe	rosea	peach blossom	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1407	astilbe arendsii rheinland	astilbe	arendsii	rheinland	flower	arendsii	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1406	astilbe arendsii hyacinth	astilbe	arendsii	hyacinth	flower	arendsii	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1405	astilbe arendsii grannaat	astilbe	arendsii	grannaat	flower	arendsii	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
885	dianthus floral lace cherry	dianthus	\N	cherry	flower	floral lace	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1444	dianthus firewitch	dianthus	\N	firewitch	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
884	delphinium magic fountain sky blue	delphinium	\N	sky blue	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1428	corydalis purple leaf	corydalis	\N	purple leaf	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1997	cosmos cosmic orange	cosmos	sulphureus	cosmic orange	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
826	papaver nudicale wonderland pink	papaver	nudicale	pink	flower	iceland poppy	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
590	stachys primrose heron	stachys	byzantina	primrose heron	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1437	delphinium elatum astolat	delphinium	elatum	astolat	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1179	dahlia gallery cezanne	dahlia	\N	art cezanne	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
874	bupleurum griffithii green gold	bupleurum	griffithii	green gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1410	brunnera macrophylla	brunnera	\N	macrophylla	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1409	brunnera hadspen cream	brunnera	\N	hadspen cream	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2032	brachycome moonlight 	brachycome	formosa x angustifolia	moonlight (mini outback daisy)	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	whie	plant	normal
1448	dicentra bleeding heart alba	dicentra	spectabilis	alba	flower	spectabilis	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1447	dicentra bleeding heart gold heart	dicentra	spectabilis	gold heart	flower	spectabilis	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1449	dicentra bleeding heart old fashioned	dicentra	spectabilis	old fashioned	flower	spectabilis	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
660	salvia lemmonii	salvia	lemonii		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1660	begonia benitochiba	begoniaceae	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2241	candy corn vine	manettia	\N	\N	flower	\N	annual	2004-07-06 11:38:16	\N	\N	postgres	\N	plant	normal
1950	begonia river nile	begoniaceae	\N	river nile	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
790	bellis daisy pomponette	asteraceae	\N	lawn daisy	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1120	cylamen pannevis white	\N	\N	white	flower	pannevis	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1119	cylamen pannevis red	\N	\N	red	flower	pannevis	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1121	cylamen pannevis assorted	\N	\N	assorted	flower	pannevis	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1127	cylamen miracle white	\N	\N	white	flower	miracle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1160	primula vulgaris double red giant	primula	vulgaris double	red giant	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1161	primula vulgaris double red velvet	primula	vulgaris double	red velvet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1598	anagalis hybrid wildcat orange	anagalis	\N	wildcat orange	flower	hybrid	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1597	anagalis hybrid wildcat blue	anagalis	\N	wildcat blue	flower	hybrid	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
871	alyssum snow crystal white	alyssum	\N	white	flower	snow crystal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
870	alyssum easter bonnet violet	alyssum	\N	violet	flower	eastern bonnet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
869	alyssum easter bonnet mix	alyssum	\N	mix	flower	eastern bonnet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
868	alyssum easter bonnet lavender	alyssum	\N	lavender	flower	eastern bonnet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2559	geranium blizzard purple	pelargonium	\N	blizzard purple	flower	\N	annual	2005-05-30 09:06:53	\N	\N	postgres	\N	plant	normal
867	alyssum easter bonnet deep rose	alyssum	\N	deep rose	flower	eastern bonnet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
866	alyssum easter bonnet deep pink	alyssum	easter bonnet	deep pink	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1088	chrysanthemum messina white	chrysanthemum	\N	messina	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1092	chrysanthemum rando	chrysanthemum	\N	rando	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1098	chrysanthemum primo	chrysanthemum	\N	primo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1089	chrysanthemum novarre bronze	chrysanthemum	\N	novarre	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1090	chrysanthemum molfetta orange	chrysanthemum	\N	orange mulfetta	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1091	chrysanthemum savona red	chrysanthemum	\N	savona	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1093	chrysanthemum aviano yellow	chrysanthemum	\N	aviano	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1094	chrysanthemum cesaro yellow	chrysanthemum	\N	cesaro	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1096	chrysanthemum jumbo pink	chrysanthemum	\N	jumbo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1110	chrysanthemum kismo	chrysanthemum	\N	kismo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1097	chrysanthemum padre lavender	chrysanthemum	\N	padre	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1101	chrysanthemum flotto	chrysanthemum	\N	flotto	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1100	chrysanthemum prato bronze	chrysanthemum	\N	prato	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1103	chrysanthemum mistretta red	chrysanthemum	\N	mistretta	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2883	zinnia whirlygig mix	zinnia	\N	whirlygig mix	flower	\N	annual	2006-01-30 10:37:05	\N	\N	mgarcia	\N	plant	normal
1102	chrysanthemum cento	chrysanthemum	\N	cento	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1104	chrysanthemum arezzo pale red	chrysanthemum	\N	arezzo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1106	chrysanthemum novarre yellow	chrysanthemum	\N	yellow novarre	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1107	chrysanthemum coparo lavender	chrysanthemum	\N	coparo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1108	chrysanthemum canelli lavender	chrysanthemum	\N	canelli	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1416	cerastium ciractium tomontosum	cerastium	ciractium	tomontosum	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1205	calla lily lemon drop	zantedeschia	\N	lemon drop	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
876	celosia century mix	celosia	\N	century mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1415	canna stuttgart	\N	\N	stuttgart	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1414	canna kansas city	\N	\N	kansas city	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1413	canna inferno	\N	\N	inferno	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1207	calla lily  pink persuasion	zantedeschia	\N	pink persuasion	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1027	calibrachoa mini famous blue	\N	\N	blue	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1054	fuchsia  genii	fuchsia	genii	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1070	lotus manulata red flash	lotus	manulata	red flash	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1302	narcissus actea pheasant eye	narcissus	actea	pheasant eye	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1395	anemone japanese prince henry	anemone	\N	prince henry	flower	japanese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1659	anemone harmony white	anemone	\N	white	flower	harmony	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1658	anemone harmony red	anemone	\N	red	flower	harmony	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
873	anemone de cann mix	anemone	\N	de cann mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1351	tulip mr. vander hoef	\N	\N	mr. vander hoef	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1647	tulip new design	\N	\N	new design	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1390	alstroemeria inca ice	alstroemeria	\N	ice	flower	inca	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	white	plant	normal
1391	alstroemeria inca moonlight	alstroemeria	\N	moonlight	flower	inca	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1392	alstroemeria inca tropic	alstroemeria	\N	tropic	flower	inca	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	orange w/ yellow	plant	normal
1389	alstroemeria inca dream	alstroemeria	\N	dream	flower	inca	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1388	alstroemeria inca blaze	alstroemeria	\N	blaze	flower	inca	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1016	african daisy wildside purple	osteospermum	\N	purple	flower	wildside	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1015	african daisy whirlygig pink	osteospermum	\N	pink	flower	whirlygig	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1014	african daisy variegated white	osteospermum	\N	variegated white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1013	african daisy symphony orange	osteospermum	\N	orange	flower	symphony	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1012	african daisy symphony lemon	osteospermum	\N	lemon	flower	symphony	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1011	african daisy symphony cream	osteospermum	\N	cream	flower	symphony	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1642	african daisy sunny serena peach	osteospermum	\N	sunny serena peach	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1010	african daisy seaside pink and white	osteospermum	\N	pink and white	flower	seaside	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1009	african daisy riverside yellow	osteospermum	\N	yellow	flower	riverside	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1008	african daisy nasinga purple	osteospermum	\N	purple	flower	nasinga	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1007	african daisy nasinga cream	osteospermum	\N	cream	flower	nasinga	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1641	african daisy maxima orange	osteospermum	\N	maxima orange	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1006	african daisy lubutu yellow	osteospermum	lubutu	yellow	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2176	zygo cactus tangerine twilight	schlumbergera 	\N	tangerine twilight	flower	\N	annual	2004-05-05 09:25:58	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
1003	african daisy lavender	osteospermum	barberae	lavender	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2876	verbena aztec silver magic	verbena 	\N	aztec silver magic	flower	\N	annual	2006-01-10 11:11:34	\N	\N	mgarcia	\N	plant	normal
1004	african daisy brightside white	osteospermum	\N	white	flower	brightside	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1386	aconitum napellus	aconitum	napellus	monkshood	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1383	aconitum stainless steel	aconitum	\N	stainless steell	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1384	aconitum napellus album	aconitum	napellus	monkshood-white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2033	primrose double blue sapphire	primula	vulgaris	double blue sapphire	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2034	primrose double eugenia	primula	vulgaris	double eugenia	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2315	oxalis braziliensis	oxalidaeceae	braziliensis	\N	flower	\N	perennial	2004-09-30 16:13:03	2005-01-25 16:27:10	postgres	postgres	\N	plant	normal
1844	aconitum napellus blue valley	aconitum	napellus	monkshood-blue valley	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
878	delphinium magic fountain cherry blossom	delphinium	\N	cherry blossom	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
889	dianthus floral lace white	dianthus	\N	white	flower	floral lace	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
890	dianthus super parfait raspberry	dianthus	\N	raspberry	flower	super parfait	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1155	primula vulgaris double marianne davey	primula	vulgaris double	marianne davey	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1157	primula vulgaris  double miss indigo	primula	vulgaris double	miss indigo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1159	primula vulgaris double quakers bonnet	primula	vulgaris double	quakers bonnet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1669	cyclamen halios red	cyclamen	\N	halios red	flower	halios	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1445	dianthus tiny rubies	dianthus	\N	tiny rubies	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1030	calibrachoa mini famous terra cotta	\N	\N	terra cotta	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1204	calla lily lipstick	zantedeschia	\N	lipstick	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1762	lily samur	longiflorum/asiatic	cross hybrid	samur pink/white	flower	LA pot collections	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
789	acanthus mollis bears breeches	acanthaceae	mollis	bears breeches	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2718	calibrachoa starlette sunset	calibrachoa	\N	starlette sunset	flower	\N	annual	2005-10-24 09:32:52	\N	\N	mgarcia	\N	plant	normal
1162	primula vulgaris double rosetta red	primula	vulgaris double	red	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1394	amsonia taberna montana	amsonia	tabernaemontana	blue star flower	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1510	omphalodes parisian skies	omphalodes	\N	parisian skies	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1320	ornithogalum umbellatum	ornithigalum	umbellatum	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1321	oxalis adenophylla	oxalis	adenophylla	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1643	oxalis vulcanicola copper tones	oxalis	vulcanicola	copper tones	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2190	physostegia virginiana  full sail	physostegia	virginiana	miss manner	flower	\N	perennial	2004-05-18 08:32:52	\N	\N	postgres	\N	plant	normal
1542	rudbeckia black beauty	rudbeckia	\N	black beauty	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2191	salvia carradona purple	salvia	carradona	purple	flower	\N	perennial	2004-05-18 08:34:24	\N	\N	postgres	\N	plant	normal
846	torenia clown blush	torenia	\N	blush	flower	clown	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1331	tulip blue ribbon	\N	\N	blue ribbon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1341	tulip fur elise	\N	\N	fur elise	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1648	tulip kiss	\N	\N	kiss	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1670	cyclamen halios white	cyclamen	\N	halios white	flower	halios	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1673	cyclamen halios mix	cyclamen	\N	cyclamen halios mix	flower	halios	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1678	chrysanthemum tuscany coral	chrysanthemum	\N	tuscany coral	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1362	tulip professor rontgen	\N	\N	professor rontgen	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1377	tulip waterlily	\N	\N	waterlily	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1378	tulip white emperor	\N	\N	white emperor	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1373	tulip whittallii	\N	\N	whittallii	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1630	venedio flame orange	\N	\N	flame orange	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2155	pansy purple rain	viola	\N	purple rain	flower	\N	annual	2004-04-20 16:06:20	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
775	trifolium red dancer	trifolium		red dancer	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
165	wallflower variegated	erysimum	linfolium	variegata	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1404	astilbe arendsii gloria	astilbe	arendsii	gloria	flower	arendsii	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1403	astilbe arendsii fanal	astilbe	arendsii	fanal	flower	arendsii	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1112	aster samoa	asteraceae	\N	samoa	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1017	aster prince pink and white	aster	\N	pink and white	flower	prince	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1401	arabis caucasia variegata	arabis	caucasia	variegata	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1400	aquilegia vulgaris origami mix	aquilegia	vulgaris	origami mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2771	pepper black pearl	capsicum	\N	black pearl	flower	\N	annual	2005-11-16 08:35:48	2006-02-08 11:41:32	mgarcia	mgarcia	\N	plant	normal
1267	anemone st. brigid mix	anemone	\N	st. brigid mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1268	anemone nemerosa alba	anemone	nemerosa	alba	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1398	anemone japanese whirlwind	anemone	\N	whirlwind	flower	japanese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1396	anemone japanese queen charlotte	anemone	\N	queen charlotte	flower	japanese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1150	primula vulgaris double dawn ansell	primula	vulgaris double	dawn ansell	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1151	primula vulgaris double freckles	primula	vulgaris double	freckles	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1152	primula vulgaris double granny graham	primula	vulgaris  double	granny graham	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1153	primula vulgaris double ken dearman	primula	vulgaris  double	ken dearman	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1154	primula vulgaris double  lilian harvey	primula	vulgaris double	lilian harvey	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1481	heuchera silver lode	heuchera	\N	silver lode	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1796	pansy delta lemon	viola	\N	lemon	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1667	lily monte negro	lilium	asiatic	monte negro	flower	asiatic	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	red	plant	normal
1163	primula vulgaris double roy cope	primula	vulgaris double	roy cope	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1164	primula vulgaris double sue jervis	primula	vulgaris double	sue jervis	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1177	dahlia gallery art deco	dahlia	\N	art deco	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1165	primula vulgaris double sunrise	primula	vulgaris double	sunrise	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1166	primula vulgaris double sunshine susie	primula	vulgaris double	sunshine susie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1167	primula vulgaris double val horncastle	primula	vulgaris double	val horncastle	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1776	verbena coral red	verbena	\N	coral red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2231	pansy dynamite light blue	viola	\N	light blue	flower	dynamite	annual	2004-06-07 14:52:57	2004-07-01 14:17:03	postgres	postgres	\N	plant	normal
1195	lily scarlet star plum red	longiflorum/asiatic	cross hybrid	scarlet star plum red	flower	LA pot collection	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1109	chrysanthemum castillo salmon spider	chrysanthemum	\N	castillo	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1459	geranium ivy leaf anne folkard	pelargonium	\N	anne folkard	flower	ivy leaf	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1174	dahlia gallery art nouveau	dahlia	\N	art nouveau	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2278	scaevola fan blue ribbon	scaevola	\N	blue ribbon	flower	\N	annual	2004-09-28 13:41:18	2005-02-02 13:45:54	postgres	postgres	blue	plant	normal
1206	calla lily  blaze	zantedeschia	\N	blaze	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2452	paulzono's garden basket	paulzono's	\N	garden basket	herb	\N	annual	2005-02-04 07:55:27	2005-02-04 07:56:05	postgres	postgres	\N	plant	normal
1188	lily moneymaker	longiflorum/asiatic	cross hybrid	money maker pink	flower	LA pot collection	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1208	calla lily  pot of gold	zantedeschia	\N	pot of gold	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1201	calla lily crystal blush white	zantedeschia	\N	crystal blush white	flower	california call	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2024	calla lily fireglow	zantedeschia	\N	fireglow	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2021	calla lily flame	zantedeschia	\N	flame	flower	california	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1202	calla lily garnet glow	zantedeschia	\N	garnet glow	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1181	lily barbara mae	lilium	oriental	barbara mae	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	white	plant	normal
341	mimulus orange monkey flower	mimulus	auranticacus	orange monkey flower	flower		perennial	2004-01-01 00:00:00	2008-05-16 12:27:49	postgres	postgres	\N	plant	normal
1187	calla lily rhodos	\N	\N	rhodos	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1194	lily bestseller apricot	longiflorum/asiatic	cross hybrid	bestseller apricot	flower	oriental	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1203	calla lily golden chalice	zantedeschia	\N	golden chalice	flower	california calla	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1761	lily salmon pride	longiflorum/asiatic	cross hybrid	salmon pride apricot	flower	LA pot collections	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1198	calla lily aethiopica pink mist	zantedeschia	aethiopica	pink mist	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
519	irish moss	sagina	subulata		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
661	scotch moss	sagina	subulata	aurea	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1189	lily nomade plum pink	longiflorum/asiatic	cross hybrid	nomade plum pink	flower	LA pot collection	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1214	geranium black magic	pelargonium	\N	black magic	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1552	sidalcea brilliant	sidalcea	\N	brilliant	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
704	stachys byzantina helen von stein	stachys	byzantina	helen von stein	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1794	viola sorbet french vanilla	viola	\N	french vanilla	flower	sorbet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1438	delphinium elatum black knight	delphinium	elatum	black knight	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1972	coleus inky fingers	solenostemon	\N	inky fingers	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2093	geranium zonal americana red	pelargonium	\N	\N	flower	americana	annual	2004-01-01 00:00:00	2005-11-29 09:47:13	mgarcia	postgres	\N	plant	normal
2895	lily LA hybrid top gun	lilium	longiflorum/asiatic	top gun	flower	LA Hybrid	perennial	2006-03-28 11:12:10	\N	\N	mgarcia	pink/cream	plant	normal
1508	lupine gallery mix	\N	\N	gallery mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1332	tulip calgary	\N	\N	calgary	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1921	dianthus floral lace picotee	dianthus	\N	picotee	flower	floral lace	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1063	heliotrope fragrant delight blue	heliotropium	\N	blue	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1690	malva sylvestris zebrina	malva	sylvestris	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1911	jewels of opar kingswood gold	talinum	paniculatum	kingswood gold	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1680	chyrsanthemum padre orange bronze	chrysanthemum	\N	orange padre bronze	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2192	scabiosa caucasia perfecta	scabiosa	caucasia	perfecta	flower	\N	perennial	2004-05-18 08:36:21	\N	\N	postgres	\N	plant	normal
2717	calibrachoa starlette yellow	calibrachoa	\N	starlette yellow	flower	\N	annual	2005-10-24 09:31:28	2005-10-24 09:31:42	mgarcia	mgarcia	\N	plant	normal
819	marigold tangerine gem	tagetes	\N	tangerine gem	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
708	cowslip	primula	veris officinalis		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1055	fuchsia isis	fuchsia	isis	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-29 12:51:56	mgarcia	postgres		plant	normal
2427	geranium zonal designer light pink	pelargonium	\N	light pink	flower	zonal designer	annual	2005-01-11 15:43:27	2005-01-24 11:54:23	postgres	postgres	light pink	plant	normal
2927	geranium royal raspberry blush	pelargonium	\N	royal raspberry blush	flower	royal	annual	2006-07-27 08:13:24	\N	\N	mgarcia	\N	plant	normal
1076	persicaria red dragon	persicaria	\N	red dragon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1149	primula vulgaris double april rose	primula	vulgaris double	april rose	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1105	chrysanthemum yellow celino	chrysanthemum	\N	celino	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1755	lily matchwinner	lilium	longiflorum/asiatic	matchwinner	flower	LA collection	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	ruby pink	plant	normal
1778	verbena white	verbena	\N	white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1217	geranium dianne	pelargonium	\N	dianne	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1358	tulip pink pearl	\N	\N	pink pearl	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
883	delphinium magic fountain pure white	delphinium	\N	pure white	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
882	delphinium magic fountain mix	delphinium	\N	mix	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
881	delphinium magic fountain lilac pink	delphinium	\N	lilac pink	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1441	delphinium elatum guinevere	delphinium	elatum	guinevere	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
880	delphinium magic fountain dark blue w/wh	delphinium	\N	dark blue w/ white bee	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1059	gaura siskiyou pink	\N	\N	siskiyou pink	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
879	delphinium magic fountain dark blue w/da	delphinium	\N	dark blue w/ dark bee	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1442	delphinium elatum summer skies	delphinium	elatum	summer skies	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1443	delphinium elatum king arthur	delphinium	elatum	king arthur	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1186	calla lily royal lace	\N	\N	royal lace	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2013	lily rodela	lilium	longiflorum/asiatic	rodela	flower	LA collections	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	wine red	plant	normal
1111	aster tonga blue	asteraceae	\N	tonga	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1758	lily aerobic	longiflorum/asiatic	cross hybrid	aerobic creamy yellow	flower	LA pot collections	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1746	dahlia peome	dahlia	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1747	dahlia riverdance	dahlia	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1748	dahlia rosamunde	dahlia	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1749	dahlia sunshine	dahlia	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1750	dahlia thais	dahlia	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
822	mimulus magic yellow	mimulus	\N	yellow	flower	magic	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
818	marigold lemon gem	tagetes	\N	lemon gem	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1185	lily kiss me kate	lilium	oriental	kiss me kate	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	magenta/yellow	plant	normal
1795	viola sorbet yellow frost	viola	\N	yellow frost	flower	sorbet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1215	geranium butterfly	pelargonium	\N	butterfly	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1184	lily miss rio	lilium	oriental	miss rio	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	light pink	plant	normal
1614	calibrachoa mini famous white pink star	calibrachoa	\N	white pink star	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1615	calibrachoa mini famous yellow lilac sta	calibrachoa	\N	yellow lilac star	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
806	dahlia figaro red	dahlia	\N	red	flower	figaro	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
805	dahlia figaro orange	dahlia	\N	orange	flower	figaro	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
804	dahlia figaro mix	dahlia	\N	mix	flower	figaro	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1311	daffodil world's favorite	narcissus	\N	world favorite	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1399	anemone sylvestris snow drop	anemone	sylvestris	snow drop	flower	\N	perennial	2004-01-01 00:00:00	2006-02-14 09:33:47	mgarcia	postgres	\N	plant	normal
1250	geranium white helix	pelargonium	\N	white helix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1253	geranium royal red	pelargonium	\N	red	flower	royal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1241	geranium nicole	pelargonium	\N	nicole	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2361	nicotiana hummingbird deep rose	nicotiana	\N	deep rose	flower	\N	annual	2004-10-21 08:48:19	\N	\N	postgres	\N	plant	normal
1240	geranium molina	pelargonium	\N	molina	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1239	geranium mexicana	pelargonium	\N	mexicana	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1238	geranium mandarin	pelargonium	\N	mandarin	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1226	geranium francis parameter	pelargonium	\N	francis parameter	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1058	gaura corries gold	\N	\N	corries gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1279	galanthus elwesii	galanthus	elwesii	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
812	gaillardia goblin	gaillardia	\N	goblin	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1048	fuchsia traudchen bonstedt	fuchsia	\N	traudchen bonstedt	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1052	fuchsia santa claus	fuchsia	\N	santa claus	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1057	fuchsia papoose	fuchsia	\N	papoose	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1051	fuchsia microphylla pink	fuchsia	\N	microphylla pink	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1056	fuchsia magellanica aurea	fuchsia	magellanica	aurea	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1047	fuchsia gold marinka	fuchsia	\N	gold marinka	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1049	fuchsia firecraker	fuchsia	\N	firecraker	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1053	fuchsia double otto	fuchsia	\N	double otto	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1451	foxglove excelcior hybrids	digitalis	\N	excelcior hybrids	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2011	lily dazzle	lilium	longiflorum/asiatic	dazzle	flower	LA collections	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	yellow	plant	normal
875	everlasting orange	carthamus	tinctoris	everlasting orange	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1423	coreopsis sweet dream	coreopsis	\N	sweet dream	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1422	coreopsis moonbeam	coreopsis	\N	moonbeam	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1421	coreopsis limerock beauty	coreopsis	\N	limerock beauty	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
797	coreopsis early sunrise	coreopsis	grandiflora  	early sunrise	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1420	convallaria majalia	convallaria	majalia	white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1192	lily donau peach	lilium	longiflorum/asiatic	donau 	flower	LA pot collection	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	peach	plant	normal
791	bellis daisy super enorma	asteraceae	\N	lawn daisy	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1190	lily dream hot pink	lilium	longiflorum/asiatic	dream	flower	LA pot collection	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	hot pink	plant	normal
1032	cleome linde armstrong	\N	\N	linde armstrong	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1419	cimicifuga ramosa brunette	cimicifuga	ramosa	brunette	flower	ramosa	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1418	cimicifuga ramosa atropurpurea	cimicifuga	ramosa	atropurpurea	flower	ramosa	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1417	cimicifuga hillside black beauty	cimicifuga	\N	hillside black beauty	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1963	nemesia sunsatia peach	nemesia		peach	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1484	heuchera velvet night	heuchera	\N	velvet night	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1483	heuchera stormy seas	heuchera	\N	stormy seas	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1482	heuchera silver shadows	heuchera	\N	silver shadows	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1480	heuchera sanguninea alidas pesto	heuchera	sanguninea	alidas pesto	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1479	heuchera ruby veil	heuchera	\N	ruby veil	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1478	heuchera ring of fire	heuchera	\N	ring of fire	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1477	heuchera raspberry ice	heuchera	\N	raspberry ice	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1476	heuchera purple sails	heuchera	\N	purple sails	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
894	euphorbia snow on the mountain	euphorbia	kilamanjaro	snow on the mounain	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1458	euphorbia polychroma	euphorbia	polychroma	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1457	euphorbia orange man	euphorbia	\N	orange man	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1456	euphorbia characias burrow silver	euphorbia	characias	burrow silver	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1455	euphorbia characias black pearl	euphorbia	characias	black pearl	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2765	zinnia benary's giant salmon	zinnia	\N	giant salmon	flower	benary's	annual	2005-11-16 07:49:38	\N	\N	mgarcia	\N	plant	normal
1453	eupatorium gateway	eupatorium	\N	gateway	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1277	erythronium pagode dog's tooth violet	erythronium	pagode	dog's tooth violet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1452	eryngium planum fluela	eryngium	planum	fluela	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1576	eryngium maritimum	eryngium	vulgaris	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
893	echinops ritro globe thistle lavender	echinops	ritro	globe thistle lavender	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2015	lily miss france	lilium	oriental	miss france	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	rose and white	plant	normal
1878	peony president taft	paeonia	\N	president taft	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1067	dicondra silver falls	dicondra	\N	siver falls	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1118	hedera helix shamrock	hedera	helix	shamrock	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1116	hedera helix rittekreuz	hedera	helix	ritterkreuz	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1115	hedera helix marie louise	hedera	helix	marie louise	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1113	hedera helix hahns	hedera	helix	hahns	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1114	hedera helix eva	hedera	helix	eva	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
895	godetia grace mix	clarkia	rubicunda	grace mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1610	calibrachoa mini famous dark red	calibrachoa	\N	dark red	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1611	calibrachoa mini famous lemon	calibrachoa	\N	lemon	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1612	calibrachoa mini famous peach	calibrachoa	\N	peach	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1613	calibrachoa mini famous violet	calibrachoa	\N	violet	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1193	lily club house melon	lilium	longiflorum/asiatic	club house melon	flower	LA pot collection	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	melon	plant	normal
2012	lily algrave	lilium	longiflorum/asiatic	algrave	flower	LA collections	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	deep,solid pink	plant	normal
1251	geranium royal candy cane	pelargonium	\N	candy cane	flower	royal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
809	dahlia figaro yellow	dahlia	\N	yellow	flower	figaro	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
808	dahlia figaro white	dahlia	\N	white	flower	figaro	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
807	dahlia figaro violet shade	dahlia	\N	violet shade	flower	figaro	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1462	heuchera amber waves	heuchera	\N	amber waves	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1064	heliotrope white	heliotropium	arborescens	white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1062	helianthemum st. mary's	helianthemum	\N	st. mary's	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1117	hedera helix tear drop	hedera	helix	tear drop	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
921	lobelia regatta sapphire	lobelia	\N	sapphire	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
896	gypsophyla double snowfake	gypsophyla	paniculata	double snowflake	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
917	lobelia  regatta rose	lobelia	\N	rose	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
916	lobelia  regatta mix	lobelia	\N	mix	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1520	poppy petticoat	papaver	\N	petticoat	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
915	lobelia  regatta marine blue	lobelia	\N	marine blue	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
914	lobelia  regatta lilac	lobelia	\N	lilac	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
913	lobelia  regatta blue splash	lobelia	\N	blue splash	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1506	liriope okina	liriope	\N	okina	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1505	ligularia the rocket	ligularia	\N	the rocket	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1247	geranium summer rose lilac	pelargonium	\N	summer rose lilac	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1504	liatris spicata	liatris	spicata	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1503	liatris kobold	liatris	\N	kobold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1502	liatris floristan white	liatris	\N	floristan white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1501	lewisia cotyledon mix	lewisia	\N	cotyledon mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1779	verbena burgundy	verbena	\N	burgundy	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1248	geranium sybil holmes	pelargonium	\N	sybil holmes	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1498	lavatera white satin	lavatera	\N	white satin	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1629	torenia summer wave amethyst	torenia	\N	summer wave amethyst	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1497	lavatera red rum	lavatera	\N	red rum	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1496	lavatera lilac lady	lavatera	\N	lilac lady	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1495	lavatera burgundy wine	lavatera	\N	burgundy wine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1493	lavatera barnsley	lavatera	\N	barnsley	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
814	lavatera  mont blanc	lavatera	\N	mont  blanc	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
912	larkspur giant imperial white king	consolida ambigua	\N	white king	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
911	larkspur giant imperial salmon beauty	consolida ambigua	\N	salmon beauty	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1984	geranium freestyle burgundy	pelargonium	\N	burgundy	flower	freestyle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1983	geranium freestyle cherry rose	pelargonium	\N	cherry rose	flower	freestyle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1249	geranium taj mahal	pelargonium	\N	taj mahal	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2002	verbena homestead pink	verbena	\N	homestead pink	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1621	diascia flying colors antique rose	diascia	\N	antique rose	flower	flying colors	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
891	dianthus super parfait strawberry	dianthus	\N	strawberry	flower	super parfait	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
888	dianthus floral lace violet	dianthus	\N	violet	flower	floral lace	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
887	dianthus floral lace rose	dianthus	\N	rose	flower	floral lace	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
886	dianthus floral lace light pink	dianthus	\N	light pink	flower	floral lace	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1962	nemesia sunsatia cranberry	nemesia		cranberry	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1526	phlox paniculata darwin's joyce	phlox	paniculata	darwin's joyce	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2728	calla lily purple heart	zantedeschia	\N	purple heart	flower	\N	annual	2005-11-02 08:17:07	\N	\N	mgarcia	\N	plant	normal
910	larkspur giant imperial pink perfection	consolida ambigua	\N	pink perfection	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
909	larkspur giant imperial lilac king	consolida ambigua	\N	lilac king	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
908	larkspur giant imperial carmine king	consolida ambigua	\N	carmine king	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
907	larkspur giant imperial brilliant rose	consolida ambigua	\N	brilliant rose	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
905	larkspur giant imperial blue bell	consolida ambigua	giant imperial	blue bell	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
906	larkspur giant imperial blue	consolida ambigua	\N	blue	flower	giant imperial	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1086	verbena homestead purple	verbena	\N	purple	flower	homestead	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
904	kniphofia uvaria flamenco	kniphofia	uvaria	flamenco	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1068	jasmine white	jasminum	polyanthum	white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1652	iris reticulata katherine hodgkin	\N	\N	katherine hodgkin	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1066	ipomea sweet potato vine margarita	ipomea	\N	margarita	flower	sweet potato vi	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2233	pansy dynamite purple	viola 	\N	purple	flower	dynamite	annual	2004-06-07 15:36:07	2004-07-01 14:17:17	postgres	postgres	\N	plant	normal
1065	ipomea sweet potato vine blackie	ipomea	\N	blackie	flower	sweet potato vi	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
903	impatiens super elfin lipstick	impatiens	\N	lipstick	flower	super elfin	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
902	impatiens impulse white	impatiens	\N	white	flower	impulse	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
900	impatiens impulse violet	impatiens	\N	violet	flower	impulse	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
901	impatiens impulse salmon	impatiens	\N	salmon	flower	impulse	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
899	impatiens impulse rose	impatiens	\N	rose	flower	impulse	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
898	impatiens impulse red	impatiens	\N	red	flower	impulse	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1523	penstemon digitalis husker red	penstemon	digitalis	husker red	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
589	stachys hidalgo	stachys	hidalgo	7 up plant	herb		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1216	geranium comedy	pelargonium	\N	comedy	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1237	geranium gugino's nell	pelargonium	\N	gugino's nell	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2416	lachenalia  namaqua	lachenalia	\N	namaqua	flower	african beauty	annual	2004-12-30 16:10:35	2005-03-29 08:54:45	postgres	postgres	\N	plant	normal
1243	geranium rhiannon	pelargonium	\N	rhiannon	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1244	geranium salmon queen	pelargonium	\N	salmon queen	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1245	geranium shiva	pelargonium	\N	shiva	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
354	wire vine	muehlenbeckia	complexa		flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1246	geranium solo	pelargonium	\N	solo	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1926	dahlia gallery cobra	dahlia	\N	cobra	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1175	dahlia gallery pablo	dahlia	\N	pablo	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1173	dahlia gallery renoir	dahlia	\N	renoir	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1485	heuchera mardi gras	heuchera	\N	mardi gras	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1470	heuchera green spice	heuchera	\N	green spice	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1469	heuchera geisha's fan	heuchera	\N	geisha's fan	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1468	heuchera cathedral windows	heuchera	\N	cathedral windows	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1467	heuchera cascade dawn	heuchera	\N	cascade dawn	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1466	heuchera cappuccino	heuchera	\N	cappuccino	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1464	heuchera autumn haze	heuchera	\N	autumn haze	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1463	heuchera amethyst mist	heuchera	\N	amethyst mist	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
948	petunia carpet blue lace	petunia	\N	blue lace	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
947	petunia carpet blue	petunia	\N	blue	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1514	peony officinalis sarah bernhardt	paeonia	officinalis	sarah bernhardt	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1513	peony negricans	paeonia	\N	negricans	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1512	peony monsieur jules elie	paeonia	\N	monsieur jules elie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
829	papaver nudicale wonderland yellow	papaver	nudicale	yellow	flower	iceland poppy	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1075	penstemon ruby red	penstemon	\N	ruby red	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
981	snapdragon rocket rose	antirrhinum	majus	rose	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
980	snapdragon rocket red	antirrhinum	majus	red	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
979	snapdragon rocket pink	antirrhinum	majus	pink	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
978	snapdragon rocket orchid	antirrhinum	majus	orchid	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
977	snapdragon rocket gold	antirrhinum	majus	gold	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
976	snapdragon rocket bronze	antirrhinum	majus	bronze	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
975	snapdragon pallette yellow	antirrhinum	majus	yellow	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
974	snapdragon pallette white	antirrhinum	majus	white	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
973	snapdragon pallette red	antirrhinum	majus	red	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
972	snapdragon pallette purple	antirrhinum	majus	purple	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
971	snapdragon pallette pink	antirrhinum	majus	pink	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
970	snapdragon pallette orange	antirrhinum	majus	orange	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1225	geranium floribunda marilyn	pelargonium	\N	marilyn	flower	floribunda	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1461	geranium ivy leaf biokovo	\N	\N	biokovo	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1224	geranium floribunda judy	pelargonium	\N	judy	flower	floribunda	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1223	geranium floribunda grace	pelargonium	\N	grace	flower	floribunda	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1460	geranium ivy leaf anne thomson	\N	\N	anne thomson	flower	ivy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1222	geranium fancy leaf occold shield	pelargonium	\N	occold shields	flower	fancy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1221	geranium fancy leaf white mesh	pelargonium	\N	white mesh	flower	fancy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1220	geranium fancy leaf vancouver centennial	pelargonium	\N	vancouver centennial	flower	fancy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1219	geranium fancy leaf persian queen	pelargonium	\N	persian queen	flower	fancy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1218	geranium fancy leaf crystal palace	pelargonium	\N	cyrstal palace	flower	fancy leaf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2014	lily favorite	lilium	oriental 	favorite	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
957	physalis chinese lantern plant	physalis	\N	chinese lantern plant	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1080	phygelius tredwidden pink	phygelius	\N	tredwidden pink	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1079	phygelius new sensation red	phygelius	\N	new sensation red	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1077	phygelius moonraker yellow	phygelius	\N	yellow	flower	moonraker	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1078	phygelius devil's tears red	phygelius	\N	devil's tears red	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1532	phlox subulata emerald blue	phlox	subulata	emerald blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1531	phlox subulata candy stripe	phlox	subulata	candy stripe	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1529	phlox paniculata franz schuber	phlox	paniculata	franz schuber	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1528	phlox paniculata david	phlox	paniculata	david	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
478	primula sunset shade	primula	veris	sunset shades	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
962	rudbeckia hirta indian summer	rudbeckia	hirta	indian summer	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
862	zinnia profusion orange	zinnia	\N	orange	flower	profusion	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
861	zinnia profusion cherry	zinnia	\N	cherry	flower	profusion	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1586	zinnia haagaena persian carpet	zinnia	haagaena	persian carpet	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1543	rudbeckia fulgida goldsturm	rudbeckia	fulgida	goldsturm	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2667	scaevola diamond	scaevola	aemula	diamond	flower	\N	annual	2005-10-13 09:06:23	2006-01-18 14:35:11	mgarcia	aklaver	\N	plant	normal
830	rhodochiton	rhodochiton	\N	purple bell	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
872	queen anne lace	ammi	majus	white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1540	pulimonaria david ward	pulimonaria	\N	david ward	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1158	primula vulgaris paragon	primula	vulgaris	paragon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
946	pansy ultima morpho	viola	ultima	morpho	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
944	pansy supreme purple	viola	\N	purple	flower	supreme	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
941	pansy delta white with blotch	viola	\N	white with blotch	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
940	pansy delta violet with face	viola	\N	violet with face	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
939	pansy delta tapestry	viola	\N	tapestry	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
937	pansy delta pure white	viola	\N	white	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
936	pansy delta pure true blue	viola	\N	pure true blue	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
935	pansy delta pure primrose	viola	\N	pure primrose	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
934	pansy delta pure deep orange	viola	\N	pure deep orange	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
933	pansy delta pink shades	viola	\N	pink shades	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
932	pansy delta blue/blotch	viola	\N	blue/blotch	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
931	pansy delta beaconsfield	viola	\N	beaconfield	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
930	pansy accord black beauty	viola	\N	accord black beauty	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
929	nicotiana hummingbird white	nicotiana	\N	white	flower	hummingbird	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
928	nicotiana hummingbird rose pink	nicotiana	\N	rose pink	flower	hummingbird	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
927	nicotiana hummingbird red	nicotiana	\N	red	flower	hummingbird	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1475	heuchera purple petticoats	heuchera	\N	purple petticoats	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1474	heuchera plum pudding	heuchera	\N	plum pudding	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1473	heuchera pewter veil	heuchera	\N	pewter veil	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1472	heuchera pewter moon	heuchera	\N	pewter moon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1471	heuchera mint frost	heuchera	\N	mint frost	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
956	petunia fantasy mix	petunia	\N	mix	flower	fantasy	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
955	petunia double madness mix	petunia	\N	mix	flower	double madness	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
954	petunia carpet white	petunia	\N	white	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
953	petunia carpet velvet	petunia	\N	velvet	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
952	petunia carpet sky blue	petunia	\N	sky blue	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
951	petunia carpet plum	petunia	\N	plum	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
949	petunia carpet bright red	petunia	\N	bright red	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
996	viola sorbet lemon swirl	viola	\N	lemon swirl	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
995	viola sorbet lemon chiffon	viola	\N	lemon chiffon	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
994	viola sorbet lavender ice	viola	\N	lavender ice	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
969	snapdragon pallette lavender	antirrhinum	majus	lavender	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
968	snapdragon pallette deep rose	antirrhinum	majus	deep rose	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1572	saxifraga stolonifera harvest moon	saxifraga	stolonifera	harvest moon	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
963	salvia victoria blue	salvia	farinacaea	victoria blue	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
865	abutilon bella mix	abutilon	\N	bella mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
965	salvia strata blue and white	salvia	\N	blue and white	flower	strata	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
831	salvia lady in red	salvia	\N	lady in red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
926	nicotiana hummingbird lemon lime	nicotiana	\N	lemon lime	flower	hummingbird	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
925	nicotiana hummingbird cherry blossom	nicotiana	\N	cherry blossom	flower	hummingbird	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
924	nicotiana hummingbird appleblossom	nicotiana	\N	appleblossom	flower	hummingbird	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2390	euphorbia clarice howard	euphorbia	\N	clarice howard	flower	\N	perennial	2004-11-16 14:31:28	\N	\N	postgres	\N	plant	normal
938	pansy delta pure yellow	viola	\N	pure yelow	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1168	dahlia yellow hammer	dahlia	\N	yellow hammer	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2020	peony dr. alexander fleming	paeonia	\N	dr. alexander fleming	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
892	didiscus coeruleus blue lace	didiscus	coeruleus	blue lace	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1509	meconopsis betonicifolia	meconopsis	betonicifolia	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1385	aconitum rubellum	aconitum	rubellum	monkshood-red	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1071	lotus manulata gold flash	lotus	manulata	gold flash	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
816	lobelia speciosa fan deep rose	lobelia	speciosa	rose	flower	fan deep	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
919	lobelia riviera white	lobelia	\N	white	flower	riviera	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
922	lobelia riviera midnight blue	lobelia	\N	midnight blue	flower	riviera	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
920	lobelia regatta sky blue	lobelia	\N	sky blue	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1129	primula danova apple blossom	\N	\N	apple blossom	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1522	poppy turkenkous	papaver	\N	turkenlous	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1517	poppy patty's plum	papaver	orientale	patty's plum	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1518	poppy indian chief	papaver	orientale	indian chief	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2371	peony victoire de la marne	paeonia	\N	victoire de la marne	flower	\N	perennial	2004-11-03 11:28:35	2004-11-03 13:10:02	postgres	postgres	\N	plant	normal
1515	poppy alpine mix	papaver	bruseri	alpine mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1537	polemonium brise d'anjou	polemonium	\N	brise d'anjou	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
960	platycodon sentimental blue	platycodon	\N	sentimental blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
961	platycodon fuji mix	platycodon	\N	fuji mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
16	hollyhock single yellow peach	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
20	hollyhock watchman black	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1297	iris reticulata nataschia	iris	reticulata	nataschia	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
598	jewels of opar	talinium	paniculatum		flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1132	primula danova cream yellow	\N	\N	cream yellow	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1131	primula danova blue	\N	\N	blue	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1130	primula danova apricot	\N	\N	apricot	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
987	viola sorbet beaconfield	viola	\N	beaconsfield	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1001	viola sorbet ytt	viola	\N	yesterday today & tomorrow	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1571	viola rebecca	viola	\N	rebecca	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1569	viola mandschurica fuji dawn	viola	mandschurica	fuji dawn	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1568	viola etain	viola	\N	etain	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1567	veronica aztec gold	veronica	\N	aztec gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
852	verbena romance apricot	verbena	\N	apricot	flower	romance	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
985	verbena quartz mix	verbena	\N	quartz mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1085	streptocarpella harmony blue	streptocarpella	\N	streptocarpella	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1566	verbascum jackie	verbascum	\N	jackie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1645	calibrachoa mini famous white	calibrachoa	\N	white	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-29 09:47:49	mgarcia	postgres	\N	plant	normal
3089	geranium scented concolor lace	pelargonium	\N	concolor lace	flower	\N	annual	2007-05-02 13:52:07	\N	\N	mgarcia	\N	plant	normal
1564	verbascum gainesborough	verbascum	\N	gainesborough	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1563	trollius superbus	trollius	\N	superbus	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1562	trollius golden queen	trollius	\N	golden queen	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1561	tradescantia virginiana zwanenburg blue	tradescantia	virginiana	zwanenburg blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1560	tradescantia sweet kate	tradescantia	\N	sweet kate	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1559	tradescantia concord grape	tradescantia	\N	concord grape	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1558	tradescantia anersoniana valour	tradescantia	anersoniana	valour	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
984	trachelium caeruleum midnight blue	trachelium	caeruleum	midnight blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
851	torenia dutchess pink	torenia	\N	pink	flower	dutchess	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
850	torenia dutchess deep blue	torenia	\N	deep blue	flower	dutchess	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
847	torenia clown burgundy	torenia	\N	burgundy	flower	clown	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
845	torenia clown blue and white	torenia	\N	blue and white	flower	clown	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1628	tibouchina tropical princess purple	tibouchina	\N	tropical princess purple	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1527	phlox paniculata blue boy	phlox	paniculata	blue boy	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1588	phacelia viscida tropical surf	phacelia	viscida	tropical surf	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
854	zinnia dreamland scarlet	zinnia	\N	scarlet	flower	dreamland	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
859	zinnia dreamland rose	zinnia	\N	rose	flower	dreamland	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
858	zinnia dreamland red	zinnia	\N	red	flower	dreamland	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
857	zinnia dreamland pink	zinnia	\N	pink	flower	dreamland	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
856	zinnia dreamland ivory	zinnia	\N	ivory	flower	dreamland	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
853	zinnia dreamland coral	zinnia	\N	coral	flower	dreamland	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1000	viola sorbet sunny royale	viola	\N	sunny royal	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
999	viola sorbet plum velvet	viola	\N	plum velvet	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
998	viola sorbet orange duet	viola	\N	orange duet	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
997	viola sorbet orange delight	viola	\N	orange delight	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1557	tiarella iron butterfly	tiarella	\N	iron butterfly	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1556	tiarella herronwood mist	tiarella	\N	herronwood mist	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1555	tiarella black velvet	tiarella	\N	black velvet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
844	thunbergia alata mix	thunbergia	\N	mix	flower	alata	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
842	sweet pea cuthbertson white	lathyrus	\N	white	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
841	sweet pea cuthbertson scarlet	lathyrus	\N	scarlet	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
840	sweet pea cuthbertson salmon pink	lathyrus	\N	salmon pink	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
839	sweet pea cuthbertson rose pink	lathyrus	\N	rose pink	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
838	sweet pea cuthbertson midnight blue	lathyrus	\N	midnight blue	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
836	sweet pea cuthbertson maroon	lathyrus	\N	maroon	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
837	sweet pea cuthbertson lavender rose	lathyrus	\N	lavender rose	flower	cuthbertson	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
835	sweet pea bijou mix	lathrus	odoratus	mix	flower	bijou	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
843	sweet pea  royal mix	lathyrus	\N	mix	flower	royal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
834	sunflower sunrich orange	helianthus	\N	orange	flower	sunrich	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
833	sunflower sunrich lemon	helianthus	\N	lemon	flower	sunrich	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
983	stock frolic mix	matthiola	incana	frolic mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
982	snapdragon rocket white	antirrhinum	majus	white	flower	rocket	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
693	hollyhock scarlet	alcea	rosea	scarlet	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
692	hollyhock single dark pink	alcea	rosea	single dark pink	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
18	hollyhock single red	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
19	hollyhock single rose	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1036	coleus molten lava	solenostemon	\N	molten lava	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1156	primula vulgaris marie crousse	primula	vulgaris	marie crousse	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1140	primula danova red rose	\N	\N	red rose	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1139	primula danova purple	\N	\N	purple	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1138	primula danova pink	\N	\N	pink	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1137	primula danova orange/yellow	\N	\N	orange/yellow	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1136	primula danova light violet	\N	\N	light violet	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1135	primula danova lemon yellow	\N	\N	lemon yellow	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1134	primula danova golden yellow	\N	\N	golden yellow	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1133	primula danova dark purple bio	\N	\N	dark purple bio	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1624	fuchsia eden rock	fuchsia	\N	eden rock	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1625	fuchsia lambada	fuchsia	\N	lambada	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1024	bacopa white	sutera	\N	white	flower	 	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
703	brugmansia peaches and cream 	brugmansia	variegata	peaches and cream	flower	angels trumpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
130	cosmos chocolate	cosmos	atrosanguinius		flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
13	hollyhock clear pink	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
14	hollyhock deepest rose pink	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
17	hollyhock peach	alcea	rosea		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
694	hollyhock salmon rose	alcea	rosea	salmon rose	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
993	viola sorbet coconut swirl	viola	\N	coconut swirl	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
992	viola sorbet coconut	viola	\N	coconut	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
991	viola sorbet blueberry cream	viola	\N	blueberry cream	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
990	viola sorbet blue heaven	viola	\N	blue heaven	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
989	viola sorbet blackberry cream	viola	\N	blackberry cream	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
988	viola sorbet black delight	viola	\N	black delight	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
689	spinach tyee 	spinica 	oleracea	tyee 	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1945	abutilon melon sorbet	abutilon	\N	melon sorbet	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1209	calla lily  sunrise	zantedeschia	\N	sunrise	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1951	brachycome new amethyst blue	brachycome	\N	new amethyst	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1948	african daisy symphony peach	osteospermum	\N	peach	flower	symphony	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1949	african daisy alexandra yellow	osteospermum	\N	yellow	flower	alexandra	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2979	tomato sungold	tomato	\N	sungold	herb	\N	annual	2006-11-06 12:56:07	2007-04-03 08:40:01	mgarcia	mgarcia	\N	plant	normal
1288	hyacinth madame kruger	\N	\N	madame kruger	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1607	brachycome yukon gold yellow	\N	\N	yukon gold yellow	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
3054	dahlia karma corona	dahlia	\N	karma corona	flower	karma	annual	2007-02-06 08:29:23	\N	\N	mgarcia	\N	plant	normal
539	sage mexican  white flowered	salvia	leucantha	mexican white flowered	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
792	bellis daisy tasso mix	asteraceae	\N	mix	flower	tasso	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
157	echinacea magnus	echinacea	purpurea	magnus	herb		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2831	impatiens fanfare blush	impatiens	\N	fanfare blush	flower	\N	annual	2005-12-01 13:00:55	\N	\N	mgarcia	\N	plant	normal
1788	lavatera trimestris novella	lavatera	trimestris	novella	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2833	impatiens fanfare bright coral	impatiens	\N	bright coral	flower	fanfare	annual	2005-12-02 09:41:34	\N	\N	mgarcia	\N	plant	normal
793	bellis daisy tasso strawberry cream	asteraceae	\N	strawberry cream	flower	tasso	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2260	phormium golden ray	phormium	\N	golden ray	flower	\N	perennial	2004-08-13 08:37:17	\N	\N	postgres	\N	plant	normal
2130	primula orange sunshine	primula	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1661	heuchera silver veil	heuchera	\N	silver veil	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
811	euphorbia characias wulfenii	euphorbia	characias	wulfenii	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
795	campanula isabella blue	campanula	\N	isabella blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1034	coleus kiwi fern	solenostemon	\N	kiwi fern	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1035	coleus assorted	solenostemon	\N	assorted	flower	\N	annual	2004-01-01 00:00:00	2006-11-22 09:08:26	mgarcia	postgres	\N	plant	normal
460	sage russian	perovskia	atriplicifolia	russian	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2960	geranium scented greengene lemon leaf	pelargonium	\N	greengene lemon leaf	herb	\N	annual	2006-09-25 12:31:54	\N	\N	mgarcia	\N	plant	normal
2716	calibrachoa cabaret cherry rose	calibrachoa	\N	cabaret cherry rose	flower	\N	annual	2005-10-24 09:30:07	2005-12-01 13:05:27	mgarcia	mgarcia	\N	plant	normal
535	sage anise scented	salvia	guaranitica	anise scented 	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2399	bacopa lavender showers	sutera	\N	lavender showers	flower	\N	annual	2004-12-09 15:59:16	\N	\N	postgres	\N	plant	normal
2847	coleus wizard sunset	solenostemon	\N	wizard sunset	flower	\N	annual	2005-12-02 10:39:11	2005-12-07 15:44:55	mgarcia	mgarcia	\N	plant	normal
1957	ipomea tricolor	ipomea	\N	tricolor	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2726	calla lily sweet talk	zantedeschia	\N	sweet talk	flower	\N	annual	2005-10-27 14:45:23	\N	\N	mgarcia	\N	plant	normal
2387	calibracoa mini famous sun purple	calibracoa	\N	sun purple	flower	mini famous	annual	2004-11-15 08:16:11	\N	\N	postgres	\N	plant	normal
2359	lavatera olbia aurea	lavatera	olbia	aurea	flower	\N	perennial	2004-10-19 13:26:43	\N	\N	postgres	\N	plant	normal
759	broccoli de cicco	brassica	oleracea	de cicco	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2582	coleus kong mosaic	solestemon	\N	\N	flower	circle of life	annual	2005-07-06 16:20:53	\N	\N	postgres	\N	plant	normal
2400	echinacea mango	echinacea	\N	mango	flower	\N	perennial	2004-12-09 16:03:47	\N	\N	postgres	\N	plant	normal
1397	anemone japanese september charm	anemone	\N	september charm	flower	japanese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1695	annual gallon color 5 (reg A)	cascade cuts logo	\N	\N	flower	C5RegularA	annual	2004-01-01 00:00:00	2005-11-29 12:49:17	mgarcia	postgres	\N	tag	price_group
2613	cosmos sonata mix	cosmos	\N	mix	flower	sonata	annual	2005-09-15 11:15:32	\N	\N	mgarcia	\N	plant	normal
1784	cauliflower violet queen	brassica	oleracea	violet queen	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1785	leeks tadorna	allium	porrum	tadorna	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1430	crocosmia constance	crocosmia	\N	constance	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2115	chrysanthemum luliane bronze	chrysanthemum	\N	\N	flower	bronze	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2128	geranium zonal rocky mt salmon	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1786	oriental green autumn poem	brassica	rapa	autumn poem	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1787	brussels sprouts oliver	brassica	oleracea	oliver	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1792	radicchio chioggia red preco #1	chichorium	iutybus	red preco #1	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2851	circle of life 4B	cascade cuts logo	\N	circle of life	flower	CL4B	annual	2005-12-14 15:42:33	2007-01-15 12:08:47	mgarcia	mgarcia	\N	tag	price_group
684	mustard green red giant	brassica	juncea	green red giant	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
685	onion bunching evergreen hardy white	allium	cepa	bunching evergreen hardy white	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1434	crocosmia plaisir	crocosmia	\N	plaisir	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
676	lettuce green winter density	lactuca	sativa	green winter density	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
687	radicchio trevisto red preco	chichorium	iutybus	trevisto red preco	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2184	achillea terra cotta	achillea	\N	terra cotta	flower	\N	perennial	2004-05-18 08:19:07	\N	\N	postgres	\N	plant	normal
1037	coleus tilt-a-whirl	solenostemon	\N	tilt-a-whirl	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1970	coleus burgundy sun	solenostemon	\N	burgundy sun	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
731	caucasian germander	teucrium	hyrcanicum	caucasian germander	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2198	gaillarda artistata arizona sun	gaillarda	artistata	arizona sun	flower	\N	perennial	2004-05-25 09:28:29	2004-05-25 09:29:37	postgres	postgres	\N	plant	normal
2368	coleus red ruffles	solenostemon	\N	red ruffles	flower	\N	annual	2004-10-22 13:34:40	\N	\N	postgres	\N	plant	normal
1790	geranium yoshinoi confetti	geranium	yoshinoi	confetti	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1791	viola mix	viola	\N	mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
664	cabbage primax	brassica	oleracea	primax	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
679	lettuce red sails	lactuca	sativa	red sails	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2444	ranunculus italian ice	ranunculus	\N	italian ice	flower	\N	annual	2005-01-14 15:50:34	2005-01-24 11:58:52	postgres	postgres	\N	plant	normal
2591	ranunculus concerto rose pink	ranunculus	\N	rose pink	flower	concerto	annual	2005-07-13 11:27:06	\N	\N	postgres	\N	plant	normal
2227	pansy chalon supreme mix	viola	\N	chalon supreme mix	flower	\N	perennial	2004-06-07 14:44:53	2004-06-09 14:33:24	postgres	postgres	\N	plant	normal
3022	mixed basket	mixed basket	\N	mixed basket	flower	\N	annual	2006-11-07 07:34:15	\N	\N	mgarcia	\N	plant	normal
1958	scaevola new wonder	scaevola	\N	new wonder	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1783	cabbage super red	brassica oleracea	\N	super red	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
688	spinach hybrid indian summer	spinacia	oleracea	hybrid  indian summer	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
820	mimulus magic orange	mimulus	\N	orange	flower	magic	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2138	phlox century rose star	phlox	\N	century rose star	flower	\N	annual	2004-03-19 08:38:42	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
1973	coleus kingswood torch	solenostemon	\N	kingswood torch	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1616	coleus copper	solenostemon	\N	copper	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1617	coleus dark star	solenostemon	\N	dark star	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1618	coleus freckles	solenostemon	\N	freckles	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2329	lobelia speciosa fan blue	lobelia	speciosa	blue	flower	\N	perennial	2004-10-06 12:17:36	2004-10-22 08:31:10	postgres	postgres	\N	plant	normal
2446	calla lily mint julep	zantedeschia	\N	mint julep	flower	california	annual	2005-01-18 14:15:59	2005-11-29 12:49:50	mgarcia	postgres	\N	plant	normal
2360	poppy oriental garden glory	papaver	\N	garden glory	flower	oriental	perennial	2004-10-19 14:14:05	\N	\N	postgres	\N	plant	normal
2142	dahlia swanlake	dahlia	\N	\N	flower	\N	perennial	2004-03-30 14:52:57	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
1947	acalypha copperleaf	acalypha	wilkesiana	copperleaf -tri-color	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2878	campanula kelly's gold	campanula	\N	kelly's gold	flower	\N	perennial	2006-01-11 15:29:26	\N	\N	mgarcia	\N	plant	normal
1954	diascia sunshine apricot	diascia	\N	sunshine	flower	sunshine	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2310	heuchera starry night	heuchera	\N	starry night	flower	\N	perennial	2004-09-30 15:56:08	2004-12-28 15:58:32	postgres	postgres	\N	plant	normal
2221	papaver shirley double mix	papaver	\N	shirley double mix	flower	\N	perennial	2004-06-07 08:45:18	2004-06-07 08:46:27	postgres	postgres	\N	plant	normal
1619	coleus fright night	solenostemon	\N	fright night	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2331	rudbeckia becky cinnamon bicolor	rudbeckia	\N	becky cinnamon bicolor	flower	\N	perennial	2004-10-06 13:05:44	2005-01-24 11:59:10	postgres	postgres	\N	plant	normal
1955	diascia sunshine orange	diascia	\N	orange	flower	sunshine	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1868	helenium wyndley	helenium	\N	wyndley	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1974	coleus lifelime	solenostemon	\N	lifelime	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1975	coleus mission gem	solenostemon	\N	mission gem	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
681	mesclun spring hot	\N		spring hot	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
794	bellis daisy tasso white	asteraceae	\N	white	flower	tasso	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2369	stock prouesse mix	mathiola	incana	\N	flower	\N	annual	2004-11-01 10:34:47	\N	\N	postgres	\N	plant	normal
673	greens special cooking vitamin	\N		special cooking vitamin green	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
672	greens oriental hybrid autumn poem	\N		oriental hybrid autumn poem	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
671	greens oriental kyona (mizuna)	\N		oriental kyona(mizuna)	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2179	zygo cactus kris kringle II	schlumbergera	\N	kris kringle II	flower	\N	annual	2004-05-05 09:30:21	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
2132	phormium tenax bronze baby	phormium	tenax	bronze	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2346	delphinium guardian blue	delphinium	\N	guardian blue	flower	\N	perennial	2004-10-15 13:05:26	\N	\N	postgres	\N	plant	normal
2347	delphinium guardian early blue	delphinium	\N	guardian early blue	flower	\N	perennial	2004-10-15 13:06:24	\N	\N	postgres	\N	plant	normal
2348	delphinium guardian lavender	delphinium	\N	guardian lavender	flower	\N	perennial	2004-10-15 13:07:00	\N	\N	postgres	\N	plant	normal
1073	nasturtium peach melba	tropaeolum	\N	peach melba	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1977	coleus saturn	solenostemon	\N	saturn	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
3088	begonia bon fire	begonia	\N	bon fire	flower	\N	annual	2007-04-18 09:24:31	\N	\N	mgarcia	\N	plant	normal
2349	delphinium guardian white	delphinium	\N	guardian white	flower	\N	perennial	2004-10-15 13:07:37	\N	\N	postgres	\N	plant	normal
2615	fuchsia bicentennial	fuchsia	\N	bicentennial	flower	\N	annual	2005-09-21 09:58:58	\N	\N	mgarcia	\N	plant	normal
1952	calibrachoa mini famous dark violet	calibrochoa	\N	dark violet	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2127	geranium zonal montevideo	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
670	greens cress upland	\N		cress upland cress	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1574	calla lily chianti	\N	\N	chianti	flower	new zealand	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1634	verbena royal dreams white	verbena	\N	white	flower	royal dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1074	nasturtium red wonder	tropaeolum	\N	red wonder	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1994	nasturtium strawberries and cream	tropaeolum	\N	strawberries and cream	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2690	brunnera dawson's white	brunnera	 	dawson's white	flower	\N	perennial	2005-10-20 11:06:06	2005-11-29 12:50:03	mgarcia	mgarcia	\N	plant	normal
680	mesclun spring mild	\N		spring mild	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2225	echinacea double decker	echinacea	\N	double decker	flower	\N	perennial	2004-06-07 08:48:53	2004-10-25 15:03:27	postgres	postgres	\N	plant	normal
2087	calla lily sunshine	zantedeschia	\N	sunshine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
678	lettuce new red fire	lactuca sativa		new red fire	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1999	pepper medusa	capsicum	\N	medusa	herb	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1081	salvia desert blaze	salvia	greggii	desert blaze	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2850	circle of life 4A	cascade cuts logo	\N	circle of life	flower	CL4A	annual	2005-12-14 15:39:49	2007-01-15 12:08:55	mgarcia	mgarcia	\N	tag	price_group
2291	echinacea big sky sunrise	echinacea	\N	big sky rise	flower	\N	perennial	2004-09-30 13:51:36	2005-01-14 15:23:06	postgres	postgres	\N	plant	normal
675	lettuce green grand rapids	lactuca sativa		green grand rapids	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
674	kale red russian	brassica		red russian	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1780	verbena purple	verbena	\N	purple	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1454	euphorbia fireglow	euphorbia	griffithii	fireglow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2592	ranunculus concerto lemon	ranunculus	\N	lemon	flower	concerto	annual	2005-07-13 11:28:17	\N	\N	postgres	\N	plant	normal
1753	nasturtium margaret long	tropaeolum	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2088	zinnia swizzle cherry ivory	zinnia	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2214	cabbage vantage point	brassica	oleracea	\N	herb	veggies	annual	2004-05-27 11:00:12	2004-05-27 12:17:13	postgres	postgres	\N	plant	normal
2200	iberis snowflake	iberis	\N	snowflake	flower	\N	perennial	2004-05-25 09:42:51	2004-05-25 10:00:39	postgres	postgres	\N	plant	normal
2204	phlox subulata crimson beauty	phlox	subulata	crimson beauty	flower	\N	perennial	2004-05-25 10:30:49	2004-05-25 10:32:54	postgres	postgres	\N	plant	normal
2206	phlox subulata fort hill	phlox	subulata	fort hill	flower	\N	perennial	2004-05-25 10:33:40	2004-05-25 10:35:11	postgres	postgres	\N	plant	normal
2208	phlox subulata red wing	phlox	subulata	red wing	flower	\N	perennial	2004-05-25 10:35:50	2004-05-25 10:36:58	postgres	postgres	\N	plant	normal
2210	phlox subulata scarlet flame	phlox	subulata	scarlet flame	flower	\N	perennial	2004-05-25 10:37:55	2004-05-25 10:40:30	postgres	postgres	\N	plant	normal
2211	phlox subulata white delight	phlox	subulata	white delight	flower	\N	perennial	2004-05-25 10:42:33	\N	\N	postgres	\N	plant	normal
2216	cabbage ruby perfection	brassica	oleracea	\N	herb	veggies	annual	2004-05-27 11:07:04	2004-05-27 12:20:34	postgres	postgres	\N	plant	normal
1620	coleus red petticoats	solenostemon	\N	red petticoats	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2124	geranium zonal kardino	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2125	geranium zonal bravo	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2126	geranium zonal bravo pink dark	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1602	argyranthemum dream apricot	argyranthemum	\N	dream apricot	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1632	verbena royal dreams hot pink	verbena	\N	hot pink	flower	royal dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1633	verbena royal dreams salmon	verbena	\N	salmon	flower	royal dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
945	pansy supreme primrose	viola	\N	primrose	flower	supreme	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
943	pansy skyline copperfield	viola	\N	copperfield	flower	skyline	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
918	lobelia  regatta white	lobelia	\N	white	flower	regatta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2719	victorian mixed basket	victorian basket	\N	mixed basket	flower	\N	annual	2005-10-24 09:35:35	\N	\N	mgarcia	\N	plant	normal
2429	helichrysum silver mist	helichrysum	\N	silver mist	flower	circle of life	annual	2005-01-12 12:52:48	\N	\N	postgres	\N	plant	normal
677	letuce red oakleaf	lactuca sativa		red oakleaf (cocarde mto)	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1638	verbena star dreams rose	verbena	\N	rose	flower	star dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1639	verbena patio red	verbena	\N	patio red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1640	monopsis bronze beauty	monopsis	\N	bronze beauty	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1960	snapdragon variegata candy snap	antirrhinum	variegata	candy snap	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1622	diascia flying colors little charms	diascia	\N	little charms	flower	flying colors	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2250	3.5" reg primula mix	cascade cuts logo	\N	mix	flower	\N	perennial	2004-07-14 16:18:27	2007-01-15 12:10:47	mgarcia	postgres	\N	tag	regular
1655	anemone harmony blue	anemone	\N	blue	flower	harmony	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1656	anemone harmony pearl	anemone	\N	pearl	flower	harmony	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2122	geranium zonal designer violet	pelargonium	\N	\N	flower	designer	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1662	scabiosa columbaria giant blue	scabiosa	columbaria	giant blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
849	torenia clown violet	torenia	\N	violet	flower	clown	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
897	impatiens impulse pink	impatiens	\N	pink	flower	impulse	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1061	helianthemum raspberry ripple	helianthemum	\N	raspberry ripple	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1450	dierama pulcherrimum	dierama	pulcherrimum	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1426	corydalis blue panda	corydalis	flexuosa	blue panda	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1752	nasturtium darjeeling gold	tropaeolum	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2418	dahlia gallery matisse	dahlia	\N	matisse	flower	gallery	annual	2005-01-11 15:28:13	2005-01-11 15:29:04	postgres	postgres	\N	plant	normal
113	honeywort	cerinthe	major	atropurpurascens	flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2356	digitalis ferruginea red	digitalis	\N	ferruginea red	flower	\N	perennial	2004-10-15 14:10:38	\N	\N	postgres	\N	plant	normal
536	sage argentine skies	salvia	guaranitica	argentine skies	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1681	chrysanthemum camina red	chrysanthemum	\N	camina red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1683	chrysanthemum orange ozenda	chrysanthemum	\N	orange ozenda	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1679	chrysanthemum lucera orange	chrysanthemum	\N	lucera orange	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1686	chrysanthemum dark veria yellow	chrysanthemum	\N	dark veria yellow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1687	chrysanthemum carpino purple	chrysanthemum	\N	carpino purple	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1688	chrysanthemum galatino burgundy	chrysanthemum	\N	galatino burgundy	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1685	chrysanthemum sapiro yellow	chrysanthemum	\N	sapiro yellow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1684	chrysanthemum sapiro orange	chrysanthemum	\N	sapiro orange	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2973	dahlia happy singles romeo	dahlia	\N	romeo	flower	happy singles	annual	2006-10-16 11:13:41	\N	\N	mgarcia	\N	plant	normal
964	salvia rhea blue	salvia	\N	blue	flower	rhea	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1099	chrysanthemum celino	chrysanthemum	\N	celino	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
950	petunia carpet pink	petunia	\N	pink	flower	carpet	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1781	verbena red	verbena	\N	red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1782	verbena neon rose	verbena	\N	neon rose	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2426	geranium zonal americana rose deep ii	pelargonium	\N	rose deep ii	flower	zonal americana	annual	2005-01-11 15:41:30	2005-01-24 11:38:10	postgres	postgres	\N	plant	normal
1581	zinnia benary's giant bright pink	zinnia	elegans	bright pink	flower	benary's giant	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1579	zinnia benary's giant deep red	zinnia	elegans	deep red	flower	benary's giant	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1145	primula danova wine red	\N	\N	wine/red	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1585	zinnia elegans whirligig	zinnia	elegans	whirligig	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1587	coreopsis basilis sunshine	coreopsis	basilis	sunshine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1591	viola hybrida miniola heart purple	viola	hybrida	miniola heart purple	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1593	laurentia axillaris blue stars	laurentia	axillaris	blue stars	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2354	echinacea ruby giant	echinacea	\N	ruby giant	flower	\N	perennial	2004-10-15 14:01:51	2007-01-15 13:10:26	mgarcia	postgres	\N	plant	normal
824	nasturtium dwarf alaska	tropaeolum	\N	alaska	flower	dwarf	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1603	argyranthemum lovey dovey white	argyranthemum	\N	lovey dovey white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1411	campanula warley white	campanula	\N	warley white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1751	nasturtium forest flame	tropaeolum	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
848	torenia clown plum	torenia	\N	plum	flower	clown	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
967	snapdragon pallette bronze	antirrhinum	majus	bronze	flower	pallette	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1554	sisyrinchium bellum blue eyed grass	sisyrinchium	bellum	blue eyed grass	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2502	torenia duchess blue and white	torenia	\N	blue and white	flower	duchess	annual	2005-02-24 14:26:12	\N	\N	postgres	\N	plant	normal
1553	silene uniflora druett's variegated	silene	uniflora	druetts variegated	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1590	silene colorata pink pirouette	silene	colorata	pink pirouette	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1084	sedum vera jameson	sedum	\N	vera jameson	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1083	sedum october daphne	sedum	\N	october daphne	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1082	sedum autumn joy	sedum	\N	autumn joy	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1551	sedum angelina	sedum	\N	angelina	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
966	scabiosa house hybrid mix	scabiosa	caucasia	house hybdid	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2504	salpiglossis bolero mix	salpiglossis	sinuata	bolero mix	flower	\N	annual	2005-03-01 12:56:17	2005-04-19 08:53:54	postgres	postgres	\N	plant	normal
1549	scabiosa columbaria pink passion	scabiosa	columbaria	pink passion	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1550	scabiosa columbaria lemon sorbet	scabiosa	columbaria	lemon sorbet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1538	primula japonica	primula	japonica	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1144	primula danova white	\N	\N	white	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2585	argyranthemum madiera violet	argyranthemum	\N	madiera violet	flower	madiera	annual	2005-07-07 08:47:51	\N	\N	postgres	violet	plant	normal
1143	primula danova scarlet	\N	\N	scarlet	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1141	primula danova rose	\N	\N	rose	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1536	phormium tenax bronze	phormium	tenax	bronze	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1535	phormium surfer	phormium	\N	surfer	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1534	phormium jack spratt	phormium	\N	jack spratt	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
669	endive neos	cichorium endivia		neos	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1768	diascia sweet thing rose	diascia	\N	sweet thing rose	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1769	diascia snowdrift white	diascia	\N	snowdrift white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1770	rudbeckia spotlight	rudbeckia	\N	spotlight	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1771	argyranthemum summer melody pink	argyranthemum	\N	summer melody pink	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1772	argyranthemum white star	argyranthemum	\N	white star	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1773	brachycome city lights pink	brachycome	\N	city lights pink	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1923	viola sorbet coconut duet	viola	\N	coconut duet	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1775	verbena pink shade	verbena	\N	pink shade	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1993	wintergreen very berry	gaultheria	procumbens	very berry	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
682	mesclun fall hot	\N		fall hot	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1946	acalypha wilkesiana ceylon	acalypha	wilkesiana	ceylon	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1002	Achillea jambounegii	achillea	jambournegii	yarrow-white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1928	acorus gram variegatus	acorus	\N	sweet flag-variegated	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2119	geranium zonal designer salmon	pelargonium	\N	\N	flower	designer	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1575	aquilegia vulgaris woodside gold	aquilegia	vulgaris	woodside gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1578	tropaeolum azureum blue nasturtium	tropaeolum	azureum	blue nasturtium	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
860	zinnia green envy	zinnia	\N	green envy	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2183	mimulus magic mix	mimulus	\N	mix	flower	magic	annual	2004-05-10 11:35:06	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
1507	lobelia speciosa monet moment	lobelia	speciosa	monet moment	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
864	zinnia state fair mix	zinnia	\N	state fair mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1142	primula danova salmon/orange	\N	\N	salmon/orange	flower	danova	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1539	primula vialii	primula vialii	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1873	lavatera eye catcher	lavatera	\N	eye catcher	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1874	ligularia othello	ligularia	\N	othello	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1875	lonicera periclymenum harlequin	lonicera	periclymenum	harlequin	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1197	calla lily aethiopica green goddess	zantedeschia	aethiopica	green goddess	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1635	verbena star dreams blue eye	verbena	\N	blue eye	flower	star dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1637	verbena star dreams purple	verbena	\N	purple	flower	star dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
827	papaver nudicale wonderland orange	papaver	nudicale	orange	flower	iceland poppy	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1822	sambucus sutherland gold	sambucus	\N	sutherland gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
828	papaver nudicale wonderland white	papaver	nudicale	white	flower	iceland poppy	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1599	arctotis hybrid pumpkin pie	arctotis	\N	pumpkin pie	flower	hybrid	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1600	arctotis hybrid sun spot	arctotis	\N	sun spot	flower	hybrid	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1636	verbena star dreams burgundy eye	verbena	\N	burgundy eye	flower	star dreams	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1589	poppy double tangerine gem	papaver	ruprifragum	double tangerine gem	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1824	hedera helix tres coupe	hedera	helix	tres coupe	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1825	hedera helix adam	hedera	helix	adam	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1826	hedera helix connecticut yankee	hedera	helix	connecticut yankee	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1827	hedera helix sagittaefolia variegata	hedera	helix	sagittaefolia	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1828	hedera helix glacier	hedera	helix	glacier	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1829	hedera helix anne marie	hedera	helix	anne marie	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
683	mesclun fall mild	\N		fall mild	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1830	hedera helix butterfly	hedera	helix	butterfly	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1682	chrysanthemum milano white	chrysanthemum	\N	milano white	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
41	amaranthus love lies bleeding red	amaranthus	caudatus		flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1039	diascia red start	diascia	\N	red start	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1847	alstroemeria ella	alstroemeria	\N	ella	flower	pricess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1577	trifolium rubens	trifolium	rubens	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
666	cabbage red express	brassica		red express	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1180	lily stargazer	lilium	oriental	stargazer	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	crimsom rose	plant	normal
1765	cerinthe minor bouquet gold	cerinthe	minor	auriculata	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1263	geranium zonal schoen helena	pelargonium	\N	schoen helena	flower	zonal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1764	cerinthe major yellow candy	cerinthe	major	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
665	cabbage early jersey wakefield	brassica		early jersey wakefield	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
663	cabbge first early market	brassica		first early market	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
662	broccoli	brassica		white sprouting	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1766	diascia sunrise coral	diascia	\N	sunrise coral	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1261	geranium zonal samba	pelargonium	\N	samba	flower	zonal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1631	venedio killerton red	\N	\N	killerton red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1196	calla lily aethiopica alba white	zantedeschia	aethiopica	white	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1029	calibrachoa mini famous pink	\N	\N	pink	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1262	geranium zonal tri color	pelargonium	\N	tri color	flower	zonal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1850	alstroemeria oxana	alstroemeria	\N	oxana	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1851	alstroemeria sara	alstroemeria	\N	sara	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1831	hedera helix lady kay	hedera	helix	lady kay	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
686	radicchio augusto	\N		augusto	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1832	hedera helix gold child	hedera	helix	gold child	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1046	felicia spring blue	felicia	\N	spring blue	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1833	hedera helix green ripple	hedera	helix	green ripple	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1836	tulip praestans unicum	\N	praestans	unicum	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1968	calibrachoa mini famous caribbean sunset	calibrachoa	\N	caribbean sunset	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1969	calibrachoa mini famous light pink eye	calibrachoa	\N	light pink eye	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2389	diascia sunshine rose	diascia	\N	sunshine rose	flower	\N	annual	2004-11-15 08:22:43	2004-11-15 08:25:57	postgres	postgres	\N	plant	normal
1038	diascia flying colors apricot	diascia	\N	apricot	flower	flying colors	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1041	diascia sun chimes peach	diascia	\N	peach	flower	sun chimes	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1043	diascia trailing lavender rose	diascia	\N	lavender rose	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1044	diascia variegated	diascia	\N	variegated	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1871	heucherella sunspot	heucherella	\N	sunspot	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1976	coleus pineapple	solenostemon	\N	pineapple	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1856	anemone japanese party dress	anemone	\N	party dress	flower	japanese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1857	brunnera variegata	brunnera	\N	variegated	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
782	salvia santa barbara	salvia	\N	santa barbara	flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1858	carex siderosticha lemon zest	carex	sideroticha	lemon zest	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1859	coreopsis creme brulee	coreopsis	\N	creme brulee	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1860	corydalis leucanthema silver spectre	corydalis	leucanthema	silver spectre	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2202	lithodora grace ward	lithodora	diffusa	grace ward	flower	\N	perennial	2004-05-25 10:01:31	2004-06-22 09:59:36	postgres	postgres	\N	plant	normal
2677	bacopa abunda blue improved	sutera	\N	abanda blue improved	flower	\N	annual	2005-10-13 09:31:16	2006-02-14 09:35:22	mgarcia	aklaver	blue	plant	normal
2236	iberis alexander's white	iberis	sempevirens	alexander's white	flower	\N	perennial	2004-06-22 10:02:46	2004-06-22 10:02:53	postgres	postgres	\N	plant	normal
2237	silene clifford moor	silene	dioica	clifford moor	flower	\N	perennial	2004-06-22 10:43:50	\N	\N	postgres	\N	plant	normal
1861	dicentra aurora	dicentra	\N	aurora	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2357	digitalis primrose carousel	digitalis	\N	primrose carousel	flower	\N	perennial	2004-10-15 14:15:08	2004-10-15 14:15:47	postgres	postgres	\N	plant	normal
2234	viola sorbet purple duet	viola	\N	sorbet purple duet	flower	sorbet	perennial	2004-06-07 16:19:08	\N	\N	postgres	\N	plant	normal
1862	euphorbia dixter	euphorbia	\N	dixter	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1863	euphorbia first blush	euphorbia	\N	first blush	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1864	euphorbia tasmanian tiger	euphorbia	\N	tasmanian tiger	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1865	gaillardia fanfare	gaillardia	\N	fanfare	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1982	geranium freestyle pink 	pelargonium	\N	pink 	flower	freestyle	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2121	geranium zonal designer scarlet brt	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1869	heuchera lime rickey	heuchera	\N	lime rickey	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1870	heuchera marmalade	heuchera	\N	marmalade	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1872	lavatera baby barnsley	lavatera	\N	baby barnsley	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1803	zinnia star white	zinnia	\N	white	flower	star	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1146	primula finesse mix	\N	\N	finesse mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1804	zinnia star gold	zinnia	\N	gold	flower	star	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
986	viola sorbet antique shades	viola	\N	antique shades	flower	sorbet	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1834	viola baby face lavender	viola	\N	lavender	flower	baby face	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1916	penstemon electric blue	penstemon	\N	electric blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1918	zinnia benary's giant orange	zinnia	\N	giant orange	flower	benary's	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1919	zinnia benary's persian carpet	zinnia	\N	persian carpet	flower	benary's	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1920	dianthus cherry magic corona	dianthus	\N	corona	flower	cherry magic	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1756	lily golden torch	longiflorum/asiatic	cross hybrid	golden torch yellow	flower	LA pot collection	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1922	pansy halloween II black	viola	\N	halloween ll black	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1924	lavatera novella pink	lavatera	\N	pink	flower	novella	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1925	pansy delta fire	viola	\N	fire	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1045	felicia variegated blue	felicia	\N	variegated blue	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1927	acorus gram ogon	acorus	\N	gram ogon	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1929	carex toffee twist	carex	\N	toffee twist	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1987	impatien jungle gold	impatien	\N	jungle gold	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1931	fescue golden toupee	fescue	\N	golden toupee	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2178	zygo cactus new radiance	schlumbergera	\N	new radiance	flower	\N	annual	2004-05-05 09:28:01	2004-05-31 11:25:07	postgres	postgres	\N	plant	normal
1932	phalaris strawberry and cream	phalaris	\N	strawberry and cream	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1933	phalaris dwarf garters	phalaris	\N	dwarf garters	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1930	carex evergold	carex	\N	evergold	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2358	digitalis camelot mix	digitalis	\N	camelot mix	flower	\N	perennial	2004-10-15 14:16:15	\N	\N	postgres	\N	plant	normal
1934	carex orange sedge	carex	\N	orange sedge	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1981	crocosmia emberglow	crocosmia	\N	emberglow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1446	dicentra luxurient	dicentra 	\N	luxurient	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1879	poppy oriental brooklyn	papaver	\N	brooklyn	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1880	poppy oriental forncett summer	papaver	\N	forncett summer	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1881	poppy oriental lilac girl	papaver	\N	lilac girl	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1882	poppy oriental little dancing girl	papaver	\N	little dancing girl	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2279	thunbergia sunny lemon star	thunbergia	\N	sunny lemon star	flower	\N	annual	2004-09-28 13:43:15	\N	\N	postgres	\N	plant	normal
1883	poppy oriental manhattan	papaver	\N	manhattan	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1884	poppy oriental orange glow	papaver	\N	orange glow	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1516	poppy karine	papaver	\N	karine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2261	phormium jester	phormium	\N	jester	flower	\N	perennial	2004-08-13 08:39:59	\N	\N	postgres	\N	plant	normal
1050	fuchsia gartenmeister pink	fuchsia	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1992	corydalis china blue	corydalis	flexuosa	china blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1259	geranium zonal americana pink ii	pelargonium	\N	pink ii	flower	zonal americana	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
668	dandelion italian	\N		italian	herb	veggies	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1627	fuchsia sunfilipe	fuchsia	\N	sunfilipe	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
810	dianthus double midget mix	dianthus	\N	double midget mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1402	artemisia silver brocade	artemesia	\N	silver brocade	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1845	alstroemeria camilla	alstroemeria	\N	camilla	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1846	alstroemeria daniela	alstroemeria	\N	daniela	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1848	alstroemeria isabella	alstroemeria	\N	isabella	flower	princess lilliese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1849	alstroemeria ivana	alstroemeria	\N	ivana	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2904	viola sorbet plum velvet improved	viola	\N	plum velvet improved	flower	sorbet	perennial	2006-06-07 08:34:25	\N	\N	mgarcia	\N	plant	normal
1936	viola black duet	viola	\N	black duet	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1937	viola baby face yellow	viola	\N	baby face yellow 	flower	baby face 	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2262	phormium pink panther	phormiuim	\N	pink panther	flower	\N	perennial	2004-08-13 08:43:59	\N	\N	postgres	\N	plant	normal
2263	phormium platts black	phormium	\N	platts black	flower	\N	perennial	2004-08-13 08:47:13	\N	\N	postgres	\N	plant	normal
2266	phormium duet	phormium	\N	duet	flower	\N	perennial	2004-08-13 09:01:03	\N	\N	postgres	\N	plant	normal
2284	alstroemeria inca exotica	alstroemeria 	inca	exotica	flower	\N	perennial	2004-09-30 13:24:19	\N	\N	postgres	yellow w/ red throat	plant	normal
2265	phormium apricot queen	phormium	\N	apricot queen	flower	\N	perennial	2004-08-13 08:58:49	\N	\N	postgres	\N	plant	normal
2267	phormium yellow wave	phormium	\N	yellow wave	flower	\N	perennial	2004-08-13 09:03:27	\N	\N	postgres	\N	plant	normal
2271	acteae simplex black negligee	acteae	smplex	black negligee	flower	\N	perennial	2004-08-17 12:24:07	\N	\N	postgres	\N	plant	normal
2269	primula green lace	primula	\N	green lace	flower	\N	perennial	2004-08-13 09:09:00	\N	\N	postgres	\N	plant	normal
2270	phormium purpurea	phormium	purpurea	\N	flower	\N	perennial	2004-08-16 10:35:25	\N	\N	postgres	\N	plant	normal
1938	pansy delta pure primrose premium	viola	\N	pure primrose premium	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2272	corydalis elata electric blue	corydalis	elata	electric blue	flower	\N	perennial	2004-08-17 12:27:51	\N	\N	postgres	\N	plant	normal
2273	corydalis flexuosa golden panda	corydalis	flexuosa	golden panda	flower	\N	perennial	2004-08-17 12:29:57	\N	\N	postgres	\N	plant	normal
1939	pansy delta pure violet	viola	\N	pure violet	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1940	sedum frosty morn	sedum	\N	frosty morn	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1941	hedera helix star	hedera helix	\N	star	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
3083	amaryllis molto bello	amaryllis	\N	molto bello	flower	\N	annual	2007-04-17 09:28:28	\N	\N	mgarcia	\N	plant	fall_bulb
2264	thyme silver posie	thymus	vulgaris	silver posie	herb	\N	perennial	2004-08-13 08:55:36	2004-09-21 13:13:18	postgres	postgres	\N	plant	normal
1942	hedera helix congesta	hedera helix	\N	congesta	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2281	alstroemeria anouska	alstroemeria	\N	anouska	flower	\N	perennial	2004-09-30 12:13:05	2004-09-30 12:14:45	postgres	postgres	\N	plant	normal
2280	alstroemeria angela	alstroemeria	\N	angela	flower	\N	perennial	2004-09-30 12:10:40	2004-09-30 12:15:04	postgres	postgres	\N	plant	normal
2286	alstroemeria inca obsession	alstroemeria 	inca	obsession	flower	\N	perennial	2004-09-30 13:27:26	\N	\N	postgres	dark violet rose	plant	normal
2283	alstroemeria inca adore	alstroemeria	inca	adore	flower	\N	perennial	2004-09-30 12:19:27	\N	\N	postgres	red w/ yellow	plant	normal
2287	alstroemeria julietta	alstroemeria 	\N	julietta	flower	\N	perennial	2004-09-30 13:29:19	\N	\N	postgres	\N	plant	normal
1943	papaver nudicale	papaver	nudicale	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2303	heuchera key lime pie	heuchera	\N	hollywood	flower	\N	perennial	2004-09-30 14:38:13	2004-10-12 14:36:27	postgres	postgres	\N	plant	normal
1944	delphinium magic fountain lavender	delphinium	\N	lavender	flower	magic fountain	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2325	cosmos cosmic red	cosmos	sulphureus	cosmic red	flower	\N	annual	2004-10-06 11:45:45	2004-10-25 14:24:32	postgres	postgres	red	plant	normal
2326	cosmos cosmic yellow	cosmos	sulphureus	cosmic yellow	flower	\N	annual	2004-10-06 11:47:42	2004-10-25 14:24:55	postgres	postgres	yellow	plant	normal
2292	echinacea purpurea fancy frills	echinacea	purpurea	fancy frills	flower	\N	perennial	2004-09-30 13:54:01	\N	\N	postgres	\N	plant	normal
2293	echinacea purpurea hope	echinacea	purpurea	hope	flower	\N	perennial	2004-09-30 13:55:48	\N	\N	postgres	\N	plant	normal
2294	echinacea purpurea little giant	echinacea 	purpurea	little giant	flower	\N	perennial	2004-09-30 13:57:32	\N	\N	postgres	\N	plant	normal
2295	echinacea purpurea sparkler	echinacea	purpurea	sparkler	flower	\N	perennial	2004-09-30 13:59:00	\N	\N	postgres	\N	plant	normal
2891	calla lily pink diamond	zantedeschia	\N	pink diamond	flower	\N	perennial	2006-02-15 16:13:53	\N	\N	mgarcia	\N	plant	normal
1258	geranium zonal americana violet	pelargonium	\N	violet	flower	zonal americana	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2297	heuchera chinook	heuchera	\N	chinook	flower	\N	perennial	2004-09-30 14:21:59	\N	\N	postgres	\N	plant	normal
2298	heuchera beauty of color	heuchera	\N	beauty of color	flower	\N	perennial	2004-09-30 14:26:10	\N	\N	postgres	\N	plant	normal
2299	heuchera creme brulee	heuchera	\N	creme brulee	flower	\N	perennial	2004-09-30 14:28:32	\N	\N	postgres	\N	plant	normal
2300	heuchera fandango	heuchera	\N	fandango	flower	\N	perennial	2004-09-30 14:32:59	\N	\N	postgres	\N	plant	normal
2301	heuchera gypsy dancer	heuchera	\N	gypsy dancer	flower	\N	perennial	2004-09-30 14:34:56	\N	\N	postgres	\N	plant	normal
2302	heuchera hollywood	heuchera	\N	hollywood	flower	\N	perennial	2004-09-30 14:36:36	\N	\N	postgres	\N	plant	normal
2332	salvia patens blue angel	salvia	\N	patens blue angle	flower	\N	annual	2004-10-06 13:12:14	2004-10-13 08:37:36	postgres	postgres	\N	plant	normal
2304	heuchera obsidian	heuchera 	\N	obsidian	flower	\N	perennial	2004-09-30 14:39:57	\N	\N	postgres	\N	plant	normal
2305	heuchera peach flambe	heuchera 	\N	peach flambe	flower	\N	perennial	2004-09-30 14:41:47	\N	\N	postgres	\N	plant	normal
2306	heuchera peach melba	heuchera	\N	peach melba	flower	\N	perennial	2004-09-30 14:43:49	\N	\N	postgres	\N	plant	normal
2307	heuchera peachy keen	heuchera	\N	peachy keen	flower	\N	perennial	2004-09-30 14:46:08	\N	\N	postgres	\N	plant	normal
2308	heuchera sparkling burgundy	heuchera	\N	sparkling burgundy	flower	\N	perennial	2004-09-30 14:48:13	\N	\N	postgres	\N	plant	normal
2309	heucherella stoplight	heucherella	\N	stoplight	flower	\N	perennial	2004-09-30 15:49:38	2004-09-30 15:55:37	postgres	postgres	\N	plant	normal
2483	cyclamen halios pure white early	cyclamen	\N	pure white early	flower	halios	annual	2005-02-15 08:48:01	\N	\N	postgres	white	plant	normal
2312	incarvillea delavayi	incarvillea	delavayi	\N	flower	\N	perennial	2004-09-30 16:00:22	\N	\N	postgres	\N	plant	normal
2313	mertensia japanese blue bells	mertensia	pertensia	japanese blue bells	flower	\N	perennial	2004-09-30 16:06:57	2004-09-30 16:10:28	postgres	postgres	\N	plant	normal
2484	cyclamen halios bright red	cyclamen	\N	bright red	flower	halios	annual	2005-02-15 08:53:33	\N	\N	postgres	red	plant	normal
2316	poppy perry's white	papaver	\N	perry's white	flower	\N	perennial	2004-09-30 16:16:32	\N	\N	postgres	\N	plant	normal
2317	tiarella sugar and spice	tiarella	\N	sugar and spice	flower	\N	perennial	2004-09-30 16:20:10	\N	\N	postgres	\N	plant	normal
2318	ranunculus concerto golden	ranunculus	\N	golden	flower	concerto	annual	2004-09-30 16:23:57	\N	\N	postgres	\N	plant	normal
2319	ranunculus concerto orange tangerine	ranunculus	\N	orange tangerine	flower	\N	annual	2004-09-30 16:25:56	\N	\N	postgres	\N	plant	normal
2320	ranunculus concerto pink	ranunculus	\N	pink	flower	concerto	annual	2004-09-30 16:27:32	\N	\N	postgres	\N	plant	normal
2321	ranunculus concerto rose bicolor	ranunculus	\N	rose bicolor	flower	concerto	annual	2004-09-30 16:29:07	\N	\N	postgres	\N	plant	normal
2322	ranunculus concerto white	ranunculus	\N	white	flower	concerto	annual	2004-09-30 16:30:40	\N	\N	postgres	\N	plant	normal
2323	sambucus night black beauty	sambucus	\N	night black beauty	flower	\N	perennial	2004-09-30 16:32:01	\N	\N	postgres	\N	plant	normal
2327	sunflower ballad	helianthus	\N	ballad	flower	\N	annual	2004-10-06 12:04:48	\N	\N	postgres	\N	plant	normal
2328	sunflower pacino gold	helianthus	\N	pacino gold	flower	\N	annual	2004-10-06 12:07:58	\N	\N	postgres	\N	plant	normal
2362	impatiens super elfin pink	impatiens	\N	pink	flower	super elfin	annual	2004-10-21 08:58:07	\N	\N	postgres	pink	plant	normal
2343	phlox 21st century mix	phlox	\N	21st century mix	flower	\N	annual	2004-10-06 15:34:34	2004-10-22 10:57:19	postgres	postgres	\N	plant	normal
2363	impatiens super elfin red	impatiens	\N	red	flower	super elfin	annual	2004-10-21 09:01:33	\N	\N	postgres	red	plant	normal
2364	impatiens super elfin rose	impatiens	\N	rose	flower	super elfin	annual	2004-10-21 09:03:37	\N	\N	postgres	rose	plant	normal
2365	impatiens super elfin violet	impatiens	\N	violet	flower	super elfin	annual	2004-10-21 09:14:56	\N	\N	postgres	violet	plant	normal
2350	pansy ultima apricot shades	viola	\N	ultima apricot shades	flower	\N	annual	2004-10-15 13:08:25	\N	\N	postgres	\N	plant	normal
2351	pansy whiskers orange	viola	\N	whiskers orange	flower	\N	annual	2004-10-15 13:08:59	\N	\N	postgres	\N	plant	normal
2352	nemesia sunsatia coconut	nemesia	\N	sunsatia coconut	flower	\N	annual	2004-10-15 13:19:41	\N	\N	postgres	\N	plant	normal
2353	nemesia sunsatia lemon	nemesia	\N	sunsatia lemon	flower	\N	annual	2004-10-15 13:22:05	\N	\N	postgres	\N	plant	normal
2344	heliotrope fragrant delight lavender	heliotropium	\N	\N	flower	\N	perennial	2004-10-07 13:01:44	\N	\N	postgres	\N	plant	normal
1980	anemone japanese honorine jobert	anemone	\N	honorine jobert	flower	japanese	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1876	luzula sp. ruby stiletto	luzula	sp	ruby stiletto	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1736	sage silver	salvia	argentea	silver	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1737	viola velour blue bronze	viola	velour	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1738	viola tiger eyes	viola	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2517	mimulus magic white w/ blotch	mimulus	\N	white w/ blotch	flower	magic	annual	2005-03-16 08:55:40	2005-04-21 15:33:15	postgres	postgres	\N	plant	normal
1741	canary creeper	tropaeolum	pergrinum	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
3023	begonia wing red	begonia 	\N	dragon wing red	flower	\N	annual	2006-11-07 07:49:49	\N	\N	mgarcia	\N	plant	normal
1742	cirsium japonicum rose beauty	cirsium	japonicum	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1797	pansy delta pure red	viola	\N	red	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1798	pansy delta primrose w/ blotch	viola	\N	primrose w/ blotch	flower	delta	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1793	pansy springtime black	viola	\N	springtime black	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1387	adenophora tashiroi	adenophora	\N	lobelia-lady bells	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
825	nasturtium jewel mix	tropaeolum	\N	mix	flower	jewel	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1912	cleome sparkler mix	cleome	\N	sparkler mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1606	brachycome blue	\N	\N	blue	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1985	pansy dynamite wine flash	viola	\N	wine flash	flower	dynamite	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1178	dahlia gallery art fair	dahlia	\N	art fair	flower	gallery	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2366	impatiens super elfin salmon	impatiens	\N	salmon	flower	super elfin	annual	2004-10-21 09:16:56	\N	\N	postgres	salmon	plant	normal
2367	impatiens super elfin white	impatiens	\N	white	flower	super elfin	annual	2004-10-21 09:20:17	\N	\N	postgres	white	plant	normal
1986	calibrachoa mini famous orange	calibrachoa	\N	orange	flower	mini famous	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2330	lobelia speciosa fan burgundy	lobelia	speciosa	burgundy	flower	\N	perennial	2004-10-06 12:19:46	2004-10-22 08:31:59	postgres	postgres	\N	plant	normal
1913	rudbeckia hirta cherokee sunset	rudbeckia	hirta	cherokee sunset	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2333	zinnia magellan cherry	zinnia	\N	magellan cherry	flower	\N	annual	2004-10-06 13:31:27	2004-10-22 10:58:52	postgres	postgres	red	plant	normal
2334	zinnia magellan coral	zinnia	\N	magellan coral	flower	\N	annual	2004-10-06 13:34:23	2004-10-22 10:58:59	postgres	postgres	coral	plant	normal
2335	zinnia magellan ivory	zinnia	\N	magellan ivory	flower	\N	annual	2004-10-06 13:36:08	2004-10-22 10:59:07	postgres	postgres	white	plant	normal
2336	zinnia magellan orange	zinnia	\N	magellan orange	flower	\N	annual	2004-10-06 13:43:27	2004-10-22 10:59:15	postgres	postgres	orange	plant	normal
2337	zinnia magellan pink	zinnia	\N	magellan pink	flower	\N	annual	2004-10-06 13:45:36	2004-10-22 10:59:21	postgres	postgres	pink	plant	normal
2338	zinnia magellan salmon	zinnia	\N	magellan salmon	flower	\N	annual	2004-10-06 13:46:53	2004-10-22 10:59:28	postgres	postgres	salmon	plant	normal
2339	zinnia magellan scarlet	zinnia	\N	magellan scarlet	flower	\N	annual	2004-10-06 13:52:00	2004-10-22 10:59:33	postgres	postgres	scarlet	plant	normal
2340	zinnia magellan yellow	zinnia	\N	magellan yellow	flower	\N	annual	2004-10-06 13:53:43	2004-10-22 10:59:38	postgres	postgres	yellow	plant	normal
2341	zinnia profusion apricot	zinnia	\N	profusion apricot	flower	\N	annual	2004-10-06 15:08:27	2004-10-22 10:59:47	postgres	postgres	apricot	plant	normal
2342	zinnia profusion fire	zinnia	\N	profusion fire	flower	\N	annual	2004-10-06 15:21:09	2004-10-22 10:59:52	postgres	postgres	\N	plant	normal
2186	coreopsis baby sun	coreopsis	grandiflora	baby sun	flower	\N	perennial	2004-05-18 08:20:49	2005-02-09 08:20:40	postgres	postgres	\N	plant	normal
2459	achillea millefolium paprika	achillea	millefolium	paprika	flower	\N	perennial	2005-02-09 08:33:39	\N	\N	postgres	\N	plant	normal
2503	torenia duchess burgundy	torenia	\N	burgundy	flower	duchess	annual	2005-02-24 14:27:56	\N	\N	postgres	\N	plant	normal
1914	thunbergia alata spanish eyes	thunbergia	alata	spanish eyes	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1915	verbena obsession apricot	verbena	\N	obsesssion apricot	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1521	poppy royal wedding	papaver	\N	royal wedding	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
4	sweet flag	acorus	calamus		flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2448	impatiens harmony white	impatiens	\N	harmony white	flower	circle of liffe	annual	2005-01-21 11:54:08	2005-01-21 11:54:21	postgres	postgres	white	plant	normal
2449	impatiens harmony cherry ice	impatiens	\N	harmony cherry ice	flower	circle of life	annual	2005-01-21 11:56:24	\N	\N	postgres	\N	plant	normal
1978	coleus super sun plum parfait	solenostemon	\N	super sun plum parfait	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2614	lobelia regatta midnight blue	lobelia	\N	midnight blue	flower	regatta	annual	2005-09-21 09:05:53	\N	\N	mgarcia	\N	plant	normal
2420	dahlia gallery rivera	dahlia	\N	rivera	flower	\N	annual	2005-01-11 15:29:46	2005-01-11 15:30:25	postgres	postgres	\N	plant	normal
2421	dahlia gallery serenade	dahlia	\N	serenade	flower	\N	annual	2005-01-11 15:30:53	\N	\N	postgres	\N	plant	normal
2422	dahlia gallery sisley	dahlia	\N	sisley	flower	gallery	annual	2005-01-11 15:32:50	\N	\N	postgres	\N	plant	normal
2721	10" fuchsia cehb	cascade cuts logo	\N	\N	flower	HBBasketC	annual	2005-10-24 14:43:44	2007-01-15 12:03:39	mgarcia	mgarcia	\N	plant	normal
2482	hosta x undulata mediovariegata 	hosta 	x undulata	mediovariegata 	flower	\N	perennial	2005-02-14 15:16:36	2005-04-06 10:54:29	postgres	postgres	\N	plant	normal
2442	echinacea big sky sundown	echinacea	\N	big sky sundown	flower	\N	perennial	2005-01-14 15:24:18	2005-07-06 13:17:43	postgres	postgres	\N	plant	normal
1257	geranium zonal americana salmon	pelargonium	\N	salmon	flower	zonal americana	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1885	poppy oriental raspberry queen	papaver	\N	raspberry queen	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1886	poppy oriental watermelon	papaver	\N	watermelon	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1956	fuchsia fantasy rose	fuchsia	\N	fantasy rose	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1887	phlox paniculata silvermine	phlox	paniculata	silvermine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2437	coleus kong red	solenostemon 	\N	kong red	flower	circle of life	annual	2005-01-12 13:11:34	2005-01-12 13:12:20	postgres	postgres	\N	plant	normal
2443	echinacea meadowbrite	echinacea	\N	meadowbrite	flower	\N	perennial	2005-01-14 15:29:55	\N	\N	postgres	\N	plant	normal
1888	phormium candy stripe	phormium	\N	candy stripe	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2505	lily royal trinity	lilium	longiflorum/asiatic	royal trinity	flower	LA collections	perennial	2005-03-03 15:46:53	\N	\N	postgres	poppy orange	plant	normal
1889	roscoea beesiana alba	roscoea	beesiana	alba	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2447	calla lily pillow talk	zantedeschia	\N	pillow talk	flower	california	annual	2005-01-18 14:18:52	2005-01-24 11:45:56	postgres	postgres	\N	plant	normal
2441	coleus kong scarlet	solestemon 	\N	kong scarlet	flower	circle of life	annual	2005-01-12 13:17:30	2005-01-12 13:18:06	postgres	postgres	\N	plant	normal
2485	cyclamen halios scarlet red	cyclamen	\N	scarlet red	flower	halios	annual	2005-02-15 08:56:01	\N	\N	postgres	red	plant	normal
1890	rudbeckia green wizard	rudbeckia	\N	green wizard	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1891	salvia patens	salvia	\N	patens	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1892	tiarella neon lights	tiarella	\N	neon lights	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2506	lily oriental garden party	lilium	oriental	garden party	flower	oriental	perennial	2005-03-03 15:50:21	\N	\N	postgres	white w/honey band	plant	normal
1893	brunnera macrophylla jack frost	brunnera	macrophylla	jack frost	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2345	abutilon dame vanessa	abutilon	\N	dame vanessa	flower	\N	annual	2004-10-15 13:04:20	2005-01-24 11:13:12	postgres	postgres	\N	plant	normal
1894	phormium evening glow	phormium	\N	evening glow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1895	phormium gold sword	phormium	\N	gold sword	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1896	phormium limelight	phormium	\N	lilmelight	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1897	phormium rainbow chief	phormium	\N	rainbow chief	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1898	phormium rainbow maiden	phormium	\N	rainbow maiden	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1899	phormium rainbow queen	phormium	\N	rainbow queen	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1900	phormium rainbow tricolor	phormium	\N	rainbow tricolor	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
823	mimulus calypso	mimulus	\N	mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1901	phormium rainbow sunrise	phormium	\N	rainbow sunrise	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1902	phormium sundowner	phormium	\N	sundowner	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1903	phormium tenax dusky chief	phormium	tenax	dusky chief	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1904	phygelius sunshine	phygelius	\N	sunshine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1905	polemonium bressingham purple	polemonium	bressingham	purple	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2497	zinnia benary's giant carmine rose	zinnia	elegans	carmine rose	flower	benary's giant	annual	2005-02-23 15:57:04	\N	\N	postgres	\N	plant	normal
2498	zinnia benary's giant lilac	zinnia	elegans	lilac	flower	benary's giant	annual	2005-02-23 15:58:37	\N	\N	postgres	\N	plant	normal
2460	dianthus deltoides brilliant	dianthus	deltoides	brilliant	flower	\N	perennial	2005-02-09 08:35:52	\N	\N	postgres	\N	plant	normal
2863	geranium allure rose	pelargonium	\N	allure rose	flower	\N	annual	2006-01-10 08:45:52	\N	\N	mgarcia	\N	plant	normal
2314	poppy oriental pinnacle	papaver	\N	pinacle	flower	oriental	perennial	2004-09-30 16:11:06	2005-02-14 14:05:36	postgres	postgres	\N	plant	normal
2465	calibracoa superbells white	calibracoa	superbells	white	flower	\N	annual	2005-02-09 10:49:55	\N	\N	postgres	\N	plant	normal
1906	sambucus sutherland gold	sambucus	\N	sutherland gold	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2046	amaryllis novelties cybister chico	\N	\N	cybister chico	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2047	amaryllis novelties cybister lima	\N	\N	cybister lima	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2454	zinnia benary's giant yellow	zinnia	elegans	\N	flower	benary's giant	annual	2005-02-08 13:06:06	\N	\N	postgres	yellow	plant	normal
2455	zinnia benary's giant rose	zinnia	elegans	\N	flower	benary's giant	annual	2005-02-08 13:07:06	\N	\N	postgres	rose	plant	normal
2456	zinnia benary's giant carmine	zinnia	elegans	\N	flower	benary's giant	annual	2005-02-08 13:08:05	\N	\N	postgres	carmine	plant	normal
2457	zinnia cactus type mix	zinnia	\N	cactus type mix	flower	\N	annual	2005-02-08 13:08:51	\N	\N	postgres	\N	plant	normal
2458	zinnia candy cane	zinnia	\N	candy cane	flower	\N	annual	2005-02-08 13:09:29	\N	\N	postgres	\N	plant	normal
2466	immortalle licorice splash	helichrysum	\N	licorice splash	flower	\N	annual	2005-02-09 10:53:02	\N	\N	postgres	\N	plant	normal
2467	immortalle licorice lemon	helichrysum	\N	licorice lemon	flower	\N	annual	2005-02-09 10:55:03	\N	\N	postgres	\N	plant	normal
2468	immortalle minus	helichrysum	\N	minus	flower	\N	annual	2005-02-09 10:56:34	\N	\N	postgres	\N	plant	normal
2469	petunia supertun blush princess	petunia	supertun	blush princess	flower	\N	perennial	2005-02-09 10:58:04	\N	\N	postgres	\N	plant	normal
2470	petunia supertun mini pink brigtht	petunia	supertun	mini pink bright	flower	\N	annual	2005-02-09 11:00:14	\N	\N	postgres	\N	plant	normal
2471	petunia supertun mini purple	petunia	supertun	mini purple	flower	\N	annual	2005-02-09 11:01:37	\N	\N	postgres	\N	plant	normal
2472	petunia supertun mini priscilla	petunia 	supertun	mini priscilla	flower	\N	annual	2005-02-09 11:03:34	\N	\N	postgres	\N	plant	normal
2473	verbena superbena babylon red	verbena	superbena	babylon red	flower	\N	annual	2005-02-09 11:07:37	\N	\N	postgres	\N	plant	normal
2474	verbena superbena dark blue	verbena 	superbena	dark blue	flower	\N	annual	2005-02-09 11:09:21	\N	\N	postgres	\N	plant	normal
2475	verbena superbena pink shades	verbena	superbena	pink shades	flower	\N	annual	2005-02-09 11:11:00	\N	\N	postgres	\N	plant	normal
2476	vinca vine variegated	vinca 	\N	variegated	flower	\N	annual	2005-02-09 11:13:39	\N	\N	postgres	\N	plant	normal
2478	hosta august moon	hosta	\N	august moon	flower	\N	perennial	2005-02-14 14:29:09	\N	\N	postgres	\N	plant	normal
2486	cyclamen halios pure white compact	cyclamen	\N	pure white compact	flower	halios	annual	2005-02-15 09:08:18	\N	\N	postgres	\N	plant	normal
2480	hosta francee foryunei	hosta	\N	francee foryunei	flower	\N	perennial	2005-02-14 14:46:38	\N	\N	postgres	\N	plant	normal
2481	hosta frances williams sieboldiana	hosta	\N	frances williams sieboldiana	flower	\N	perennial	2005-02-14 15:13:01	\N	\N	postgres	\N	plant	normal
2487	cyclamen sterling white	cyclamen	\N	white	flower	sterling	annual	2005-02-15 09:24:14	\N	\N	postgres	white	plant	normal
2715	calibrachoa cabaret white	calibrachoa	\N	cabaret white	flower	\N	annual	2005-10-24 09:29:12	2005-11-29 12:53:24	mgarcia	mgarcia	\N	plant	normal
2425	lachenalia rupert	lachenalia	\N	rupert	flower	\N	annual	2005-01-11 15:38:23	2005-04-06 12:59:15	postgres	postgres	blue	plant	normal
2488	cyclamen sterling scarlet	cyclamen	\N	scarlet	flower	sterling	annual	2005-02-15 09:26:17	\N	\N	postgres	\N	plant	normal
2489	cyclamen sterling wine	cyclamen	\N	wine	flower	sterling	annual	2005-02-15 09:28:00	\N	\N	postgres	\N	plant	normal
2490	cyclamen sterling purple	cyclamen 	\N	purple	flower	sterling	annual	2005-02-15 09:29:37	\N	\N	postgres	purple	plant	normal
2495	cyclamen metis scarlet red	cyclamen	\N	scarlet red	flower	metis	annual	2005-02-15 09:41:15	\N	\N	postgres	red	plant	normal
2496	cyclamen metis pure white	cyclamen	\N	pure white 	flower	metis	annual	2005-02-15 09:50:05	\N	\N	postgres	white	plant	normal
2048	amaryllis novelties cybister emerald	\N	\N	cybister emerald	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2499	zinnia benary's giant golden yellow	zinnia	elegans	golden yellow	flower	benary's giant	annual	2005-02-23 15:59:32	\N	\N	postgres	\N	plant	normal
2049	amaryllis novelties cybister ruby meyer	\N	\N	cybister ruby meyer	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2050	amaryllis novelties cybister la paz	\N	\N	cybister la paz	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2628	10" african daisy cedar basket	cascade cuts logo	\N	\N	flower	HBBasketC	annual	2005-10-05 14:10:05	2007-01-15 12:03:00	mgarcia	mgarcia	\N	tag	sub_price_group
2051	amaryllis novelties amputo	\N	\N	amputo	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2500	zinnia benary's giant lime	zinnia	elegans	lime	flower	benary's giant	annual	2005-02-23 16:00:37	\N	\N	postgres	\N	plant	normal
2501	zinnia giant cactus flowered mix	zinnia 	elegans	cactus flowered mix	flower	\N	annual	2005-02-23 16:02:08	\N	\N	postgres	\N	plant	normal
2547	chrysanthemum compo orange	chrysanthemum	\N	compo orange	flower	\N	perennial	2005-05-26 08:41:11	\N	\N	postgres	orange	plant	normal
2546	millet ornamental jester 	pennisetum	glaucum	jester	flower	\N	annual	2005-05-25 11:50:52	2005-05-25 11:53:31	postgres	postgres	\N	plant	normal
2522	zygo cactus dancer exotic	schlumbergera	\N	dancer exotic	flower	\N	annual	2005-05-17 14:36:52	2005-06-22 11:50:02	postgres	postgres	dark red	plant	normal
2052	amaryllis novelties melusine	\N	\N	melusine	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2564	pansy xxl blue w/ blotch	viola	\N	xxl blue w/ blotch	flower	xxl	annual	2005-06-08 11:47:58	\N	\N	postgres	\N	plant	normal
2507	lilly showwinner	lilium	oriental	showwinner	flower	oriental	perennial	2005-03-03 15:54:32	\N	\N	postgres	bright red and white	plant	normal
2508	lily souvenir	lilium	oriental	souvenir	flower	oriental	perennial	2005-03-03 15:57:12	\N	\N	postgres	\N	plant	normal
2290	dryopteris brilliance autumn fern	dryopteris	erythrosora	brilliance autumn fern	flower	\N	perennial	2004-09-30 13:49:51	2005-03-08 13:02:06	postgres	postgres	\N	plant	normal
2423	lachenalia romaud	lachenalia	\N	romaud	flower	\N	annual	2005-01-11 15:35:50	2005-04-06 12:59:56	postgres	postgres	light yellow w/ green	plant	normal
1604	bidens gold marie yellow	asteraceae	ferulifolia	gold marie yellow	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2424	lachenalia rosebeth	lachenalia	\N	rosabeth	flower	\N	annual	2005-01-11 15:37:14	2005-04-06 13:00:14	postgres	postgres	reddish	plant	normal
1148	primula true wanda 	primula	\N	true wanda 	flower	\N	perennial	2004-01-01 00:00:00	2006-02-01 13:43:31	mgarcia	postgres	\N	plant	normal
2681	impatiens celebrette bonfire orange	impatiens	hawkeri	bonfire orange	flower	celebrette	annual	2005-10-13 09:42:14	2006-02-14 10:42:16	mgarcia	aklaver	\N	plant	normal
1967	bidens ferulifolia compacta	bidens	ferulifolia	compacta	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1594	veronica corinne tremaine	veronica	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2608	viola baby face orchid	viola	\N	orchid	flower	baby face	perennial	2005-08-31 14:50:39	\N	\N	mgarcia	\N	plant	normal
2562	aster milka carmine	aster	\N	milka carmine	flower	\N	perennial	2005-05-31 09:55:25	\N	\N	postgres	\N	plant	normal
1147	primula quantum mix	\N	\N	quantum mix	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2524	zygo cactus thor alex	schlumbergera	\N	thor alex	flower	\N	annual	2005-05-17 14:40:33	2005-06-22 11:50:24	postgres	postgres	yellow	plant	normal
2114	chrysanthemum urano red	chrysanthemum	\N	\N	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2566	pansy xxl purple and white	viola	\N	xxl purple and white	flower	xxl	annual	2005-06-08 12:01:23	\N	\N	postgres	\N	plant	normal
1998	nemesia klm	nemesia	\N	klm	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2548	chrysanthemum confetti rose dark	chrysanthemum	\N	confetti rose dark	flower	\N	perennial	2005-05-26 08:47:40	\N	\N	postgres	\N	plant	normal
2549	chrysanthemum amandola coral	chrysanthemum 	\N	amandola coral	flower	\N	perennial	2005-05-26 08:50:18	\N	\N	postgres	\N	plant	normal
2550	aster milka dark	aster	\N	milka dark	flower	\N	perennial	2005-05-26 08:53:27	\N	\N	postgres	\N	plant	normal
2001	lettuce romaine winter density	\N	\N	romaine winter density	herb	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
821	mimulus magic red	mimulus	\N	red	flower	magic	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2890	calla lily florex gold	zantedeschia	\N	florex gold	flower	\N	annual	2006-02-02 14:51:32	\N	\N	mgarcia	\N	plant	normal
2003	dahlia bishop of oxford	dahlia	\N	bishop of oxford	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2004	dahlia bishop of auckland	dahlia	\N	bishop of auckland	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2551	geranium maxime	pelargonium	\N	maxime	flower	\N	annual	2005-05-30 08:52:59	\N	\N	postgres	\N	plant	normal
2296	gaillardia summer kiss	gaillardia	\N	summer kiss	flower	\N	perennial	2004-09-30 14:01:16	2006-02-16 09:49:21	mgarcia	postgres	\N	plant	normal
2553	geranium marimba	pelargonium	\N	marimba	flower	\N	annual	2005-05-30 08:56:21	\N	\N	postgres	\N	plant	normal
2554	geranium molina 2005	pelargonium	\N	molina 2005	flower	\N	annual	2005-05-30 08:57:54	\N	\N	postgres	\N	plant	normal
2555	geranium global orchid	pelargonium	\N	global orchid	flower	\N	annual	2005-05-30 08:59:26	\N	\N	postgres	\N	plant	normal
2556	geranium blizzard blue	pelargonium 	\N	blizzard blue	flower	\N	annual	2005-05-30 09:01:46	\N	\N	postgres	\N	plant	normal
2557	geranium blizzard dark red	pelargonium	\N	blizzard dark red	flower	\N	annual	2005-05-30 09:03:20	\N	\N	postgres	\N	plant	normal
2670	coleus black prince	solenostemon	\N	black prince	flower	\N	annual	2005-10-13 09:11:09	\N	\N	aklaver	\N	plant	normal
2561	geranium freestyle lavender	pelargonium	\N	freestyle lavender	flower	\N	perennial	2005-05-30 09:09:34	2006-02-07 10:31:51	mgarcia	postgres	\N	plant	normal
2593	ranunculus concerto violet	ranunculus	\N	violet	flower	concerto	annual	2005-07-13 11:30:00	\N	\N	postgres	\N	plant	normal
2587	diascia whisper cranberry red	diascia	\N	whisper cranberry red	flower	whisper	annual	2005-07-07 08:58:11	\N	\N	postgres	red	plant	normal
2588	african daisy serenity sunburst	osteospermum	\N	serenity sunburst	flower	serenity	annual	2005-07-07 09:01:16	\N	\N	postgres	\N	plant	normal
2589	african daisy serenity purple	osteospermum	\N	serenity purple	flower	serenity	annual	2005-07-07 09:07:57	\N	\N	postgres	purple	plant	normal
2586	diascia whisper pumpkin	diascia	\N	whisper pumpkin	flower	whisper	annual	2005-07-07 08:55:25	2005-07-07 09:09:38	postgres	postgres	\N	plant	normal
2567	pansy xxl red w/ blotch	viola	\N	xxl red w/ blotch	flower	xxl	annual	2005-06-08 12:02:44	\N	\N	postgres	\N	plant	normal
2568	pansy xxl red and yellow	viola	\N	xxl red and yellow	flower	xxl	annual	2005-06-08 12:04:04	\N	\N	postgres	\N	plant	normal
2569	pansy xxl rose w/ blotch	viola	\N	xxl rose w/ blotch	flower	xxl	annual	2005-06-08 12:05:45	\N	\N	postgres	\N	plant	normal
2570	pansy matrix yellow	viola	\N	matrix yellow	flower	matrix	annual	2005-06-08 12:07:38	\N	\N	postgres	yellow	plant	normal
2571	pansy matrix white	viola	\N	matrix white	flower	matrix	annual	2005-06-08 12:08:53	\N	\N	postgres	white	plant	normal
2572	pansy matrix orange	viola 	\N	matrix orange	flower	matrix	annual	2005-06-08 12:10:14	\N	\N	postgres	orange	plant	normal
2573	pansy matrix purple	viola	\N	matrix purple	flower	matrix	annual	2005-06-08 12:11:17	\N	\N	postgres	purple	plant	normal
2574	pansy matrix sunrise	viola	\N	matrix sunrise	flower	matrix	annual	2005-06-08 12:12:45	\N	\N	postgres	\N	plant	normal
2575	pansy matrix blue frost	viola	\N	matrix blue flrost	flower	matrix	annual	2005-06-08 12:18:16	\N	\N	postgres	blue	plant	normal
2576	pansy matrix ocean	viola	\N	matrix ocean	flower	matrix	annual	2005-06-08 12:19:22	\N	\N	postgres	\N	plant	normal
2609	viola baby face purple	viola	\N	purple	flower	baby face	perennial	2005-08-31 14:52:11	\N	\N	mgarcia	\N	plant	normal
2525	zygo cactus thor bella	schlumbergera	\N	thor bella	flower	\N	annual	2005-05-17 14:42:07	2005-06-22 11:51:31	postgres	postgres	dark salmon	plant	normal
2578	pansy matrix blue blotch	viola	\N	matrix blue blotch	flower	matrix	annual	2005-06-08 12:22:12	2005-06-08 12:23:47	postgres	postgres	\N	plant	normal
2565	pansy xxl golden	viola	\N	xxl golden	flower	xxl	annual	2005-06-08 11:59:54	2005-06-08 12:24:29	postgres	postgres	\N	plant	normal
2006	dahlia bishop of lancaster	dahlia	\N	bishop of lancaster	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2577	pansy matrix primrose	viola	\N	matrix primrose	flower	matrix	annual	2005-06-08 12:20:35	2005-06-08 12:25:23	postgres	postgres	\N	plant	normal
2523	zygo cactus malissa	schlumbergera	\N	malissa	flower	\N	annual	2005-05-17 14:38:12	2005-06-22 11:51:48	postgres	postgres	white	plant	normal
2720	10" calibrachoa cehb mixed 	cascade cuts logo	\N	\N	flower	HBBasket C	annual	2005-10-24 14:00:18	2007-01-15 12:03:26	mgarcia	mgarcia	\N	plant	normal
2526	zygo cactus thor kiri	schlumbergera	\N	thor kiri	flower	\N	annual	2005-05-17 14:45:31	2005-06-22 11:52:03	postgres	postgres	light red	plant	normal
2527	zygo cactus thor olga	schlumbergera	\N	thor olga	flower	\N	annual	2005-05-17 14:46:51	2005-06-22 11:52:10	postgres	postgres	red	plant	normal
2528	zygo cactus thor ritt	schlumbergera	\N	thor ritt	flower	\N	annual	2005-05-17 14:48:00	2005-06-22 11:52:19	postgres	postgres	rose	plant	normal
2529	zygo cactus thor vida	schlumbergera	\N	thor vida	flower	\N	annual	2005-05-17 14:49:14	2005-06-22 11:52:25	postgres	postgres	salmon	plant	normal
2530	zygo cactus thor zenia	schlumbergera	\N	thor zenia	flower	\N	annual	2005-05-17 14:50:48	2005-06-22 11:52:33	postgres	postgres	lilac	plant	normal
2166	zygocactus dark eva	schlumbergera	\N	dark eva	flower	\N	annual	2004-05-05 09:09:49	2005-06-22 11:52:50	postgres	postgres	dark lilac	plant	normal
2590	nemesia aromatica deep blue	nemesia	\N	aromatica deep blue	flower	\N	annual	2005-07-07 09:10:44	\N	\N	postgres	blue	plant	normal
2581	zygo thor sille	schlumbergia	\N	\N	flower	\N	annual	2005-06-22 11:54:46	2005-06-22 13:47:39	postgres	postgres	white	plant	normal
2594	ranunculus pratolino orange	ranunculus	\N	orange	flower	pratolino	annual	2005-07-13 11:32:39	\N	\N	postgres	orange	plant	normal
2595	ranunculus pratolino red	ranunculus	\N	red	flower	pratolino	annual	2005-07-13 11:34:06	\N	\N	postgres	red	plant	normal
2596	ranunculus pratolino rose	ranunculus	\N	rose	flower	pratolino	annual	2005-07-13 11:35:15	\N	\N	postgres	rose	plant	normal
2597	ranunculus pratolino white	ranunculus	\N	white	flower	white	annual	2005-07-13 11:36:45	\N	\N	postgres	white	plant	normal
2598	ranunculus pratolino dark yellow	ranunculus	\N	dark yellow	flower	pratolino	annual	2005-07-13 11:38:28	\N	\N	postgres	dark yellow	plant	normal
2599	ranunculus pratolino pale yellow	ranunculus	\N	pale yellow	flower	pratolino	annual	2005-07-13 11:43:27	\N	\N	postgres	pale yellow	plant	normal
2600	ranunculus pratolino cream	ranunculus	\N	cream	flower	pratolino	annual	2005-07-13 11:48:34	\N	\N	postgres	cream	plant	normal
2601	ranunculus pratolino pink	ranunculus	\N	pink	flower	pratolino	annual	2005-07-13 11:49:43	\N	\N	postgres	pink	plant	normal
2602	ranunculus pratolino salmon orange	ranunculus	\N	salmon orange	flower	pratolino	annual	2005-07-13 11:51:02	\N	\N	postgres	salmon orange	plant	normal
2603	ranunculus pratolino violet	ranunculus	\N	violet	flower	pratolino	annual	2005-07-13 11:52:25	\N	\N	postgres	violet	plant	normal
2007	dahlia bishop of york	dahlia	\N	bishop of york	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2009	dahlia smokey	dahlia	\N	smokey	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2010	dahlia bishop of nandaff	dahlia	\N	bishop of nandaff	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2879	echinacea green eyes	echinacea	\N	green eyes	flower	\N	perennial	2006-01-11 15:32:02	\N	\N	mgarcia	\N	plant	normal
2632	calibrachoa mini famous compact blue	calibrachoa	\N	compact blue	flower	mini famous	annual	2005-10-06 15:28:54	\N	\N	mgarcia	blue	plant	normal
2958	cyclamen white 10" clay	cascade cuts logo	\N	cyclamen white	flower	\N	annual	2006-09-14 08:59:36	\N	\N	mgarcia	\N	plant	normal
2617	fuchsia blue eyes	fuchsia	\N	blue eyes	flower	\N	annual	2005-09-23 13:33:35	\N	\N	mgarcia	\N	plant	normal
2618	fuchsia dark eyes	fuchsia	\N	dark eyes	flower	\N	annual	2005-09-23 13:37:18	\N	\N	mgarcia	\N	plant	normal
2619	fuchsia golden swingtime	fuchsia	\N	golden swingtime	flower	\N	annual	2005-09-23 13:39:24	\N	\N	mgarcia	\N	plant	normal
2620	fuchsia la campanella	fuchsia	\N	la campanella	flower	\N	annual	2005-09-23 13:41:50	\N	\N	mgarcia	\N	plant	normal
2621	fuchsia lena	fuchsia	\N	lena	flower	\N	annual	2005-09-23 13:43:29	\N	\N	mgarcia	\N	plant	normal
2880	tiarella crow feather	tiarella 	\N	crow feather	flower	\N	perennial	2006-01-11 15:34:28	\N	\N	mgarcia	\N	plant	normal
2622	fuchsia pink  marshmallow	fuchsia	\N	pink marshmallow	flower	\N	annual	2005-09-23 13:45:23	2005-09-23 13:46:31	mgarcia	mgarcia	\N	plant	normal
2623	fuchsia southgate	fuchsia	\N	southgate	flower	\N	annual	2005-09-23 13:47:20	\N	\N	mgarcia	\N	plant	normal
2624	fuchsia swingtime	fuchsia	\N	swingtime	flower	\N	annual	2005-09-23 13:49:06	\N	\N	mgarcia	\N	plant	normal
2626	alstromeria premium	alstroemeria	\N	\N	flower	\N	perennial	2005-10-05 13:27:58	2005-10-05 13:31:32	mgarcia	mgarcia	\N	plant	normal
2627	ivy baskets	hedera	helix	\N	flower	\N	perennial	2005-10-05 13:29:08	2005-10-05 13:31:39	mgarcia	mgarcia	\N	plant	normal
2634	calibrachoa mini famous compact lemon	calibrachoa	\N	compact lemon	flower	mini famous	annual	2005-10-06 15:31:31	\N	\N	mgarcia	yellow	plant	normal
2635	calibrachoa mini famous compact red	calibrachoa	\N	compact red	flower	mini famous	annual	2005-10-06 15:32:37	\N	\N	mgarcia	\N	plant	normal
3040	Annual 4 premium B Plastic	cascade cuts logo	\N	C4PremiumB	flower	\N	annual	2006-11-08 14:49:04	2007-01-15 12:03:49	mgarcia	mgarcia	\N	tag	regular
2636	calibrachoa mini famous compact white	calibrachoa	\N	compact white	flower	mini famous	annual	2005-10-06 15:34:01	\N	\N	mgarcia	\N	plant	normal
2658	diascia wink garnet	diascia	\N	wink garnet	flower	wink	annual	2005-10-13 08:47:33	\N	\N	aklaver	\N	plant	normal
2631	poppy oriental staten island	papaver	\N	oriental staten island	flower	oriental	perennial	2005-10-06 07:48:16	2005-10-06 07:48:47	mgarcia	mgarcia	\N	plant	normal
2629	poppy oriental harlem	papaver	\N	oriental harlem	flower	oriental	perennial	2005-10-06 07:47:20	2005-10-06 07:48:56	mgarcia	mgarcia	\N	plant	normal
2637	calla lily amethyst	zantadeschia	\N	amethyst	flower	\N	annual	2005-10-07 07:51:46	2005-10-07 07:52:39	mgarcia	mgarcia	\N	plant	normal
2638	calla lily devil's wine	zantedeschia	\N	devil's wine	flower	\N	annual	2005-10-07 07:53:48	\N	\N	mgarcia	\N	plant	normal
2671	lily la hybrids mount grace	lilium	\N	mount grace	flower	la hybrids	perennial	2005-10-13 09:16:15	\N	\N	aklaver	\N	plant	normal
2640	calla lily yellow hybrid improved	zantedeschia	\N	yellow hybrid improved	flower	\N	annual	2005-10-07 07:57:32	\N	\N	mgarcia	yellow	plant	normal
2659	diascia wink orange	diascia	\N	wink orange	flower	wink	perennial	2005-10-13 08:48:59	2005-10-13 08:49:09	aklaver	aklaver	\N	plant	normal
2660	diascia wink pink improved	diascia	\N	wink pink improved	flower	wink	annual	2005-10-13 08:50:54	\N	\N	aklaver	pink	plant	normal
2729	calla lily picante	zantedeschia	\N	picante	flower	\N	annual	2005-11-02 08:18:34	\N	\N	mgarcia	\N	plant	normal
2727	calla lily twilight	zantedeschia	\N	twilight	flower	\N	annual	2005-10-27 14:46:52	\N	\N	mgarcia	\N	plant	normal
2642	coleus alabama sunset	solenostemon	\N	alabama sunset	flower	\N	annual	2005-10-10 14:50:28	\N	\N	mgarcia	\N	plant	normal
2643	coleus apple pie	solenostemon	\N	apple pie	flower	\N	annual	2005-10-10 14:51:04	\N	\N	mgarcia	\N	plant	normal
2672	lily la hybrids salmon classic	lilium	\N	salmon classic	flower	\N	perennial	2005-10-13 09:19:22	\N	\N	aklaver	\N	plant	normal
2645	coleus burnt siena	solenostemon	\N	burnt siena	flower	\N	annual	2005-10-10 14:53:01	\N	\N	mgarcia	\N	plant	normal
2707	echinacea big sky sunset	echinacea	\N	sunset	flower	\N	perennial	2005-10-21 08:19:38	\N	\N	mgarcia	\N	plant	normal
2647	coleus duckfoot midnight	solenostemon	\N	duckfoot midnight	flower	\N	annual	2005-10-10 14:55:10	\N	\N	mgarcia	\N	plant	normal
2648	coleus fire and brimstone	solenostemon	\N	fire and brimstone	flower	\N	annual	2005-10-10 14:56:08	\N	\N	mgarcia	\N	plant	normal
2649	coleus florida sun splash	solenostemon	\N	florida sun splash	flower	\N	annual	2005-10-10 14:57:03	\N	\N	mgarcia	\N	plant	normal
2650	coleus glennis	solenostemon	\N	glennis	flower	\N	annual	2005-10-10 14:58:04	\N	\N	mgarcia	\N	plant	normal
2651	perilla purple magilla	perilla	hybrida	magilla purple 	flower	\N	annual	2005-10-10 14:59:16	2006-01-30 09:11:04	mgarcia	mgarcia	\N	plant	normal
2661	diascia wink white	diascia	\N	wink white	flower	wink	annual	2005-10-13 08:52:15	\N	\N	aklaver	white	plant	normal
2652	coleus moonglow	solenostemon	\N	moon glow	flower	\N	annual	2005-10-10 15:00:11	2005-10-10 15:00:26	mgarcia	mgarcia	\N	plant	normal
2653	coleus pat martin	solenostemon	\N	pat martin	flower	\N	annual	2005-10-10 15:01:22	\N	\N	mgarcia	\N	plant	normal
2654	coleus peter wonder II	solenostemon	\N	peter wonder II	flower	\N	annual	2005-10-10 15:02:14	\N	\N	mgarcia	\N	plant	normal
2655	coleus raspberry queen	solenostemon	\N	raspberry queen	flower	\N	annual	2005-10-10 15:03:12	\N	\N	mgarcia	\N	plant	normal
1717	bulb garden	cascade cuts logo	\N	bulb garden	flower	\N	annual	2004-01-01 00:00:00	2006-08-17 13:43:06	mgarcia	postgres	\N	tag	regular
2657	coleus rustic orange	solenostemon	\N	rustic orange	flower	\N	annual	2005-10-10 15:04:47	\N	\N	mgarcia	\N	plant	normal
2662	fuchsia autumnale	fuchsia	\N	autumnale	flower	\N	annual	2005-10-13 08:53:42	\N	\N	aklaver	\N	plant	normal
2663	fuchsia sunbeam ballerina blue	fuchsia	\N	sunbeam ballerina blue	flower	sunbeam	annual	2005-10-13 08:55:54	\N	\N	aklaver	blue	plant	normal
2664	fuchsia sunbeam ernie	fuchsia	\N	sunbeam ernie	flower	sunbeam	annual	2005-10-13 08:59:40	\N	\N	aklaver	\N	plant	normal
2666	millet red baron	panicum	\N	red baron	flower	\N	annual	2005-10-13 09:03:25	\N	\N	aklaver	\N	plant	normal
2665	fuchsia sunbeam lambada	fuchsia	\N	sunbeam lambada	flower	sunbeam	annual	2005-10-13 09:01:00	2005-10-19 15:44:06	mgarcia	aklaver	\N	plant	normal
2881	verbascum sierra sunset	verbascum	\N	sierra sunset	flower	\N	perennial	2006-01-11 15:40:40	\N	\N	mgarcia	\N	plant	normal
2688	alstroemeria fabiana	alstroemeria	\N	fabiana	flower	\N	perennial	2005-10-20 10:57:30	\N	\N	mgarcia	\N	plant	normal
2689	alstroemeria theresa	alstroemeria	\N	theresa	flower	\N	perennial	2005-10-20 11:03:33	\N	\N	mgarcia	\N	plant	normal
1917	penstemon dusky violet 	penstemon	\N	dusky violet	flower	\N	perennial	2004-01-01 00:00:00	2006-03-07 09:30:03	mgarcia	postgres	\N	plant	normal
2673	lily oriental royal sunset	lilium	\N	royal sunset	flower	oriental	perennial	2005-10-13 09:21:56	\N	\N	aklaver	\N	plant	normal
2674	nemesia raspberry	nemesia	\N	raspberry	flower	\N	annual	2005-10-13 09:23:47	\N	\N	aklaver	\N	plant	normal
2675	nemesia sunsatia mango	nemesia	\N	sunsatia mango	flower	sunsatia	annual	2005-10-13 09:25:24	\N	\N	aklaver	\N	plant	normal
2676	oxalis molten lava	oxalis	\N	molten lava	flower	\N	annual	2005-10-13 09:27:03	\N	\N	aklaver	\N	plant	normal
2691	astilbe arendsii bridal veil	astilbe 	arendsii	bridal veil	flower	\N	perennial	2005-10-20 11:07:52	\N	\N	mgarcia	\N	plant	normal
2678	bacopa golden pearls	sutera	\N	golden pearls	flower	\N	annual	2005-10-13 09:32:34	\N	\N	aklaver	\N	plant	normal
2679	thunbergia sunny orange wonder	thunbergia	\N	sunny orange wonder	flower	\N	annual	2005-10-13 09:34:42	\N	\N	aklaver	\N	plant	normal
2682	impatiens celebrette frost	impatiens	hawkeri	frost	flower	celebrette	annual	2005-10-13 09:45:28	2006-02-14 10:42:23	mgarcia	aklaver	\N	plant	normal
2680	trifolium salsa dancer	trifolium	\N	salsa dancer	flower	\N	perennial	2005-10-13 09:38:46	\N	\N	aklaver	\N	plant	normal
1666	lily miss burma	lilium	oriental	miss burma	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1953	calibrachoa mini famous sun purple	calibrachoa	\N	sun purple	flower	mini famous	annual	2004-01-01 00:00:00	2006-01-17 12:55:18	mgarcia	postgres	\N	plant	normal
2633	calibrachoa mini famous compact burgundy	calibrachoa	\N	compact burgundy	flower	mini famous	annual	2005-10-06 15:30:13	2006-01-17 12:51:00	mgarcia	mgarcia	\N	plant	normal
2693	crocosmia babylon	crocosmia	\N	babylon	flower	\N	perennial	2005-10-20 11:10:06	\N	\N	mgarcia	\N	plant	normal
1182	lily mona lisa	lilium	oriental	mona lisa	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	light pink	plant	normal
2887	cyclamen latina prem pure white compact	cyclamen	latina	premium pure white compact	flower	latina	annual	2006-01-30 16:24:54	\N	\N	mgarcia	\N	plant	normal
1541	rudbeckia hirta becky mix	rudbeckia	hirta	becky mix	flower	\N	perennial	2004-01-01 00:00:00	2006-01-18 14:44:34	mgarcia	postgres	\N	plant	normal
2695	gaillardia oranges and lemons	gaillardia	\N	oranges and lemons	flower	\N	perennial	2005-10-20 11:13:01	\N	\N	mgarcia	\N	plant	normal
2886	cyclamen latina prem pure bright red	cyclamen	latina	premium pure bright red	flower	latina	annual	2006-01-30 16:22:42	2006-01-30 16:25:10	mgarcia	mgarcia	\N	plant	normal
2696	heuchera black beauty	heuchera	\N	black beauty	flower	\N	perennial	2005-10-20 11:13:42	\N	\N	mgarcia	\N	plant	normal
2686	NG impatiens celebrette salmon frost	impatiens	\N	salmon frost	flower	celebrette	annual	2005-10-13 10:01:58	2005-10-13 10:02:42	aklaver	aklaver	\N	plant	normal
3049	geranium scented mint rose variegated	pelargonium	\N	mint rose variegated	herb	\N	annual	2006-12-06 12:46:46	\N	\N	mgarcia	\N	plant	normal
2644	coleus burgundy wine	solenostemon	\N	burgundy wine	flower	\N	annual	2005-10-10 14:51:41	2005-10-17 11:25:10	mgarcia	mgarcia	\N	plant	normal
3026	sweet potato vine caroline bronze	ipomea	\N	caroline bronze	flower	\N	annual	2006-11-07 08:00:17	\N	\N	mgarcia	\N	plant	normal
1668	lily royal perfume	lilium	longiflorum/asiatic	royal perfume	flower	LA Collection	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	orange	plant	normal
2697	heuchera chocolate ruffles	heuchera 	\N	chocolate ruffles	flower	\N	perennial	2005-10-20 11:14:29	\N	\N	mgarcia	\N	plant	normal
2698	hosta gold standard	hosta	\N	gold standard	flower	\N	perennial	2005-10-20 11:15:06	\N	\N	mgarcia	\N	plant	normal
2699	hosta sum and substance	hosta	\N	sum and substance	flower	\N	perennial	2005-10-20 11:15:44	\N	\N	mgarcia	\N	plant	normal
2700	poppy oriental black and white	papaver	\N	black and white	flower	oriental	perennial	2005-10-20 11:16:37	\N	\N	mgarcia	\N	plant	normal
2376	perennial 4 (prem G)	cascade cuts logo	\N	\N	flower	P4PremiumG	perennial	2004-11-04 14:24:50	2005-11-21 10:20:31	aklaver	postgres	\N	tag	price_group
2702	poppy oriental double pleasure	papaver	\N	double pleasure	flower	\N	perennial	2005-10-20 11:18:06	\N	\N	mgarcia	\N	plant	normal
2703	polystichum christmas fern	polystichum	acrostichoides	christmas fern	flower	\N	perennial	2005-10-20 11:20:44	\N	\N	mgarcia	\N	plant	normal
2639	calla lily pot of porridge	zantedeschia	\N	pot o' porridge	flower	\N	annual	2005-10-07 07:55:39	2005-10-27 14:59:09	mgarcia	mgarcia	\N	plant	normal
2705	sisyrinchium lucerne	sisyrinchium	angustifolium	lucerne	flower	\N	perennial	2005-10-20 11:23:16	\N	\N	mgarcia	\N	plant	normal
2355	athyrium nip. ursula's red	athyrium	 	ursula's red	flower	\N	perennial	2004-10-15 14:06:39	2005-10-20 14:38:17	mgarcia	postgres	\N	plant	normal
2692	athyrium japanese painted fern	athyrium	niponicum pictum	japanese painted fern	flower	\N	perennial	2005-10-20 11:09:21	2005-10-20 14:39:59	mgarcia	mgarcia	\N	plant	normal
3027	sweet potato vine caroline red	ipomea	\N	caroline red	flower	\N	annual	2006-11-07 08:02:17	\N	\N	mgarcia	\N	plant	normal
2708	dahlia gallery leonardo	dahlia	\N	leonardo	flower	gallery	annual	2005-10-24 09:09:57	\N	\N	mgarcia	\N	plant	normal
2709	marigold inca ll gold	tagetes	\N	inca ll gold	flower	\N	annual	2005-10-24 09:12:49	\N	\N	mgarcia	\N	plant	normal
2710	marigold bonaza yellow	tagetes	\N	bonanza yellow	flower	\N	annual	2005-10-24 09:14:18	\N	\N	mgarcia	\N	plant	normal
2711	marigold bonanza orange	tagetes	\N	bonanza orange	flower	\N	annual	2005-10-24 09:16:01	\N	\N	mgarcia	\N	plant	normal
2712	calibrachoa cabaret red	calibrachoa	\N	cabaret red	flower	\N	annual	2005-10-24 09:17:33	\N	\N	mgarcia	\N	plant	normal
2713	calibrachoa cabaret apricot	calibrachoa	\N	cabaret apricot	flower	\N	annual	2005-10-24 09:26:37	\N	\N	mgarcia	\N	plant	normal
2714	calibrachoa cabaret purple	calibrachoa	\N	cabaret purple	flower	\N	annual	2005-10-24 09:27:55	\N	\N	mgarcia	\N	plant	normal
2854	patio planter	patio planter	\N	patio planter	flower	\N	annual	2005-12-21 11:04:17	\N	\N	mgarcia	\N	plant	normal
2748	peony festiva maxima	paeonia	festiva	maxima	flower	\N	perennial	2005-11-10 08:09:11	\N	\N	mgarcia	\N	plant	normal
2730	snapdragon snapshot plumblossom	antirrhinum	\N	plumblossom	flower	snapshot	annual	2005-11-02 13:03:38	\N	\N	mgarcia	\N	plant	normal
2731	snapdragon snapshot rose	antirrhinum	\N	snapshot rose	flower	snapshot	annual	2005-11-02 13:11:56	\N	\N	mgarcia	\N	plant	normal
2732	snapdragon snapshot orange	antirrhinum	\N	snapshot orange	flower	snapshot	annual	2005-11-02 13:14:06	\N	\N	mgarcia	\N	plant	normal
2733	snapdragon snapshot pink	antirrhinum	\N	snapshot pink	flower	snapshot	annual	2005-11-02 13:15:56	\N	\N	mgarcia	\N	plant	normal
1852	alstroemeria stefanie	alstroemeria	\N	stefanie	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2734	snapdragon snapshot purple	antirhinum	\N	snapshot purple	flower	snapshot	annual	2005-11-02 13:17:33	2005-11-02 13:17:39	mgarcia	mgarcia	\N	plant	normal
2738	geranium zonal tango light orchid	pelargonium	\N	light orchid	flower	zonal 	annual	2005-11-08 08:22:23	\N	\N	mgarcia	\N	plant	normal
2735	snapdragon snapshot red	antirrhinum	\N	snapshot	flower	snapshot	annual	2005-11-02 13:19:00	2005-11-02 13:19:07	mgarcia	mgarcia	\N	plant	normal
2736	snapdragon snapshot white	antirrhinum	\N	snapshot white	flower	snapshot	annual	2005-11-02 13:20:36	\N	\N	mgarcia	\N	plant	normal
2737	snapdragon snapshot yellow	antirrhinum	\N	snapshot yellow	flower	snapshot	annual	2005-11-02 13:22:16	\N	\N	mgarcia	\N	plant	normal
2740	geranium zonal wilhelm langguth	pelargonium	\N	wilhelm langguth	flower	zonal	annual	2005-11-08 08:30:15	\N	\N	mgarcia	\N	plant	normal
2741	geranium zonal americana blues	pelargonium	\N	american blues	flower	zonal	annual	2005-11-08 08:31:32	\N	\N	mgarcia	\N	plant	normal
2742	geranium zonal americana bright red	pelargonium	\N	americana bright red	flower	zonal	annual	2005-11-08 08:33:03	\N	\N	mgarcia	\N	plant	normal
2743	geranium americana cherry rose ll	pelargonium	\N	americana cherry rose ll	flower	zonal	annual	2005-11-08 08:35:09	\N	\N	mgarcia	\N	plant	normal
2744	geranium zonal americana dark red	pelargonium	\N	americana dark red	flower	zonal	annual	2005-11-08 08:36:42	\N	\N	mgarcia	\N	plant	normal
2745	geranium zonal light pink splash ll	pelargonium	\N	americana light pink splash ll	flower	zonal	annual	2005-11-08 08:38:36	\N	\N	mgarcia	\N	plant	normal
2746	geranium zonal tango dark red	pelargonium	\N	tango dark red	flower	zonal	annual	2005-11-08 08:39:58	\N	\N	mgarcia	\N	plant	normal
2747	geranium zonal tango orange 06	pelargonium	\N	tango orange 06	flower	zonal	annual	2005-11-08 08:41:24	\N	\N	mgarcia	\N	plant	normal
1853	alstroemeria susana	alstroemeria	\N	susana	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2739	geranium zonal tango neon purple	pelargonium	\N	neon purple	flower	zonal	annual	2005-11-08 08:28:43	2005-11-14 08:54:47	aklaver	mgarcia	\N	plant	normal
1854	alstroemeria zavina	alstroemeria	\N	zavina	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1855	alstroemeria zsa zsa	alstroemeria	\N	zsa zsa	flower	princess lillies	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2763	mimulus mystic mix	mimulus	\N	mystic mix	flower	\N	annual	2005-11-15 08:38:04	\N	\N	mgarcia	\N	plant	normal
2766	zinnia benary's giant scarlet	zinnia	\N	giant scarlet	flower	benary's	annual	2005-11-16 07:51:10	\N	\N	mgarcia	\N	plant	normal
1596	rudbeckia hirta toto rustic	rudbeckia	hirta	toto rustic	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1256	geranium zonal americana coral	pelargonium	\N	coral	flower	americana zonal	annual	2004-01-01 00:00:00	2008-02-15 14:13:05	postgres	postgres	\N	plant	normal
1547	salvia sylvestris may night	salvia	sylvestris	may night	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1546	salvia sylvestris blue queen	salvia	sylvestris	blue queen	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1252	geranium royal pink	pelargonium	\N	pink	flower	royal	annual	2004-01-01 00:00:00	2006-02-15 08:01:38	mgarcia	postgres	\N	plant	normal
1990	phormium tenax atropurpureum	phormium	tenax 	atropurpureum	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2767	zinnia benary's green envy	zinnia	\N	green envy	flower	benary's	annual	2005-11-16 07:52:44	\N	\N	mgarcia	\N	plant	normal
2768	zinnia up roar rose	zinnia	\N	up roar rose	flower	\N	annual	2005-11-16 07:53:58	\N	\N	mgarcia	\N	plant	normal
2769	zinnia yellow flame	zinnia	\N	zowie yellow flame	flower	\N	annual	2005-11-16 07:55:11	\N	\N	mgarcia	\N	plant	normal
3073	chrysanthemum jenny wren red	chrysanthemum 	\N	jenny wren red	flower	\N	perennial	2007-03-27 08:28:42	\N	\N	mgarcia	\N	plant	normal
2893	echinacea harvest moon	echinacea	\N	harvest moon	flower	\N	perennial	2006-02-28 09:55:36	\N	\N	mgarcia	\N	plant	normal
2118	geranium zonal designer dark red	pelargonium	\N	\N	flower	designer	annual	2004-01-01 00:00:00	2006-03-16 08:28:10	mgarcia	postgres	dark red	plant	normal
2098	cyclamen laser white	cyclamen	\N	white	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2099	cyclamen laser purple	cyclamen	\N	purple	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2100	cyclamen sterling mix	cyclamen	\N	mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2101	cyclamen miracles red	cyclamen	\N	red	flower	miracles	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2102	cyclamen miracles white	cyclamen	\N	white	flower	white	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2103	cyclamen silverado flame	cyclamen	\N	flame	flower	silverado	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2105	coreopsis rising sun	coreopsis	\N	rising sun	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2107	pansy xxl mix	Viola	\N	xxl mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
700	trifolium green ice	trifolium	variegata		flower		perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2109	salvia guaranitica black and blue	salvia	guaranitica	black and blue	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
923	bells of ireland	molluccella	lamiaceae	bells of ireland	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1996	hollyhock  antwerp	althaea	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2017	alstroemeria orange king	alstroemeria	\N	orange king	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2018	alstroemeria yellow	alstroemeria	\N	yellow	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2019	alstroemeria pink	alstroemeria	\N	pink	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1595	dahlia  devotion	dahlia	\N	devotion	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1333	tulip capri	\N	\N	capri	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	fall_bulb
1171	dahlia bendall beauty	dahlia	\N	bendall beauty	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2005	dahlia bishop of canterbury	dahlia	\N	bishop of canterbury	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1169	dahlia bishop of llandaff	dahlia	\N	bishop of llandaff	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2008	dahlia ellen houston	dahlia	\N	ellen houston	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1170	dahlia fascination	dahlia	\N	fascination	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2044	amaryllis novelties grandeur	\N	\N	grandeur	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2045	amaryllis novelties pink floyd	\N	\N	pink floyd	flower	novelties	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1548	scabiosa blanca	scabiosa	\N	blanca	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
801	cosmos sonata pink 	cosmos	\N	pink	flower	sonata	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
863	zinnia profusion white	zinnia	\N	white	flower	profusion	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1026	brachycome jumbo mauve pink	brachycome	segmentosa 	jumbo mauve pink (outback daisy)	flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2096	geranium caliente deep red	pelargonium	\N	\N	flower	caliente	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
942	pansy masterpiece mix	viola	\N	masterpiece mix	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1665	lily rudolfo	lilium	oriental	rudolfo	flower	oriental	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	dwarf red	plant	normal
2758	ranunculus assorted	ranunculus	\N	asst	flower	assorted	annual	2005-11-10 11:38:06	2008-08-03 17:01:37	postgres	aklaver	\N	asst	none
1605	brachycome california pink	\N	\N	california pink	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2754	lily la hybrid assorted	lilium	longiflorum	\N	flower	assorted	perennial	2005-11-10 11:28:34	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2756	muscari assorted	muscari	\N	\N	flower	assorted	perennial	2005-11-10 11:31:22	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2755	lily oriental assorted	lilium	longiflorum	\N	flower	assorted	perennial	2005-11-10 11:29:53	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2757	narcissus assorted	narcissus	\N	\N	flower	assorted	perennial	2005-11-10 11:33:13	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
3028	nemesia sunsatia pear	nemesia	sunsatia	pear	flower	\N	annual	2006-11-07 08:31:05	\N	\N	mgarcia	\N	plant	normal
2749	anemone blanda assorted	anemone	\N	\N	flower	assorted	perennial	2005-11-10 11:13:39	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2750	anemone harmony assorted	anemone	\N	\N	flower	assorted	perennial	2005-11-10 11:19:26	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2751	chionodoxa assorted	chionodoxa	\N	\N	flower	assorted	perennial	2005-11-10 11:22:01	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2752	cyclamen silverado assorted	cyclamen	\N	\N	flower	assorted	perennial	2005-11-10 11:23:34	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2753	iris reticulata assorted	iris 	reticulata	\N	flower	assorted	perennial	2005-11-10 11:25:40	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2773	hyacinth pak assorted	hyacinth	\N	pak	flower	assorted	perennial	2005-11-16 09:14:29	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2772	daffodil pak assorted	daffodil	\N	pak	flower	assorted	perennial	2005-11-16 09:11:55	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2774	muscari pak assorted	muscari	\N	pak	flower	assorted	perennial	2005-11-16 09:15:41	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2934	canna pretoria	canna	pretoria	\N	flower	\N	perennial	2006-08-29 07:39:22	2007-03-20 07:51:04	mgarcia	mgarcia	\N	plant	normal
2759	scilla assorted	scilla	\N	\N	flower	assorted	perennial	2005-11-10 11:39:54	2005-11-18 14:17:14	aklaver	aklaver	\N	asst	none
2775	tulip pak assorted	tulip	\N	pak	flower	assorted	perennial	2005-11-16 09:17:04	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2776	pansy matrix assorted	viola	\N	matrix assorted	flower	assorted	annual	2005-11-16 09:18:33	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2777	torenia clown assorted	torenia	\N	clown assorted	flower	assorted	annual	2005-11-16 09:20:14	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2778	viola sorbet assorted	viola	\N	sorbet assorted	flower	assorted	annual	2005-11-16 09:21:41	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2780	bacopa 4 assorted	sutera	\N	4 assorted	flower	assorted	annual	2005-11-16 09:24:50	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2781	calibrachoa assorted	calibrachoa	\N	assorted	flower	assorted	annual	2005-11-16 09:26:31	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2782	clownaria 4 assorted	clownaria	\N	4 assorted	flower	assorted	annual	2005-11-16 09:28:19	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2783	cosmos 4 assorted	cosmos	\N	4 assorted	flower	assorted	annual	2005-11-16 09:29:23	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2784	fuchsia 4 assorted	fuchsia	\N	4 assorted	flower	assorted	annual	2005-11-16 09:31:07	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2785	fuchsia dwarf assorted	fuchsia	\N	dwarf assorted	flower	assorted	annual	2005-11-16 09:32:37	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2786	heliotrope 4 assorted	heliotropum	\N	4 assorted	flower	assorted	annual	2005-11-16 09:44:24	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2787	ipomea 4 assorted	ipomea	\N	4 assorted	flower	assorted	annual	2005-11-16 09:46:11	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2788	marigold 4 assorted	tagetes	\N	4 assorted	flower	assorted	annual	2005-11-16 09:47:37	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2790	nicotiana HB assorted	nicotiana	\N	HB assorted	flower	assorted	annual	2005-11-16 09:49:15	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2791	snapdragon pallette assorted	antirrhinum	\N	pallette assorted	flower	assorted	annual	2005-11-16 09:53:53	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2792	sweet pea 4 assorted	lathrus	odoratus	4 assorted	flower	assorted	annual	2005-11-16 09:56:19	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2793	verbena assorted	verbena 	\N	assorted	flower	assorted	annual	2005-11-16 09:59:18	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2794	brachycome assorted	brachycome	\N	assorted	flower	assorted	annual	2005-11-16 10:27:30	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2795	cosmos sonata assorted	cosmos	\N	sonata	flower	assorted	annual	2005-11-16 10:30:28	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2796	dianthus assorted	dianthus	\N	assorted	flower	assorted	annual	2005-11-16 10:43:47	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2797	snapdragon rocket assorted	antirrhinum	\N	rocket assorted	flower	assorted	annual	2005-11-16 10:45:18	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2798	sunflower sunrich assorted	helianthus	\N	sunrich assorted	flower	assorted	annual	2005-11-16 10:46:57	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2800	zonal assorted gallon	pelargonium	\N	assorted gallon	flower	assoted	annual	2005-11-16 10:49:57	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2801	bacopa assorted	sutera	\N	assorted	flower	assorted	annual	2005-11-16 14:39:19	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2802	geranium fancy leaf 10 assorted	pelargonium	\N	fancy leaf 10 assorted	flower	assorted	annual	2005-11-16 14:41:14	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2803	geranium floribunda 10 assorted	pelargonium	\N	floribunda 10 assorted	flower	assorted	annual	2005-11-16 14:42:50	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2810	alyssum easter bonnet assorted	alyssum	\N	easter bonnet assorted	flower	assorted	annual	2005-11-16 15:22:32	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2813	alysum pak bed assorted	alysum	\N	pak bed assorted	flower	assorted	annual	2005-11-16 15:27:01	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2815	cosmos pak bed assorted	cosmos	\N	pak bed assorted	flower	assorted	annual	2005-11-16 16:03:27	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2816	impatiens assorted	impatiens	\N	assorted	flower	assorted	annual	2005-11-16 16:05:33	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2817	lobelia pak bed assorted	lobelia	\N	pak bed assorted	flower	assorted	annual	2005-11-16 16:09:13	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2818	bellis assorted	bellis	\N	assorted	flower	assorted	perennial	2005-11-16 16:11:48	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2819	anemone assorted G	anemone	\N	assorted G	flower	assorted	perennial	2005-11-16 16:13:37	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2820	astilbe assorted	astilbe	\N	assorted	flower	assorted	perennial	2005-11-16 16:14:43	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2821	calla lily assorted G	calla lily	\N	assorted G	flower	assorted	perennial	2005-11-16 16:16:29	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2822	cimicifuga assorted	cimicifuga	\N	assorted	flower	assorted	perennial	2005-11-17 07:44:53	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2823	crocosmia assorted G	crocosmia	\N	assorted G	flower	assorted	perennial	2005-11-17 07:47:07	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2824	diascia assorted	diascia	\N	assorted	flower	assorted	perennial	2005-11-17 07:48:51	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2825	helianthum assorted	helianthum	\N	assorted	flower	assorted	perennial	2005-11-17 07:50:36	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
2826	lobelia speciosa assorted	lobelia	speciosa 	assorted	flower	assorted	annual	2005-11-17 07:52:24	2005-11-18 14:17:14	aklaver	mgarcia	\N	asst	none
1494	lavatera bredon springs	lavatera	\N	bredon springs	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2123	geranium zonal happy violet	pelargonium	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2217	fritillaria meleagris	fritillaria	meleagris	\N	flower	\N	perennial	2004-06-02 10:39:34	2005-11-18 14:37:23	aklaver	postgres	\N	plant	fall_bulb
1040	diascia ruby fields pink	diascia	\N	ruby fields pink	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1525	phlox goldmine	\N	\N	goldmine	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
832	sunflower pacino	helianthus	\N	pacino	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1524	petasites golden palms	petasites	\N	golden palms	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1767	diascia red flag 	diascia	\N	red flag red	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1763	bacopa lilac king	sutera	\N	lilac king	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2108	torenia clown lemon drop	torenia	\N	lemon drop	flower	clown	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
958	physostegia virginiana alba	physostegia	virginiana	alba	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
959	physostegia virginiana rosea	physostegia	virginiana	rosea	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1488	hosta patriot	hosta	\N	patriot	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1789	petunia madness white	petunia	\N	white	flower	madness	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2097	geranium caliente rose	pelargonium	\N	\N	flower	caliente	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1601	argyranthemum butterfly yellow	argyranthemum	\N	butterfly yellow	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1435	crocosmia venus	crocosmia	\N	venus	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1799	pansy iona purple and white	viola	\N	purple and white	flower	iona	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1095	chrysanthemum molfetta pink	chrysanthemum	\N	molfetta	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1260	geranium zonal alba	pelargonium	\N	alba	flower	zonal	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1961	nemesia sunsatia banana	nemesia		banana	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1440	delphinium elatum galahad	delphinium	elatum	galahad	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1439	delphinium elatum blue bird	delphinium	elatum	blue bird	flower	elatum	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1979	coleus solar spectrum	solenostemon	\N	solar spectrum	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1674	cyclamen laser mix	cyclamen	\N	laser mix	flower	laser	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1675	cyclamen miracles mix	cyclamen	\N	miracles mix	flower	miracles	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1676	cyclamen silverado red	cyclamen	\N	silverado red	flower	silverado	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1677	cyclamen silverado white	cyclamen	\N	silverado white	flower	siverado	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1436	delphinium laurin	\N	\N	laurin	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1412	canna bengal tiger	\N	\N	bengal tiger	flower	\N	perennial	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2095	geranium caliente dark red	pelargonium	\N	\N	flower	caliente	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
1254	geranium red mini cascade	\N	\N	red mini cascade	flower	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2000	spinach spargo	\N	\N	spargo	herb	\N	annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
371	nicotiana sylvestris	nicotiana	sylvestris		flower		annual	2004-01-01 00:00:00	2005-11-21 10:45:30	aklaver	postgres	\N	plant	normal
2373	annual color 4 (premD)	cascade cuts logo	\N	\N	flower	C4PremiumD	perennial	2004-11-04 13:35:49	2005-11-21 10:19:27	aklaver	postgres	\N	tag	price_group
3029	african daisy symphony melon	osteospermum	\N	melon	flower	\N	annual	2006-11-07 08:42:14	\N	\N	mgarcia	\N	plant	normal
2375	perennial 4 (prem F)	cascade cuts logo	\N	\N	flower	P4PremiumF	perennial	2004-11-04 14:23:35	2005-11-21 10:19:57	aklaver	postgres	\N	tag	price_group
2242	amaryllis baby doll	hippeastrum	\N	baby doll	flower	mini	annual	2004-07-08 16:13:57	2005-11-18 14:37:23	aklaver	postgres	wht w/thin pk bder & grn thr	plant	fall_bulb
2830	calitunia purple	calitunia	\N	purple	flower	\N	annual	2005-12-01 11:44:50	\N	\N	mgarcia	\N	plant	normal
2378	perennial 4 (prem H)	cascade cuts logo	\N	\N	flower	P4PremiumH	perennial	2004-11-04 14:26:57	2005-11-21 10:20:46	aklaver	postgres	\N	tag	price_group
2379	perennial gallon (regular D)	cascade cuts logo	\N	\N	flower	PGRegularD	perennial	2004-11-04 14:28:15	2005-11-21 10:21:02	aklaver	postgres	\N	tag	price_group
2380	perennial gallon (prem A)	cascade cuts logo	\N	\N	flower	PGPremiumA	perennial	2004-11-04 14:29:21	2005-11-21 10:21:17	aklaver	postgres	\N	tag	price_group
2381	perennial gallon (prem B)	cascade cuts logo	\N	\N	flower	PGPremiumB	perennial	2004-11-04 14:33:01	2005-11-21 10:21:28	aklaver	postgres	\N	tag	price_group
2251	anemone blanda blue	anemone	\N	blanda	flower	\N	perennial	2004-07-22 11:28:55	2005-11-18 14:37:23	aklaver	postgres	blue	plant	fall_bulb
2611	amaryllis piquant	hippeastrum	\N	piquant	flower	\N	perennial	2005-09-12 15:59:23	2005-11-18 14:37:23	aklaver	mgarcia	\N	plant	fall_bulb
2382	perennial gallon (prem C)	cascade cuts logo	\N	\N	flower	PGPremiumC	perennial	2004-11-04 14:36:15	2005-11-21 10:21:40	aklaver	postgres	\N	tag	price_group
2383	perennial gallon (prem E)	cascade cuts logo	\N	\N	flower	PGPremiumE	perennial	2004-11-04 14:37:17	2005-11-21 10:21:57	aklaver	postgres	\N	tag	price_group
2384	perennial gallon (prem F)	cascade cuts logo	\N	\N	flower	PGPremiumF	perennial	2004-11-04 14:38:37	2005-11-21 10:22:15	aklaver	postgres	\N	tag	price_group
2385	perennial gallon (prem G)	cascade cuts logo	\N	\N	flower	PGPremiumG	perennial	2004-11-04 14:42:18	2005-11-21 10:22:28	aklaver	postgres	\N	tag	price_group
2386	perennial gallon (prem H)	cascade cuts logo	\N	\N	flower	PGPremiumH	perennial	2004-11-04 14:43:19	2005-11-21 10:22:43	aklaver	postgres	\N	tag	price_group
3046	paulzono's pesto garden basket	paulzono's	\N	pesto garden basket	herb	\N	annual	2006-11-29 10:37:30	\N	\N	mgarcia	\N	plant	normal
2706	C3GRegB	cascade cuts logo	\N	\N	flower	\N	annual	2005-10-20 14:58:21	2007-01-15 12:04:01	mgarcia	mgarcia	\N	plant	normal
2539	amayllis mini little devil	hippeastrum	\N	little devil	flower	mini	perennial	2005-05-18 11:27:46	2005-11-18 14:37:23	aklaver	postgres	red w/ dark veins	plant	fall_bulb
2248	amaryllis mini vesuvius 	hippeastrum	\N	vesuvius	flower	mini	perennial	2004-07-09 08:07:18	2005-11-18 14:37:23	aklaver	postgres	cerise red	plant	fall_bulb
2540	amaryllis gold medal	hippeastrum	\N	gold medal	flower	\N	perennial	2005-05-18 11:55:47	2005-11-18 14:37:23	aklaver	postgres	true salmon	plant	fall_bulb
2535	amaryllis minerva	hippeastrum	\N	minerva	flower	\N	perennial	2005-05-18 11:12:30	2005-11-18 14:37:23	aklaver	postgres	red/white	plant	fall_bulb
2604	tulip black diamond	tulip	\N	black diamond	flower	\N	annual	2005-07-14 09:28:01	2005-11-18 14:37:23	aklaver	postgres	\N	plant	fall_bulb
2612	amaryllis amalfi	hippeastrum	\N	\N	flower	\N	perennial	2005-09-12 16:00:08	2005-11-18 14:37:23	aklaver	mgarcia	\N	plant	fall_bulb
2764	amaryllis mini trentino	hippeastrum	\N	trentino	flower	\N	annual	2005-11-15 10:35:11	2005-11-18 14:37:23	aklaver	mgarcia	\N	plant	fall_bulb
3032	geranium zonal crystal palace gem	pelargonium	\N	crystal palace gem	flower	\N	annual	2006-11-07 09:02:28	\N	\N	mgarcia	\N	plant	normal
2832	calibrachoa cabaret rose	calibrachoa	\N	cabaret rose	flower	\N	annual	2005-12-02 09:34:04	\N	\N	mgarcia	\N	plant	normal
2253	camassia leichtlinii alba	camassia	leichtlinii	alba	flower	\N	perennial	2004-07-22 11:40:07	2005-11-18 14:37:23	aklaver	postgres	white	plant	fall_bulb
2254	hyacinth purple sensation	\N	\N	purple sensation	flower	\N	perennial	2004-07-22 11:43:19	2005-11-18 14:37:23	aklaver	postgres	purple	plant	fall_bulb
2255	tulip bright gem	\N	\N	bright gem	flower	\N	perennial	2004-07-22 11:47:18	2005-11-18 14:37:23	aklaver	postgres	\N	plant	fall_bulb
2256	tulip carola	\N	\N	carola	flower	\N	perennial	2004-07-22 11:56:12	2005-11-18 14:37:23	aklaver	postgres	\N	plant	fall_bulb
2257	tulip red impression	\N	\N	red impression	flower	\N	perennial	2004-07-22 11:57:57	2005-11-18 14:37:23	aklaver	postgres	red	plant	fall_bulb
2258	tulip easter bunny	\N	\N	easter bunny	flower	\N	perennial	2004-07-22 12:00:24	2005-11-18 14:37:23	aklaver	postgres	\N	plant	fall_bulb
2259	tulip blue ribbon	\N	\N	blue ribbon	flower	\N	perennial	2004-07-22 12:02:34	2005-11-18 14:37:23	aklaver	postgres	blue	plant	fall_bulb
2268	scilla peruviana	scilla	\N	peruviana	flower	\N	perennial	2004-08-13 09:05:29	2005-11-18 14:37:23	aklaver	postgres	\N	plant	fall_bulb
2725	tulip labyrinth	tulip	\N	labyrinth	flower	\N	perennial	2005-10-25 09:27:48	2005-11-18 14:37:23	aklaver	mgarcia	\N	plant	fall_bulb
2534	amaryllis ferrari	hippeastrum	\N	ferrari	flower	\N	perennial	2005-05-18 11:08:08	2005-11-18 14:37:23	aklaver	postgres	red	plant	fall_bulb
2533	amaryllis desire	hippeastrum	\N	desire	flower	\N	perennial	2005-05-18 11:06:02	2005-11-18 14:37:23	aklaver	postgres	orange	plant	fall_bulb
2532	amaryllis angelique	hippeastrum	\N	angelique	flower	\N	perennial	2005-05-18 11:03:29	2005-11-18 14:37:23	aklaver	postgres	pink	plant	fall_bulb
2537	amaryllis mini butter cup 	hippeastrum	\N	butter cup	flower	mini	perennial	2005-05-18 11:22:24	2005-11-18 14:37:23	aklaver	postgres	creamy yellow	plant	fall_bulb
2827	african daisy symphony vanilla	osteospermum	\N	vanilla	flower	symphony	annual	2005-11-29 09:11:02	\N	\N	mgarcia	\N	plant	normal
2828	geranium sanguineum vision light pink	pelargonium	sanguineum	light pink	flower	vision	perennial	2005-11-29 09:14:49	\N	\N	mgarcia	\N	plant	normal
2859	poppy oriental arc de triumph	papaver	\N	arc de triumph	flower	\N	perennial	2006-01-05 13:01:33	\N	\N	mgarcia	\N	plant	normal
3033	african daisy serenity white improved	osteospermum	\N	white improved	flower	\N	annual	2006-11-07 09:30:34	\N	\N	mgarcia	\N	plant	normal
2450	bacopa copia golden leaved/light lav	sutera	copia	golden leaved/light lavender	flower	\N	annual	2005-02-01 09:02:33	2005-12-13 13:14:30	mgarcia	postgres	\N	plant	normal
2834	impatiens fanfare fuchsia improved	impatiens	\N	fuchsia improved	flower	fanfare	annual	2005-12-02 09:45:13	\N	\N	mgarcia	\N	plant	normal
2835	nemesia aromatica royal	nemesia	aromatica	royal	flower	\N	annual	2005-12-02 09:47:34	\N	\N	mgarcia	\N	plant	normal
1005	african daisy highside 	osteospermum	\N	highside	flower	highside	annual	2004-01-01 00:00:00	2006-01-09 14:21:21	mgarcia	postgres	red-purple	plant	normal
2837	geranium zonal allure hot coral	pelargonium	\N	allure hot coral	flower	zonal	annual	2005-12-02 09:52:52	\N	\N	mgarcia	\N	plant	normal
1072	nasturtium apricot trifle	tropaeolum	majus	apricot trifle	flower	\N	annual	2004-01-01 00:00:00	2006-01-18 14:45:59	mgarcia	postgres	\N	plant	normal
207	immortalle variegated	helichrysum	petiolare	immortalle variegated	flower		annual	2004-01-01 00:00:00	2005-12-06 11:23:26	mgarcia	postgres	\N	plant	normal
2839	geranium zonal designer white	pelargonium 	\N	designer white	flower	zonal	annual	2005-12-02 09:57:51	2005-12-02 09:58:04	mgarcia	mgarcia	\N	plant	normal
2840	platycodon astra blue semi double	platycodon	astra	blue semi double	flower	\N	perennial	2005-12-02 10:00:16	\N	\N	mgarcia	\N	plant	normal
2841	platycodon astra white semi double	platycodon	astra	white semi double	flower	\N	perennial	2005-12-02 10:23:42	\N	\N	mgarcia	\N	plant	normal
2842	salvia gregii bright red	salvia 	gregii	navajo bright red	flower	\N	perennial	2005-12-02 10:25:21	\N	\N	mgarcia	\N	plant	normal
2843	salvia gregii navajo dark purple	salvia	gregii	navajo dark purple	flower	\N	perennial	2005-12-02 10:28:12	\N	\N	mgarcia	\N	plant	normal
2844	salvia gregii navajo rose	salvia	gregii	navajo rose	flower	\N	annual	2005-12-02 10:31:59	\N	\N	mgarcia	\N	plant	normal
2845	salvia mystic spires blue	salvia	\N	mystic spires blue	flower	\N	perennial	2005-12-02 10:34:28	\N	\N	mgarcia	\N	plant	normal
2846	coleus black dragon	solenostemon	\N	black dragon	flower	\N	annual	2005-12-02 10:36:21	\N	\N	mgarcia	\N	plant	normal
3034	coleus wizard coral sunrise	solenostemon	\N	coral sunrise	flower	wizard	annual	2006-11-07 09:32:34	2006-11-07 09:34:50	mgarcia	mgarcia	\N	plant	normal
2848	coleus wizard velvet red	solenostemon	\N	wizard velvet red	flower	\N	annual	2005-12-02 10:40:52	\N	\N	mgarcia	\N	plant	normal
2885	cyclamen latina premium mix	cyclamen	latina	premium mix	flower	latina	annual	2006-01-30 16:21:38	2006-01-30 16:25:25	mgarcia	mgarcia	\N	plant	normal
205	immortalle miniature	helichrysum	petiolare	minitum	flower		annual	2004-01-01 00:00:00	2005-12-06 11:23:43	mgarcia	postgres	\N	plant	normal
3035	coleus wizard golden	solenostemon	\N	golden	flower	wizard	annual	2006-11-07 09:35:41	\N	\N	mgarcia	\N	plant	normal
3036	coleus wizard scarlet	solenostemon	\N	scarlet	flower	wizard	annual	2006-11-07 09:37:11	\N	\N	mgarcia	\N	plant	normal
2861	poppy oriental inferno	papaver	\N	inferno	flower	\N	perennial	2006-01-05 13:05:10	\N	\N	mgarcia	\N	plant	normal
2560	geranium blizzard red	pelargonium	\N	blizzard red	flower	\N	annual	2005-05-30 09:08:12	2006-02-07 10:27:32	mgarcia	postgres	\N	plant	normal
2858	dracena indivisa	dracena	indivisa	\N	flower	\N	annual	2006-01-04 13:18:18	\N	\N	mgarcia	\N	plant	normal
2836	poppy champagne bubbles	papaver	nudicaule	champagne bubbles	flower	\N	perennial	2005-12-02 09:50:12	2006-01-04 16:24:45	mgarcia	mgarcia	\N	plant	normal
2860	poppy oriental fancy feathers	papaver	\N	fancy feathers	flower	\N	perennial	2006-01-05 13:03:20	2006-01-05 16:18:29	mgarcia	mgarcia	\N	plant	normal
3037	viola angel blueberry glow	viola	\N	angel blueberry glow	flower	\N	annual	2006-11-07 09:39:59	2007-03-15 07:34:29	mgarcia	mgarcia	\N	plant	normal
2865	diascia whisper white	diascia	\N	whisper white	flower	\N	annual	2006-01-10 10:57:33	\N	\N	mgarcia	\N	plant	normal
2866	impatiens fiesta lavender orchid	impatiens	\N	fiesta lavender orchid	flower	\N	annual	2006-01-10 10:59:54	\N	\N	mgarcia	\N	plant	normal
2877	calibrachoa cabaret scarlet	calibrachoa	\N	cabaret scarlet	flower	\N	annual	2006-01-10 11:46:37	\N	\N	mgarcia	\N	plant	normal
2867	petunia dbl wave blue vein	petunia 	\N	dbl wave blue vien	flower	\N	annual	2006-01-10 11:02:16	2006-01-10 11:02:56	mgarcia	mgarcia	\N	plant	normal
2868	petunia suncatcher coral prism	petunia	\N	suncatcher coral prism	flower	\N	annual	2006-01-10 11:03:57	\N	\N	mgarcia	\N	plant	normal
2869	petunia suncatcher dark lavender vein	petunia 	\N	suncatcher dark lavender vein	flower	\N	annual	2006-01-10 11:04:57	\N	\N	mgarcia	\N	plant	normal
2870	petunia suncatcher salmon vein	petunia	\N	suncatcher salmon vein	flower	\N	annual	2006-01-10 11:05:48	\N	\N	mgarcia	\N	plant	normal
2871	petunia suncatcher sapphire	petunia	\N	suncatcher sapphire	flower	\N	annual	2006-01-10 11:06:49	\N	\N	mgarcia	\N	plant	normal
2872	phlox intensia neon pink	phlox	intensia	neon pink	flower	\N	annual	2006-01-10 11:07:45	\N	\N	mgarcia	\N	plant	normal
2873	coleus gays delight	solenostemon	\N	gays delight	flower	\N	annual	2006-01-10 11:08:33	\N	\N	mgarcia	\N	plant	normal
2875	verbena aztec purple magic	verbena	\N	aztec purple magic	flower	\N	annual	2006-01-10 11:10:26	\N	\N	mgarcia	\N	plant	normal
2874	verbena plum magic	verbena	\N	aztec plum magic	flower	\N	annual	2006-01-10 11:09:29	2006-01-10 11:10:52	mgarcia	mgarcia	\N	plant	normal
2916	rudbeckia toto lemon	rudbeckia	\N	toto lemon	flower	\N	perennial	2006-07-10 08:12:21	\N	\N	mgarcia	\N	plant	normal
3055	dahlia karma lagoon	dahlia	\N	karma lagoon	flower	karma	annual	2007-02-06 08:30:55	\N	\N	mgarcia	\N	plant	normal
2116	geranium zonal designer hot coral	pelargonium	\N	hot coral	flower	designer	annual	2004-01-01 00:00:00	2006-03-16 10:23:28	mgarcia	postgres	\N	plant	normal
2896	lily LA hybrid menorca	lilium	longiflorum/asiatic	menorca	flower	LA hybrid	perennial	2006-03-28 11:15:08	\N	\N	mgarcia	bright salmon	plant	normal
2252	camassia  leichtlinii coerulea	camassia	leichtlinii 	coerulea	flower	\N	perennial	2004-07-22 11:37:32	2006-04-10 10:52:51	mgarcia	postgres	blue	plant	fall_bulb
2897	jasmine variegated	jasminum	\N	variegated	flower	\N	annual	2006-04-13 10:22:57	\N	\N	mgarcia	\N	plant	normal
2903	aster bahamas	asteraceae	\N	bahamas	flower	\N	perennial	2006-06-07 07:28:49	2006-06-07 07:30:31	mgarcia	mgarcia	\N	plant	normal
2905	viola sorbet baby face marina	viola	\N	baby face marina	flower	sorbet	annual	2006-06-07 08:40:16	\N	\N	mgarcia	\N	plant	normal
2899	anemone japanese pamina	anemone	hupehensis var. japonica	pamina	flower	 	perennial	2006-04-17 16:30:11	2006-04-19 07:46:54	mgarcia	mgarcia	deep rose	plant	normal
2906	pansy matrix red blotch	viola	\N	red blotch	flower	matric	annual	2006-06-07 08:42:37	\N	\N	mgarcia	\N	plant	normal
2907	pansy matrix rose w/ blotch	viola	\N	rose w/ blotch	flower	matrix	annual	2006-06-07 08:44:28	\N	\N	mgarcia	\N	plant	normal
2078	amaryllis mini fanfare	\N	\N	fanfare	flower	mini	perennial	2004-01-01 00:00:00	2006-06-12 12:20:22	mgarcia	postgres	\N	plant	fall_bulb
2909	muscari aucheri white magic	muscari	aucheri	white magic	flower	\N	perennial	2006-06-14 13:24:54	\N	\N	mgarcia	\N	plant	fall_bulb
2888	cyclamen silverado sierra purple flame	cyclamen	\N	silverado sierra purple flame	flower	silverado	annual	2006-01-30 16:26:25	\N	\N	mgarcia	\N	plant	normal
2683	impatiens celebrette hot rose improved	impatiens	hawkeri	hot rose improved	flower	celebrette	annual	2005-10-13 09:57:08	2006-02-14 10:44:13	mgarcia	aklaver	\N	plant	normal
2684	impatiens celebrette lt coral	impatiens	\N	light coral	flower	celebrette	annual	2005-10-13 09:59:05	2006-02-14 10:44:45	mgarcia	aklaver	\N	plant	normal
2685	impatiens celebrette orange crush	impatiens	\N	orange crush	flower	celebrette	annual	2005-10-13 10:00:32	2006-02-14 10:44:52	mgarcia	aklaver	\N	plant	normal
2687	impatiens celebrette wild plum	impatiens	\N	wild plum	flower	celebrette	annual	2005-10-13 10:03:15	2006-02-14 10:45:03	mgarcia	aklaver	\N	plant	normal
2240	scabiosa butterfly blue	scabiosa	colunbaria	butterfly blue	flower	\N	perennial	2004-06-22 10:50:01	2006-02-14 10:53:53	mgarcia	postgres	\N	plant	normal
2669	scaevola saphira	scaevola	aemula	saphira	flower	\N	annual	2005-10-13 09:09:26	2006-02-14 10:55:01	mgarcia	aklaver	\N	plant	normal
2910	tulip black jack	\N	\N	black jack	flower	\N	perennial	2006-06-14 13:28:12	\N	\N	mgarcia	\N	plant	fall_bulb
2584	argyranthemum madiera sao vicente	argyranthemum	\N	madiera sao vicente	flower	madiera	annual	2005-07-07 08:46:15	2006-02-14 14:49:54	mgarcia	postgres	deep rose	plant	normal
2911	tulip shakespeare	\N	\N	shakespeare	flower	\N	perennial	2006-06-14 13:30:35	\N	\N	mgarcia	\N	plant	fall_bulb
2912	tulip white marvel	\N	\N	white marvel	flower	\N	perennial	2006-06-14 13:32:17	\N	\N	mgarcia	\N	plant	fall_bulb
2838	geranium zonal designer bright red imp.	pelargonium-	\N	designer bright red improved	flower	zonal	annual	2005-12-02 09:55:48	2006-02-14 15:51:59	mgarcia	mgarcia	\N	plant	normal
2849	viola wiskers series pansy	viola	wittrockiana	whiskers series pansy	flower	whiskers	annual	2005-12-02 10:42:23	2006-02-14 15:52:48	mgarcia	mgarcia	mix	plant	normal
2913	paperwhite ariel	narcissus	\N	ariel	flower	\N	perennial	2006-06-14 13:35:51	\N	\N	mgarcia	\N	plant	fall_bulb
1718	tulip asst	cascade cuts logo	\N	\N	flower	\N	annual	2004-01-01 00:00:00	2006-06-19 13:54:40	mgarcia	postgres	\N	tag	regular
1324	scilla tubergeniana	scilla	tubergeniana	\N	flower	\N	perennial	2004-01-01 00:00:00	2006-06-29 09:30:45	mgarcia	postgres	\N	plant	fall_bulb
2917	ranunculus magic mix	ranunculus	\N	magic mix	flower	\N	annual	2006-07-25 06:52:43	\N	\N	mgarcia	\N	plant	normal
2918	geranium blizzard pink	pelargonium	\N	blizzard pink	flower	blizzard	annual	2006-07-27 07:38:45	\N	\N	mgarcia	\N	plant	normal
2919	geranium blizzard burgundy compact	pelargonium	\N	blizzard burgundy compact	flower	blizzard	annual	2006-07-27 07:50:00	\N	\N	mgarcia	\N	plant	normal
2920	geranium freestyle orchid	pelargonium	\N	freestyle orchid	flower	freestyle	annual	2006-07-27 07:52:30	\N	\N	mgarcia	\N	plant	normal
2921	geranium royal blue	pelargonium	\N	royal blue	flower	royal	annual	2006-07-27 07:54:35	\N	\N	mgarcia	\N	plant	normal
2922	geranium royal dark burgundy	pelargonium	\N	royal dark burgundy	flower	royal	annual	2006-07-27 07:57:04	\N	\N	mgarcia	\N	plant	normal
2923	geranium royal fire	pelargonium	\N	royal fire	flower	royal	annual	2006-07-27 07:59:13	\N	\N	mgarcia	\N	plant	normal
2924	geranium royal hot pink	pelargonium	\N	royal hot pink	flower	royal	annual	2006-07-27 08:05:07	\N	\N	mgarcia	\N	plant	normal
2972	dahlia happy singles date	dahlia 	\N	date	flower	happy singles	annual	2006-10-16 11:12:27	2006-10-16 15:22:58	mgarcia	mgarcia	\N	plant	normal
2926	geranium royal purple red	pelargonium	\N	royal purple red	flower	royal	annual	2006-07-27 08:11:02	\N	\N	mgarcia	\N	plant	normal
3038	coleus collen	solenostemon	\N	collen	flower	\N	annual	2006-11-07 14:01:58	\N	\N	mgarcia	\N	plant	normal
2959	poppy oriental perry's white	papaver	\N	perry's white	flower	\N	perennial	2006-09-19 12:54:30	\N	\N	mgarcia	\N	plant	normal
2967	geranium royal amethyst	pelargonium	\N	royal amethyst	flower	\N	annual	2006-10-11 11:02:18	\N	\N	mgarcia	\N	plant	normal
2929	calla lily coral passion	zantedeschia	\N	coral passion	flower	\N	annual	2006-08-17 14:49:39	\N	\N	mgarcia	\N	plant	normal
2930	calla lily unnamed apricot	zantesdechia	\N	unnamed apricot	flower	\N	annual	2006-08-17 14:53:22	\N	\N	mgarcia	\N	plant	normal
2931	calla lily candle glow	zantesdechia	\N	candle glow	flower	\N	annual	2006-08-17 14:54:35	\N	\N	mgarcia	\N	plant	normal
2932	geranium zonal crystal palace gem	pelargonium	\N	crystal palace gem	flower	zonal	annual	2006-08-28 12:01:48	\N	\N	mgarcia	\N	plant	normal
2933	geranium zonal happy thought	pelargonium	\N	happy thought	flower	zonal	annual	2006-08-28 12:12:59	2007-01-24 08:28:54	mgarcia	mgarcia	\N	plant	normal
2943	heuchera raveon	heuchera	\N	raveon	flower	\N	perennial	2006-08-29 08:01:21	\N	\N	mgarcia	\N	plant	normal
2944	hosta guacamole	hosta	\N	guacamole	flower	\N	perennial	2006-08-29 08:05:33	\N	\N	mgarcia	\N	plant	normal
2935	echinacea after midnight	echinacea	\N	after midnight	flower	\N	perennial	2006-08-29 07:42:21	\N	\N	mgarcia	\N	plant	normal
2936	echinacea summer sky	echinacea	\N	summer sky	flower	\N	perennial	2006-08-29 07:44:14	\N	\N	mgarcia	\N	plant	normal
2937	echinacea twilight	echinacea	\N	twilight	flower	\N	perennial	2006-08-29 07:47:50	\N	\N	mgarcia	\N	plant	normal
2938	hellebore ivory prince	helleborus	\N	ivory prince	flower	\N	perennial	2006-08-29 07:50:21	\N	\N	mgarcia	\N	plant	normal
2939	heuchera frosted violet	heuchera	\N	frosted violet	flower	\N	perennial	2006-08-29 07:53:21	\N	\N	mgarcia	\N	plant	normal
3053	dahlia karma bon vini	dahlia	\N	karma bon bini	flower	karma	annual	2007-02-06 08:27:38	\N	\N	mgarcia	\N	plant	normal
2941	heuchera midnight rose	heuchera	\N	midnight rose	flower	\N	perennial	2006-08-29 07:57:54	\N	\N	mgarcia	\N	plant	normal
2942	heuchera molly bush	heuchera	\N	molly bush	flower	\N	perennial	2006-08-29 07:59:11	\N	\N	mgarcia	\N	plant	normal
2945	lavatera blushing bride	lavatera	\N	blushing bride	flower	\N	perennial	2006-08-29 08:08:24	\N	\N	mgarcia	\N	plant	normal
2946	lavatera candy floss	lavatera	\N	candy floss	flower	\N	perennial	2006-08-29 08:10:38	\N	\N	mgarcia	\N	plant	normal
2947	melianthus antonow's blue	melianthus	\N	antonow's blue	flower	\N	perennial	2006-08-29 08:12:48	\N	\N	mgarcia	\N	plant	normal
2948	melianthus purple haze	melianthus	\N	purple haze	flower	\N	perennial	2006-08-29 08:14:20	\N	\N	mgarcia	\N	plant	normal
2949	poppy oriental place pigalle	papaver	\N	place pigalle	flower	\N	perennial	2006-08-29 08:16:33	\N	\N	mgarcia	\N	plant	normal
2950	phormium dark delight	phormium	\N	dark delight	flower	\N	perennial	2006-08-29 08:18:16	\N	\N	mgarcia	\N	plant	normal
2951	phormium deep burgundy	phormium	\N	deep burgundy	flower	\N	perennial	2006-08-29 08:19:46	\N	\N	mgarcia	\N	plant	normal
2952	rhodohypoxsis twinkle series	rhodohypoxsis	\N	twinkle series	flower	\N	perennial	2006-08-29 08:21:27	\N	\N	mgarcia	\N	plant	normal
2953	salvia mystic spires blue	salvia	\N	mystic spires blue	flower	\N	perennial	2006-08-29 08:22:42	\N	\N	mgarcia	\N	plant	normal
1018	asteriscus gold coin 	asteraceae	maritimus	gold coin	flower	gold coin	annual	2004-01-01 00:00:00	2006-09-11 14:26:56	mgarcia	postgres	\N	plant	normal
2954	tulip freeman	\N	\N	\N	flower	\N	perennial	2006-09-05 06:57:33	2006-09-05 07:10:33	mgarcia	mgarcia	\N	plant	fall_bulb
2955	tulip jetfire	\N	\N	\N	flower	\N	perennial	2006-09-05 07:15:05	\N	\N	mgarcia	\N	plant	fall_bulb
2956	tulip red sparks	\N	\N	\N	flower	\N	perennial	2006-09-05 07:19:31	\N	\N	mgarcia	\N	plant	fall_bulb
2957	phormium pink stripe	phormium	\N	\N	flower	\N	perennial	2006-09-05 07:41:00	\N	\N	mgarcia	\N	plant	normal
2656	coleus religious radish	solenostemon	\N	religious radish	flower	\N	annual	2005-10-10 15:03:58	2006-09-12 14:52:23	mgarcia	mgarcia	\N	plant	normal
2117	geranium zonal designer hot pink	pelargonium	\N	\N	flower	designer	annual	2004-01-01 00:00:00	2006-10-12 10:01:05	mgarcia	postgres	\N	plant	normal
2968	dahlia happy single first love	dahlia	\N	fisrt love	flower	happy singles	annual	2006-10-16 11:07:07	\N	\N	mgarcia	\N	plant	normal
2969	dahlia happy singles juliet	dahlia	\N	juliet	flower	happy singles	annual	2006-10-16 11:08:17	\N	\N	mgarcia	\N	plant	normal
2970	dahlia happy singles kiss	dahlia	\N	kiss	flower	happy singles	annual	2006-10-16 11:09:54	\N	\N	mgarcia	\N	plant	normal
2971	dahlia happy singles party	dahlia	\N	party	flower	happy singles	annual	2006-10-16 11:11:11	\N	\N	mgarcia	\N	plant	normal
3074	chrysanthemum maia coral	chrysanthemum	\N	maia coral	flower	\N	perennial	2007-03-27 08:30:49	\N	\N	mgarcia	\N	plant	normal
2974	sweet pea mammoth	lathyrus	\N	mammoth	flower	royal	annual	2006-10-19 13:59:44	2006-10-19 14:00:01	mgarcia	mgarcia	\N	plant	normal
3075	chrysanthemum mermaid yellow	chrysanthemum	\N	mermaid yellow	flower	\N	perennial	2007-03-27 08:32:26	\N	\N	mgarcia	\N	plant	normal
3076	chrysanthemum tatoi bronze	chrysanthemum	\N	tatoi bronze	flower	\N	perennial	2007-03-27 08:34:33	\N	\N	mgarcia	\N	plant	normal
3077	chrysanthemum venus purple	chrysanthemum	\N	venus purple	flower	\N	perennial	2007-03-27 08:37:42	\N	\N	mgarcia	\N	plant	normal
3078	chrysanthemum sunset orange	chrysanthemum	\N	sunset orange	flower	\N	perennial	2007-03-27 08:39:21	\N	\N	mgarcia	\N	plant	normal
3079	chrysanthemum thor orange	chrysanthemum	\N	thor orange	flower	\N	perennial	2007-03-27 08:41:06	\N	\N	mgarcia	\N	plant	normal
2980	tomato barndy wine	tomato	\N	brandy wine	herb	\N	annual	2006-11-06 12:57:35	2007-04-03 08:40:14	mgarcia	mgarcia	\N	plant	normal
3030	african daisy sunny shiela	osteospermum	\N	shiela	flower	\N	annual	2006-11-07 08:44:15	2006-11-21 09:48:09	mgarcia	mgarcia	\N	plant	normal
2981	tomato red zibra	tomato	\N	red zebra	herb	\N	annual	2006-11-06 12:59:18	2007-04-03 08:40:25	mgarcia	mgarcia	\N	plant	normal
3025	impatiens fusion glow improved	impatiens	\N	fusion glow improved	flower	\N	annual	2006-11-07 07:57:26	\N	\N	mgarcia	\N	plant	normal
2982	tomato stupice	tomato	\N	stupice	herb	\N	annual	2006-11-06 13:01:25	2007-04-03 08:44:08	mgarcia	mgarcia	\N	plant	normal
3052	fuchsia frosted flame	fuchsia	\N	frosted flame	flower	\N	annual	2007-01-24 10:24:46	\N	\N	mgarcia	\N	plant	normal
2989	alternanthera grenadine	alternanthera	\N	grenadine	flower	\N	annual	2006-11-06 14:15:55	\N	\N	mgarcia	\N	plant	normal
2990	alternanthera party time	alternanthera	\N	party time	flower	\N	annual	2006-11-06 14:21:39	\N	\N	mgarcia	\N	plant	normal
3045	coleus wizard pineapple	solenostemom	\N	wizard pineapple	flower	wizard	annual	2006-11-29 08:47:15	\N	\N	mgarcia	\N	plant	normal
2992	anagalis sunrise	anagalis	\N	sunrise	flower	\N	annual	2006-11-06 14:38:20	\N	\N	mgarcia	\N	plant	normal
3003	coleus gold compacta	solenostemon	\N	gold compacta	flower	\N	annual	2006-11-06 15:30:03	2007-02-20 08:53:11	mgarcia	mgarcia	\N	plant	normal
2994	fuchsia billy	fuchsia	\N	billy	flower	\N	annual	2006-11-06 14:43:18	\N	\N	mgarcia	\N	plant	normal
2995	fuchsia condor	fuchsia	\N	condor	flower	\N	annual	2006-11-06 14:44:53	\N	\N	mgarcia	\N	plant	normal
2996	fuchsia hilary	fuchsia	\N	hilary	flower	\N	annual	2006-11-06 14:48:01	\N	\N	mgarcia	\N	plant	normal
2997	fuchsia paloma	fuchsia	\N	paloma	flower	\N	annual	2006-11-06 14:49:55	\N	\N	mgarcia	\N	plant	normal
3024	calibrachoa mini famous double pink	calibrachoa	\N	double pink	flower	\N	annual	2006-11-07 07:54:59	\N	\N	mgarcia	\N	plant	normal
2999	coleus amora	solenostemon	\N	amora	flower	\N	annual	2006-11-06 15:11:45	\N	\N	mgarcia	\N	plant	normal
3000	coleus big chief	solenostemon	\N	big chief	flower	\N	annual	2006-11-06 15:24:39	\N	\N	mgarcia	\N	plant	normal
3001	coleus blackberry waffles	solenostemon	\N	blackberry waffles	flower	\N	annual	2006-11-06 15:26:47	\N	\N	mgarcia	\N	plant	normal
3002	coleus fishnet stockings	solenostemon	\N	fishnet stockings	flower	\N	annual	2006-11-06 15:28:51	\N	\N	mgarcia	\N	plant	normal
3004	coleus gold bell	solestemon	\N	gold bell	flower	\N	annual	2006-11-06 15:33:52	\N	\N	mgarcia	\N	plant	normal
3005	coleus jungle love	solenostemon	\N	jungle love	flower	\N	annual	2006-11-06 15:35:31	\N	\N	mgarcia	\N	plant	normal
3006	coleus lime frill	solenostemon	\N	lime frill	flower	\N	annual	2006-11-06 15:37:24	\N	\N	mgarcia	\N	plant	normal
2998	glechoma hederacea variegata	glechoma	hederacea	variegata	flower	\N	annual	2006-11-06 14:52:02	2006-11-07 14:07:11	mgarcia	mgarcia	\N	plant	normal
3007	coleus mississipi summer	solenostemon	\N	mississipi summer	flower	\N	annual	2006-11-06 15:39:57	2006-11-06 15:41:15	mgarcia	mgarcia	\N	plant	normal
3008	coleus new orleans red	solenostemon	\N	new orleans red	flower	\N	annual	2006-11-06 15:42:14	\N	\N	mgarcia	\N	plant	normal
3009	coleus orange king	solenostemon	\N	orange king	flower	\N	annual	2006-11-06 15:43:51	\N	\N	mgarcia	\N	plant	normal
3010	coleus pineapplette	solenostemon	\N	pineapplette	flower	\N	annual	2006-11-06 15:48:04	\N	\N	mgarcia	\N	plant	normal
3011	coleus smoldering	solenostemon	\N	smoldering	flower	\N	annual	2006-11-06 15:49:45	\N	\N	mgarcia	\N	plant	normal
3012	coleus stained glass	solenostemon	\N	stained glass	flower	\N	annual	2006-11-06 15:51:14	\N	\N	mgarcia	\N	plant	normal
3013	coleus tabasco	solenostemon	\N	tabasco	flower	\N	annual	2006-11-06 15:52:50	\N	\N	mgarcia	\N	plant	normal
3014	coleus texas two step	solenostemon	\N	texas two step	flower	\N	annual	2006-11-06 15:56:01	\N	\N	mgarcia	\N	plant	normal
3015	coleus wild lime	solenostemon	\N	wild lime	flower	\N	annual	2006-11-06 15:57:55	\N	\N	mgarcia	\N	plant	normal
3016	nasturtium strawberries ice	tropaeolum	\N	strawberries ice	flower	\N	annual	2006-11-06 16:00:23	\N	\N	mgarcia	\N	plant	normal
3017	fuchsia dusky rose	fuchsia	\N	dusky rose	flower	\N	annual	2006-11-06 16:03:08	\N	\N	mgarcia	\N	plant	normal
3018	fuchsia bonanza	fuchsia	\N	bonanza	flower	\N	annual	2006-11-06 16:05:05	\N	\N	mgarcia	\N	plant	normal
3019	fuchsia lisa	fuchsia	\N	lisa	flower	\N	annual	2006-11-06 16:06:50	\N	\N	mgarcia	\N	plant	normal
3020	fuchsia midnight	fuchsia	\N	midnight	flower	\N	annual	2006-11-06 16:08:50	\N	\N	mgarcia	\N	plant	normal
3021	fuchsia royal air force	fuchsia	\N	royal air force	flower	\N	annual	2006-11-06 16:10:29	\N	\N	mgarcia	\N	plant	normal
3063	chrysanthemum adonis purple	chrysanthemum	\N	adonis purple	flower	\N	perennial	2007-03-27 08:05:38	\N	\N	mgarcia	\N	plant	normal
3064	chrysanthemum amata pink	chrysanthemum	\N	amata pink	flower	\N	perennial	2007-03-27 08:07:18	\N	\N	mgarcia	\N	plant	normal
3065	chrysanthemum calisto pink 	chrysanthemum	\N	calisto pink	flower	\N	perennial	2007-03-27 08:09:05	\N	\N	mgarcia	\N	plant	normal
3066	chrysanthemum crete white	chrysanthemum	\N	crete white	flower	\N	perennial	2007-03-27 08:10:35	\N	\N	mgarcia	\N	plant	normal
3056	dahlia karma naomi	dahlia	\N	karma naomi	flower	karma	annual	2007-02-06 08:32:07	\N	\N	mgarcia	\N	plant	normal
3057	dahlia karma sangria	dahlia	\N	karma sangria	flower	karma	annual	2007-02-06 08:33:36	\N	\N	mgarcia	\N	plant	normal
3058	dahlia karma serena	dahlia	\N	karma serena	flower	karma	annual	2007-02-06 08:34:53	\N	\N	mgarcia	\N	plant	normal
3059	dahlia karma ventura	dahlia	\N	karma ventura	flower	karma	annual	2007-02-06 08:36:04	\N	\N	mgarcia	\N	plant	normal
2940	heuchera ginger ale	heuchera	\N	ginger ale	flower	\N	perennial	2006-08-29 07:56:21	2007-02-07 08:10:23	mgarcia	mgarcia	\N	plant	normal
1709	pansy assorted	cascade cuts logo	\N	\N	flower	 	annual	2004-01-01 00:00:00	2007-02-13 09:48:50	mgarcia	postgres	\N	plant	normal
3061	alstroemeria little miss	alstroemeria	\N	little miss	flower	\N	perennial	2007-02-13 13:47:05	\N	\N	mgarcia	\N	plant	normal
2988	tomato burbank slicing	tomato	\N	burbank slicing	herb	\N	annual	2006-11-06 13:09:35	2007-04-03 08:44:13	mgarcia	mgarcia	\N	plant	normal
3062	coleus royal glissade	solestemon	\N	royal glissade	flower	\N	annual	2007-03-15 12:14:35	\N	\N	mgarcia	\N	plant	normal
3067	chrysanthemum echo bronze	chrysanthemum 	\N	echo bronze	flower	\N	perennial	2007-03-27 08:12:20	\N	\N	mgarcia	\N	plant	normal
3068	chrysanthemum five alarm red	chrysanthemum	\N	five alarm red	flower	\N	perennial	2007-03-27 08:15:27	\N	\N	mgarcia	\N	plant	normal
3069	chrysanthemum flamingo pink	chrysanthemum	\N	flamingo pink	flower	\N	perennial	2007-03-27 08:19:16	\N	\N	mgarcia	\N	plant	normal
3072	chrysanthemum grandeur white	chrysanthemum	\N	grandeur white	flower	\N	perennial	2007-03-27 08:27:05	\N	\N	mgarcia	\N	plant	normal
3070	chrysanthemum gold crest yellow	chrysanthemum	\N	gold crest yellow	flower	\N	perennial	2007-03-27 08:23:40	2007-03-27 08:24:23	mgarcia	mgarcia	\N	plant	normal
3071	chrysanthemum grandeur red	chrysanthemum	\N	grandeur red	flower	\N	perennial	2007-03-27 08:25:30	\N	\N	mgarcia	\N	plant	normal
2889	circle of life4 CL4F	cascade cuts logo	\N	circle of life	flower	CL4F	annual	2006-02-01 09:24:08	2007-01-15 12:04:18	mgarcia	mgarcia	\N	tag	regular
3043	bergenia cordifolia winter glow	bergenia 	cordifolia	winter glow	flower	\N	perennial	2006-11-21 15:19:02	\N	\N	mgarcia	\N	plant	normal
3044	euphorbia purpurea	euphorbia	purpurea	\N	flower	\N	perennial	2006-11-21 15:21:17	\N	\N	mgarcia	\N	plant	normal
3047	pablo's salsa garden basket	pablo's 	\N	salsa garden basket	herb	\N	annual	2006-11-29 10:40:36	\N	\N	mgarcia	\N	plant	normal
3048	paul thai garden basket	paul	\N	thai garden basket	herb	\N	annual	2006-11-29 10:42:03	\N	\N	mgarcia	\N	plant	normal
2991	anagalis skylover	anagalis	\N	skylover	flower	\N	annual	2006-11-06 14:36:36	2006-11-29 13:11:32	mgarcia	mgarcia	\N	plant	normal
3050	geranium scented robers lemon rose	pelargonium	\N	robers lemon rose	herb	\N	annual	2006-12-06 12:49:55	\N	\N	mgarcia	\N	plant	normal
3051	lavender jennifer	lavandula	\N	jennifer	herb	\N	perennial	2006-12-12 12:03:53	\N	\N	mgarcia	\N	plant	normal
2646	coleus dipt in wine	solenostemon	\N	dipt in wine	flower	\N	annual	2005-10-10 14:54:05	2006-12-12 15:57:36	mgarcia	mgarcia	\N	plant	normal
2983	tomato health kick	tomato	\N	health kick	herb	\N	annual	2006-11-06 13:03:00	2007-04-03 08:44:28	mgarcia	mgarcia	\N	plant	normal
1519	poppy royal chocolate distinction	papaver	orientale	royal chocolate distinction	flower	\N	perennial	2004-01-01 00:00:00	2007-01-04 13:21:43	mgarcia	postgres	\N	plant	normal
3042	erysimum bowles mauves	erysimum	 	bowles mauves	flower	\N	perennial	2006-11-21 15:16:23	2007-01-09 08:19:29	mgarcia	mgarcia	\N	plant	normal
3041	FlowerSP (FSRegularZ)	cascade cuts logo	\N	FSRegularZ	flower	\N	annual	2006-11-09 08:32:50	2007-01-15 12:04:27	mgarcia	mgarcia	\N	plant	normal
2915	Perennial 4 premium C plastic	cascade cuts logo	\N	\N	flower	P4PremiumC	perennial	2006-07-06 07:44:22	2007-01-15 12:04:39	mgarcia	mgarcia	\N	tag	regular
1646	ranunculus concerto	cascade cuts logo	\N	concerto	flower	\N	annual	2004-01-01 00:00:00	2007-01-15 12:05:59	mgarcia	postgres	\N	plant	normal
2374	perennial  4 (prem B)	cascade cuts logo	\N	\N	flower	P4PremiumB	perennial	2004-11-04 14:22:35	2007-01-15 12:06:30	mgarcia	postgres	\N	tag	price_group
2579	aster	cascade cuts logo	\N	aster	flower	 	annual	2005-06-08 14:32:28	2007-01-15 12:06:53	mgarcia	postgres	\N	plant	normal
2580	annual color 4 (Prem.C)	cascade cuts logo	\N		flower	C4PremiumC	annual	2005-06-09 08:18:44	2007-01-15 12:06:59	mgarcia	postgres	\N	plant	normal
2616	ranunculus pratolino assorted	cascade cuts logo	\N	pratolino	flower	pratolino	annual	2005-09-23 08:47:59	2007-01-15 12:07:09	mgarcia	mgarcia	\N	asst	none
2641	zonal geranium 	cascade cuts logo	\N	\N	flower	G46Zonal	annual	2005-10-07 10:26:06	2007-01-15 12:07:42	mgarcia	mgarcia	\N	tag	price_group
2724	propagation tags	cascade cuts logo	\N	\N	herb	\N	perennial	2005-10-24 15:01:22	2007-01-15 12:08:20	mgarcia	mgarcia	\N	plant	normal
2855	annual color 4 (Prem F)	cascade cuts logo	\N	C4PremiumF	flower	C4PremiumF	annual	2006-01-03 10:58:52	2007-01-15 12:08:28	mgarcia	mgarcia	\N	tag	price_group
2853	circle of life 6B	cascade cuts logo	\N	circle of life	flower	CL6B	annual	2005-12-14 15:44:51	2007-01-15 12:08:33	mgarcia	mgarcia	\N	tag	price_group
3084	hellebore argutifolius silver lace	hellebore	argutifolius	silver lace	flower	\N	perennial	2007-04-17 10:52:25	2007-05-08 16:33:25	mgarcia	mgarcia	\N	plant	normal
1565	verbascum helen johnson	verbascum	\N	helen johnson	flower	\N	perennial	2004-01-01 00:00:00	2007-05-23 14:31:35	mgarcia	postgres	\N	plant	normal
3082	asian green summer jean	brassica rapa	\N	summer jean	herb	\N	annual	2007-04-10 09:47:41	2007-04-10 12:11:07	mgarcia	mgarcia	\N	plant	normal
3085	tomato better boy	tomato	\N	better boy	herb	\N	annual	2007-04-17 16:30:41	2007-04-17 16:36:07	mgarcia	mgarcia	\N	plant	normal
3090	hellebore honeyhill	helleborus	\N	honeyhill	flower	\N	perennial	2007-06-06 13:54:29	2007-06-06 13:57:07	mgarcia	mgarcia	\N	plant	normal
2984	tomato celebrity hybrid	tomato	\N	celebrity hybrid	herb	\N	annual	2006-11-06 13:04:28	2007-04-03 08:44:40	mgarcia	mgarcia	\N	plant	normal
2985	tomato persimmon orange	tomato	\N	persimmon orange	herb	\N	annual	2006-11-06 13:05:48	2007-04-03 08:44:56	mgarcia	mgarcia	\N	plant	normal
2986	tomato legend	tomato 	\N	legend	herb	\N	annual	2006-11-06 13:07:09	2007-04-03 08:45:19	mgarcia	mgarcia	\N	plant	normal
2987	tomato yellow pear	tomato	\N	yellow pear	herb	\N	annual	2006-11-06 13:08:31	2007-04-03 08:45:43	mgarcia	mgarcia	\N	plant	normal
2975	tomato early girl	tomato	\N	early girl	herb	\N	annual	2006-11-06 12:48:19	2007-04-03 08:46:14	mgarcia	mgarcia	\N	plant	normal
2976	tomato window box	tomato	\N	roma window box	herb	\N	annual	2006-11-06 12:50:47	2007-04-03 08:46:23	mgarcia	mgarcia	\N	plant	normal
2977	tomato sweet 100's	tomato	\N	sweet 100's	herb	\N	annual	2006-11-06 12:52:04	2007-04-03 08:46:37	mgarcia	mgarcia	\N	plant	normal
2978	tomato patio picnic	tomato	\N	patio picnic	herb	\N	annual	2006-11-06 12:54:47	2007-04-03 08:47:02	mgarcia	mgarcia	\N	plant	normal
3080	tomato super fantastic	tomato	\N	super fantastic	herb	\N	annual	2007-04-03 09:06:42	\N	\N	mgarcia	\N	plant	normal
2770	marigold sweet cream	tagetes	\N	sweet cream	flower	\N	annual	2005-11-16 08:06:01	2007-04-03 13:01:00	mgarcia	mgarcia	\N	plant	normal
3081	zinnia benary's giant crimsom	zinnia	\N	giant crimson	flower	\N	annual	2007-04-03 16:04:10	\N	\N	mgarcia	\N	plant	normal
8	agastache heather queen	agastache	cana	mint	flower		perennial	2004-01-01 00:00:00	2007-12-20 16:04:02	postgres	postgres	\N	plant	normal
3137	test				flower		perennial	2008-01-13 12:44:50	\N	\N	postgres		asst	none
3139	test				flower		perennial	2008-01-13 16:00:32	\N	\N	postgres		plant	normal
585	lovage black	smyrnium	olusatrum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1959	scaevola whirlwind	scaevola	\N	whirlwind	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
179	mole plant	euphorbia	lathyris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
295	lion's tail	leonotis	leonurus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2042	lavender gros bleu	lavandula	\N	\N	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2243	amaryllis jade serpent	hippeastrum	\N	jade serpent	flower	mini	unknown	2004-07-08 16:16:47	2008-02-02 15:14:17	aklaver	postgres	green	plant	fall_bulb
2244	amaryllis little angel	hippeastrum	\N	little angel	flower	mini	unknown	2004-07-08 16:19:03	2008-02-02 15:14:17	aklaver	postgres	white	plant	fall_bulb
2245	amaryllis peach blossom	hippeastrum	\N	peach blossom	flower	mini	unknown	2004-07-08 16:21:41	2008-02-02 15:14:17	aklaver	postgres	blushed peach	plant	fall_bulb
2246	amaryllis bright star	hippeastrum	\N	bright star	flower	mini	unknown	2004-07-08 16:23:51	2008-02-02 15:14:17	aklaver	postgres	creamy yellow	plant	fall_bulb
2439	coleus kong rose	solenostemon	\N	kong rose	flower	circle of life	unknown	2005-01-12 13:14:16	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2901	beet bull's blood	beta	vulgaris	bull's blood	herb	veggies	unknown	2006-05-24 08:25:36	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2545	reindeer	reindeer 	\N	\N	flower	\N	unknown	2005-05-19 15:35:31	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2625	sage golden delicious pineapple	salvia	elegans	golden delicious pineapple	herb	\N	unknown	2005-09-29 15:17:14	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2961	geranium scented greengene green lime	pelargonium	\N	greengene green lime	herb	\N	unknown	2006-09-25 12:53:41	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2962	geranium scented variegated nutmeg	pelargonium	\N	variegated nutmeg	herb	\N	unknown	2006-09-25 13:13:20	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2963	geranium scented golden clorinda	pelargonium	\N	golden clorinda	herb	\N	unknown	2006-09-25 13:14:48	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2964	geranium scented phyllis	pelargonium	\N	scented phyllis	herb	\N	unknown	2006-09-25 13:16:10	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2965	geranium scented laura bounty	pelargonium	\N	laura bounty	herb	\N	unknown	2006-09-25 13:17:21	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2966	basil pesto perpetuo	ocimum	\N	pesto perpetuo	herb	\N	unknown	2006-09-25 13:25:54	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
532	sage honey melon	salvia	elegans	honey melon 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
9	agastache mosquito plant	agastache	cana	mint	herb		unknown	2004-01-01 00:00:00	2008-02-10 14:02:36	postgres	postgres	\N	plant	normal
3149	test2				flower		perennial	0001-01-01 00:00:00	2008-08-09 14:15:22	aklaver			plant	normal
6	agastache camphor hyssop	agastache		camphor hyssop	herb		unknown	2004-01-01 00:00:00	2008-01-30 10:01:20	aklaver	postgres	\N	plant	normal
7	agastache apricot sunrise	agastache	\N	apricot sunrise	herb		unknown	2004-01-01 00:00:00	2008-01-30 10:01:20	aklaver	postgres	\N	plant	normal
5	licorice	acorus	gramineus	orborzuki	flower		unknown	2004-01-01 00:00:00	2008-01-30 10:01:20	aklaver	postgres	\N	plant	normal
3	yarrow proa	achillea	millefolium		flower		perennial	2004-01-01 00:00:00	2008-01-30 11:32:53	postgres	postgres	\N	plant	normal
326	mint chewing gum	mentha	sp	chewing gum	herb		unknown	2004-01-01 00:00:00	2008-02-13 16:21:25	postgres	postgres	\N	plant	normal
2	chenile	acalypha	hispida	chenile	herb		\N	2004-01-01 00:00:00	2008-02-15 18:22:13	aklaver	postgres	\N	plant	normal
3154	test dabo				flower		perennial	2008-02-02 14:25:21	2008-08-09 14:15:22	aklaver	postgres		plant	normal
3153	dabo test plant				flower		perennial	2008-02-02 14:15:47	2008-08-09 14:15:22	aklaver	postgres		plant	normal
3152	cat nip supreme				flower		perennial	2008-02-02 14:15:07	2008-08-09 14:15:22	aklaver	postgres		plant	normal
10	agastache licorice mint(purple)	agastache	foeniculum	anise hyssop	herb	t	unknown	2004-01-01 00:00:00	2008-02-01 19:19:34	postgres	postgres	\N	plant	normal
1	abutilon ghost bramble	abutilon	vitifolium		flower		annual	2004-01-01 00:00:00	2008-12-15 14:09:54	postgres	postgres	\N	plant	normal
2163	thyme silver lemon	thymus	\N	silver lemon	herb	\N	unknown	2004-04-21 08:58:24	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
652	vetiver	vetiver			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
240	bay laurel golden sweet	laurus	nobilis	aurea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
3086	tomato mama mia roma	tomato	\N	mama mia roma	herb	\N	unknown	2007-04-17 16:32:06	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2162	oregano variegated	origanum 	\N	variegated	herb	\N	unknown	2004-04-21 08:56:06	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1727	herb 2.5 (Reg. A)	cascade cuts logo	\N	\N	herb	HRRegA	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	price_group
1728	H PREM 2.5 (Prem. A)	cascade cuts logo	\N	\N	herb	HP2PremA	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	price_group
1729	herb 3.5 (Reg. A)	cascade cuts logo	\N	\N	herb	HR3RegA	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	price_group
1730	herb gallon (Reg. A)	cascade cuts logo	\N	\N	herb	HGRegularA	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	price_group
1731	3.5" scented geranium	cascade cuts logo	\N	\N	herb	GS4RegA	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	price_group
2080	3.5 in bulbs misc	cascade cuts logo	\N	\N	flower	BMRegularA	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	price_group
2146	lavender edelweiss	lavandula	x intermedia	edelweiss	herb	\N	unknown	2004-04-08 13:25:45	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1743	spring garden	cascade cuts logo	\N	\N	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	regular
2084	bulb garden white washed basket	cascade cuts logo	\N	\N	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	tag	regular
2160	oregano best gold	origanum	\N	best gold	herb	\N	unknown	2004-04-21 08:53:50	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
336	mint swiss ricola	mentha	x  piperita	swiss ricola 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
479	australian bush mint	prostanthera	rotundifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2541	thyme tabor elizabeth	thymus	\N	tabor elizabeth	herb	\N	unknown	2005-05-19 09:22:51	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
322	mint egyptian	mentha	niliacea	egyptian	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
323	mint pennyroyal english	mentha	pulegium	pennyroyal english	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
324	mint corsican	mentha	requienii	corsican	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
325	mint apple	mentha	suaveolens	apple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
331	mint peppermint moroccan	mentha	x  piperita	moroccan 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
332	mint chocolate	mentha	x  piperita	chocolate 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
333	mint lime	mentha	x  piperita	lime 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
334	mint orange	mentha	x aquatica	orange 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2392	basil magic mountain	ocimum	\N	magic mountain	herb	\N	unknown	2004-12-07 13:32:26	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
53	chervil	anthriscus	cerefolium	chervil	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
132	mitsuba parsley	cryptotaenia	japonica	mitsuba	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2276	geranium scented ginger	pelargonium 	torento	ginger	herb	\N	unknown	2004-09-21 11:46:21	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
529	sage discolor peruvian	salvia	discolor	peruvian	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
192	sweet woodruff	galium	odoratum	sweet woodruft	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
261	lavender french lambikins	lavandula	dentata	french lambikins	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
43	dill bouquet	anetheum	graveolens	bouquet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
44	dill fernleaf	anetheum	graveolens	fernleaf	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
52	chervil raven's wing	anthriscus		raven's wing	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2414	city basket	city basket	\N	basket	flower	\N	unknown	2004-12-23 07:50:09	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1465	heuchera can can	heuchera	\N	can can	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
783	oregano santa cruz	origanum	\N	santa cruz	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
784	oregano hot&spicy	origanum	\N	hot & spicy	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
642	triticum wheat grass	triticum		wheat grass	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
771	australian bush mint camphorous aussie	prostanthera	dentata	camphorous aussie 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
46	angelica	angelica	archangelica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
698	feverfew golden	chrysanthemum	parthenium 'aureum'	golden	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2031	pepper hot thai	capiscum	\N	hot thai	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2030	basil thai magic	ocimum	\N	thai magic	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
23	lady's mantle thriller	alchemilla	mollis	lady's mantle thriller	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
36	aloe cape	aloe	ferox		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
32	chives	allium		chives	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2543	mint moroccan spearmint	mentha	\N	moroccan spearmint	herb	\N	unknown	2005-05-19 09:31:13	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
244	lavender english	lavandula	angustifolia	english	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
735	lavender baby blue	lavandula	angustifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
273	lavender atlas	lavandula	stoechas	atlas	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
274	lavender blue star	lavandula	stoechas	blue star	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
241	lavender bowles	lavandula	angustifolia	bowles	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
259	lavender cascade velvet	lavandula	intermedia	cascade velvet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
34	chives garlic	allium	tuberosum	chives garlic	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
781	lavender devonshire compact	lavandula	stoechas	devonshire compact	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
257	lavender dutch extra	lavandula	intermedia	dutch extra	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
164	arugula rocket	eruca	sativa	arugula	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
25	garlic silver rose early italian purple	allium	sativum	silver rose early italian purple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
496	rosemary spice island	rosmarinus	officinalis	spice island	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
507	rosemary tuscan blue	rosmarinus	officinalis	tuscan blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2016	shoofly plant splash of cream	nicandra	psallioides	splash of cream	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
31	garlic inchelium red	allium	sativum	inchelium red	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
21	alchemilla lady's mantle miniature	alchemilla	ellenbeckii	lady's mantle miniature	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
11	agastache korean mint	agastache	rugosa	mint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
12	agrimony topaz	agrimonia	odorata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
22	lady's mantle hairy	alchemilla	glaucesens	a. pubescens	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
24	alchemilla erythropoda	alchemilla	erythropoda	lady's mantle	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
743	lavender peter's pink	lavandula	stoechas	peter's pink	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
455	geranium scented old spice	pelargonium	x fragran	old spice	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
359	myrtle dwarf variegated tarentina	myrtus	communis	variegata tarentina	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
26	garlic elephant	allium	ampeloprasum	elephant	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1242	geranium picasso	pelargonium	\N	picasso	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
33	chives grolau	allium	schoenoprasm	chives grolau	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
776	geranium scented old fashioned rose	pelargonium	\N	old fashioned rose	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
744	lavender cathy blanc	lavandula	x	cathy blanc	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
711	snake gourd chinese	trichosanthus	kirilowii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
713	periwinkle madagascar	catharanthus	roseus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
358	myrtle dwarf variegated romana	myrtus	communis	variegata romana	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
632	thyme pink passion	thymus	vulgaris	pink passion	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
777	geranium scented candy dancer	pelargonium	\N	candy dancer	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1343	tulip hollywood star	\N	\N	hollywood star	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	fall_bulb
65	artemisia sweet annie	artemisia	annua	sweet annie	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
643	garlic society variegated	tulbaghia	violacea	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
644	garlic society	tulbaghia	violacea	garlic society	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
76	artemisia mugwort	artemisia	vulgaris	mugwort	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
720	slippery elm	ulmus	rubra		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
719	bilberry	vaccinium	myrtillus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
647	valerian	valerian	officinalis	valerian	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
648	valerian arterner zuchtung	valerian	officinalis	arterner zuchtung	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
29	garlic italian silver	allium	sativum	italian silver	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2902	lavender thumbelina	lavandula	\N	thumbelina	herb	\N	unknown	2006-05-25 13:35:00	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
614	thyme glabrescens	thymus	glabrescens	loeyvyamus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
741	lavender ashdown forest	lavandula	angustifolia	ashdown forest	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
63	artemisia wormwood	artemisia	absinthium	wormwood	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
624	thyme pink chintz	thymus	serpyllum	pink chintz	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
625	thyme elfin	thymus	serpylum	minus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
742	lavender betty's blue	lavandula	angustifolia	betty's blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
628	thyme english	thymus	vulgaris	english	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
629	thyme english companion	thymus	vulgaris	english companion	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
630	thyme english wedgewood	thymus	vulgaris	english wedgewood	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
757	arugula sylveta	eruca		sylveta	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
774	australian bush mint alpine 	prostanthera	cuneata	alpine 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
770	santolina dwarf gray	santolina	chamaecyparissus	nana	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
786	thyme provencal	thymus	\N	provencal	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
787	thyme red creeping	thymus	\N	red creeping	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
788	thyme highland cream	thymus	\N	highland cream	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
778	geranium scented new spice	pelargonium	\N	new spice	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
730	lilac white	syringa			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
599	costmary	tanacetum	balsamita		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
600	silver tansy	tanacetum	niveum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
229	hyssop dwarf blue	hyssopus	officinalis	dwarf blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
552	wood sage crispum	teucrium	teucrium	scorodonia	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
537	sage rosebud	salvia	involucrata	rosebud 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
603	germander sweet or germander yellow	teucrium	flavum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
604	germander tree	teucrium	fruiticans	aureum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
538	sage mexican lavender flowered	salvia	leucantha	mexican lavender flowered 	flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
607	thyme archer's gold	thymus		archer's gold	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
608	thyme dot wells	thymus		dot wells	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
609	thyme lemon caraway	thymus		lemon caraway	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
610	thyme russetings	thymus		russetings	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
612	thyme tuffet	thymus		tuffet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
540	sage lyreleaf	salvia	lyrata	lyreleaf 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
545	sage berggarten	salvia	officinalis	berggarten	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
546	sage garden extrakta	salvia	officinalis	extrakta	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
548	sage dwarf	salvia	officinalis	minuta	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
549	sage red	salvia	officinalis	purpurea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
202	immortalle medium gray	helichrysum		medium gray	flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
649	verbascum artic summer	verbascum	bombyciferum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
659	maral root	leuzea	casthamoides		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
580	serissa flora pleno	serissa		flora pleno	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
119	epazote	chenopodium	ambrosoides		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
122	cohosh black	cimicifuga	racemosa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
158	echinacea white swan	echinacea	purpurea	white swan	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
159	echinops blue glow	echinops	bannaticus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
194	dyer's broom	gentista	tinctoria		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
477	coriander vietnamese	persicaria	odoratum	vietnamese	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
593	stevia	stevia	rebaudiana		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
594	grass stipa tennissima	stipa	tennissima		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
520	salix melanostachys	salix	melanostachys		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
521	sage midwest	salvia		midwest	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
230	hyssop	hyssopus	officinalis	hyssop	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
523	sage tangerine	salvia		tangerine	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
637	thyme lemon frost	thymus	x citriodorus	lemon frost	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
646	thyme white dwarf	thymus		white dwarf	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
463	sage jerusalem	phlomis	fruiticosa	jerusalem	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
465	sage woolly or dwarf jerusalem	phlomis	lanata	woolly	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
525	sage sacred white	salvia	apiana	sacred white 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
524	sage ethiopian	salvia	aetheopsis	ethiopian 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
631	thyme narrowleaf french	thymus	vulgaris	narrowleaf french	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
526	sage candelabra	salvia	interrupta	candelabra 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
527	sage blue	salvia	clevelandii	blue 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
528	sage firebrand	salvia	confertiflora	firebrand	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
530	sage sacred	salvia	divinorum	sacred 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
566	savory lemon	satureja	biflora		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
568	savory summer	satureja	hortensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
569	savory winter	satureja	montana	winter savory	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
570	savory dwarf winter	satureja	montana	nana	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
571	mint costa rican	satureja	viminea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
572	schizandra	schizandra	chinensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
573	fiber optic plant	scirpus	cernus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
574	figwort	scrophularia	nodosa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
575	skullcap mad dog	scutellaria	laterifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
576	scullcap white flowered	scuttelaria	albida		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
577	skullcap baikal	scuttelaria	baicalensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
578	moss little club	selaginella	brownii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
579	senecio new zealand groundsel	senecio	compactus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
505	rosemary gorizia	rosmarinus	officinalis	gorizia	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
506	rosemary  irene renzels	rosmarinus	officinalis	irene renzels	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
508	rosemary collingwood	rosmarinus	officinalis	collingwood ingram wood	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
509	rosemary golden rain	rosmarinus	officinalis	golden rain	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
510	rosemary santa barbara	rosmarinus	prostratus	santa barbara	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
511	rosemary  severn seas	rosmarinus	prostratus	x.severn seas	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
512	rubus aureus	rubus	cockburianus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
513	pink flower	ruellia	macrantha		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
738	chi-chi	ruellia			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
533	sage greek or faskimilo	salvia	fruiticosa	greek 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
515	sorrel red	rumex	sanquineus	ssp sanquineus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
597	comfrey variegated	symphytum	variegata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
729	lilac purple	syringa			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
554	sage tarahumara chia	salvia	tiliafolia	tarahumara chia	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2401	rosemary barbecue	rosmarinus	officianalis	barbecue	herb	circle of life	unknown	2004-12-10 08:45:15	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
739	mexican sage blue on blue	salvia	leucantha	mexican sage blue on blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
718	blue elderberry	sambucus	cearulea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
627	thyme pennsylvania dutch tea	thymus		pennsylvania dutch tea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
714	sandalwood white	santalum	album		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
557	santolina creeping gray	santolina	chamaecyparissus	creeping gray	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
633	thyme rose williams	thymus	vulgaris	rose williams	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
634	thyme orange balsam	thymus	vulgaris	orange balsam	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
636	thyme lemon	thymus	x citriodorus	lemon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
638	thyme lemon variegated	thymus	x citriodorus	lemon variegated	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
640	thyme spicy orange	thymus		spicy orange	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
485	mignonette true machet	reseda	odorata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
486	rhubarb chinese or turkey rhubarb	rheum	palmatum	tanguticum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
487	rosemary arp	rosmarinus	officinalis	arp	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
488	rosemary huntington carpet	rosmarinus	prostratus	huntington carpet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
489	rosemary ken taylor	rosmarinus	officinalis	ken taylor	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
490	rosemary hill hardy	rosmarinus	officinalis	hill hardy	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
492	rosemary blue lady	rosmarinus	prostratus	blue lady	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
494	rosemary corsicus	rosmarinus	corsicus	corsicus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
495	rosemary mrs. howard	rosmarinus	officinalis	mrs. howard	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
497	rosemary pine scented	rosmarinus	angustifolia	pine scented	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
498	rosemary red flowered	rosmarinus	officinalis	red flowered	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
499	rosemary athen's blue spire	rosmarinus	officinalis	athen's blue spire	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
500	rosemary beneden blue	rosmarinus	officinalis	beneden blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
501	rosemary blue boy	rosmarinus	prostratus	blue boy	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
502	rosemary blue spire	rosmarinus	officinalis	blue spire	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
503	rosemary bonnie jean	rosmarinus	prostratus	bonnie jean	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
504	rosemary foresteri	rosmarinus	officinalis	foresteri	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
752	lavender royal purple	lavandula	angustifolia	royal purple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
761	geranium scented lemon rose	pelargonium		lemon rose	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
765	shallot dutch yellow	allium	\N	shallot dutch yellow	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
766	shallot holland red	allium	\N	shallot holland red	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
767	night blooming cactus	epiphyllum	oxypetalum	night blooming cactus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
769	fennel romanesco	foeniculum	vulgare	romanesco	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2395	lavender kew red	lavandula	stoechas	kew red	herb	\N	unknown	2004-12-07 13:38:28	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2396	thyme snow drift	thymus	\N	snow drift	herb	\N	unknown	2004-12-07 14:38:01	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
516	sorrel true french or buckler's sorrel	rumex	scutatus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
517	rue	ruta	graveolens	rue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
518	rue jackman's blue	ruta	graveolens	jackman's blue rue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
620	gold creeping lemon thyme	thymus	praecox	gold creeping	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
641	tibouchina athens blue	tibouchina	urvilleana		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
475	polygonium kiss me over the gate	polygonium	orientale		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
476	fo-ti	polygonum	multiflorum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
722	bowles golden	millium	effusum	aureum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
732	agastache rupestris	agastache	rupestris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
481	heal all or self heal	prunella	vulgaris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
621	thyme woolly mother of	thymus	pseudolanquinosus	wolly mother of 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
558	santolina lavender cotton	santolina	chamaecyparissus	lavender cotton	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
559	santolina lavender cotton dwarf gray	santolina	chamaecyparissus	nana dwarf lavender cotton	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
531	sage fruit	salvia	dorsiana	fruit 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
415	passion flower	passiflora	caerulea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
416	passion fruit	passiflora	edulis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
417	passiflora incarnata	passiflora	incarnata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
418	peganum harmala blue syrian	peganum	harmala		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
442	geranium scented gooseberry	pelargonium	grossularioides	gooseberry	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
443	geranium scented mrs. taylor	pelargonium	ignescens	mrs. taylor	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
444	geranium scented lemon balm	pelargonium	mellissium	lemon balm	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
445	geranium scented lime	pelargonium	nervosum	lime	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
446	geranium scented apple	pelargonium	odoratissiumum	apple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
447	geranium scented almond	pelargonium	quercifolium	almond `pretty polly'	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
448	geranium scented fair ellen	pelargonium	quercifolium	fair ellen	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
449	geranium scented chocolate mint	pelargonium	quercifolium	x tomentosum chocolate mint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
450	geranium scented apricot	pelargonium	scabrum	apricot	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
705	green myrtle romana's reversion	myrtus	communis	romana's reversion	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
360	lotus sacred	nelumbo	nucifera		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
361	catnip camphor	nepeta		camphorata catnip camphor	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
622	thyme oregano	thymus	pulegiodes	oregano 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
363	catnip lemon	nepeta	cataria	ssp. citriodora	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
623	thyme lemon mother of 	thymus	pulegiodes	lemon mother of 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
365	catnip pink	nepeta		catnip pink	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
366	catmint faassenii	nepeta	x faassenii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
367	catmint mrs. edgehill	nepeta		mrs. edgehill	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1838	lavender hidcote giant (for oil)	lavandula	intermedia	hidcote giant (for oil)	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1839	lavender hidcote giant (for dried flower	lavandula	intermedia	hidcote giant (for dried flower)	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
626	thyme lavender	thymus	thracicus	lavender 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
615	thyme caraway	thymus	herba-barona	caraway 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
400	marjoram sweet	origanum	majorana	marjoram sweet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
440	geranium scented lady plymouth	pelargonium	graveolens	variegata lady plymouth	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2405	lavender chica rose	lavandula	stoechas	chica rose	herb	circle of life	unknown	2004-12-10 09:09:25	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
441	geranium scented coconut	pelargonium	grossularioides	coconut	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
401	marjoram miniature	origanum	majorana	marjoram miniature	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
402	marjoram wild	origanum	majorana	wild marjoram	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
403	oregano italian	origanum	onites	italian oregano	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
404	oregano wild greek	origanum	onites	wild greek	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
483	mint mountain	pycnantheum	muticum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
484	daisy insecticidal	pyrethrum	cinerarifolium		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
87	bouteloua	bouteloua	curtipendula		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
348	bergamot adam	lamiaceae	didyma	bee balm-scarlet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
345	bergamot blue stockings	lamiaceae	didyma	bergamot blue stockings	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
349	bergamot cambridge scarlet	lamiaceae	didyma	bee balm- scarlet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
350	bergamot gardenview scarlet	lamiaceae	didyma	bee balm-scarlet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
351	bergamot marshal's delight	lamiaceae	didyma	marshal's delight bergamot	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
352	bergamot prairie night	lamiaceae	didyma	prairie night bergamot	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
726	romamo's reversion	mrytus	communis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
299	tea tree manuka	leptospermum	scoparum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
695	garlic french brown	allium	sativum	brown	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
706	lavender folgate	lavandula	angustifolia	folgate	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
707	lavender maillette	lavandula	angustifolia	maillette	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
300	lovage	levisticum	officinale		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
301	lobelia hardy orange	lobelia	laxiflora		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
302	lomatium barestem desert parsley	lomatium	nudicale		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
534	salvia glutinosa	salvia	glutinosa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
613	thyme lime	thymus	citriodorus	lime 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
611	thyme mystery	thymus		mystery	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
237	kalanchoe `thomas jefferson'	kalanchoe	beharensis	`thomas jefferson'	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
616	thyme hairy	thymus	hirsuitus	hairy 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
617	thyme mauve	thymus	hummularius	mauve 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
618	thyme mastic	thymus	mastichiana	mastic 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
467	pokeroot	phytolacca	americana		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
468	red leaved plantain	plantago	major	`atropurpurea'	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
469	plectranthus silver	plectranthus	argentea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
470	ibosa	plectranthus	ciliatus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
471	oregano puerto rican	plectranthus		puerto rican oregano	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
472	menthol plant	plectranthus		menthol plant	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
405	oregano kent beauty	origanum	rotundifolium		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
605	germander cat thyme	teucrium	marum	cat thyme	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
407	marjoram golden creeping	origanum	vulgare	aureum crispum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
408	marjoram golden upright	origanum	vulgare	golden upright marjoram	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
409	marjoram variegated	origanum	vulgare	variegated marjoram	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
410	oregano rotkugel	origanum		rotkugel	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
701	oregano jim's best	origanum	vulgare	jim's best	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
736	origanum toumfortii	origanum	toumfortii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
411	sea onion	ornithagalum	caudatum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
412	ginseng american	panax	quinquefolius		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
413	poppy przemko	papaver	somniferum	przemko	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
414	parthenium	parthenium	integrifolium		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
436	geranium scented fern leaf	pelargonium	denticulatum	fern leaf `filicifolium'	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
437	geranium scented attar of roses	pelargonium	graveolens	attar of roses	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
438	geranium scented little gem	pelargonium	graveolens	little gem	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
168	eucalyptus baby blue	eucalyptus	globulus	baby blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
170	eucalyptus cider gum	eucalyptus	gunii	cider gum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
185	fennel sweet	foeniculum	vulgare	dulce	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
186	fennel copper	foeniculum	vulgare	copper dulce rubrum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
188	strawberry pineapple crush alpine	fragaria	vesca	pineapple crush	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1840	geranium scented lemon	pelargonium	\N	lemon	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1841	garlic killarney red	allium	sativum	killarney red	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1842	garlic german porcelain	allium	sativum	german porcelain	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1843	garlic italian late	allium	sativum	italian late	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2035	lavender abrialii	lavandula	x intermedia	abrialii	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2036	lavender sawyers	lavandula	lanata x lav. angustifolia	sawyers	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2037	lavender ana luisa	lavandula	lanata x lav. angustifolia	ana luisa	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2038	lavender cedar blue	lavandula	angustifolia	cedar blue	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2039	lavender graves	lavandula	angustifolia	graves	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2040	lavender skylark	lavandula	angustifolia	skylark	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2043	lavender nana alba	lavandula	angustifolia	\N	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
457	penstemon smallii	penstemon	smallii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
464	phlomis pink flowered	phlomis	italica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
439	geranium scented rose	pelargonium	graveolens	rose	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
393	oregano greek kaliteri	origanum		kaliteri	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
394	oregano mexican	origanum		mexican	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
395	oregano rosenkuppel	origanum		rosenkuppel	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
396	oregano zaatar	origanum		zaatar	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
397	oregano dwarf	origanum	compacta	onites nana	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
398	oregano dittany of crete	origanum	dictamnus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
712	zuta levana	micromeria	fruiticosa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
342	vine firecracker citronella	mina	lobata	firecracker vine citronella	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
343	vine firecracker	mina	lobata	firecracker vine	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
344	grass miscanthus transmorisonensis	miscanthus	transmorisonensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
751	grass miscanthus sinensis `strictus'	miscanthus	sinensis	strictus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
723	purple moor	molinia	caerulea	strahlenquelle	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
724	purple moor	molinia	caerulea	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
368	catmint six hills giant	nepeta		six hills giant	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
727	catnip variegated	nepeta		vareigata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
451	geranium scented mabel gray	pelargonium	citronellum	mabel gray	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
370	tobacco jasmine	nicotiana	alata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
372	basil new guinea	ocimum		basil new guinea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
373	basil aussie sweetie	ocimum	basilicum	aussie sweetie	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
374	basil cinnamon	ocimum	basilicum	cinnamon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
376	basil lime	ocimum	basilicum	lime	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
377	basil mrs. burn's lemon	ocimum	basilicum	mrs. burn's lemon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
378	nufar sweet basil	ocimum	basilicum	nufar	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
379	basil osmin purple	ocimum	basilicum	osmin	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
380	basil red rubin	ocimum	basilicum	red rubin	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
381	basil sweet thai	ocimum	basilicum	sweet thai	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
382	basil siam queen	ocimum	basilicum	siam queen	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
383	basil african	ocimum	canum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
384	basil tree	ocimum	gratissimum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
385	basil kilimanjaro	ocimum	kilimanscharicum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
386	basil african cinnamon	ocimum	kilimanscharicum	basilicum  african cinnamon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
387	basil african blue	ocimum	kilimanscharicum	basilicum african blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
697	basil spicy bush	ocimum	basilicum	basil spicy bush	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
388	flamingo plant	oenanthe	javonica	flamingo	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
750	rosemary mystery	rosmarinus		mystery	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
452	geranium scented peppermint	pelargonium	tomentosum	peppermint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
390	oregano barbara tingey	origanum		barbara tingey	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
391	oregano herrenhausen	origanum		herrenhausen	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
307	horehound	marrubium	vulgare	horehound	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2394	basil oman	ocimum	\N	oman	herb	\N	unknown	2004-12-07 13:34:49	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
454	geranium scented clorinda	pelargonium	x domesticum	pelargonium quercifolium clorinda	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
456	geranium scented strawberry	pelargonium	x scarboroviae	strawberry	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
190	germander tree	fruiticans	azureum	germander tree	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
522	sage richters golden	salvia		richters golden sage	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
602	germander	teucrium	chamaedrys	germander	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
187	strawberry alexandria alpine	fragaria	vesca	alexandria	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
716	dwarf siberian motherwort	leonotus	artemisia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
296	motherwort	leonurus	cardiaca		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
297	motherwort siberian	leonurus	siberica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
298	tea tree	leptospermum	laevigatum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
235	iris blue flag	iris	versicolor		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
236	orris root	iris	x germanica	florentina	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
564	santolina morning mist	santolina	rosemarinifolia	morning mist	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
238	grass blue hair	koeleria	eristata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
304	honeysuckle variegated	lonicera	nitida	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
305	honeysuckle	lonicera	periclymenum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
306	wolfberry	lycrum	barbatum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
311	melaleuca tea tree	melaleuca	alternifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
312	neem tree	melia	azadirachta		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
314	lemon balm quedlinberger niederliergende	melissa	officinalis	quedlinburger niederliegende	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
315	lemon balm golden	melissa	officianalis	golden lemon balm	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
316	lemon balm variegated	melissa	officinalis	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
82	horehound greek	ballota	pseudodictamus	greek	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
262	lavender fred boutin	lavandula	intermedia	fred boutin	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
263	lavender grappenhall	lavandula	intermedia	grappenhall	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
264	lavender grosso	lavandula	intermedia	grosso	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
267	lavender super	lavandula	intermedia	super	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
248	lavender melissa	lavandula	angustifolia	melissa	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
268	lavender silver frost	lavandula	lanata	x angustifolia	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
270	lavender fernleaf	lavandula	multifida	fernleaf	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
275	lavender james compton	lavandula	stoechas	james compton	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
276	lavender mary medalia	lavandula	stoechas	mary medalia	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
283	lavender goodwin creek	lavandula		goodwin creek	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
284	lavender lullingstone castle	lavandula	intermedia	lullingstone castle	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
289	lavender richard gray	lavandula	angustifolia	richard gray	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
327	mint spearmint	mentha	spicata	spearmint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
369	shoo fly plant	nicandra	psallioides		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
419	geranium scented juniper	pelargonium		juniper	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
420	geranium scented lemon fingerbowl	pelargonium	crispum	lemon fingerbowl	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
421	geranium scented citronella	pelargonium		citronella	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
565	santolina green	santolina	virens	green	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
340	mertensia simplicissima asiatica	mertensia	simplicissima	asiatica	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
115	chamomile roman trenegue	chamaemelum	nobile	trenegue roman chamomile	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
231	iboza riparia	iboza	riparia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
232	indigo true	indigofera	tinctora		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
121	elecampane small	inula		chinese inya	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
233	elecampane	inula	helenium		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
234	vine cardinal climber	ipomea	x multifida		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
173	eucalyptus swamp gum	eucalyptus	viminalis	swamp gum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
717	wahoo	eunonymus	atropurpureus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
175	boneset	eupatorium	perfoliatum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
204	licorice lemon	helichrysum		lemon licorice	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
392	oregano hopley's purple 	origanum		hopley's purple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
218	hops hallertauller	humulus	lupulus	hallertauller	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
219	hops saaz	humulus	lupulus	saaz	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
220	hops tettnager	humulus	lupulus	tettnager	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
221	hops willamette	humulus	lupulus	willamette	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
222	hops cascade	humulus	lupulus	cascade hops	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
223	hops golden	humulus	lupulus	aureus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
239	bay laurel sweet bay	laurus	nobilis	bay laurel	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
773	australian bush mint oval-leafed 	prostanthera	ovaliflolia	oval-leafed 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
243	lavender munstead	lavandula	angustifolia	munstead	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
245	lavender hidcote blue	lavandula	angustifolia	hidcote blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
246	lavender hidcote pink	lavandula	angustifolia	hidcote pink	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
247	lavender loddon blue	lavandula	angustifolia	loddon blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
249	lavender royal velvet	lavandula	angustifolia	royal velvet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
250	lavender sachet	lavandula	angustifolia	sachet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
251	lavender sarah	lavandula	angustifolia	sarah	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
252	lavender sharon robert's	lavandula	angustifolia	sharon robert's	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
256	lavender martha roderick	lavandula	angustifolia	martha roderick	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
258	lavender silverleaf	lavandula	angustifolia	silverleaf	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
710	devil's claw	harpogophytum	procumbens		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
733	jamaican bush mint	hedeoma	viminea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1801	basil magical michael	ocimum	basilicum	magical michael	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
562	santolina gray	santolina	neapolitana	gray	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
563	santolina gray fringed	santolina	pinnata	gray fringed	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
422	geranium scented pungent peppermint	pelargonium		pungent peppermint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
423	geranium scented joy lucille mint	pelargonium		joy lucille mint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
424	geranium scented juicy fruit	pelargonium		juicy fruit	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
425	geranium scented lilian pottinger	pelargonium		lilian pottinger	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
171	eucalyptus snow gum	eucalyptus	niphophila	snow gum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
172	eucalyptus ribbon gum	eucalyptus	viminalis	ribbon gum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1732	geranium scented orange fizz	pelargonium	\N	orange fizz	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
93	calamint	calamintha	sylvatica	ascendens	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
94	aztec dream herb	calea	zacatechichi		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
95	calendula orange	calendula	officinalis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
96	basil thyme	calmintha	nepeta		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
107	marshmarigold	caltha	palustris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
176	joe-pye weed	eupatorium	purpureum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
177	eupatorium chocolate	eupatorium	rugosum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
178	euphorbia robbiae	euphorbia	amydeloides		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
180	euphorbia martinii	euphorbia	martinii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
181	grass festuca elijah blue	festuca	glauca	elijah blue	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
746	grass festuca amethytica	festuca	amethytica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
747	grass festuca glauca	festuca	glauca		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
182	bodhi tree	ficus	religiosa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
183	dropwort	filipendula	vulgaris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
184	flax cascade fiber	flax	vulgaris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
127	cilantro jantar	coriandrum	sativum	jantar	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
128	cilantro santo	coriandrum	sativum	santo	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
462	parsley italian	petroselium	sativum	italian	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
189	strawberry yellow wonder	fragaria	vesca	yellow wonder	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
191	fuschia midi	fuschia	pumila		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
514	sorrel garden	rumex	acetosa	garden	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
556	salad burnet	sanquisorba	minor	burnet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
709	gentian yellow	gentiana	lutea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
560	santolina dwarf green	santolina	ericoides	dwarf green	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
155	echinacea coneflower  purple	echinacea	purpurea	purple coneflower	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
166	eucalyptus silver dollar	eucalyptus	cinerea	silver dollar	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
167	eucalyptus lemon	eucalyptus	citriodora	lemon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
561	santolina lemon queen	santolina	incana	lemon queen	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
109	cedronella	cedronella	canariensis	triphylla	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
228	goldenseal	hydrasris	canadensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
224	gotu kola	hydrocotyle	asiatica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
225	hypericum summer gold	hypericum		summer gold	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
226	hypericum spotted st. john wort	hypericum	punctatum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
227	st. john wort tricolor variegated	hypericum	moserianum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
114	chamomile single petaled roman	chamaemelum	nobile	roman chamomile single petaled	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
588	toothache plant	spilanthus	aomella		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
97	camillea sinensis tea	camillea	sinensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
98	caper bush	capparis	spinosus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
99	pepper african bird	capsicum	annuum	african bird	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
101	vine love in a puff	cardiospermum			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
102	grass carex buchanii	carex	buchanii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
103	grass carex red fox	carex	buchanii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
104	grass carex bronze form	carex	comans		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
105	grass carex folliculata	carex	folliculata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
106	grass carex morning star sedge	carex	grayii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
108	cohosh blue	caulopyllum x	palustris		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
201	ginger kahili	hedychium	gardneranum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
110	celsia roripifolia	celsia	roripifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
111	centaurea depressa bob's awesome	centaurea	depressa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
112	ceratonia carob(st. john's bread)	ceratonia	sitiqua		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
203	strawflower dargon hill	helichrysum		dargon hill	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
210	rupturewort	herniare	glabra		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
116	chasmanthum latifolium	chasmanthum	latifolium		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
426	geranium scented paula's lemon rose	pelargonium		paula's lemon rose	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
427	geranium scented pine	pelargonium		pine	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
428	geranium scented rose of bengal	pelargonium		rose of bengal	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
430	geranium scented spring park	pelargonium		spring park	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
431	geranium scented filbert	pelargonium	capitatum	filbert `schottesham pet'	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
432	geranium scented orange	pelargonium	citriodorum	orange	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
433	geranium scented cinnamon	pelargonium	crispum	cinnamon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
434	geranium scented french lace	pelargonium	crispum	french lace	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
435	geranium scented prince rupert's lemon	pelargonium	crispum	prince rupert's lemon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
30	garlic nootka rose	allium	sativum	nootka rose	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2408	lavender coco pink dark 	lavandula	stoechas	coco pink dark	herb	circle of life	unknown	2004-12-10 09:18:24	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
161	cardamon	elletaria	cardamomum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
162	elsholtzia	elsholtzia	stauntonii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
163	mormon tea	ephedra	viridis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
169	eucalyptus blue gum	eucalyptus	globulus	blue gum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
592	betony wood	labiatae	stachys officinalis	bishop's wort	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
591	betony woolly	lamiaceae	stachys lanata	lamb's ears	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
595	strobilanthes dyerianus	strobilanthes	dyerianus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
645	coltsfoot	tussilago	farfara		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
37	verbena lemon	aloysia	triphylla	lemon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2404	lavender chica purple	lavandula	stoechas	chica purple	herb	circle of life	unknown	2004-12-10 09:06:01	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
658	primula goldkornsamen	primula			flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
748	grass hakonechloe macra	hakonechloe	macra	aurea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
137	cyperus umbrella sedge	cyperus	alternifolius		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
138	datura white flowered	datura	meteloides	pure white	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
139	datura double yellow flowered	datura	meteloides	double yellow flowered	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
346	mint lemon	monarda	citriodora	lemon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
364	catmint blue wonder	nepeta	mussinii	blue wonder	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1060	helianthemum ben nevis	helianthemum	\N	ben nevis	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
355	sweet cicely	myrrhis	odorata	sweet cicely	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
362	catnip	nepeta	cataria	catnip	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
399	oregano greek	origanum	heracleoticum	greek	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
213	coriander japanese	houtynnia	cordata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
214	hops boulin	humulus	lupulus	boulin	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
215	hops mt hood	humulus	lupulus	mt hood	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
461	parsley curly	petroselium	crispum	curly	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
55	horseradish	armoracia	rustica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
67	artemisia french tarragon	artemisia	dracunculus	french tarragon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
84	swiss chard bright light	beta	vulgaris		herb	veggies	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
92	calamint variegated	calamintha	grandiflora	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
217	hops chinook	humulus	lupulus	chinook	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
100	pepper thai dragon	capsicum	annuum	thai dragon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
85	ramie or chinese silk plant	boehmeria	nivea		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
88	brugmansia white moonflower	brugmansia	suaveolens	white moonflower	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
89	brugmansia pink flower	brugmansia	insignis	pink flower moonflower	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
90	brugmansia sun ray yellow flower	brugmansia	insignis	sun ray yellow moonflower	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
91	buplerum falcatum	buplerum	falcatum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
120	ambrosia	chenopodium	botrys		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
212	grass sweet	hierochloe	odorata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
208	curry plant	helichrysum	plicatum	curry plant	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
124	codonopsis poor man's ginseng	codonopsis	pilosula		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
292	lavatera pink frills	lavatera		pink frills	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
131	brass buttons	cotula	squalida		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
293	lavatera shorty	lavatera		shorty	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
133	elfin herb	cuphea	hyssopifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
474	mexican bush oregano	poliomenthe	longifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
357	myrtle dwarf sweet	myrtus	communis	microphylla 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
61	southernwood lemon	artemisia	abrotanum	limoneum	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
140	datura white	datura	meteloides	white	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
141	datura moonflower	datura	inoxia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
142	grass deschampsia bronzeschleier	deschampsia	caespitosa	bronzeschleier	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2403	lavender chica pink light	lavandula 	stoechas	chica pink light	herb	circle of life	unknown	2004-12-10 08:51:39	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
855	zinnia dreamland yellow	zinnia	\N	yellow	flower	dreamland	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
143	grass deschampsia northern lights	deschampsia	caespitosa	northern lights	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
144	dianthus baths double red	dianthus		baths double red	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
146	dianthus inchmery	dianthus		inchmery	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
147	dianthus sops in wine	dianthus		sops in wine	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
148	dianthus cinnamon pink	dianthus	gratianapolitanus	cinnamon pink	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2406	lavender chica white	lavandula	stoechas	chica white	herb	\N	unknown	2004-12-10 09:12:16	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
149	gas plant	dictamus	albus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
151	dodecatheon rotlich	dodecatheon	tetrandum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
152	coneflower narrow-leaf purple	echinacea	angustifolia	narrowleaf echinacea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
153	coneflower pale purple coneflower	echinacea	pallida	pale purple echinacea	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
154	coneflower yellow	echinacea	paradoxa	yellow coneflower	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
156	echinacea bravado	echinacea	purpurea	bravado	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
15	hollyhock single yellow	alcea	rosea		flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
473	patchouli	pogostemon	patchouli	patchouli	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
482	pomegranate mini	punica	granatum	mini	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
335	mint peppermint corvalis	mentha	x  piperita	corvalis peppermint	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
347	bergamot snow white	lamiaceae	didyma	bee balm-white	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
715	alkanet true	alkanna	tinctora		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
655	violet nana's sweet	viola	odorata	nana's sweet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
57	arnica american	arnica	chamissonis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
58	arnica european	arnica	montana		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
60	southernwood artemisia	artemisia	abrotanum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
639	thyme gold lemon variegated	thymus		gold lemon variegated	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
62	tangerine southernwood	artemisia	abrotanum	tangerine southernwood	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
581	serissa cherry blossom	serissa		cherry blossom	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
582	serissa white swan	serissa		white swan	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
66	artemisia camphor wormwood	artemisia	camphorata	camphor scented	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
583	thistle milk	silybum	marianum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
586	sweet goldenrod	solidago	odorata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
68	artemisia guizho	artemisia	lactiflora	guizho	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2407	lavender coco blue white	lavandula 	stoechas	coco blue white	herb	\N	unknown	2004-12-10 09:14:24	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
69	artemisia ambrosia	artemisia	ludoviciana	ambrosia	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
70	artemisia doreen's	artemisia	ludoviciana	doreen's	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
584	smilex florists	smilex	asperagoides		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
779	lavender silver edge	lavandula	\N	silver edge	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres		plant	normal
72	artemisia silver queen	artemisia	ludoviciana	albula	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
73	artemisia roman wormwood	artemisia	pontica	roman wormwood	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
75	artemisia valerie finnis	artemisia	ludoviciana	valerie finnis	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
77	pleurisy root	asclepias	tuberosa	pleurisy root	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
78	astralagus or milk vetch	astragalus	membranaceous	astralagus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
79	atractylodes	atractylodes	macrocephala		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
80	orach majenta v.	atriplex	hortensis	orach majenta v.	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
81	brahmi or true bacopa	bacopa	monniera	brahmi or true bacopa	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
303	lonicera baggesen's gold	lonicera	nitida	baggesen's gold	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
745	ballota variegata	ballota		variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2433	impatiens fusion infra red	impatiens	\N	fusion infra red	flower	circle of life	unknown	2005-01-12 13:01:44	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
83	indigo wild blue	baptisia	australis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2398	micromeria fruiticosa	micromeria	fruiticosa		herb	\N	unknown	2004-12-07 14:39:13	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
356	myrtle biblical 	myrtus	boeticus	biblical	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
117	celandine	chelidonium	majus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
211	hibiscus african	hibiscus	acetocella		flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
702	echinacea cygnet white	echinacea	purpurea	cygnet white	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1991	geranium scented sweet mimosa	pelargonium	\N	sweet mimosa	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2410	lavender coco purple	lavandula 	stoechas	coco purple	herb	circle of life	unknown	2004-12-10 09:20:41	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
42	amelanchier alnifolia	amelanchier	alnifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
47	anglica korean	angelica	gigas		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
48	angelica dong quai	angelica	sinensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
193	gentian tibetian	gentiana	tibetica		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
197	licorice european	glycorrhiza	glabra		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
198	licorice chinese licorice	glycorrhiza	uralensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
199	russian licorice	glycorrhiza	echinata	russian licorice	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
200	gumplant	grindelia	integrifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
209	curry tiny leaf 	helichrysum	plicatum	nana	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
353	bergamot scorpian	lamiaceae	didyma	scorpian bergamot	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
38	marshmallow	althea	officinalis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
39	amaranthus love lies bleeding green tail	amaranthus	caudatus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
49	mallow african tree	anisdonthea	hypomandara		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
51	vanilla grass or sweet vanilla grass	anthoxanthum	odoratum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
725	crepe myrtle	myrtus		crepe	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
40	amaranthus hopi red dye	amaranthus	cruentus	a. powellii	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
54	elephant nervosa	argyreia	speciosa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
45	dill weed	anetheum	graveolens		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
56	horseradish variegated	armoracia	varigata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
653		vinidium	fastuosum		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
654	violet tazmanian	viola	hederacea	tazmanian	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
35	aloe vera	aloe	barbadensis	aloe vera	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
656	chaste tree mediterranean	vitex	agnus-chastus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
657	chinese vitex	vitex	negundo		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
125	coffee	coffea	arabica	coffee	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
126	coprosma beaton's gold	coprosma	kirkii	beaton's gold	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
129	cilantro or coriander	coriander	sativum	cilantro	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
319	hillary's sweet lemon sweet	mentha		lemon hillary's sweet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
150	wild yam chinese	dioscores	batatus		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
136	cardoon	cynara	cardunculus	cardoon	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
328	mint curly	mentha	spicata	crispa	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
329	mint black stemmed peppermint	mentha	piperita	nigra	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
330	mint pineapple variegated	mentha	suaveolens	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
749	lavender mystery	lavandula			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
780	lavender susan belsinger	lavandula	\N	susan belsinger	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
64	artemisia lambrook's silver	artemisia	absinthium	lambrook's silver	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
294	ledobouria socialis	ledebouria	socialis	\N	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2041	lavender purple bouquet	lavandula	\N	purple bouquet	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
406	oregano pink flowered	origanum	vulgare	pink flowered 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
320	mint grapefruit	mentha	citriodora	piperita	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
321	mint ginger	mentha	gentilis	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
480	australian bush mint pink flowered 	prostanthera	nivea	pink flowered	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
458	peony chinese	peonia	oborata		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
459	perilla red	perilla	frutescens	crispa	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
491	rosemary pink flowered	rosmarinus	officinalis	pink flowered	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
389	evening primrose	oenothera	biennis	evening primrose	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
596	comfrey	symphytum	officinalle	comfrey	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
601	feverfew	tanacetum	parthenium	feverfew	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
619	thyme white moss	thymus	praecox	arcticus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
651	vervian	verbena	officinalis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2412	lavender coco rose	lavandula 	stoechas	coco rose	herb	circle of life	unknown	2004-12-10 09:23:14	2008-02-02 15:14:17	aklaver	postgres		plant	normal
785	basil italian large leaf	ocimum	\N	italian large leaf	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
27	garlic german red	allium	sativum	german red	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
28	shallots	allium	cepa		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
123	cathedral bell	cobaea	scandens		flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
375	basil sweet genovese 	ocimum	basilicum	genovese	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
338	mint blue balsam	mentha		blue balsam	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
135	lemon grass east indian	cymbopogan	flexuosus	east indian	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
337	mint eau de cologne	mentha		eau de cologne	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1802	tanacetum parthenium matricaria snowball	tanacetum	parthenium	snowball	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
760	broccoli green sprouting			green sprouting	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
260	lavender gray french	lavandula	dentata	gray french	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
86	borage	borago	officianalis	borage	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
772	australian bush mint variegated	prostanthera	rotundifolia	variegata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2274	alchemilla lady's  mantle ausleevs	alchemilla	\N	ausleevs	herb	\N	unknown	2004-09-20 14:23:29	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2275	fennel zifa fino	foeniculum	\N	zifa fino	herb	\N	unknown	2004-09-20 14:27:12	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
255	lavender twickel	lavandula	intermedia	twickel	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
174	ageratum hardy blue	eupatorium	coelestinum	floss flower	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
74	artemisia silvermound	artemisia	schmidtiana	silvermound	flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
71	artemisia silver king	artemisia	ludoviciana	albula	flower		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
254	lavender tuckers early purple	lavandula	angustifolia	tuckers early purple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
253	lavender true munstead	lavandula	angustifolia	true munstead	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
755	lavender hidcote giant	lavandula	intermedia	hidcote giant	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
134	lemon grass	cymbopogan	citratus	lemon grass	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
696	grolau chives	allium	schoemoprasm	grolau	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
265	lavender provence	lavandula	intermedia	provence	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
277	lavender wings of night	lavandula	stoechas	wings of night	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
272	lavender spanish	lavandula	stoechas	spanish	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
271	lavender white spanish	lavandula	stoechas	alba white spanish	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
269	lavender minutolii	lavandula	minutolii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1817	millet purple majesty ornamental	pennisetum	glaucum	purple majesty	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2431	impatiens fusion glow	impatiens	 	fusion glow	flower	circle of life	unknown	2005-01-12 12:56:13	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2432	impatiens fusion heat	impatiens	\N	fusion heat	flower	circle of life	unknown	2005-01-12 12:59:40	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2434	impatiens fusion radiance	impatiens	\N	fusion radiance	flower	circle of life	unknown	2005-01-12 13:03:25	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2435	impatiens fusion sunset	impatiens	\N	fusion sunset	flower	circle of life	unknown	2005-01-12 13:08:01	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2436	bacopa abunda giant white	sutera	\N	abunda giant white	flower	circle of life	unknown	2005-01-12 13:09:58	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2462	scented geranium emerald mist	pelargonium	\N	emerald mist	herb	\N	unknown	2005-02-09 09:10:13	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2463	scented geranium herbal rose	pelargonium	\N	herbal rose	herb	\N	unknown	2005-02-09 09:12:12	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2464	scented geranium nutmeg	pelargonium	\N	nutmeg	herb	\N	unknown	2005-02-09 09:14:32	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
279	lavender papillion	lavandula	stoechas	subsp penduncolata	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
278	lavender otto quast	lavandula	stoechas	otto quast	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2511	lavender madrid blue	lavandula	stoechas	madrid blue	herb	\N	unknown	2005-03-14 09:53:12	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2512	lavender stoechas purple	lavandula	stoechas	madrid purple	herb	\N	unknown	2005-03-14 09:56:51	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2513	lavender madrid pink	lavandula	stoechas	madrid pink	herb	\N	unknown	2005-03-14 09:58:45	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2514	lavender madrid white	lavandula	stoechas	madrid white	herb	\N	unknown	2005-03-14 09:59:46	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2515	lavender barcelona bridal pink	lavandula 	stoechas	barcelona bridal pinkl	herb	\N	unknown	2005-03-14 10:00:53	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2516	boxwood variegated	\N	\N	boxwood	herb	\N	unknown	2005-03-14 13:19:27	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2542	mint kentucky col. spearmint	mentha	\N	kentucky col. spearmint	herb	\N	unknown	2005-05-19 09:25:42	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2544	kissing ball	kissing ball	\N	\N	flower	\N	unknown	2005-05-19 15:23:33	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2900	beet golden	beta	vulgaris	golden 	herb	veggies	unknown	2006-05-24 08:23:35	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
1664	lavender premier	lavandula	angustifolia	premier	herb	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2563	cheiranthus charity mix	cheiranthus	\N	charity mix	flower	\N	unknown	2005-06-08 11:44:56	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
288	lavender spike	lavandula	x intermedia	spike	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2760	marjoram sweet erfo	origanum	majorana	sweet erfo	herb	\N	unknown	2005-11-15 08:13:39	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2892	thyme variegated white	thymus	citriodorus	variegata white	herb	\N	unknown	2006-02-15 16:24:43	2008-02-02 15:14:17	aklaver	mgarcia	white	plant	normal
2761	fennel leaf grosfruchtiger	foeniculum	vulgare	grosfruchtiger	herb	\N	unknown	2005-11-15 08:21:31	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
2762	lemon balm common	melissa	officinialis	common	herb	\N	unknown	2005-11-15 08:27:51	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
691	mint candy mint peppermint	mentha	piperita	candy	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
551	sage clary	salvia	sclarea	clary	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
553	sage thymoides	salvia	thymoides	thymoides	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
266	lavender old english	lavandula	intermedia	old english	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
547	sage tricolor	salvia	officinalis	tricolor	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
308	chamomile german bona	matricaria	recutita	bona	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
309	chamomile german bodegold	matricaria	recutita	bodegold	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
734	lavender england	lavandula	angustifolia		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
550	sage pineapple	salvia	rutilans	pineapple	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
242	lavender buena vista	lavandula	angustifolia	buena vista	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
287	lavender silver 	lavandula	x intermedia	silver	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
286	lavender white spike	lavandula	x intermedia	white spike	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
285	lavender sweet	lavandula	x intermedia	sweet	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
282	lavender allardii	lavandula		allardii	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
281	lavender yellow flowered	lavandula	viridis	yellow flowered	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
280	lavender willow vale	lavandula	stoechas	willow vale	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
542	sage golden	salvia	officinalis	golden 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
1570	viola mars	viola	\N	mars	flower	\N	unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
721	datura purple passion	datura			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
216	hops centennial	humulus	lupulus	centennial	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
756	lavender nana	lavandula	angustifolia	nana	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
555	black elderberry	sambucus	canadensis		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2804	garlic assorted	allium	\N	assorted	herb	assorted	unknown	2005-11-16 14:49:15	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2805	lavender assorted	allium	\N	assorted	herb	assorted	unknown	2005-11-16 14:50:45	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2806	mint assorted	mentha	\N	assorted	herb	assorted	unknown	2005-11-16 14:52:25	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2807	catmint assorted	nepeta	\N	assorted	herb	assorted	unknown	2005-11-16 14:55:35	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2808	geranim scented assorted	pelargonium	\N	assorted	herb	assorted	unknown	2005-11-16 15:18:47	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2809	hops assorted G	humulus	\N	assorted G	herb	assorted	unknown	2005-11-16 15:20:24	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2811	rosemary assorted	rosmarinus	\N	assorted	herb	assorted	unknown	2005-11-16 15:23:39	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2812	eucalyptus 4 clay assorted	eucalyptus	\N	4 clay assorted	herb	assorted	unknown	2005-11-16 15:24:53	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
2814	humulus assorted	humulus	\N	assorted	herb	assorted	unknown	2005-11-16 16:01:43	2008-02-02 15:14:17	aklaver	mgarcia	\N	asst	none
543	sage garden	salvia	officinalis	garden	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
635	thyme silver	thymus	x vulgaris	argenteus	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
567	yerba buena	satureja	douglasii		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
310	mazus	mazus			herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2249	amaryllis bellisimo 	hippeastrum	\N	bellisimo	flower	mini	unknown	2004-07-09 08:10:52	2008-02-02 15:14:17	aklaver	postgres	rose w/ white center	plant	fall_bulb
544	sage white flowered	salvia	officinalis	white flowered	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
196	ginkgo biloba maidenhair tree	ginkgo	biloba		herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
541	sage black or honey	salvia	mellifera	honey 	herb		unknown	2004-01-01 00:00:00	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
2518	herbal culinary crates/basket/clay	cascade cuts logo	\N	\N	herb	\N	unknown	2005-03-28 09:43:23	2008-02-02 15:14:17	aklaver	postgres	\N	plant	normal
3087	tomato super sweet 100	tomato	\N	super sweet 100	herb	\N	unknown	2007-04-17 16:35:50	2008-02-02 15:14:17	aklaver	mgarcia	\N	plant	normal
3145	cat_dog				flower		unknown	2008-01-14 19:21:08	2008-02-02 15:14:17	aklaver	postgres		plant	normal
3120	dog	\N	\N	\N	herb	\N	unknown	2008-01-10 11:05:50	2008-02-02 15:20:28	aklaver	postgres	\N	plant	normal
3122	catdog	\N	\N	\N	herb	\N	unknown	2008-01-10 12:10:06	2008-02-02 15:20:28	aklaver	postgres	\N	plant	normal
3123	catdog	\N	\N	\N	herb	\N	unknown	2008-01-10 12:11:56	2008-02-02 15:20:28	aklaver	postgres	\N	plant	normal
3148	test				herb		unknown	0001-01-01 00:00:00	2008-02-02 15:23:04	aklaver			plant	normal
429	geranium scented shrubland rose	pelargonium		shrubland rose	herb		unknown	2004-01-01 00:00:00	2008-02-28 15:02:44	postgres	postgres	\N	plant	normal
317	mint lavender 	mentha		lavender	herb		unknown	2004-01-01 00:00:00	2008-03-27 12:30:46	postgres	postgres	\N	plant	normal
318	mint julep 	mentha		julep 	herb		unknown	2004-01-01 00:00:00	2008-03-27 12:31:14	postgres	postgres	\N	plant	normal
690	mint banana	mentha		banana	herb		unknown	2004-01-01 00:00:00	2008-04-05 14:05:00	postgres	postgres	\N	plant	normal
3159	tabitha	feline			flower		annual	2008-02-03 09:48:33	2008-08-09 14:15:22	aklaver	postgres		plant	normal
3157	mink				flower		annual	2008-02-03 09:46:44	2008-08-09 14:15:22	aklaver	postgres		plant	normal
3156	fish				flower		annual	2008-02-03 09:15:38	2008-08-09 14:15:22	aklaver	postgres		plant	normal
3158	ranger	canine			flower		annual	2008-02-03 09:47:11	2008-08-11 19:39:15	aklaver	postgres		plant	normal
3155	test again	none			flower		perennial	2008-02-02 15:09:13	2008-08-11 19:39:29	aklaver	postgres		plant	normal
3165	test2				herb		annual	2009-03-16 11:32:55	\N	\N	postgres		plant	normal
\.


--
-- Name: p_no_pkey; Type: CONSTRAINT; Schema: public; Owner: app_admin; Tablespace: 
--

ALTER TABLE ONLY plant1
    ADD CONSTRAINT p_no_pkey PRIMARY KEY (p_item_no);


--
-- Name: common_idx; Type: INDEX; Schema: public; Owner: app_admin; Tablespace: 
--

CREATE INDEX common_idx ON plant1 USING btree (common);


--
-- Name: genus_idx; Type: INDEX; Schema: public; Owner: app_admin; Tablespace: 
--

CREATE INDEX genus_idx ON plant1 USING btree (genus);




--
-- Name: plant1_ts_update; Type: TRIGGER; Schema: public; Owner: app_admin
--

CREATE TRIGGER plant1_ts_update
    BEFORE UPDATE ON plant1
    FOR EACH ROW
    EXECUTE PROCEDURE ts_update();


--
-- Name: plant1_user_update; Type: TRIGGER; Schema: public; Owner: app_admin
--

CREATE TRIGGER plant1_user_update
    BEFORE UPDATE ON plant1
    FOR EACH ROW
    EXECUTE PROCEDURE user_update();


--
-- Name: plant1_category_fkey; Type: FK CONSTRAINT; Schema: public; Owner: app_admin
--

ALTER TABLE ONLY plant1
    ADD CONSTRAINT plant1_category_fkey FOREIGN KEY (category_type, category_sub_type) REFERENCES plant1_category(category_type, category_sub_type) ON UPDATE CASCADE;


--
-- Name: plant1; Type: ACL; Schema: public; Owner: app_admin
--

REVOKE ALL ON TABLE plant1 FROM PUBLIC;
REVOKE ALL ON TABLE plant1 FROM postgres;
GRANT ALL ON TABLE plant1 TO app_admin;
GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE plant1 TO production;


--
-- PostgreSQL database dump complete
--


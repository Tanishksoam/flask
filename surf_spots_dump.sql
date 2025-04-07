--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 14.17 (Homebrew)

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
-- Name: surf_spots; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.surf_spots (
    id integer NOT NULL,
    url character varying,
    spot_name character varying,
    latitude double precision,
    longitude double precision
);


--
-- Name: surf_spots_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.surf_spots_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: surf_spots_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.surf_spots_id_seq OWNED BY public.surf_spots.id;


--
-- Name: surf_spots id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.surf_spots ALTER COLUMN id SET DEFAULT nextval('public.surf_spots_id_seq'::regclass);


--
-- Data for Name: surf_spots; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.surf_spots (id, url, spot_name, latitude, longitude) FROM stdin;
2	https://www.wannasurf.com/spot/Europe/Ireland/North_West/ballymastocker/index.html	Ballymastocker	NaN	NaN
4	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Bloody_foreland/index.html	Bloody foreland	55.138	-8.299
5	https://www.wannasurf.com/spot/Europe/Ireland/North_West/the_peak/index.html	Bundoran	54.481117	-8.28455
6	https://www.wannasurf.com/spot/Europe/Ireland/North_West/drumncraig/index.html	Drumnacraig	NaN	NaN
7	https://www.wannasurf.com/spot/Europe/Ireland/North_West/dunmoran/index.html	Dunmoran	NaN	NaN
8	https://www.wannasurf.com/spot/Europe/Ireland/North_West/easky/index.html	Easky	54.294733	-8.95815
9	https://www.wannasurf.com/spot/Europe/Ireland/North_West/easky_right/index.html	Easky right	54.2953	-8.949967
10	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Falcarragh_Beach_Co_Donegal/index.html	Falcarragh Beach	55.169083	-8.098583
11	https://www.wannasurf.com/spot/Europe/Ireland/North_West/inishcrone/index.html	Inishcrone	54.208233	-9.107667
12	https://www.wannasurf.com/spot/Europe/Ireland/North_West/kilcummin/index.html	Kilcummin	54.292183	-9.235383
13	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Lislary/index.html	Lislary	54.3861	-8.598983
14	https://www.wannasurf.com/spot/Europe/Ireland/North_West/lochross_point/index.html	Loughros point	54.789617	-8.51295
15	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Maghera_beach/index.html	Maghera beach	54.768817	-8.539817
16	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Magheroarty_beach/index.html	Magheroarty beach	55.1547	-8.152117
17	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Magheroarty_reef/index.html	Magheroarty reef	55.147733	-8.176917
18	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Muckros/index.html	Muckros	54.616283	-8.584867
19	https://www.wannasurf.com/spot/Europe/Ireland/North_West/mullaghmore/index.html	Mullaghmore	54.468633	-8.444533
20	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Pampa/index.html	Pampa	54.479433	-8.312917
21	https://www.wannasurf.com/spot/Europe/Ireland/North_West/rossnowlagh/index.html	Rossnowlagh	54.544983	-8.2315
22	https://www.wannasurf.com/spot/Europe/Ireland/North_West/strandhill/index.html	Strandhill	54.269483	-8.61045
23	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Tullaghan_left/index.html	Tullaghan left	54.47205	-8.342667
24	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Tullaghan_right/index.html	Tullaghan right	54.474367	-8.332833
25	https://www.wannasurf.com/spot/Europe/Ireland/North_West/tullan_strand/index.html	Tullan Strand	54.50095	-8.268933
26	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Ardkeragh/index.html	Ardkeragh	51.803333	-10.175633
27	https://www.wannasurf.com/spot/Europe/Ireland/South_West/ballinskelligs/index.html	Ballinskelligs	51.841583	-10.217117
28	https://www.wannasurf.com/spot/Europe/Ireland/South_West/ballybunion/index.html	Ballybunion	52.513817	-9.677083
29	https://www.wannasurf.com/spot/Europe/Ireland/South_West/ballyheigue_ireland_southwest/index.html	ballyheigue ireland southwest	52.3876	-9.836533
30	https://www.wannasurf.com/spot/Europe/Ireland/South_West/banna_strand_-_sandy_lane/index.html	Banna Strand	52.346317	-9.835383
31	https://www.wannasurf.com/spot/Europe/Ireland/South_West/barley_cove/index.html	Barley Cove	51.468667	-9.77525
32	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Baslicon/index.html	Baslicon	51.807583	-10.1786
33	https://www.wannasurf.com/spot/Europe/Ireland/South_West/beale/index.html	Beale	52.578333	-9.629517
34	https://www.wannasurf.com/spot/Europe/Ireland/South_West/brandon_bay/index.html	Brandon Bay	52.289417	-10.032767
35	https://www.wannasurf.com/spot/Europe/Ireland/South_West/coumeenole/index.html	Coumeenole	52.107933	-10.466717
36	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Do_More_reefs/index.html	Do More reefs	51.544633	-9.08535
37	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Donomore_Reefs/index.html	Donomore Reefs	51.590833	-8.8016
38	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Dunworley/index.html	Dunworley	51.581867	-8.751983
39	https://www.wannasurf.com/spot/Europe/Ireland/South_West/fennels_bay/index.html	Fennels Bay	51.785817	-8.290517
40	https://www.wannasurf.com/spot/Europe/Ireland/South_West/fennels_bay_reef/index.html	Fennels Bay Reef	51.786117	-8.287233
388	https://www.wannasurf.com/spot/North_America/USA/North_West/Oregon_South/index.html	Oregon South	NaN	NaN
41	https://www.wannasurf.com/spot/Europe/Ireland/South_West/garretstown/index.html	Garretstown	51.64195	-8.577583
42	https://www.wannasurf.com/spot/Europe/Ireland/South_West/garywilliam_point/index.html	Gary William Point	52.30825	-10.06
54	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Sherkin_Island/index.html	Sherkin Island	51.471383	-9.422233
43	https://www.wannasurf.com/spot/Europe/Ireland/South_West/inch/index.html	Inch (Cork Area)	51.793217	-8.182367
44	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Inch_Reef/index.html	Inch Reef	52.12065	-10.20585
45	https://www.wannasurf.com/spot/Europe/Ireland/South_West/inch_strand__kerry_spot_/index.html	Inch Strand (Kerry spot)	52.1259	-9.96735
46	https://www.wannasurf.com/spot/Europe/Ireland/South_West/inchydoney/index.html	Inchydoney	51.592217	-8.8627
47	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Langer_ville/index.html	Langer ville	51.56795	-8.886217
48	https://www.wannasurf.com/spot/Europe/Ireland/South_West/long_strand/index.html	Long Strand	51.552667	-8.958833
49	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Longstrand/index.html	Longstrand	51.554017	-8.959
50	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Ownahincha/index.html	Ownahincha	51.562933	-8.993633
51	https://www.wannasurf.com/spot/Europe/Ireland/South_West/red_strand/index.html	Red Strand	51.547167	-8.926817
52	https://www.wannasurf.com/spot/Europe/Ireland/South_West/rossbeigh/index.html	Rossbeigh	NaN	NaN
53	https://www.wannasurf.com/spot/Europe/Ireland/South_West/Sandy_Bay-Maharees/index.html	Sandy Bay-Maharees	NaN	NaN
55	https://www.wannasurf.com/spot/Europe/Ireland/South_West/st_finnians_bay/index.html	St. Finnians Bay	51.845117	-10.337283
56	https://www.wannasurf.com/spot/Europe/Ireland/South_West/St_Finnnians_bay/index.html	St.Finnnians bay	NaN	NaN
57	https://www.wannasurf.com/spot/Europe/Ireland/South_West/The_old_Hatchery/index.html	The old Hatchery	51.816317	-10.1789
58	https://www.wannasurf.com/spot/Europe/Ireland/West/Aileens/index.html	Aileens	52.9841	-9.438933
59	https://www.wannasurf.com/spot/Europe/Ireland/West/Barrtrá/index.html	Barrtrá	52.916817	-9.3667
60	https://www.wannasurf.com/spot/Europe/Ireland/West/Bay_Break/index.html	Bay Break	54.2792	-8.6059
61	https://www.wannasurf.com/spot/Europe/Ireland/West/Carrowniskey/index.html	Carrowniskey	53.735317	-9.893883
62	https://www.wannasurf.com/spot/Europe/Ireland/West/Carrownisky/index.html	Carrownisky	53.72535	-9.905717
63	https://www.wannasurf.com/spot/Europe/Ireland/West/crab_island/index.html	Crab Island	53.015617	-9.415117
64	https://www.wannasurf.com/spot/Europe/Ireland/West/cream_point/index.html	Cream point	52.868717	-9.4485
65	https://www.wannasurf.com/spot/Europe/Ireland/West/doolin_point/index.html	Doolin point	53.012867	-9.4068
66	https://www.wannasurf.com/spot/Europe/Ireland/West/doonbeg_doughmore/index.html	Doonbeg castle	52.742467	-9.537483
67	https://www.wannasurf.com/spot/Europe/Ireland/West/doonloughin/index.html	Doonloughin	NaN	NaN
68	https://www.wannasurf.com/spot/Europe/Ireland/West/Doughmore_Beach/index.html	Doughmore Beach	52.758117	-9.497
70	https://www.wannasurf.com/spot/Europe/Ireland/West/fanore/index.html	Fanore	53.117117	-9.257017
71	https://www.wannasurf.com/spot/Europe/Ireland/West/Gaa/index.html	Gaa	54.294933	-8.977683
73	https://www.wannasurf.com/spot/Europe/Ireland/West/keel_strand/index.html	Keel strand ,  Achill island	NaN	NaN
74	https://www.wannasurf.com/spot/Europe/Ireland/West/killadoon/index.html	Killadoon	NaN	NaN
75	https://www.wannasurf.com/spot/Europe/Ireland/West/killard/index.html	Killard	52.7478	-9.5494
76	https://www.wannasurf.com/spot/Europe/Ireland/West/lacken/index.html	Lacken	54.285667	-9.245
77	https://www.wannasurf.com/spot/Europe/Ireland/West/lahinch_beach/index.html	Lahinch beach	52.936067	-9.357683
78	https://www.wannasurf.com/spot/Europe/Ireland/West/lahich_left/index.html	Lahinch Left	52.926683	-9.352533
79	https://www.wannasurf.com/spot/Europe/Ireland/West/spanish_point_beach/index.html	Spanish Point Beach	52.838083	-9.434767
80	https://www.wannasurf.com/spot/Europe/Ireland/West/spanish_point_reefs/index.html	Spanish Point Reefs	52.8455	-9.44245
81	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/back_beach/index.html	back beach	53.481833	-6.111383
82	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/ballycastle_beach/index.html	Ballycastle Beach	NaN	NaN
83	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/Castlerock/index.html	Castlerock	55.167317	-6.7859
84	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/clogherhead/index.html	Clogherhead	53.858167	-6.242217
85	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/donabate/index.html	donabate	53.477967	-6.115883
86	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/dun_dealgan/index.html	Dun dealgan	NaN	NaN
87	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/east_strand/index.html	East Strand	55.20915	-6.642267
88	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/Finn_s_Left/index.html	Finn's Left	NaN	NaN
204	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Bobon/index.html	Bobon	6.852717	126.347067
89	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/Killiney_Bay/index.html	Killiney Bay	53.263883	-6.106517
90	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/Maghermore/index.html	Maghermore	52.95195	-6.0133
91	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/mahermore/index.html	Mahermore	NaN	NaN
92	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/portballintrae/index.html	Portballintrae	55.222517	-6.535667
93	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/Portrush/index.html	Portrush	55.205133	-6.652117
94	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/Portstewart/index.html	Portstewart	55.171617	-6.744067
95	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/tower_bay/index.html	tower bay	53.488867	-6.097383
96	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/west_strand/index.html	West Strand	55.20065	-6.656967
97	https://www.wannasurf.com/spot/Europe/Ireland/North_East_and_East/white_rocks/index.html	White Rocks	55.206517	-6.6121
98	https://www.wannasurf.com/spot/Europe/Ireland/South_East/annestown/index.html	Annestown	52.134333	-7.2829
99	https://www.wannasurf.com/spot/Europe/Ireland/South_East/bunmahon/index.html	Bunmahon	52.137883	-7.366767
137	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/ahogados/index.html	Ahogados	-33.398967	-71.701683
100	https://www.wannasurf.com/spot/Europe/Ireland/South_East/castlerock/index.html	Castlerock	NaN	NaN
101	https://www.wannasurf.com/spot/Europe/Ireland/South_East/tramore/index.html	Tramore	52.150767	-7.111933
102	https://www.wannasurf.com/spot/Europe/Ireland/South_East/White_Bay/index.html	White Bay	NaN	NaN
103	https://www.wannasurf.com/spot/Europe/Denmark/bornholm/nexo_harbour/index.html	Nexo Harbour	55.06455	15.137833
104	https://www.wannasurf.com/spot/South_America/Chile/Antofagasta/Hornito/index.html	Hornito	-22.863567	-70.296617
105	https://www.wannasurf.com/spot/South_America/Chile/Antofagasta/La_Cupula/index.html	La Cupula	-23.7166	-70.436633
106	https://www.wannasurf.com/spot/South_America/Chile/Antofagasta/Las_Chorales/index.html	Las Chorales	-23.35695	-70.59905
107	https://www.wannasurf.com/spot/South_America/Chile/Antofagasta/los_estanques/index.html	los estanques	-23.614283	-70.39205
108	https://www.wannasurf.com/spot/South_America/Chile/Antofagasta/piedra_del_lobo/index.html	piedra del lobo	-23.6244	-70.398333
109	https://www.wannasurf.com/spot/South_America/Chile/Antofagasta/Playa_Blanca/index.html	Playa Blanca	-26.2363	-70.65445
110	https://www.wannasurf.com/spot/South_America/Chile/Coquimbo/avenida_del_mar/index.html	Avenida del mar	-29.91855	-71.2767
111	https://www.wannasurf.com/spot/South_America/Chile/Coquimbo/Chigualoco/index.html	Chigualoco	-31.753517	-71.51525
112	https://www.wannasurf.com/spot/South_America/Chile/Coquimbo/Punta_Choros/index.html	Punta Choros	-29.243	-71.464817
138	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/cachagua/index.html	Cachagua	-32.588383	-71.44825
113	https://www.wannasurf.com/spot/South_America/Chile/Coquimbo/teniente/index.html	Teniente	-31.002483	-71.633517
114	https://www.wannasurf.com/spot/South_America/Chile/Coquimbo/totoralillo/index.html	Totoralillo	-30.071767	-71.376833
115	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/barrancon/index.html	Barrancon	-21.826183	-70.144033
116	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/Baul/index.html	Baul	-20.275733	-70.133033
117	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/Caleta_Vitor/index.html	Caleta Vitor	-18.749867	-70.3386
118	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/cavancha/index.html	Cavancha	-20.228567	-70.148717
119	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/colegio/index.html	Colegio	-20.225533	-70.152167
120	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/el_brazo/index.html	El Brazo	-18.479917	-70.329267
121	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/el_buey/index.html	El Buey	-18.488683	-70.329067
122	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/el_gringo/index.html	El Gringo	-18.481333	-70.33285
123	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/El_Loa/index.html	El Loa	-21.430583	-70.059883
139	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Caleta_Portales/index.html	Caleta Portales	-33.032133	-71.592717
124	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/el_rancio/index.html	El Rancio	-18.5081	-70.318283
126	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/el_tubo/index.html	El Tubo	NaN	NaN
127	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/intendencia/index.html	Intendencia	-20.218983	-70.157117
128	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/la_bestia/index.html	La Bestia	-20.234233	-70.155017
129	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/La_Cosa/index.html	La Cosa	-20.215767	-70.15935
130	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/la_isla/index.html	La Isla	NaN	NaN
131	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/Las_Machas/index.html	Las Machas	-18.452333	-70.305033
132	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/las_urracas/index.html	Las Urracas	-20.224317	-70.153
133	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/Marinero_desconocido/index.html	Marinero desconocido	-20.179783	-70.140617
134	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/mauro/index.html	Mauro	-20.226667	-70.15065
135	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/punta_1/index.html	Punta 1	-20.22735	-70.149817
136	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/punta_2/index.html	Punta 2	-20.21785	-70.158617
140	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/cap_ducal/index.html	Cap Ducal	-33.019367	-71.562367
141	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Cau-Cau/index.html	Cau-Cau	-32.709767	-71.4963
142	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/chepica/index.html	Chepica	-33.462517	-71.659617
143	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/el_claron/index.html	El Claron	-32.713817	-71.48065
144	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/el_mejoral-algarrobo/index.html	El Mejoral-Algarrobo	-33.35845	-71.671
145	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/la_derecha/index.html	El Quisco Point	-33.389767	-71.694617
146	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/infernillo/index.html	Infernillo	-34.387667	-72.023817
147	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/isla_negra/index.html	Isla Negra	-33.4456	-71.683617
148	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/la_boca/index.html	La  Boca	-32.917133	-71.51335
149	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/La_Boca_Con_Con/index.html	La Boca Con Con	-32.917833	-71.511133
150	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/la_castilla-el_tabo/index.html	La Castilla-El Tabo	-33.453117	-71.677117
390	https://www.wannasurf.com/spot/North_America/USA/North_West/Oregon_North/index.html	Oregon North	NaN	NaN
151	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/la_chilena-algarrobo/index.html	La Chilena-Algarrobo	-33.360317	-71.675283
152	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/La_cruz/index.html	La cruz	-33.483317	-71.645667
153	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/La_gotera/index.html	La Gotera	-35.90985	-72.69055
154	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/La_Marmola/index.html	La Marmola	-32.240883	-71.50995
155	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/la_pena/index.html	La Peña	-33.365533	-71.694333
156	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/la_puntilla/index.html	La Puntilla	-34.379717	-72.013317
157	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Las_Bahamas/index.html	Las Bahamas	-32.929233	-71.531867
158	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/las_cruces/index.html	Las Cruces	-33.5001	-71.624633
159	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/las_salinas/index.html	Las Salinas	-32.990067	-71.5488
160	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/las_tinajas/index.html	las tinajas	-33.357583	-71.661683
161	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/los_marineros/index.html	Los Marineros	-32.99255	-71.548733
162	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Los_Molles/index.html	Los Molles	-32.272617	-71.475333
163	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Los_Pinos/index.html	Los Pinos	-32.5978	-71.4392
164	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/maitencillo/index.html	Maitencillo	-32.6428	-71.433583
165	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/matanzas/index.html	Matanzas	-33.960867	-71.879367
166	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/negra/index.html	Negra	-32.925817	-71.52855
167	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/pancora/index.html	Pancora	-34.4351	-72.048067
168	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/papudo/index.html	Papudo	-32.503917	-71.444217
169	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Pichicuy/index.html	Pichicuy	-32.344883	-71.45385
170	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/playa_amarilla/index.html	Playa Amarilla	-32.922617	-71.525983
171	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/puertecillo/index.html	Puertecillo	-34.0871	-71.96355
172	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/punta_de_los_lobos/index.html	Punta de Lobos	-34.423733	-72.047833
173	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Punta_Docas/index.html	Punta Docas	-32.358517	-71.46045
174	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/punta_liles/index.html	Punta Liles	-32.778967	-71.539617
175	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Punta_Piedra/index.html	Punta Piedra	-32.88955	-71.516233
177	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/puntilla_sanfuentes/index.html	Puntilla Sanfuentes	-32.782817	-71.542
178	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/quintay/index.html	Quintay	-33.173783	-71.6847
179	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/renaca/index.html	Reñaca	-32.96415	-71.54825
180	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/ritoque/index.html	Ritoque	-32.829483	-71.52615
181	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/salinas_de_pullalli/index.html	Salinas de Pullalli	-32.410667	-71.41465
182	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Salinas_Spa/index.html	Salinas Spa	-32.988617	-71.547267
183	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/santo_domingo/index.html	Santo Domingo	-33.6332	-71.635583
184	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/ventana/index.html	ventana	-32.751267	-71.485383
185	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/Wave_Meka/index.html	Wave Meka	-32.918	-71.515633
186	https://www.wannasurf.com/spot/South_America/Chile/Sur/Buchupureo/index.html	Buchupureo	-36.077367	-72.798883
187	https://www.wannasurf.com/spot/South_America/Chile/Sur/carelmapu/index.html	Carelmapu	-41.737767	-73.733367
188	https://www.wannasurf.com/spot/South_America/Chile/Sur/Conchilla/index.html	Conchilla	-37.0724	-73.161317
189	https://www.wannasurf.com/spot/South_America/Chile/Sur/curanipe/index.html	Curanipe	NaN	NaN
190	https://www.wannasurf.com/spot/South_America/Chile/Sur/La_Rinconada/index.html	La Rinconada	-36.1802	-72.8176
191	https://www.wannasurf.com/spot/South_America/Chile/Sur/Las_Penas_Point/index.html	Las Peñas Point	-37.243517	-73.40845
192	https://www.wannasurf.com/spot/South_America/Chile/Sur/Lebu_beachie/index.html	Lebu beachie	-37.596967	-73.65715
193	https://www.wannasurf.com/spot/South_America/Chile/Sur/Playa_3_Peñas/index.html	Playa 3 Peñas	-35.825383	-72.6125
194	https://www.wannasurf.com/spot/South_America/Chile/Sur/Playa_Blanca/index.html	Playa Blanca	-37.071417	-73.149417
195	https://www.wannasurf.com/spot/South_America/Chile/Sur/Playa_Millaneco/index.html	Playa Millaneco	-37.577017	-73.642683
196	https://www.wannasurf.com/spot/South_America/Chile/Sur/Pucatrihue/index.html	Pucatrihue	-40.5364	-73.716733
197	https://www.wannasurf.com/spot/South_America/Chile/Sur/Purema/index.html	Purema	-36.44625	-72.890517
198	https://www.wannasurf.com/spot/South_America/Chile/Sur/Santos_del_Mar/index.html	Santos del Mar	-35.563067	-72.628133
199	https://www.wannasurf.com/spot/South_America/Chile/Sur/Tirua/index.html	Tirua	-38.339	-73.506933
200	https://www.wannasurf.com/spot/Asia/Philippines/Center_Islands/Calicoan_Island/index.html	Calicoan Island	10.946583	125.830533
201	https://www.wannasurf.com/spot/Asia/Philippines/Center_Islands/geron/index.html	geron	12.676517	124.36935
202	https://www.wannasurf.com/spot/Asia/Philippines/Center_Islands/Magasang/index.html	Magasang	12.6792	124.365233
203	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/7_rocks/index.html	7 rocks	9.244283	126.091467
205	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Che_Che_s/index.html	Che Che's	9.579083	125.76255
206	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Habag/index.html	Habag	9.244283	126.0779
207	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Hewies_Ayuki__Island/index.html	Hewies Ayuki  Island	9.394367	126.054733
208	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Joevees/index.html	Joevees	NaN	NaN
209	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Lanuza/index.html	Lanuza	9.264783	126.090083
210	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Tandag/index.html	Tandag	9.071583	126.191017
223	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/monalisa/index.html	Monalisa	NaN	NaN
211	https://www.wannasurf.com/spot/Asia/Philippines/Mindanao/Tomasitos/index.html	Tomasitos	9.298667	126.1972
212	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/Aparri/index.html	Aparri	18.36075	121.626933
213	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/bagasbas_beach/index.html	Bagasbas Beach	14.137567	122.984217
215	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/Cemento/index.html	Cemento	15.763433	121.599433
216	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/Chelsea_s_Point/index.html	Chelsea's Point	15.236183	120.01095
217	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/crystal_beach_break/index.html	Crystal Beach Break	15.014767	120.063833
218	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/d-land/index.html	D-land	NaN	NaN
219	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/elo_s_curse/index.html	ELo's curse	NaN	NaN
220	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/high_5_lahar/index.html	High 5 Lahar	15.060183	120.055333
221	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/lavini_s/index.html	Lavini's	NaN	NaN
222	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/Manila_Club_east__wave_pool_/index.html	Manila Club east (wave pool)	NaN	NaN
224	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/pagudpud/index.html	Pagudpud	18.3394	120.604617
225	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/pundakit/index.html	Pundakit	14.915817	120.06115
226	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/majestics/index.html	Pururan Bay (Majestics)	13.692183	124.3976
227	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/quirino_pier-cement_factory/index.html	Quirino Pier-Cement Factory	NaN	NaN
391	https://www.wannasurf.com/spot/North_America/USA/North_East/New_Jersey/index.html	New Jersey	NaN	NaN
228	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/sabang/index.html	Sabang	NaN	NaN
229	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/san_juan/index.html	San juan	16.65795	120.320467
230	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/twin_rocks/index.html	Twin Rocks	NaN	NaN
231	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/urbiztondo_beach/index.html	Urbiztondo Beach	16.6517	120.31535
232	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/Badjang/index.html	Badjang	9.23115	126.058333
233	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/Barrio/index.html	Barrio	NaN	NaN
234	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/boulevard/index.html	Boulevard	NaN	NaN
235	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/cemeteries/index.html	Cemeteries	9.78975	126.172033
236	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/cloud_nine/index.html	Cloud Nine	9.810567	126.168367
237	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/daku_island/index.html	Daku Island	9.745633	126.166367
250	https://www.wannasurf.com/spot/Europe/Azores/central_group/vila_nova/index.html	Baixa da Vila Nova	38.791283	-27.127517
238	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/Doot_Poktoy/index.html	Doot Poktoy	NaN	NaN
239	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/paradise/index.html	G1	9.74725	126.098933
240	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/Jacking_Horse/index.html	Jacking Horse	9.81545	126.164033
241	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/llorente/index.html	Llorente	11.410267	125.5497
242	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/Rainbows_Left/index.html	Rainbows Left	9.562667	125.93315
243	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/rock_island/index.html	Rock island	9.791783	126.170517
244	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/stimpys/index.html	Stimpy's	9.843683	126.157383
245	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/suicides_onay_beach__laoang_northern_samar_/index.html	suicides(onay beach  laoang northern samar)	NaN	NaN
246	https://www.wannasurf.com/spot/Asia/Philippines/Siargao_Islands/sulingan_beach/index.html	Sulingan beach	NaN	NaN
247	https://www.wannasurf.com/spot/Europe/Azores/western_group/faj_grande/index.html	Fajã Grande	39.450083	-31.268133
248	https://www.wannasurf.com/spot/Europe/Azores/central_group/almoxarife/index.html	Almoxarife	38.55555	-28.60865
249	https://www.wannasurf.com/spot/Europe/Azores/central_group/baia_das_quatro_ribeiras/index.html	Baia das Quatro Ribeiras	38.793067	-27.228133
392	https://www.wannasurf.com/spot/North_America/USA/North_East/Long_Island_NY/index.html	Long Island NY	NaN	NaN
251	https://www.wannasurf.com/spot/Europe/Azores/central_group/caldeira/index.html	Caldeira	38.628167	-27.927467
252	https://www.wannasurf.com/spot/Europe/Azores/central_group/Contendas/index.html	Contendas	38.6457	-27.078
253	https://www.wannasurf.com/spot/Europe/Azores/central_group/faja_dos_cubres/index.html	Faja dos Cubres	38.642933	-27.963367
254	https://www.wannasurf.com/spot/Europe/Azores/central_group/lagou/index.html	Lagoa	39.05895	-27.975683
255	https://www.wannasurf.com/spot/Europe/Azores/central_group/ponta_do_queimado/index.html	Ponta do Queimado	38.767833	-27.37475
256	https://www.wannasurf.com/spot/Europe/Azores/central_group/Ponta_Dos_Capelinhos/index.html	Ponta Dos Capelinhos	38.5977	-28.830567
257	https://www.wannasurf.com/spot/Europe/Azores/central_group/porto_martins/index.html	Porto Martins	38.676933	-27.062067
258	https://www.wannasurf.com/spot/Europe/Azores/central_group/praia_vitoria/index.html	Praia da Vitoria	38.71925	-27.060467
259	https://www.wannasurf.com/spot/Europe/Azores/central_group/praia_do_norte/index.html	Praia do Norte	38.611767	-28.758517
260	https://www.wannasurf.com/spot/Europe/Azores/central_group/punta_da_caldeira/index.html	Punta da Caldeira	NaN	NaN
261	https://www.wannasurf.com/spot/Europe/Azores/central_group/porto_da_praia/index.html	Santa Catarina	38.707283	-27.045167
262	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/anjos/index.html	Anjos	37.005417	-25.156567
263	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/areias/index.html	Areias	37.817783	-25.548533
264	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/baixa_da_viola/index.html	Baixa da Viola	37.839383	-25.368467
265	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/populo/index.html	Populo	37.749933	-25.623933
266	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/ponta_dos_mosteiros/index.html	Praia dos Mosteiros	37.888333	-25.82515
267	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/praia_formosa/index.html	Praia Formosa	36.951067	-25.098367
268	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/ribeira_grande/index.html	Praia Santa Barbara (Ribeira Grande)	37.81885	-25.544317
269	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/Praia_Santana/index.html	Praia Santana	37.8152	-25.561117
270	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/rabo_de_peixe/index.html	Rabo de Peixe	37.816817	-25.590417
271	https://www.wannasurf.com/spot/Europe/Azores/eastern_group/santa_iria/index.html	Santa Iria	37.826583	-25.47145
272	https://www.wannasurf.com/spot/Africa/Morocco/Mediterranean/La_Bokana/index.html	La Bokana	35.211267	-2.8604
273	https://www.wannasurf.com/spot/Africa/Morocco/Mediterranean/Playa_Larga_Tardi/index.html	Playa Larga Tardi	35.295317	-3.067633
274	https://www.wannasurf.com/spot/Africa/Morocco/Mediterranean/Punta_de_la_Mina/index.html	Punta de la Mina	35.404883	-2.953683
275	https://www.wannasurf.com/spot/Africa/Morocco/Mediterranean/Targha/index.html	Targha	35.385267	-4.992767
276	https://www.wannasurf.com/spot/Africa/Morocco/Mediterranean/Traffic/index.html	Traffic Point	35.396233	-3.005683
394	https://www.wannasurf.com/spot/North_America/USA/North_East/Southern_New_England/index.html	Southern New England	NaN	NaN
277	https://www.wannasurf.com/spot/Africa/Morocco/North/_no_name__near_hercules_cave/index.html	(no name) near Hercules cave	NaN	NaN
278	https://www.wannasurf.com/spot/Africa/Morocco/North/23_beach/index.html	23beach	NaN	NaN
279	https://www.wannasurf.com/spot/Africa/Morocco/North/24_beach/index.html	24 beach	NaN	NaN
280	https://www.wannasurf.com/spot/Africa/Morocco/North/Ain_Diab_Porte_15/index.html	Ain Diab Porte 15	33.583967	-7.6927
281	https://www.wannasurf.com/spot/Africa/Morocco/North/Ainsebaa_Point/index.html	Ainsebaà Point	NaN	NaN
282	https://www.wannasurf.com/spot/Africa/Morocco/North/bouznika/index.html	Bouznika	33.477267	-7.844233
283	https://www.wannasurf.com/spot/Africa/Morocco/North/briech/index.html	Briech	NaN	NaN
284	https://www.wannasurf.com/spot/Africa/Morocco/North/capsay/index.html	Capsay	NaN	NaN
285	https://www.wannasurf.com/spot/Africa/Morocco/North/chambers/index.html	Chambers	NaN	NaN
286	https://www.wannasurf.com/spot/Africa/Morocco/North/chanti/index.html	Chanti	NaN	NaN
287	https://www.wannasurf.com/spot/Africa/Morocco/North/chapeau_chinois/index.html	Chapeau Chinois	NaN	NaN
288	https://www.wannasurf.com/spot/Africa/Morocco/North/contrebandier/index.html	Contrebandier	33.922283	-6.961217
289	https://www.wannasurf.com/spot/Africa/Morocco/North/dahomey/index.html	Dahomey	NaN	NaN
290	https://www.wannasurf.com/spot/Africa/Morocco/North/DriKa/index.html	DriKa	33.162917	-8.630017
291	https://www.wannasurf.com/spot/Africa/Morocco/North/el_jadida/index.html	El Jadida	NaN	NaN
292	https://www.wannasurf.com/spot/Africa/Morocco/North/jack_beach/index.html	Jack beach	33.476417	-7.972633
293	https://www.wannasurf.com/spot/Africa/Morocco/North/killer_rocks/index.html	killer rocks	NaN	NaN
294	https://www.wannasurf.com/spot/Africa/Morocco/North/l_inter/index.html	L'inter	33.5313	-7.8172
295	https://www.wannasurf.com/spot/Africa/Morocco/North/l_intere/index.html	L'intère	NaN	NaN
296	https://www.wannasurf.com/spot/Africa/Morocco/North/l_oignon/index.html	L'Oignon	NaN	NaN
297	https://www.wannasurf.com/spot/Africa/Morocco/North/la_bobine/index.html	La Bobine	33.533883	-7.818767
298	https://www.wannasurf.com/spot/Africa/Morocco/North/lalla_fatna/index.html	Lalla fatna	32.398967	-9.26075
299	https://www.wannasurf.com/spot/Africa/Morocco/North/larache_harbormouth/index.html	Larache Harbormouth	NaN	NaN
300	https://www.wannasurf.com/spot/Africa/Morocco/North/mehdya_beach/index.html	Mehdya Beach	34.256783	-6.682783
301	https://www.wannasurf.com/spot/Africa/Morocco/North/monica_beach/index.html	Monica beach	33.711067	-7.3617
302	https://www.wannasurf.com/spot/Africa/Morocco/North/moulay_bousselham/index.html	Moulay Bousselham	34.89945	-6.288983
303	https://www.wannasurf.com/spot/Africa/Morocco/North/mulha/index.html	Mulha	NaN	NaN
304	https://www.wannasurf.com/spot/Africa/Morocco/North/nofreinds/index.html	Nofreinds	NaN	NaN
305	https://www.wannasurf.com/spot/Africa/Morocco/North/oualidia/index.html	Oualidia	32.739133	-9.039433
306	https://www.wannasurf.com/spot/Africa/Morocco/North/oubaha/index.html	Oubaha   camping mimosas	33.732333	-7.3345
307	https://www.wannasurf.com/spot/Africa/Morocco/North/oued_cherrat/index.html	Oued Cherrat	33.8296	-7.12605
308	https://www.wannasurf.com/spot/Africa/Morocco/North/paloma/index.html	Paloma	NaN	NaN
309	https://www.wannasurf.com/spot/Africa/Morocco/North/parking_11/index.html	Parking 11	NaN	NaN
310	https://www.wannasurf.com/spot/Africa/Morocco/North/pepsi/index.html	Pepsi	33.6004	-7.66905
311	https://www.wannasurf.com/spot/Africa/Morocco/North/plage_sol_-_bakacem/index.html	Plage Sol - bakacem	NaN	NaN
338	https://www.wannasurf.com/spot/Africa/Morocco/South/devils_rock/index.html	Devil's rock	30.508933	-9.68765
312	https://www.wannasurf.com/spot/Africa/Morocco/North/pont-blondin/index.html	Pont-Blondin	NaN	NaN
313	https://www.wannasurf.com/spot/Africa/Morocco/North/sablettes_beach/index.html	Sablettes beach	33.715983	-7.346767
314	https://www.wannasurf.com/spot/Africa/Morocco/North/le_jardin/index.html	Safi - Garden (Le Jardin)	32.321883	-9.255383
315	https://www.wannasurf.com/spot/Africa/Morocco/North/safi_rasslefaa/index.html	Safi RassLéfaa	NaN	NaN
316	https://www.wannasurf.com/spot/Africa/Morocco/North/sal_doura/index.html	Salé (Doura)	34.039017	-6.833233
317	https://www.wannasurf.com/spot/Africa/Morocco/North/sidi_abed/index.html	Sidi Abed	NaN	NaN
318	https://www.wannasurf.com/spot/Africa/Morocco/North/sidi_bouzid/index.html	Sidi Bouzid	NaN	NaN
319	https://www.wannasurf.com/spot/Africa/Morocco/North/Sidi_Bouzid_2eme/index.html	Sidi Bouzid 2eme	NaN	NaN
320	https://www.wannasurf.com/spot/Africa/Morocco/North/sidi_moussa/index.html	Sidi moussa	NaN	NaN
321	https://www.wannasurf.com/spot/Africa/Morocco/North/skhirat/index.html	Skhirat	33.864283	-7.069017
322	https://www.wannasurf.com/spot/Africa/Morocco/North/sekhirat_plage/index.html	Skhirat plage	33.8695	-7.05705
323	https://www.wannasurf.com/spot/Africa/Morocco/North/stah_bopuzroug/index.html	Stah bopuzroug	NaN	NaN
324	https://www.wannasurf.com/spot/Africa/Morocco/North/temara-guivil/index.html	Temara-Guivil	33.941433	-6.940267
381	https://www.wannasurf.com/spot/North_America/USA/California/San_Luis_Obispo/index.html	San Luis Obispo	NaN	NaN
325	https://www.wannasurf.com/spot/Africa/Morocco/North/the_grave/index.html	The Grave	NaN	NaN
326	https://www.wannasurf.com/spot/Africa/Morocco/North/yasmina/index.html	Yasmina	NaN	NaN
327	https://www.wannasurf.com/spot/Africa/Morocco/South/14th_km/index.html	14th km.	30.506117	-9.6859
328	https://www.wannasurf.com/spot/Africa/Morocco/South/anchor_point/index.html	Anchor point	30.5452	-9.726717
396	https://www.wannasurf.com/spot/North_America/USA/North_East/The_Great_Lakes/index.html	The Great Lakes	NaN	NaN
329	https://www.wannasurf.com/spot/Africa/Morocco/South/anza/index.html	Anza	30.4503	-9.663117
330	https://www.wannasurf.com/spot/Africa/Morocco/South/banana_beach/index.html	Banana Beach	30.499317	-9.6772
331	https://www.wannasurf.com/spot/Africa/Morocco/South/banana_point/index.html	Banana Point	30.502117	-9.684817
332	https://www.wannasurf.com/spot/Africa/Morocco/South/Black_Point/index.html	Black Point	NaN	NaN
333	https://www.wannasurf.com/spot/Africa/Morocco/South/boilers/index.html	Boilers	30.62445	-9.878283
334	https://www.wannasurf.com/spot/Africa/Morocco/South/cap_sim/index.html	Cap sim	31.3875	-9.841267
335	https://www.wannasurf.com/spot/Africa/Morocco/South/Charatan/index.html	Charatan	34.262133	-6.66595
336	https://www.wannasurf.com/spot/Africa/Morocco/South/Crocro/index.html	Crocro	30.51505	-9.688983
337	https://www.wannasurf.com/spot/Africa/Morocco/South/deauville/index.html	Deauville	NaN	NaN
339	https://www.wannasurf.com/spot/Africa/Morocco/South/essaouira/index.html	Essaouira	31.494817	-9.76885
340	https://www.wannasurf.com/spot/Africa/Morocco/South/French_Baldie_Slab/index.html	French Baldie Slab	30.699583	-9.8741
341	https://www.wannasurf.com/spot/Africa/Morocco/South/hash_point/index.html	Hash Point	30.5443	-9.711783
397	https://www.wannasurf.com/spot/North_America/USA/South_East/South_Florida/index.html	South Florida	NaN	NaN
342	https://www.wannasurf.com/spot/Africa/Morocco/South/imessouane/index.html	Imessouane, the bay	30.837683	-9.8192
343	https://www.wannasurf.com/spot/Africa/Morocco/South/K11/index.html	K11	30.491467	-9.676767
344	https://www.wannasurf.com/spot/Africa/Morocco/South/k12/index.html	K12	30.495233	-9.67815
345	https://www.wannasurf.com/spot/Africa/Morocco/South/killer_point/index.html	Killer	30.547567	-9.74255
346	https://www.wannasurf.com/spot/Africa/Morocco/South/la_cathedrale/index.html	La Cathedrale	30.843883	-9.823983
347	https://www.wannasurf.com/spot/Africa/Morocco/South/la_source/index.html	La Source	30.54885	-9.7332
348	https://www.wannasurf.com/spot/Africa/Morocco/South/Marhina/index.html	Marhina	30.41225	-9.60485
349	https://www.wannasurf.com/spot/Africa/Morocco/South/mirleft/index.html	mirleft	29.55315	-10.056617
350	https://www.wannasurf.com/spot/Africa/Morocco/South/mystery_point/index.html	Mystery Point	30.542833	-9.706367
351	https://www.wannasurf.com/spot/Africa/Morocco/South/panorama/index.html	Panorama	30.542317	-9.706233
352	https://www.wannasurf.com/spot/Africa/Morocco/South/sidi_bouzid/index.html	Sidi bouzid	NaN	NaN
364	https://www.wannasurf.com/spot/North_America/USA/Inland/Brighton_Beach/index.html	Brighton Beach	46.842867	-91.992867
398	https://www.wannasurf.com/spot/North_America/USA/South_East/North_Florida/index.html	North Florida	NaN	NaN
353	https://www.wannasurf.com/spot/Africa/Morocco/South/sidi_ifni/index.html	Sidi ifni	29.38675	-10.174033
354	https://www.wannasurf.com/spot/Africa/Morocco/South/sidi_kaouki/index.html	Sidi Kaouki	31.364783	-9.804617
355	https://www.wannasurf.com/spot/Africa/Morocco/South/sidi_moussa_d_aglou/index.html	Sidi Moussa d'Aglou	NaN	NaN
356	https://www.wannasurf.com/spot/Africa/Morocco/South/sidi_rbat/index.html	Sidi Rbat	30.08075	-9.67045
357	https://www.wannasurf.com/spot/Africa/Morocco/South/Spider_s/index.html	Spider's	NaN	NaN
358	https://www.wannasurf.com/spot/Africa/Morocco/South/tafadna/index.html	Tafadna	31.0955	-9.825117
359	https://www.wannasurf.com/spot/Africa/Morocco/South/tamri/index.html	Tamri	30.708967	-9.858333
360	https://www.wannasurf.com/spot/Africa/Morocco/South/tan-tan_plage/index.html	Tan-Tan Plage	NaN	NaN
361	https://www.wannasurf.com/spot/Africa/Morocco/South/tifnit/index.html	Tifnit	30.19915	-9.641617
362	https://www.wannasurf.com/spot/North_America/USA/USA_Others/Big_Surf_AZ/index.html	Big Surf AZ	33.445833	-111.913
363	https://www.wannasurf.com/spot/North_America/USA/Inland/Bay_Point__Marblehead/index.html	Bay Point, Marblehead	41.516833	-82.719883
387	https://www.wannasurf.com/spot/North_America/USA/North_West/Washington/index.html	Washington	NaN	NaN
365	https://www.wannasurf.com/spot/North_America/USA/Inland/Colorado_River_Surfing/index.html	Colorado River Surfing	38.265567	-104.622183
366	https://www.wannasurf.com/spot/North_America/USA/Inland/Holland_North_Pier/index.html	Holland North Pier	42.774933	-86.2134
367	https://www.wannasurf.com/spot/North_America/USA/Inland/Montrose-Foster_beach/index.html	Montrose-Foster beach	41.97725	-87.64395
368	https://www.wannasurf.com/spot/North_America/USA/Inland/The_Zoo/index.html	The Zoo	46.586717	-87.38595
369	https://www.wannasurf.com/spot/North_America/USA/Hawaii/Kauai/index.html	Kauai	NaN	NaN
370	https://www.wannasurf.com/spot/North_America/USA/Hawaii/Oahu/index.html	Oahu	NaN	NaN
371	https://www.wannasurf.com/spot/North_America/USA/Hawaii/Maui/index.html	Maui	NaN	NaN
372	https://www.wannasurf.com/spot/North_America/USA/Hawaii/Hawaii_Island/index.html	The Big Island	NaN	NaN
373	https://www.wannasurf.com/spot/North_America/USA/California/Del_Norte/index.html	Del Norte	NaN	NaN
374	https://www.wannasurf.com/spot/North_America/USA/California/Humboldt/index.html	Humboldt	NaN	NaN
375	https://www.wannasurf.com/spot/North_America/USA/California/Mendocino/index.html	Mendocino	NaN	NaN
376	https://www.wannasurf.com/spot/North_America/USA/California/Sonoma/index.html	Sonoma	NaN	NaN
377	https://www.wannasurf.com/spot/North_America/USA/California/SF_Marin/index.html	San Francisco	NaN	NaN
378	https://www.wannasurf.com/spot/North_America/USA/California/San_Mateo/index.html	San Mateo	NaN	NaN
379	https://www.wannasurf.com/spot/North_America/USA/California/Santa_Cruz/index.html	Santa Cruz	NaN	NaN
380	https://www.wannasurf.com/spot/North_America/USA/California/Monterey/index.html	Monterey	NaN	NaN
407	https://www.wannasurf.com/spot/North_America/USA/Alaska/city_beach_-_adak/index.html	City Beach - Adak	NaN	NaN
408	https://www.wannasurf.com/spot/North_America/USA/Alaska/fossil/index.html	Fossil Beach (Kodiak)	57.426567	-152.353117
409	https://www.wannasurf.com/spot/North_America/USA/Alaska/loran_point_-_adak/index.html	Loran Point - Adak	NaN	NaN
410	https://www.wannasurf.com/spot/North_America/USA/Alaska/mill_bay/index.html	Mill Bay	57.821	-152.351367
411	https://www.wannasurf.com/spot/North_America/USA/Alaska/Mount_Augustine_Peak/index.html	Mount Augustine Peak	59.406217	-153.3867
412	https://www.wannasurf.com/spot/North_America/USA/Alaska/Rainbow_Point/index.html	Rainbow Point	NaN	NaN
413	https://www.wannasurf.com/spot/North_America/USA/Alaska/Sandy_Beach/index.html	Sandy Beach	57.075033	-135.372933
430	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_SI/North_Coast/index.html	North Coast	NaN	NaN
414	https://www.wannasurf.com/spot/North_America/USA/Alaska/shoals_reef/index.html	Shoals Reef	57.006167	-135.63995
415	https://www.wannasurf.com/spot/North_America/USA/Alaska/the_lagoons/index.html	The Lagoons	NaN	NaN
416	https://www.wannasurf.com/spot/North_America/USA/Alaska/three_mile/index.html	Three Mile	57.436467	-152.406267
482	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/GoroGoro/index.html	GoroGoro	33.653133	135.95925
417	https://www.wannasurf.com/spot/North_America/USA/Alaska/White_Alice/index.html	White Alice	51.87755	-176.761783
418	https://www.wannasurf.com/spot/North_America/USA/Alaska/yakutat/index.html	Yakutat	NaN	NaN
419	https://www.wannasurf.com/spot/North_America/USA/Alaska/Zeto_Point_-_Adak/index.html	Zeto Point - Adak	51.910183	-176.56115
420	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/NW_Coast/index.html	NW Coast	NaN	NaN
421	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/N_Coast/index.html	North Coast	NaN	NaN
422	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/NE_Coast/index.html	NE Coast	NaN	NaN
423	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/Coromandel/index.html	Coromandel	NaN	NaN
424	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/East_Cape/index.html	East Cape	NaN	NaN
425	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/Napier/index.html	Napier	NaN	NaN
426	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/South_East_Coast/index.html	South East	NaN	NaN
427	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/SW_Coast/index.html	SW Coast	NaN	NaN
428	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/West_Coast_Taranaki/index.html	West Coast Taranaki	NaN	NaN
429	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_NI/West_Coast_Auckland/index.html	West Coast Aukland	NaN	NaN
431	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_SI/NE_Coast/index.html	NE Coast	NaN	NaN
432	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_SI/SE_Coast/index.html	SE Coast	NaN	NaN
433	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_SI/Far_South/index.html	Far South	NaN	NaN
434	https://www.wannasurf.com/spot/Australia_Pacific/New_Zealand/New_Zealand_SI/West_Coast/index.html	West Coast	NaN	NaN
435	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/5_rocks/index.html	5 rocks	26.33155	127.74185
436	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/aha-yoko/index.html	Aha-Yoko	26.730983	128.313883
437	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/bowls/index.html	Bowls	NaN	NaN
438	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/ekie_island/index.html	Ekie Island	26.386333	128.002967
439	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/jacks_hole/index.html	Jack's Hole	NaN	NaN
440	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/jimmys/index.html	Jimmys	NaN	NaN
441	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/Kudaka_Left/index.html	Kudaka Left	26.15055	127.886567
442	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/miyuki_s/index.html	Miyuki's	NaN	NaN
443	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/suicide_cliffs/index.html	Suicide Cliffs	26.079217	127.686017
444	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/sunabe/index.html	Sunabe	26.326033	127.740783
445	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/tengan_pier/index.html	Tengan Pier	26.404483	127.848583
446	https://www.wannasurf.com/spot/Asia/Japan/Okinawa/white_beach/index.html	White Beach	26.29465	127.910733
447	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/chi-pa/index.html	Chi-pa	NaN	NaN
448	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/dolphin_point__nahama_/index.html	Dolphin Point (Nahama)	NaN	NaN
449	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Hanakago/index.html	Hanakago	35.023867	139.9925
450	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/hebara/index.html	Hebara	NaN	NaN
451	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Ichinomiya/index.html	Ichinomiya	NaN	NaN
452	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/inamuragasaki/index.html	Inamuragasaki	35.301467	139.525417
453	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/irita_hama/index.html	Irita Hama	34.658067	138.9265
454	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Jogashima/index.html	Jogashima	35.129917	139.619917
455	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Kamogawa__Chiba/index.html	Kamogawa, Chiba	35.106283	140.103833
4150	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/jerseys_-_el_tico/index.html	Jerseys - El tico	NaN	NaN
456	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/katagai/index.html	Katagai	35.533417	140.461233
457	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/kugenuma/index.html	Kugenuma	35.31445	139.468567
458	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/malibu/index.html	Malibu	NaN	NaN
459	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Mera/index.html	Mera	NaN	NaN
460	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Nagai/index.html	Nagai	35.193167	139.601217
483	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/Isonoura/index.html	Isonoura	34.258883	135.094583
461	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Onjuku/index.html	Onjuku	35.186717	140.35
462	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/osaki/index.html	Osaki	35.2918	139.557417
463	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Sagami/index.html	Sagami	NaN	NaN
464	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/sakawa_rivermouth/index.html	Sakawa Rivermouth	35.25985	139.18365
465	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/secret_spot_5/index.html	Secret Spot 5	34.958	138.6914
466	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/shichirigahama/index.html	Shichirigahama	35.3048	139.511733
467	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/shirahama/index.html	Shirahama	34.68955	138.972583
468	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Shonan/index.html	Shonan	NaN	NaN
469	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Taito/index.html	Taito	35.329967	140.400467
484	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/kounohama/index.html	kounohama	NaN	NaN
470	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/torami/index.html	Torami	NaN	NaN
471	https://www.wannasurf.com/spot/Asia/Japan/Kanagawa_Chiba/Yokochiba_Hikarimachi/index.html	Yokochiba Hikarimachi	NaN	NaN
472	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/hachijojima_-_kaiser_s/index.html	Hachijojima - Kaiser's	NaN	NaN
474	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/hachijojima_-_tacos/index.html	Hachijojima - Tacos	NaN	NaN
475	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/keta_reef_-_oshima/index.html	Keta Reef - Oshima	NaN	NaN
476	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/awaiura/index.html	Niijima - Awaiura	34.412683	139.28675
477	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/habushiiso/index.html	Niijima - Habushiiso	34.35595	139.2762
478	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/Habushiura/index.html	Niijima - Habushiura	34.3761	139.276633
479	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/secret/index.html	Niijima - Secret	34.343367	139.276617
480	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/oshima_-_sunanohama/index.html	Oshima - Sunanohama	NaN	NaN
481	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/Atashika/index.html	Atashika	33.9289	136.148583
485	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/Motel_Shita/index.html	Motel Shita	33.64935	135.953967
382	https://www.wannasurf.com/spot/North_America/USA/California/Santa_Barbara/index.html	Santa Barbara	NaN	NaN
486	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/Tyoushi_River_Mouth/index.html	Tyoushi River Mouth	34.103	136.233983
487	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/Umigame_Koen_Mae/index.html	Umigame Koen Mae	33.754883	136.02525
488	https://www.wannasurf.com/spot/Asia/Japan/Kii_Hanto/Under_the_Sunrepo_/index.html	Under the Sunrepo 	34.4279	136.920283
489	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/akabane_long_beach/index.html	Akabane Long Beach	34.6	137.2
490	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/atsumi/index.html	Atsumi	NaN	NaN
559	https://www.wannasurf.com/spot/Asia/Japan/Tohoku/sendai_shinko/index.html	Sendai shinko	38.259933	141.023167
491	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/big_lefts/index.html	Big Lefts	NaN	NaN
492	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/daito_cho/index.html	Daito-cho	NaN	NaN
493	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/do_do/index.html	Do Do	NaN	NaN
494	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/Fujikawa/index.html	Fujikawa	NaN	NaN
495	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/ikobe/index.html	Ikobe	NaN	NaN
496	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/Katahama/index.html	Katahama	34.714767	138.217417
497	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/kawazu/index.html	Kawazu	NaN	NaN
511	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/futami/index.html	Futami	32.9693	132.99885
498	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/minato/index.html	Minato	NaN	NaN
499	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/Mira/index.html	Mira	34.615333	137.226167
500	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/ohama_beach/index.html	Ohama Beach	34.653683	138.920067
501	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/omaezaki/index.html	Omaezaki	34.600167	138.205317
502	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/samejima__golf_/index.html	Samejima (golf)	NaN	NaN
503	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/sekimon/index.html	Sekimon	NaN	NaN
504	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/shark_toshiba/index.html	Shark (toshiba)	NaN	NaN
505	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/shizunami/index.html	Shizunami	34.7321	138.233917
506	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/Suzuki/index.html	Susuki	34.666433	138.195
507	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/tadado_beach/index.html	Tadado Beach	34.661033	138.932417
508	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/usami/index.html	Usami	35.007183	139.087883
509	https://www.wannasurf.com/spot/Asia/Japan/Shizuoka/yohachi/index.html	Yohachi	NaN	NaN
510	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/akigawakakou/index.html	Akigawakakou	NaN	NaN
383	https://www.wannasurf.com/spot/North_America/USA/California/Ventura/index.html	Ventura	NaN	NaN
515	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/ikumi/index.html	Ikumi	33.527767	134.28495
516	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/iokigawakakou/index.html	Iokigawakakou	NaN	NaN
517	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/irinomatsubara/index.html	Irinomatsubara	NaN	NaN
518	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/kaifu_rivermouth/index.html	Kaifu Rivermouth	33.5945	134.3638
519	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/Kainokawa/index.html	Kainokawa	32.761083	132.8157
520	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/komuronohama/index.html	Komuronohama	NaN	NaN
521	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/koudono/index.html	Koudono	NaN	NaN
522	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/kurenoono/index.html	Kureoono	NaN	NaN
523	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/monobegawakakou/index.html	Monobegawakakou	33.534133	133.685067
524	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/naharigawakakou/index.html	Naharigawakakou	NaN	NaN
525	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/niyodogawakakou/index.html	Niyodogawakakou	33.458933	133.480983
526	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/nuishima/index.html	Nuishima	NaN	NaN
527	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/oosakinohamane/index.html	Oosakinohamane	NaN	NaN
528	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/ozaki/index.html	Ozaki	33.36955	134.206833
529	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/senatan/index.html	senatan	NaN	NaN
530	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/shiina/index.html	Shiina	33.320117	134.195233
531	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/shirahama/index.html	Shirahama	NaN	NaN
534	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/takegashima/index.html	Takegashima	33.549233	134.316933
536	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/teu/index.html	Teu	NaN	NaN
537	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/uchizuma/index.html	Uchizuma	33.659433	134.403767
538	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/yasudawakakou/index.html	Yasudagawakakou	33.434367	133.981967
539	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/yokonami_skyline/index.html	Yokonami Skyline	NaN	NaN
540	https://www.wannasurf.com/spot/Asia/Japan/Kyushu/Tanegashima-Island/index.html	Tanegashima-Island	NaN	NaN
541	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/taito/index.html	Ataka	36.41935	136.415083
542	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/ishiwaki/index.html	Ishiwaki	NaN	NaN
543	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/katsuragahama_kyoto_/index.html	Katsuragahama(Kyoto)	NaN	NaN
544	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/kirara_beach/index.html	Kirara beach	NaN	NaN
545	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/kokofu_beach/index.html	Kokofu Beach	NaN	NaN
546	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/machino_bay/index.html	Machino Bay	NaN	NaN
547	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/nadachi/index.html	Nadachi	NaN	NaN
1167	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/moro_/index.html	moro 	28.673267	-13.83325
548	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/Oshima/index.html	Oshima	36.252167	136.121033
549	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/Shibagaki/index.html	Shibagaki	36.95395	136.761217
550	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/sunset_beach/index.html	Sunset beach	36.22275	136.134417
551	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/Tokumitsu/index.html	Tokumitsu	36.535667	136.524183
552	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/tottori_sakyu/index.html	Tottori-sakyu	35.5448	134.218933
553	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/Tsunoshima/index.html	Tsunoshima	34.354983	130.85695
554	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/wakasa/index.html	Wakasa	NaN	NaN
555	https://www.wannasurf.com/spot/Asia/Japan/West_Coast/zanpa/index.html	Zanpa	NaN	NaN
556	https://www.wannasurf.com/spot/Asia/Japan/Tohoku/momoishi/index.html	Momoishi	40.67155	141.43885
557	https://www.wannasurf.com/spot/Asia/Japan/Tohoku/o-arai/index.html	O-arai	NaN	NaN
558	https://www.wannasurf.com/spot/Asia/Japan/Tohoku/rokkasho/index.html	Rokkasho	NaN	NaN
560	https://www.wannasurf.com/spot/Asia/Japan/Tohoku/veedol_beach/index.html	Veedol Beach	40.7744	141.412583
561	https://www.wannasurf.com/spot/Asia/Indonesia/Sulawesi/Tomini_beach/index.html	Gorontalo beach	0.4882	122.9921
562	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Alan_Shearer_s_Right/index.html	Alan Shearer's Right	-9.762717	119.332067
563	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Army_Camp/index.html	Army Camp	-10.979483	122.843367
564	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Boa/index.html	Boa	-10.940333	122.840017
565	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Dana/index.html	Dana	-10.966717	122.84035
566	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/do_o_island/index.html	Do'o Island	-10.833483	122.753033
567	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Erics/index.html	Erics	-10.256233	120.574217
568	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/kerewei_right/index.html	kerewei right	-9.760817	119.331517
569	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Mengkudu/index.html	Mengkudu	-10.3144	120.155233
570	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/n_dau_island/index.html	N'Dau Island	NaN	NaN
626	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/dreamland/index.html	Dreamland	-8.799083	115.117083
571	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/nihiwatu/index.html	Nihiwatu	-9.781433	119.373067
572	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Pero/index.html	Pero	-9.609383	118.984467
573	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Pero_right/index.html	Pero right	-9.607667	118.9848
574	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/roti_island_-_homebreak/index.html	Roti Island - Homebreak	NaN	NaN
575	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/nembrala/index.html	Roti Island - Nembrala - T Land	-10.893483	122.811817
576	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/roti_island_-_peanuts___bo_a/index.html	Roti Island - Peanuts & Bo'a	NaN	NaN
577	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Sucky_Mamas/index.html	Sucky Mamas	-10.8467	122.817517
578	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Sumba_-_Kallala/index.html	Sumba - Kallala	-10.25135	120.57465
579	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/sumba_-_miller_s_right/index.html	Sumba - Miller's right	-9.954317	119.90135
580	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/sumba_-_sunset_left/index.html	Sumba - Sunset left	NaN	NaN
581	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/sumba_-_wanukaka/index.html	Sumba - Wanukaka	NaN	NaN
582	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/T_Land_Bommie/index.html	T Land Bommie	-10.8805	122.813133
583	https://www.wannasurf.com/spot/Asia/Indonesia/Savu_Sea/Wanyapu/index.html	Wanyapu	-9.635533	119.00485
584	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/benete/index.html	Benete	-8.890767	116.735767
585	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/Cement_Factory/index.html	Cement Factory	-8.727183	116.765733
586	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/cobblestones/index.html	Cobblestones	NaN	NaN
587	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/Donuts/index.html	Donuts	-8.918983	116.7377
588	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/lakey_peak/index.html	Lakey Peak	-8.826483	118.380483
589	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/Little_Bingin/index.html	Little Bingin	-8.84765	116.75975
590	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/nungas/index.html	Nungas	NaN	NaN
591	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/onnie_s_right/index.html	Onnie's right	NaN	NaN
592	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/periscopes/index.html	Periscopes	-8.78465	118.355717
593	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/scar_reef/index.html	SCAR REEF	-8.8625	116.75555
594	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/super_suck/index.html	Super Suck	-8.93595	116.74415
595	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/Tropical_s/index.html	Tropical's	-9.001733	116.738667
384	https://www.wannasurf.com/spot/North_America/USA/California/LA_County/index.html	LA County	NaN	NaN
596	https://www.wannasurf.com/spot/Asia/Indonesia/Sumbawa/yo_yos/index.html	YO-YO'S	-8.971933	116.726467
597	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/air_guling/index.html	Air Guling	NaN	NaN
598	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/belongas/index.html	Belongas	-8.881983	116.036267
599	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/dfb_s/index.html	D.F.B.'s	NaN	NaN
600	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/desert_point/index.html	Desert Point (Bangko-Bangko)	-8.750983	115.822683
601	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/ekas/index.html	Ekas	-8.88355	116.450617
602	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/geko_alley/index.html	Geko Alley	NaN	NaN
603	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/Gili_air/index.html	Gili air	-8.3697	116.07605
614	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/airports/index.html	Airport's	-8.745117	115.150317
615	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Matias_point/index.html	Amed - Matias point	NaN	NaN
616	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/ballangan/index.html	Balangan	-8.79225	115.119817
604	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/gili_trawangan/index.html	Gili Trawangan	-8.360133	116.043867
605	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/grupuk/index.html	Grupuk	-8.925767	116.352083
606	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/kuta/index.html	Kuta	-8.9097	116.2457
607	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/mawi/index.html	Mawi	-8.88775	116.1607
608	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/NOVOTEL/index.html	NOVOTEL	-8.910717	116.295617
609	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/periscope_point/index.html	Periscope Point	-8.781733	118.371583
610	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/Puri_s_point/index.html	Puri's point	-8.483217	116.034917
611	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/senggigi/index.html	Senggigi	-8.502933	116.0448
612	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/sereweh/index.html	Sereweh	-8.441467	116.034167
385	https://www.wannasurf.com/spot/North_America/USA/California/Orange_County/index.html	Orange County	NaN	NaN
613	https://www.wannasurf.com/spot/Asia/Indonesia/Lombok/tanjung_aan/index.html	Tanjung A'an	-8.918233	116.322733
617	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Bali_Tropic/index.html	Bali Tropic	-8.784817	115.23165
618	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/balian/index.html	Balian	-8.524283	114.989717
619	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/berawa/index.html	Berawa	-8.66695	115.138617
620	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Bingin/index.html	Bingin	-8.804067	115.113333
621	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Bluffs/index.html	Bluffs	NaN	NaN
622	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/buitan/index.html	Buitan	NaN	NaN
623	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/canngu/index.html	Canggu	-8.664183	115.12625
624	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/ceningan_point/index.html	Ceningan Point	-8.70355	115.440867
625	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Dayana_Pura/index.html	Dayana Pura / Seminyak	NaN	NaN
1229	https://www.wannasurf.com/spot/South_America/Peru/North/astillero/index.html	Astillero	NaN	NaN
627	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Ewan_s_Left/index.html	Ewan's Left	-8.807367	115.2349
628	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/geger/index.html	Geger	NaN	NaN
629	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/green_ball/index.html	Green ball	-8.851483	115.170117
630	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Impossibles/index.html	Impossibles	-8.80745	115.1085
631	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/jimbaran_shorey/index.html	Jimbaran Shorey	-8.771333	115.157583
632	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/kartika/index.html	Kartika - DEAD SPOT	NaN	NaN
633	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/keramas/index.html	Keramas Beach	-8.59755	115.339083
634	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/ketewel/index.html	Ketewel	-8.6468	115.280317
635	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/ku_de_ta/index.html	KU DE TA - Semyniak	-8.687167	115.153967
636	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/kuta_beach/index.html	Kuta Beach	-8.716367	115.166933
637	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/kuta_reef/index.html	Kuta Reef	-8.730483	115.155883
661	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/tanjung_left/index.html	tanjung left	-8.681317	115.267767
638	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/laserations/index.html	Lacerations (Nusa Lembongan)	-8.675933	115.44075
639	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/legian_beach/index.html	Legian Beach	-8.69515	115.158083
677	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/batu_karas/index.html	Batu Karas	-7.74825	108.502183
640	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Lower_Temples/index.html	Lower Temples	NaN	NaN
641	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Medewi/index.html	Medewi	-8.4216	114.804667
642	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/middles/index.html	Middles	0	0
643	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/mushroom_beach/index.html	Mushroom beach (Nusa Lembongan)	-8.681633	115.43295
644	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/mushrooms/index.html	mushrooms	-8.800383	115.237317
645	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/nusa_dua/index.html	Nusa dua	-8.8222	115.227467
646	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/nyang-nyang/index.html	Nyang-Nyang	-8.843333	115.10695
647	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/padang_galak/index.html	Padang Galak	-8.6388	115.290433
648	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Padang-Padang/index.html	padang padang	-8.810467	115.0994
649	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/pererenan/index.html	Pererenan	-8.651983	115.121233
650	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/playgrounds/index.html	Playgrounds (Nusa Lembongan)	-8.67825	115.441217
716	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Inor/index.html	Inor	2.482383	96.18995
651	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/pulakan__medewi__rights/index.html	Pulakan (medewi) Rights	-8.424933	114.813133
652	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Rice_paddies/index.html	Rice paddies	NaN	NaN
653	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/yellow_water/index.html	right hander reef	NaN	NaN
654	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/sanur_grand_hyatt/index.html	Sanur - Grand Hyatt	-8.669917	115.264117
655	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Secret/index.html	Secret	-8.592733	115.348133
656	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/serangan/index.html	Serangan	-8.740967	115.242917
657	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/shipwrecks/index.html	Shipwrecks	-8.6657	115.44315
658	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/srilanka/index.html	Sri Lanka	-8.788533	115.232583
659	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/tanah_lot/index.html	Tanah Lot	NaN	NaN
386	https://www.wannasurf.com/spot/North_America/USA/California/San_Diego_County/index.html	San Diego County	NaN	NaN
660	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/tandjungs/index.html	Tandjungs	-8.6915	115.2713
662	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/temples/index.html	Temples	NaN	NaN
663	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/Uluwatu/index.html	Uluwatu	-8.816633	115.08625
664	https://www.wannasurf.com/spot/Asia/Indonesia/Bali/er_toro/index.html	yehleh aka Sebs Point	NaN	NaN
665	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/20_20s_right/index.html	20 20s right	NaN	NaN
666	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/20-20s/index.html	20-20s	-8.707183	114.374483
667	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/grajagan/index.html	Grajagan	-8.734283	114.339733
668	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/pacitan/index.html	Pacitan	-8.230983	111.101517
669	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/Payangan/index.html	Payangan	-8.4343	113.5801
670	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/Puger/index.html	Puger	-8.3862	113.473067
671	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/puncher/index.html	Puncher	-8.27945	111.074517
672	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/Red_Island/index.html	Red Island	-8.605117	114.026233
673	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/tiger_tracks/index.html	Tiger Tracks	-8.685583	114.373333
710	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/e-bay/index.html	E-Bay	-1.828917	99.254267
674	https://www.wannasurf.com/spot/Asia/Indonesia/East_Java/Tiger_Tracks_Lefts/index.html	Tiger Tracks Lefts	-8.68805	114.37285
675	https://www.wannasurf.com/spot/Asia/Indonesia/Central_Java/pangandaran/index.html	pangandaran	-7.692617	108.6541
676	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/apocalypse/index.html	Apocalypse	-6.61465	105.130667
678	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/bulak_benda/index.html	Bulak benda	NaN	NaN
679	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/ci_kembang/index.html	Ci Kembang	NaN	NaN
680	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/cimaja/index.html	Cimaja	-6.9629	106.479517
681	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/indicators_point/index.html	Indicators point	NaN	NaN
682	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/Jambu_Beach/index.html	Jambu Beach	-6.1916	105.84195
683	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/karang_haji/index.html	Karang Haji - OceanQueen Hotel	-6.957767	106.43555
684	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/karang_hawu/index.html	Karang Hawu	NaN	NaN
685	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/Karang_Naya/index.html	Karang Naya	-6.968067	106.516033
686	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/karang_sari/index.html	Karang Sari	NaN	NaN
687	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/loji/index.html	Loji	NaN	NaN
688	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/napalms/index.html	Napalms	NaN	NaN
689	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/National_Park/index.html	National Park	-6.679917	105.3256
690	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/ombak_tujuh/index.html	Ombak Tujuh	-7.2778	106.36915
691	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/one_palm_point_-_panaitan_island/index.html	One Palm Point - Panaitan island	-6.6554	105.172633
692	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/pasauran/index.html	Pasauran	-6.2356	105.825033
693	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/Pasauran_Muara_/index.html	Pasauran Muara 	-6.231283	105.829883
694	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/pussy_s/index.html	Pussy's	NaN	NaN
695	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/sanghyang_island/index.html	Sanghyang Island	-5.956883	105.85395
696	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/suwarna/index.html	Sawarna	-6.984367	106.29555
697	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/sunset/index.html	Sunset	-6.96125	106.47235
698	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/Tanjung_Lesung/index.html	Tanjung Lesung	-6.477867	105.657317
699	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/Timmy_Turner_s_New_Left/index.html	Timmy Turner's New Left	-7.7182	107.83305
700	https://www.wannasurf.com/spot/Asia/Indonesia/West_Java/turtles/index.html	Turtles	-7.335867	106.39755
701	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/4_bobs/index.html	4 Bobs	-1.909117	99.31065
702	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/A_Frames/index.html	A Frames	-1.905467	99.316733
703	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/aaron_s/index.html	aaron's	-2.278467	99.593933
704	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Ariks/index.html	Ariks	-2.024833	99.565317
705	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/bankvaults/index.html	Bankvaults	-1.852083	99.244733
706	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/bang_bang/index.html	Beng Beng	-1.8145	99.265333
707	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Birdbaths/index.html	Birdbaths	-1.689533	99.29705
708	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Burger/index.html	Burger	-1.839983	99.15135
709	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Dutchies/index.html	Dutchies	-2.756917	99.984533
711	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Green_Bush/index.html	Green Bush	-2.8202	100.058983
712	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/hideway/index.html	Hideaways	-1.849767	99.3025
713	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Hookers/index.html	Hookers	-1.99955	99.548583
714	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/lances_right/index.html	HT's	-2.375633	99.85955
715	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/icelands/index.html	Icelands	-2.018317	99.547117
717	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/kanduis/index.html	Kandui Left	-1.899433	99.292717
718	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/lances_left/index.html	Lances left	-2.383867	99.837567
719	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/macaronis/index.html	Macaronis	-2.788733	99.9919
720	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/nipussi/index.html	Nipussi	-1.845767	99.252183
721	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/PDDLP/index.html	PDDLP	NaN	NaN
1347	https://www.wannasurf.com/spot/South_America/Peru/Lima/no_name/index.html	Un-named	NaN	NaN
722	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/pitstops/index.html	Pitstops	-1.83175	99.252983
399	https://www.wannasurf.com/spot/North_America/USA/South_East/Georgia/index.html	Georgia	NaN	NaN
723	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Playgrounds/index.html	Playgrounds	-1.90635	99.3113
724	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Resorts/index.html	Resorts	-1.9853	99.5684
725	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/rifles/index.html	Rifles	-1.9207	99.319417
726	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Rikas_rights/index.html	Rikas rights	-2.028017	99.554417
727	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/scarecrows/index.html	Scarecrows	-2.1197	99.518617
728	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Seven_Palms/index.html	Seven Palms	-2.162933	99.528067
729	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Sometimes/index.html	Sometimes	-1.79585	99.231183
730	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Suicides/index.html	Suicides	-2.033333	99.568483
849	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/la_curva/index.html	La Curva	NaN	NaN
731	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/telescopes/index.html	Telescopes	-2.065833	99.54265
732	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/the_hole/index.html	The hole	NaN	NaN
733	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/thunders/index.html	Thunders	-3.054633	100.170683
734	https://www.wannasurf.com/spot/Asia/Indonesia/Mentawai/Tikus/index.html	Tikus	-1.990383	99.559233
735	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/bali_village/index.html	Bali Village	NaN	NaN
736	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/banana_island/index.html	Banana Island	-5.123083	103.846033
738	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/BONO/index.html	Bono	0.1741	102.555317
739	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/honey_smacks/index.html	Honey Smacks	NaN	NaN
740	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/drew_s_right/index.html	Jenny's right	-5.038317	103.766633
741	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/jimmy_s_left/index.html	Jimmy's Left	NaN	NaN
742	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/jimmy_s_right/index.html	Jimmy's Right	NaN	NaN
743	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/krui_left/index.html	krui left	-5.1925	103.930067
744	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/Lhoknga/index.html	Lhoknga	5.475117	95.232667
745	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/mandiri/index.html	Mandiri	-5.270367	103.998733
746	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/nirvana/index.html	NIRVANA	NaN	NaN
747	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/pantai_air_manis/index.html	Pantai Air Manis	-0.993567	100.36135
748	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/pantai_purus/index.html	Pantai Purus	NaN	NaN
749	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/Richards_Right/index.html	Richards Right	-5.300467	103.994617
750	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/the_peak/index.html	The Peak	-5.2366	103.909383
751	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/ujung_bocur/index.html	Ujung Bocur	-5.304817	103.991867
752	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/Volcanos/index.html	Volcanos	-5.302067	104.000533
753	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/way_jambu/index.html	Way Jambu	-5.349083	104.030233
754	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Afulu/index.html	Afulu	1.259717	97.229867
755	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/asu/index.html	Asu	0.867367	97.33355
756	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Banyaks/index.html	Banyaks	2.196733	97.294917
757	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/bawa/index.html	Bawa	0.812533	97.3472
758	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Bay_of_Plenty/index.html	Bay of Plenty	2.055883	97.318617
759	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/chunkaas/index.html	Chunkaas	NaN	NaN
760	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Cocaine/index.html	Cocaine	2.4957	96.162583
761	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/hinako_islands/index.html	Hinako Islands	0.847283	97.3502
762	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Jackals/index.html	Jackals	2.461117	96.2196
763	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Kiddies_Corner/index.html	Kiddies Corner	0.572217	97.732533
764	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/the_point/index.html	Lagundri	0.5645	97.729917
765	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/machines/index.html	Machines	0.56925	97.746567
766	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/No_Name/index.html	No Name	-0.591283	98.4133
767	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/One_Tree/index.html	One Tree	2.339433	96.468583
768	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/rockstar/index.html	Rockstar	0.6008	97.8796
769	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Shark_Pit/index.html	Shark Pit	0.6023	97.684333
770	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/suicide/index.html	suicide	-0.04395	98.305667
771	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/telos_island_nias/index.html	Telos Island, Nias	-0.0659	98.25695
772	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Islands/Tou_Tou_s/index.html	Tou Tou's	2.55185	96.087533
773	https://www.wannasurf.com/spot/Asia/Indonesia/Others/Bintan_Lagoon_Resort/index.html	Bintan Lagoon Resort	1.191933	104.428133
774	https://www.wannasurf.com/spot/Asia/Indonesia/Others/Black_Sands/index.html	Black Sands	-2.617067	140.73745
775	https://www.wannasurf.com/spot/Asia/Indonesia/Others/Churches_left/index.html	Churches left	-0.824417	135.99985
776	https://www.wannasurf.com/spot/Asia/Indonesia/Others/Holtekamp/index.html	Hollekang	-2.626317	140.78095
400	https://www.wannasurf.com/spot/North_America/USA/South_East/South_Carolina/index.html	South Carolina	NaN	NaN
777	https://www.wannasurf.com/spot/Asia/Indonesia/Others/Meat_Pai/index.html	Meat Pai	-1.2426	136.453683
778	https://www.wannasurf.com/spot/Asia/Indonesia/Others/Skouw/index.html	Skouw	-2.61325	140.865433
779	https://www.wannasurf.com/spot/Asia/Indonesia/Papua/Kepala_Arus/index.html	Kepala Arus	-7.125333	139.381567
780	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/carrizalillo/index.html	Carrizalillo	15.858683	-97.079
781	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/chacahua/index.html	Chacahua	15.967567	-97.67685
782	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/la_bocana/index.html	La Bocana	NaN	NaN
783	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/la_jolla/index.html	La jolla	15.87515	-95.7771
784	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/la_punta/index.html	La Punta	15.830567	-97.046767
785	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/laguna_abierta/index.html	Laguna abierta	NaN	NaN
786	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/playa_ventanilla/index.html	Playa Ventanilla	NaN	NaN
787	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/puerto_arista/index.html	Puerto Arista	15.931033	-93.80865
401	https://www.wannasurf.com/spot/North_America/USA/South_East/North_Carolina/index.html	North Carolina	NaN	NaN
809	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/k38/index.html	K-38	32.258933	-116.98635
788	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/Puerto_Escondido/index.html	Puerto Escondido	15.847167	-97.055117
789	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/Puerto_Escondido_Left/index.html	Puerto Escondido Left	15.855167	-97.057983
790	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/puerto_madero/index.html	Puerto Madero	14.72185	-92.428017
791	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/punta_conejo/index.html	Punta Conejo	NaN	NaN
792	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/Punta_Encomienda/index.html	Punta Encomienda	NaN	NaN
793	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/Salina_Cruze_-Jetty/index.html	Salina Cruze -Jetty	16.153683	-95.237567
794	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/San_Agustinillo/index.html	San Agustinillo	15.665683	-96.551283
796	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/3_emes/index.html	3 emes	31.89725	-116.713717
797	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/alisitos/index.html	alisitos	32.119233	-116.882917
810	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/L_2870/index.html	L=2870	28.7036	-114.289433
798	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/baja_malibu/index.html	Baja Malibu	32.4195	-117.09575
799	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/calafia/index.html	Calafia	32.267667	-117.019333
800	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/campito/index.html	Campito	NaN	NaN
801	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/quatro_casas/index.html	Cuatro Casas	30.9335	-116.242217
802	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/ensenada_bay/index.html	Ensenada Bay	NaN	NaN
803	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/five_spot/index.html	five spot	29.134483	-114.731217
804	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/four_spot/index.html	four spot	29.181633	-114.752867
805	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/gators/index.html	Gators	NaN	NaN
806	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/harry_s/index.html	Harry's	NaN	NaN
807	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/todos_santos/index.html	Isla de Todos Santos	31.80895	-116.809683
808	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/k-181/index.html	K-181	31.258567	-116.374533
811	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/la_fonda/index.html	La fonda	32.16595	-116.904533
812	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/las_gaviotas/index.html	Las Gaviotas	32.25245	-116.962333
813	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/las_salinas_marina/index.html	Las Salinas (Marina)	32.056833	-116.882433
814	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/marias/index.html	Marias	NaN	NaN
815	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/more/index.html	more	29.110167	-114.7131
816	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/mother_theresas/index.html	Mother Theresas	NaN	NaN
817	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/mushrooms/index.html	Mushrooms	32.268083	-117.023383
818	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/playas_de_tijuana/index.html	Playas de Tijuana	NaN	NaN
819	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/popotla/index.html	Popotla	NaN	NaN
820	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/k-55/index.html	Puerta Del mar (K-55)	NaN	NaN
821	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/Puertitos/index.html	Puertitos	NaN	NaN
822	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/punta_baja/index.html	Punta Baja	29.953	-115.7547
402	https://www.wannasurf.com/spot/North_America/USA/South_East/Southern_North_Carolina/index.html	Southern North Carolina	NaN	NaN
823	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/punta_cabras/index.html	Punta Cabras	31.34755	-116.4574
824	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/punta_china/index.html	Punta China	NaN	NaN
825	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/punta_san_carlos/index.html	Punta San Carlos	29.61425	-115.499733
826	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/punta_san_jose/index.html	Punta San Jose	31.463883	-116.590683
827	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/raul_s/index.html	Raul's	32.2478	-116.948833
828	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/rinconcito/index.html	Rinconcito	NaN	NaN
829	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/rosarito_beach/index.html	Rosarito Beach	NaN	NaN
830	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/rosarito_beach_pier_southside/index.html	Rosarito Beach Pier Southside	NaN	NaN
831	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/Salsipuedes/index.html	Salsipuedes	31.976833	-116.790583
832	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/San_Isidro/index.html	San Isidro	NaN	NaN
833	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/san_miguel/index.html	San miguel	31.900667	-116.730317
835	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/stack_s/index.html	stack's	31.892667	-116.696683
836	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/staks/index.html	staks	31.89255	-116.696667
837	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/Terasa_sTrailerPark/index.html	Terasa'sTrailerPark	32.260633	-116.991867
838	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/terracitas/index.html	Terracitas	NaN	NaN
839	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/the_wall/index.html	The Wall	NaN	NaN
840	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/three_spot/index.html	three spot	29.194317	-114.77505
841	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/zpot01/index.html	zpot01	29.209367	-114.80115
842	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/costa_azul/index.html	Costa Azul	23.015133	-109.716933
843	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/el_triple/index.html	El triple	NaN	NaN
844	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/el_tule/index.html	El tule	NaN	NaN
845	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/isla_natividad/index.html	Isla Natividad	27.85755	-115.160783
846	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/kenzie_s_point/index.html	Kenzie's Point	NaN	NaN
847	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/KM65/index.html	KM65	NaN	NaN
1018	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/teris_point/index.html	Teris point	NaN	NaN
848	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/la_bocana/index.html	La Bocana	NaN	NaN
850	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/La_Fortuna/index.html	La Fortuna	23.14415	-109.506317
851	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/lovers_shore_break/index.html	Lovers Shore Break	22.875367	-109.89755
852	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/monuments/index.html	Monuments	22.898167	-109.870317
853	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/old_men/index.html	Old Man's	23.023933	-109.715867
854	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/los_cerritos/index.html	Playa Los Cerritos	23.342567	-110.1884
855	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/punta_abreojos/index.html	Punta Abreojos	26.709267	-113.575967
856	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/Punta_Conejo/index.html	Punta Conejo	24.0743	-111.007783
857	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/punta_palmilla/index.html	Punta Palmilla	NaN	NaN
858	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/san_pedrito/index.html	San Pedrito	NaN	NaN
859	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/scorpion_bay/index.html	Scorpion Bay	26.233833	-112.485417
403	https://www.wannasurf.com/spot/North_America/USA/Gulf_Coast/Alabama/index.html	Alabama	NaN	NaN
860	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/Seamus_Point/index.html	Seamus Point	NaN	NaN
861	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/Ship_Wrecks/index.html	Ship Wrecks	23.11945	-109.528067
862	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/shipwrecks/index.html	Shipwrecks	23.11945	-109.528067
863	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/Terranova/index.html	Terranova	23.155617	-109.493067
864	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/The_Estuary/index.html	The Estuary	23.048	-109.682183
865	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/the_rock/index.html	The rock	23.024517	-109.7138
866	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Sur/zippers/index.html	Zippers	23.0293	-109.714083
867	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Anclote/index.html	Anclote	20.767867	-105.519983
868	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/cerritos/index.html	Cerritos	NaN	NaN
869	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/camerones/index.html	El Camaron	23.23785	-106.4473
870	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/El_Faro/index.html	El Faro	21.525517	-105.29055
871	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/el_quijote/index.html	El Quijote	NaN	NaN
872	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/El_Skupa/index.html	El Skupa	20.7674	-105.538117
873	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/lalancha/index.html	La lancha	20.748333	-105.441967
874	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Las_Barras_de_Piaxtla/index.html	Las Barras de Piaxtla	23.74575	-106.843417
875	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Las_Flores/index.html	Las Flores	23.241733	-106.453483
876	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/matanchan_bay/index.html	las islitas	21.5158	-105.24705
877	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/lola_s/index.html	Lola's	21.18705	-105.229967
878	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/los_pinos/index.html	Los pinos	23.208917	-106.428317
879	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Milagro/index.html	Milagro	23.795633	-106.882
880	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/oceanica/index.html	Oceanica	NaN	NaN
404	https://www.wannasurf.com/spot/North_America/USA/Gulf_Coast/Texas/index.html	Texas	NaN	NaN
881	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/ollas_altas/index.html	Olas altas	NaN	NaN
882	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/patoles/index.html	Patoles	23.743483	-106.8453
883	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Platanitos/index.html	Platanitos	NaN	NaN
884	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/playa_brueha/index.html	Playa Brueha	23.30355	-106.49185
885	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Playa_Novillero/index.html	Playa Novillero	22.378133	-105.6868
886	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/pools/index.html	Pools	NaN	NaN
887	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/punta_custadio/index.html	Punta Custodio	21.346483	-105.246817
888	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/punta_mita/index.html	Punta Mita	20.763983	-105.541883
889	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/rukos/index.html	Rucos	23.442033	-106.581583
890	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/san_blas/index.html	San Blas	21.527617	-105.284317
891	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/san_pancho/index.html	San Pancho	20.900767	-105.41715
892	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/santa_cruz/index.html	Santa Cruz	21.43545	-105.203883
893	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/stone_island/index.html	Stone Island	NaN	NaN
894	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/stoners/index.html	Stoners	21.513267	-105.26185
895	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/Tiburon/index.html	Tiburon	23.802617	-106.883917
896	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/valentinos/index.html	Valentinos	23.23755	-106.446783
897	https://www.wannasurf.com/spot/Central_America/Mexico/Sinaloa-Nayarit/viva_vallarta/index.html	Viva Vallarta	NaN	NaN
898	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/arroyo_seco/index.html	Arroyo seco	19.317217	-104.945717
899	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/Barra_de_Navidad/index.html	Barra de Navidad	19.204667	-104.692667
900	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/chacala/index.html	Chacala	21.187567	-105.229883
901	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/el_tecuan/index.html	El Tecuan	20.23765	-105.573833
902	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/Paraiso/index.html	Paraiso	18.874633	-103.989433
405	https://www.wannasurf.com/spot/North_America/USA/Gulf_Coast/Louisiana/index.html	Louisiana	NaN	NaN
903	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/pasqwalis/index.html	Pascuales	18.855283	-103.96105
904	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/puerto_vallarta/index.html	Puerto Vallarta	20.738133	-105.402833
923	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/rio_nexpa/index.html	Rio Nexpa (Nexpa River)	18.085517	-102.791133
905	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/punta_burros/index.html	Punta Burros	NaN	NaN
906	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/quimixto/index.html	Quimixto	NaN	NaN
907	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/quixtmo/index.html	Quixtmo	NaN	NaN
908	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/ranchito/index.html	Ranchito	19.239683	-104.735333
909	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/rancho_de_las_olas/index.html	Rancho de las Olas	NaN	NaN
910	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/San_Blas_Beach/index.html	San Blas Beach	NaN	NaN
911	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/sayulita/index.html	Sayulita	20.874533	-105.451583
912	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/vallarta_rivermouth/index.html	Vallarta Rivermouth	NaN	NaN
913	https://www.wannasurf.com/spot/Central_America/Mexico/Jalisco/veneros/index.html	Veneros	20.7887	-105.506683
1059	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Kalyves/index.html	Kalyves	35.45265	24.17525
914	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/arenas_blancas/index.html	Arenas Blancas	NaN	NaN
915	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/boca_de_apisa/index.html	Boca de Apisa	19.163333	-104.414067
916	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/boca_de_pascuales/index.html	Boca de Pascuales	NaN	NaN
917	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/huahua/index.html	Huahua	NaN	NaN
918	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/la_ticla/index.html	La Ticla	18.45415	-103.558567
919	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/las_penas/index.html	Las Peñas	NaN	NaN
920	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/Maruata/index.html	Maruata	NaN	NaN
921	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/Playa_Saladita/index.html	Playa Saladita	NaN	NaN
922	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/rio_nexpa_-_beach_break/index.html	Rio Nexpa - Beach break	NaN	NaN
935	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/playa_bon_fil/index.html	Playa Bonfil	NaN	NaN
2103	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Meadows_point/index.html	Meadows point	44.05915	-64.632117
924	https://www.wannasurf.com/spot/Central_America/Mexico/Michoacan/san_juan_de_alima/index.html	San Juan De Alima	NaN	NaN
925	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/Barra_de_coyuca/index.html	Barra de coyuca	16.917	-100.0109
926	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/barra_vieja/index.html	Barra Vieja	16.688233	-99.629817
927	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/barrio_nuevo/index.html	Barrio Nuevo	NaN	NaN
928	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/el_eslabon/index.html	El Eslabon	NaN	NaN
929	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/escolleras/index.html	Escolleras	NaN	NaN
930	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/la_barrita/index.html	La Barrita	17.41515	-101.185883
931	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/La_Boca/index.html	La Boca	NaN	NaN
932	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/La_Bonfil/index.html	La Bonfil	16.743633	-99.75865
933	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/las_gatas/index.html	Las Gatas	17.62045	-101.553517
934	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/loma_bonita/index.html	Loma Bonita	NaN	NaN
936	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/playa_linda/index.html	Playa Linda	17.663883	-101.653083
937	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/playa_princess/index.html	Playa Princess	NaN	NaN
938	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/Revolcadero/index.html	Revolcadero	16.787617	-99.8204
939	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/saladita/index.html	Saladita	17.839217	-101.771817
940	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/the_ranch/index.html	The Ranch	17.91645	-101.86905
941	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/troncones_beachbreak/index.html	Troncones beachbreak	NaN	NaN
942	https://www.wannasurf.com/spot/Central_America/Mexico/Guerrero/troncones_point/index.html	Troncones point	17.794417	-101.747533
943	https://www.wannasurf.com/spot/Central_America/Mexico/Gulf/isla-do-cozumel/index.html	Cozumel Island	NaN	NaN
944	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/dapinglan/index.html	Dapinglan	NaN	NaN
945	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/Dong_Sha/index.html	Dong Sha	29.88205	122.414533
946	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/Gloden_beach/index.html	Gloden beach	35.961333	120.247417
981	https://www.wannasurf.com/spot/Asia/Russia/Far_East/Kamchatka_Peninsula/index.html	Kamchatka Peninsula	NaN	NaN
982	https://www.wannasurf.com/spot/Asia/Russia/Far_East/Primorsky_Krai/index.html	Primorsky Krai	NaN	NaN
947	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/Gwen_s_Mouth/index.html	Gwen's Mouth	36.27085	120.687567
948	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/Laoshan/index.html	Laoshan	NaN	NaN
1060	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/iraklio_beach/index.html	Konaki Beach	35.332233	25.249583
949	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/qingdao/index.html	Qingdao	NaN	NaN
950	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/raoul_s/index.html	Raoul's	NaN	NaN
951	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/seal_tub_beach/index.html	Seal Tub Beach	37.541733	122.100483
952	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/shilaoren/index.html	Shilaoren	NaN	NaN
953	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/watwat/index.html	Watwat	NaN	NaN
954	https://www.wannasurf.com/spot/Asia/China/Yellow_Sea/yantaiqian/index.html	Yantaiqian	NaN	NaN
955	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/Funingwan/index.html	Funingwan	26.753467	120.094817
956	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/haitan_dao/index.html	Haitan dao	NaN	NaN
957	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/jiujiajien/index.html	Jiujiajien	NaN	NaN
958	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/Mazu_Eikon/index.html	Mazu Eikon	23.22605	116.684867
959	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/Qingshan_Wan__Fujian/index.html	Qingshan Wan, Fujian	24.891733	118.873617
960	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/sansha/index.html	Sansha	NaN	NaN
961	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/sheng_si_island/index.html	Sheng Si Island	NaN	NaN
962	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/The_silver_dragon/index.html	The silver dragon	30.288517	120.279367
963	https://www.wannasurf.com/spot/Asia/China/East_China_Sea/waingro_s/index.html	Waingro's	NaN	NaN
964	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/da_mei_sha_beach/index.html	Da Mei Sha beach	NaN	NaN
965	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/Dadonghai/index.html	Dadonghai	18.220867	109.517733
966	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/dongshan_dao/index.html	Dongshan Dao	23.66905	117.4562
967	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/hai_tang_wan/index.html	Hai Tang Wan	NaN	NaN
968	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/Houhai/index.html	Houhai	18.267533	109.7217
983	https://www.wannasurf.com/spot/Asia/Russia/Far_East/Sakhalin/index.html	Sakhalin Oblast	NaN	NaN
969	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/jeshi/index.html	Jeshi	NaN	NaN
970	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/jinzonglu/index.html	JinZonglu	18.233333	109.646383
971	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/Macau_HacSa_Beach/index.html	Macau HacSa Beach	22.122933	113.571333
972	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/maoming_refinery/index.html	Maoming Refinery	NaN	NaN
973	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/ocean_bay_golf_club/index.html	Ocean Bay Golf Club	18.406983	109.959233
974	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/ri_yue_wan/index.html	Ri yue wan	NaN	NaN
975	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/sanya/index.html	Sanya	NaN	NaN
976	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/shangchuan_dao/index.html	Shangchuan dao	NaN	NaN
977	https://www.wannasurf.com/spot/Asia/China/South_China_Sea/xi_chong/index.html	Xichong	22.477267	114.533067
978	https://www.wannasurf.com/spot/Asia/Russia/Finnish_Bay/ATLANTIS/index.html	Atlantis	60.143767	29.92635
979	https://www.wannasurf.com/spot/Asia/Russia/Finnish_Bay/Dunes__Sestrorezk/index.html	Dunes, Sestrorezk	60.1195	29.941717
980	https://www.wannasurf.com/spot/Asia/Russia/Finnish_Bay/Mis_Flotskiy/index.html	Mys Flotskiy	60.161917	29.142433
984	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Ashe/index.html	Ashe	43.9566	39.263683
985	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Chaika/index.html	Chaika	43.418117	39.920833
986	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Donuzlove/index.html	Donuzlove	45.328783	32.982867
1002	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/kastrosikia_spot/index.html	Kastrosikia spot	39.0885	20.647433
987	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Khosta-Rica/index.html	Khosta-Rica	43.506333	39.868583
988	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Cudepsta/index.html	Kudepsta	43.494517	39.883017
989	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Park_Pobedy/index.html	Park Pobedy	44.610417	33.45715
990	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Rabochiy/index.html	Rabochiy	44.6538	34.404917
991	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Radostniy/index.html	Radostniy	44.821367	34.868817
992	https://www.wannasurf.com/spot/Asia/Russia/Black_Sea/Southern_Cape/index.html	Southern Cape	44.8921	37.295167
993	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Agios_Giorgios_-_Corfu/index.html	Agios Giorgios - Corfu	39.714983	19.68115
994	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/alykes/index.html	alykes	38.31795	21.426083
995	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Ammes_Beach/index.html	Ammes Beach	38.109233	20.506933
996	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/amoudia_left/index.html	Amoudia Left	39.2377	20.478
997	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/amoudia_right/index.html	Amoudia right	NaN	NaN
998	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/arila_right/index.html	Arila right	NaN	NaN
999	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Glyfada_Corfu/index.html	Glyfada Corfu	39.5921	19.8055
1000	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Kalo_Nero/index.html	Kalo Nero	37.295283	21.6919
1001	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/kastro_point/index.html	Kastro Point	39.28425	20.396583
1003	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/katouristra_spot/index.html	Katouristra spot	NaN	NaN
1004	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/kerentza/index.html	Kerentza	NaN	NaN
1005	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/krioneri_parga/index.html	Krioneri PARGA	39.282517	20.40445
1006	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/lygia/index.html	Ligia - Preveza	39.140583	20.576533
1007	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/ligia_reef/index.html	Ligia reef	39.128467	20.588033
1008	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/ligia_reef_left/index.html	Ligia reef Left	NaN	NaN
406	https://www.wannasurf.com/spot/North_America/USA/Gulf_Coast/Florida/index.html	Florida	NaN	NaN
1009	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/little_bay/index.html	Little bay	NaN	NaN
1010	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Lourdas_Beach/index.html	Lourdas Beach	38.112133	20.624767
1011	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/loutsa/index.html	Loutsa	39.179583	20.539633
1012	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Makris_Gialos/index.html	Makris Gialos	38.1521	20.480667
1013	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/mitikas_reef/index.html	Mitikas reef	NaN	NaN
1014	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Necromantion_pipeline/index.html	Necromantion pipeline	NaN	NaN
1015	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/Niforeika/index.html	Niforeika	38.162467	21.5144
1016	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/shark_reef/index.html	Shark reef	38.9829	20.707167
1017	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/stonebread/index.html	stonebread	39.121117	20.59515
1019	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/the_crag/index.html	The Crag	NaN	NaN
1020	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/the_island/index.html	The island	NaN	NaN
1021	https://www.wannasurf.com/spot/Europe/Greece/Ionian_Sea/tis_poutanas_to_kangelo/index.html	tis poutanas to kangelo	38.835017	20.6579
1022	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/agios_ioannis_-_pelion/index.html	Agios Ioannis - Pelion	NaN	NaN
1023	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Andros__Hora_/index.html	Andros (Hora)	37.84055	24.93755
1024	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Apollonas__Naxos/index.html	Apollonas. Naxos	37.180017	25.5542
1025	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Ateni_Beach/index.html	Ateni Beach	37.9104	24.839083
1026	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/chorefto/index.html	Chorefto	39.45435	23.122183
1027	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/golden_beach_thassos/index.html	Golden Beach, Thassos	40.727683	24.759917
1028	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/kalamitsi/index.html	kalamitsi	39.945217	23.95405
1029	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/poseidi/index.html	Poseidi	NaN	NaN
1030	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Sarti_Beach/index.html	Sarti Beach	40.0892	23.978983
1031	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Skiathos_-_Ilias__Madraki/index.html	Skiathos - Ilias, Madraki	39.167667	23.404917
1032	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Skiathos_-_Small_King/index.html	Skiathos - Small King	39.154817	23.470933
1033	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Skiathos-Vasilias_/index.html	Skiathos-Vasilias 	39.155133	23.470983
1034	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Sykia_beach/index.html	Sykia beach	40.038617	23.98695
1035	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/tinos__-_kolimbithres/index.html	Tinos island - Kolimbithres	37.63075	25.14255
1036	https://www.wannasurf.com/spot/Europe/Greece/Aegean_Sea/Agios_Ioannis_Port/index.html	VOLOS Agios Ioannis Port	39.41935	23.161583
1037	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/agamemnon_island/index.html	Agamemnon/Kouloura Island	36.806083	21.72135
1038	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Agios_Dimitrios/index.html	Agios Dimitrios	37.805083	23.851217
1039	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/agrili/index.html	Agrili	37.215617	21.5971
1040	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Bouka/index.html	Bouka	36.992967	21.648367
1041	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Great_Palouki/index.html	Great Palouki	37.753617	21.302667
1042	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Xamolia/index.html	Kokkino Limanaki	38.027883	24.005983
1043	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/lakouvardos/index.html	Lakouvardos	37.09035	21.582
1044	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Limani_Pasa_Beach/index.html	Limani Pasa Beach	37.678117	24.053883
1061	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/makri_gialos_harbour/index.html	Makri Gialos harbour	NaN	NaN
1045	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Rafina/index.html	Rafina	38.01855	24.01435
1046	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/ulumitsu/index.html	ulumitsu	NaN	NaN
1047	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Vari/index.html	Vari	37.8201	23.811033
1048	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/Voidokoilia/index.html	Voidokoilia	36.963267	21.658767
1049	https://www.wannasurf.com/spot/Europe/Greece/Pelloponisos/vouliagmeni/index.html	Vouliagmeni	37.812567	23.77695
1050	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Agia_Fotia/index.html	Agia Fotia	35.196067	26.15085
1051	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/agia_marina/index.html	Agia Marina	NaN	NaN
1052	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/almirida/index.html	Almirida	NaN	NaN
1053	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/almiros/index.html	Almiros	35.176783	25.709717
1054	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Barbie_s_Eyes__Stomio/index.html	Barbie's Eyes  Stomio	NaN	NaN
1055	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/dirty_beach/index.html	Dirty Beach	NaN	NaN
1056	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/elunta_beach/index.html	Elunta beach	NaN	NaN
1057	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/falasarna/index.html	Falasarna Reef	35.4808	23.560183
1058	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/golden_bay/index.html	Golden Bay	NaN	NaN
1062	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Neighbour_beach_from_Makri_Gialos/index.html	Neighbour beach from Makri Gialos	NaN	NaN
1063	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/peristeras/index.html	Peristeras	35.002433	25.7674
1064	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Plakias_beach/index.html	Plakias beach	NaN	NaN
1065	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/platanias/index.html	Platanias	NaN	NaN
1066	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/preveli/index.html	Preveli	35.142367	24.477533
1067	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/secret_north_iraklio/index.html	Secret north Iraklio	NaN	NaN
1068	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Sfinari/index.html	Sfinari	35.422833	23.56405
1069	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Stalida_Beach/index.html	Stalida Beach	35.29495	25.427517
1070	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Stalos/index.html	Stalos	35.512633	23.954017
1071	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Strofi/index.html	Strofi	35.035367	25.9694
1072	https://www.wannasurf.com/spot/Europe/Greece/Crete_Island/Voulisma/index.html	Voulisma	35.1252	25.743117
1073	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/Abrami_Beach/index.html	Abrami Beach	37.1733	25.48015
1074	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/Acropolis/index.html	Acropolis	36.09625	28.085383
1075	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/sfikounta_beach/index.html	Chios - Sfikounta beach	NaN	NaN
1076	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/evia_-_hiliadou-metohi/index.html	Evia - Hiliadou-Metohi	NaN	NaN
1077	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/evia_-_kimi/index.html	Evia - Kimi	38.631717	24.1266
1078	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/ikaria_-_armenistis/index.html	Ikaria - Armenistis	37.631083	26.090633
1079	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/IOS_Plakoto/index.html	IOS Plakoto	36.78455	25.277483
1080	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/Kolimphitra_Bay/index.html	Kolimphitra Bay	NaN	NaN
1081	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/kos_-_agios_theologos/index.html	Kos - Agios Theologos	NaN	NaN
1082	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/Mircos_Point/index.html	Mircos Point	36.383583	28.02135
1083	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/naxos_apollonas/index.html	Naxos apollonas	37.17865	25.5547
1084	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/paraporti/index.html	Paraporti	NaN	NaN
1085	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/prasonisi/index.html	prasonisi	35.882067	27.75205
1086	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/Meltemi_Power_Rhodos/index.html	Rhodos - Meltemi Power Rhodos	NaN	NaN
1087	https://www.wannasurf.com/spot/Europe/Greece/Greek_Islands/tinos-leivada/index.html	Tinos-Leivada	37.610967	25.238167
1115	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/medio_ahogado/index.html	Medio Ahogado	NaN	NaN
1088	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/Kota_Belud/index.html	Kota Belud	6.445367	116.435167
1142	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/Morro_Negro/index.html	Morro Negro	29.114283	-13.662033
1089	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/Kudat/index.html	Kudat	7.031133	116.741317
512	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/hashikui/index.html	Hashikui	NaN	NaN
1090	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/Nexus/index.html	Nexus	6.116683	116.10705
1091	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/Nexus_west_end/index.html	Nexus west end	6.116883	116.0976
1092	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/PANDAN_BEACH/index.html	PANDAN BEACH	1.764167	109.865333
1093	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/Shabandar/index.html	Shabandar	6.201733	116.176283
1094	https://www.wannasurf.com/spot/Asia/Malaysia/Borneo/Tanjung_Aru_beach_3/index.html	Tanjung Aru beach 3	5.9334	116.046633
1095	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/arguineguin/index.html	Arguineguin	27.755267	-15.679017
1096	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Bocabarranco/index.html	Bocabarranco	28.158783	-15.665417
1097	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/boquines/index.html	Boquines	28.146667	-15.560883
1098	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Derecha_del_alto/index.html	Derecha del alto	28.146167	-15.56715
1099	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/derecha_del_castillo/index.html	Derecha del castillo	NaN	NaN
1100	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/el_air/index.html	El Air	NaN	NaN
1102	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/el_confital/index.html	El Confital	28.1582	-15.43445
1103	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/el_fronton/index.html	El Frontón	28.165083	-15.654233
1104	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/lloret/index.html	El Lloret	28.1293	-15.451983
1105	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/el_picacho/index.html	El picacho	NaN	NaN
1106	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/el_roque_-_la_pena/index.html	El Roque - La Peña	NaN	NaN
1107	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Emiliano/index.html	Emiliano	28.16005	-15.664033
1108	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/juan_grande/index.html	Juan Grande	27.7944	-15.470783
1109	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/la_barra/index.html	La Barra	NaN	NaN
1110	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/la_cicer/index.html	La Cicer	28.131033	-15.447833
1111	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/la_guancha/index.html	La Guancha	NaN	NaN
1112	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/la_puntilla/index.html	La Puntilla	NaN	NaN
1113	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/los_enanos/index.html	Los Enanos	28.1465	-15.552167
1116	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/mosca_point/index.html	Mosca Point	27.834567	-15.41835
1117	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Muelle_de_San_Cristobal/index.html	Muelle de San Cristobal	28.074533	-15.4137
1118	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Playa_del_Hombre/index.html	Playa del Hombre	27.99665	-15.374467
1101	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/el_bajo/index.html	El Bajo	NaN	NaN
1119	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/playa_del_ingles/index.html	Playa del Inglés	27.752617	-15.56715
1120	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/playa_del_majar/index.html	Playa Del Majar	NaN	NaN
1122	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/quintanilla/index.html	Quintanilla	NaN	NaN
1123	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Soledad/index.html	Soledad	28.145517	-15.574933
1124	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/Vagabundos/index.html	Vagabundos	28.144617	-15.600333
1125	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/arrieta/index.html	Arrieta	29.128117	-13.4642
1126	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/boca_del_abajo/index.html	Boca del Abajo	29.120817	-13.660133
1127	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/caleta_de_caballo/index.html	Caleta de caballo	29.1174	-13.639567
1143	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/orzola/index.html	Orzola	NaN	NaN
1128	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/caleta_de_famara/index.html	Caleta de Famara	29.11805	-13.56185
1129	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/el_centro/index.html	El centro	29.112083	-13.663017
1130	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/el_corral/index.html	el corral	29.237583	-13.534133
1131	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/El_Pollon/index.html	El Pollon	29.2521	-13.51585
1132	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/el_quemao/index.html	El Quemao	29.109883	-13.666633
1133	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/el_risco/index.html	El Risco	29.207767	-13.497567
1134	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/ghost_town/index.html	Ghost town	29.1171	-13.63535
1135	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/jameos_del_aqua/index.html	Jameos del Agua	29.154233	-13.429383
1136	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/la_graciosa/index.html	La graciosa	29.239867	-13.525417
1137	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/la_Graciosa___Golden_Eye_/index.html	la Graciosa: "Golden Eye"	29.266867	-13.52425
1138	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/la_santa/index.html	La Santa	29.111583	-13.6648
1139	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/lago/index.html	lago	29.137	-13.455633
1140	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/las_cucharas/index.html	Las Cucharas	28.99845	-13.487383
1141	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/Mini_pipe/index.html	Mini pipe	29.205383	-13.503333
1144	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/playa_canteria/index.html	Orzola(playa canteria)	29.225583	-13.462033
1145	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/Playa_de_Famara/index.html	Playa de Famara	29.12615	-13.538767
1146	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/punta_mujeres/index.html	Punta Mujeres	29.140167	-13.45225
1147	https://www.wannasurf.com/spot/Europe/Canary/Lanzarote/san_juan/index.html	San Juan	29.126983	-13.57355
1148	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Acid_Drop/index.html	Acid Drop	28.74775	-13.933833
1149	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Caletta/index.html	Caletta	28.7505	-13.932267
1150	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/campo_de_futbol/index.html	campo de futbol	28.237367	-14.2139
1152	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/cotillo_beach/index.html	Cotillo beach	28.67395	-14.01005
1153	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Cruz_Roja/index.html	Cruz Roja	28.04575	-14.328333
1154	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/derecha_de_los_alemanes/index.html	Derecha de los Alemanes	28.739233	-13.9553
1155	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/el_burro/index.html	El Burro	28.687033	-13.83
1156	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/el_muelle/index.html	El muelle	28.742483	-13.86295
1157	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/escalera/index.html	Escalera	28.6485	-14.021433
1158	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/la_hennerosa/index.html	Generoso	28.754683	-13.88555
1159	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Gravejard/index.html	Gravejard	28.747983	-13.872233
1160	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/hierro_left/index.html	Hierro(left)	28.7404	-13.95465
1161	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/la_pared/index.html	La Pared	28.214933	-14.2226
1162	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Las_Playas_Muelle/index.html	Las Playas Muelle	28.22775	-13.985117
1163	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Los_Hoteles/index.html	Los Hoteles	28.709817	-13.837433
1164	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/los_lobos/index.html	Los Lobos	28.748817	-13.8357
1165	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/majanicho/index.html	Majanicho	28.74395	-13.93595
1166	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/mejillones/index.html	Mejillones	28.753133	-13.923733
1168	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Palya_de_Garcey/index.html	Palya de Garcey	28.347183	-14.178183
1169	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/playa_blanca/index.html	Playa blanca	28.4745	-13.8658
1170	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/playa_de_esquinzo/index.html	Playa de Esquinzo	28.63575	-14.026567
1171	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/playa_de_mujer/index.html	playa de mujer	28.571717	-14.048783
1172	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/playa_de_salinas/index.html	Playa de Salinas	28.050767	-14.3557
1174	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/punta_blanca/index.html	Punta Blanca	28.726017	-13.990233
1175	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/punta_gorda/index.html	Punta Gorda	28.720717	-13.99985
1176	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/racetracks/index.html	Racetracks	NaN	NaN
1177	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/rocky_point/index.html	Rocky point	28.733533	-13.85575
1178	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/rocky_point_outside/index.html	Rocky Point Outside	28.7365	-13.855483
1179	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Salinas/index.html	Salinas	28.074033	-14.456983
1180	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/spew_pits/index.html	Spew pits	28.702633	-14.025167
1181	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/suicidios/index.html	Suicidios	28.755583	-13.895083
1182	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/the_bubble/index.html	The Bubble	28.742133	-13.951483
1183	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/tindaya/index.html	Tindaya	28.571983	-14.048717
1184	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/almaciga/index.html	Almáciga	28.572067	-16.192617
1185	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/Atlantic_Playa/index.html	Atlantic Playa	28.04955	-16.5298
1186	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/Bajamar/index.html	Bajamar	28.5572	-16.34035
1187	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/Barranquera/index.html	Barranquera	28.5361	-16.399217
1188	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/benijo/index.html	Benijo	28.574583	-16.188683
1189	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/billboards/index.html	Billboards	NaN	NaN
1190	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/bristol/index.html	Bristol	NaN	NaN
1191	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/candelaria/index.html	Candelaria	28.35225	-16.369517
1192	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_arenal/index.html	El Arenal	28.558633	-16.333183
1193	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_bunker/index.html	El Bunker	NaN	NaN
1207	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_fitenia/index.html	La Fitenia	NaN	NaN
1194	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_cabezo_-_el_bunker/index.html	El Cabezo - El Bunker	NaN	NaN
1195	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/EL_CHALET/index.html	EL CHALET	28.2011	-16.83155
1196	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_charco_-_la_piscina/index.html	El Charco - La Piscina	28.5562	-16.3432
1197	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_conquistador/index.html	El Conquistador	28.057083	-16.737467
1198	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_dedo/index.html	El dedo	28.0556	-16.738767
1199	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_lobo/index.html	El Lobo	28.555983	-16.34175
1200	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/el_medano/index.html	El Medano	28.039567	-16.542083
1201	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/El_Roque_Taganana/index.html	El Roque Taganana	28.5697	-16.204917
1202	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/igueste/index.html	Igueste	28.523	-16.154717
1203	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_caleta/index.html	La Caleta de adeje	28.103183	-16.757067
1204	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_caseta_del_telegrapho/index.html	la caseta del telegrapho	28.376	-16.807267
1205	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_derecha/index.html	La Derecha	28.058517	-16.7369
1206	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_enramada/index.html	La Enramada	NaN	NaN
1208	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_izquierda/index.html	La Izquierda (Spanish Left)	28.063	-16.734733
1209	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_machacona/index.html	La Machacona	28.029067	-16.566817
1210	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/la_tejita__el_medano_/index.html	La Tejita (El Medano)	28.0296	-16.551933
1211	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/Las_Conchas/index.html	Las Conchas	28.231383	-16.842467
1212	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/las_galletas/index.html	Las Galletas	28.005733	-16.656983
1213	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/las_gaviotas/index.html	Las Gaviotas	28.51325	-16.175883
1214	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/los_dos_hermanos/index.html	Los dos Hermanos	NaN	NaN
1215	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/Los_Gigantes/index.html	Los Gigantes	28.24785	-16.8409
1216	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/los_patos_-_la_orrotava/index.html	Los Patos - La Orrotava	28.419733	-16.512683
1217	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/piscinas/index.html	Piscinas	NaN	NaN
1218	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/PLAYA_ARENA/index.html	PLAYA ARENA	28.3713	-16.8711
1219	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/Playa_Grande/index.html	Playa Grande	28.152667	-16.43195
1220	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/playa_socorro/index.html	Playa socorro	28.39525	-16.602383
1221	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/poris_de_abona/index.html	Porís de Abona	28.16125	-16.428083
1222	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/puerto_de_la_cruz_-_martianez/index.html	Puerto De La Cruz - Martiánez	28.417483	-16.5411
1223	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/puerto_de_la_cruz_-_playa_jardin/index.html	Puerto de la Cruz - Playa Jardín	28.413517	-16.559183
737	https://www.wannasurf.com/spot/Asia/Indonesia/Sumatra_Mainland/Bengkuku_Beach/index.html	Bengkuku Beach	-3.8155	102.263
1224	https://www.wannasurf.com/spot/Europe/Canary/Tenerife/punta_blanca/index.html	Punta blanca	28.215967	-16.83725
1225	https://www.wannasurf.com/spot/Europe/Canary/Outer_Isles/hermigua/index.html	Hermigua	28.17955	-17.1795
1226	https://www.wannasurf.com/spot/Europe/Canary/Outer_Isles/la_laja_de_tecoron/index.html	La laja de Tecoron	27.67875	-18.030233
1228	https://www.wannasurf.com/spot/Central_America/Turks___Caicos/Pine_Cay/Pine_Cay/index.html	Pine Cay	21.863633	-72.11075
1230	https://www.wannasurf.com/spot/South_America/Peru/North/balconies/index.html	Balconies	-4.667583	-81.325367
1231	https://www.wannasurf.com/spot/South_America/Peru/North/baterias/index.html	Baterias	-4.457317	-81.29925
1232	https://www.wannasurf.com/spot/South_America/Peru/North/cabo_blanco/index.html	Cabo Blanco	-4.250333	-81.235833
1233	https://www.wannasurf.com/spot/South_America/Peru/North/caleta_santa__rosa/index.html	Caleta Santa  Rosa	NaN	NaN
1234	https://www.wannasurf.com/spot/South_America/Peru/North/chicama/index.html	Chicama	-7.705017	-79.452283
1235	https://www.wannasurf.com/spot/South_America/Peru/North/El_Cape/index.html	El Cape	-7.707583	-79.458817
513	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/hirano/index.html	Hirano	32.960717	132.994567
1236	https://www.wannasurf.com/spot/South_America/Peru/North/pacasmayo/index.html	El Faro - Pacasmayo	-7.41345	-79.589683
1237	https://www.wannasurf.com/spot/South_America/Peru/North/el_golf/index.html	El Golf	-4.598233	-81.294833
1238	https://www.wannasurf.com/spot/South_America/Peru/North/El_Hombre/index.html	El Hombre	-7.7001	-79.442033
1239	https://www.wannasurf.com/spot/South_America/Peru/North/el_hueco/index.html	El Hueco	-4.451933	-81.290417
1240	https://www.wannasurf.com/spot/South_America/Peru/North/El_Nuro/index.html	El Nuro	-4.20185	-81.16305
1241	https://www.wannasurf.com/spot/South_America/Peru/North/huanchaco/index.html	Huanchaco	-8.081917	-79.124917
1242	https://www.wannasurf.com/spot/South_America/Peru/North/Keys/index.html	Keys	-7.708133	-79.46
1243	https://www.wannasurf.com/spot/South_America/Peru/North/La_Guerra/index.html	La Guerra	NaN	NaN
1244	https://www.wannasurf.com/spot/South_America/Peru/North/las_delicias/index.html	Las Delicias	-8.182983	-79.0153
1246	https://www.wannasurf.com/spot/South_America/Peru/North/lobitos/index.html	Lobitos	-4.45175	-81.286167
1247	https://www.wannasurf.com/spot/South_America/Peru/North/los_muelles/index.html	Los muelles	-4.4497	-81.279267
1248	https://www.wannasurf.com/spot/South_America/Peru/North/Malpaso/index.html	Malpaso	-7.71055	-79.468783
1249	https://www.wannasurf.com/spot/South_America/Peru/North/mancora/index.html	Mancora	-4.106133	-81.0597
1250	https://www.wannasurf.com/spot/South_America/Peru/North/nonura/index.html	Nonura	-5.841767	-81.1075
1251	https://www.wannasurf.com/spot/South_America/Peru/North/organos/index.html	Organos	-4.177833	-81.141433
1252	https://www.wannasurf.com/spot/South_America/Peru/North/panic_point/index.html	Panic Point	-4.263683	-81.246817
1253	https://www.wannasurf.com/spot/South_America/Peru/North/pea_redonda/index.html	Peña Redonda	-3.851117	-80.833283
1254	https://www.wannasurf.com/spot/South_America/Peru/North/pimentel/index.html	Pimentel	NaN	NaN
1255	https://www.wannasurf.com/spot/South_America/Peru/North/piscinas/index.html	Piscinas	-4.4456	-81.276083
1256	https://www.wannasurf.com/spot/South_America/Peru/North/poemape/index.html	Puemape	-7.519367	-79.54185
1257	https://www.wannasurf.com/spot/South_America/Peru/North/Puerrup/index.html	Puerrup	-7.3972	-79.572567
1258	https://www.wannasurf.com/spot/South_America/Peru/North/puerto_veleros/index.html	Puerto veleros	NaN	NaN
514	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/ida/index.html	Ida	NaN	NaN
1259	https://www.wannasurf.com/spot/South_America/Peru/North/punta_ballena/index.html	Punta Ballenas	NaN	NaN
1260	https://www.wannasurf.com/spot/South_America/Peru/North/punta_faro/index.html	punta faro	-5.88345	-81.148117
1261	https://www.wannasurf.com/spot/South_America/Peru/North/punta_la_farola/index.html	Punta La Farola	NaN	NaN
1262	https://www.wannasurf.com/spot/South_America/Peru/North/punta_sal/index.html	Punta Sal	-3.9801	-80.9799
1263	https://www.wannasurf.com/spot/South_America/Peru/North/Varadero_El_Nuro/index.html	Varadero El Ñuro	-4.217683	-81.18645
1264	https://www.wannasurf.com/spot/South_America/Peru/North/yacila/index.html	Yacila	-5.129683	-81.169633
1265	https://www.wannasurf.com/spot/South_America/Peru/Central/bermejo/index.html	Bermejo	-10.564017	-77.907833
1266	https://www.wannasurf.com/spot/South_America/Peru/Central/centinela/index.html	Centinela	-11.066483	-77.63755
1267	https://www.wannasurf.com/spot/South_America/Peru/Central/conchitas/index.html	Conchitas	-11.742167	-77.16925
1268	https://www.wannasurf.com/spot/South_America/Peru/Central/el_pico/index.html	El Pico	NaN	NaN
1269	https://www.wannasurf.com/spot/South_America/Peru/Central/el_rebote/index.html	El Rebote	NaN	NaN
1270	https://www.wannasurf.com/spot/South_America/Peru/Central/inferniio/index.html	Infiernillo	-11.74125	-77.156517
1271	https://www.wannasurf.com/spot/South_America/Peru/Central/Marin/index.html	Marin	NaN	NaN
1272	https://www.wannasurf.com/spot/South_America/Peru/Central/paraiso/index.html	Paraiso	NaN	NaN
1273	https://www.wannasurf.com/spot/South_America/Peru/Central/pasamyo/index.html	Pasamayo	-11.668383	-77.2059
1274	https://www.wannasurf.com/spot/South_America/Peru/Central/playa_grande/index.html	Playa Grande	-9.776267	-78.245917
1275	https://www.wannasurf.com/spot/South_America/Peru/Central/Puerto_Morin/index.html	Puerto Morin	-8.428733	-78.92355
1276	https://www.wannasurf.com/spot/South_America/Peru/Central/Roka_Beach/index.html	Roka Beach	-11.871383	-77.156983
1277	https://www.wannasurf.com/spot/South_America/Peru/Central/toma_y_calla/index.html	Toma y calla	NaN	NaN
1278	https://www.wannasurf.com/spot/South_America/Peru/Central/Vesique/index.html	Vesique	NaN	NaN
1279	https://www.wannasurf.com/spot/South_America/Peru/Lima/ala_moana/index.html	Ala Moana	-12.158967	-77.027683
1280	https://www.wannasurf.com/spot/South_America/Peru/Lima/arica/index.html	Arica	NaN	NaN
1281	https://www.wannasurf.com/spot/South_America/Peru/Lima/asia/index.html	Asia - Palmas	-12.778317	-76.608183
1282	https://www.wannasurf.com/spot/South_America/Peru/Lima/Asia_del_Mar/index.html	Asia del Mar	-12.8195	-76.555917
1283	https://www.wannasurf.com/spot/South_America/Peru/Lima/barranquito/index.html	Barranquito	-12.145217	-77.026483
1284	https://www.wannasurf.com/spot/South_America/Peru/Lima/boca_leon/index.html	Boca Leon	NaN	NaN
1285	https://www.wannasurf.com/spot/South_America/Peru/Lima/bujama/index.html	Bujama	NaN	NaN
1286	https://www.wannasurf.com/spot/South_America/Peru/Lima/caballeros/index.html	Caballeros	-12.324917	-76.8382
1287	https://www.wannasurf.com/spot/South_America/Peru/Lima/Cabezo_Norte/index.html	Cabezo Norte	NaN	NaN
1288	https://www.wannasurf.com/spot/South_America/Peru/Lima/camotal/index.html	Camotal	-12.074517	-77.182267
1289	https://www.wannasurf.com/spot/South_America/Peru/Lima/caplina/index.html	Caplina	-12.171417	-77.035733
1290	https://www.wannasurf.com/spot/South_America/Peru/Lima/cascadas/index.html	Cascadas	NaN	NaN
1291	https://www.wannasurf.com/spot/South_America/Peru/Lima/cerro_azul/index.html	Cerro Azul	-13.028	-76.48425
1292	https://www.wannasurf.com/spot/South_America/Peru/Lima/conchan/index.html	Conchan	-12.2528	-76.93215
1293	https://www.wannasurf.com/spot/South_America/Peru/Lima/donesia/index.html	Donesia	NaN	NaN
1294	https://www.wannasurf.com/spot/South_America/Peru/Lima/el_huayco/index.html	El Huayco	-12.38335	-76.789367
1295	https://www.wannasurf.com/spot/South_America/Peru/Lima/el_paso/index.html	El Paso	-12.3399	-76.826533
1296	https://www.wannasurf.com/spot/South_America/Peru/Lima/explosivos/index.html	Explosivos	-12.365	-76.799667
1297	https://www.wannasurf.com/spot/South_America/Peru/Lima/izquierditas/index.html	Izquierditas	NaN	NaN
1298	https://www.wannasurf.com/spot/South_America/Peru/Lima/kon_tiki/index.html	Kon Tiki	-12.3475	-76.823533
1299	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_caleta/index.html	La Caleta	NaN	NaN
1300	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_ensenada/index.html	La Ensenada	NaN	NaN
1301	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_herradura/index.html	La Herradura	-12.180283	-77.037783
1302	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_isla/index.html	La Isla	-12.340417	-76.822583
1303	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_pampilla/index.html	La Pampilla	-12.124267	-77.041317
1304	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_playita/index.html	La Playita	NaN	NaN
1305	https://www.wannasurf.com/spot/South_America/Peru/Lima/la_timba/index.html	La Timba	NaN	NaN
1306	https://www.wannasurf.com/spot/South_America/Peru/Lima/La_Tiza/index.html	La Tiza	-12.443617	-76.775033
1307	https://www.wannasurf.com/spot/South_America/Peru/Lima/las_brisas/index.html	Las Brisas	NaN	NaN
1308	https://www.wannasurf.com/spot/South_America/Peru/Lima/Las_Gramas/index.html	Las Gramas	-12.566067	-76.7186
1309	https://www.wannasurf.com/spot/South_America/Peru/Lima/Las_Orishas/index.html	Las Orishas	-12.124517	-77.0403
1310	https://www.wannasurf.com/spot/South_America/Peru/Lima/makaha/index.html	Makaha	-12.130433	-77.036783
1311	https://www.wannasurf.com/spot/South_America/Peru/Lima/mar_azul/index.html	Mar Azul	NaN	NaN
1312	https://www.wannasurf.com/spot/South_America/Peru/Lima/Naplo/index.html	Naplo	-12.4767	-76.790583
1313	https://www.wannasurf.com/spot/South_America/Peru/Lima/Orillazo/index.html	Orillazo	-12.368717	-76.798983
1314	https://www.wannasurf.com/spot/South_America/Peru/Lima/palillos/index.html	Palillos	NaN	NaN
1315	https://www.wannasurf.com/spot/South_America/Peru/Lima/paraiso/index.html	Paraiso	-11.21195	-77.629917
1316	https://www.wannasurf.com/spot/South_America/Peru/Lima/pena_rosa/index.html	Pena Rosa	-12.384567	-76.78975
1317	https://www.wannasurf.com/spot/South_America/Peru/Lima/penascal/index.html	Penascal	-12.386283	-76.789583
1318	https://www.wannasurf.com/spot/South_America/Peru/Lima/pepinos/index.html	Pepinos	-13.142	-76.393967
1331	https://www.wannasurf.com/spot/South_America/Peru/Lima/quebrada/index.html	Quebrada	NaN	NaN
1319	https://www.wannasurf.com/spot/South_America/Peru/Lima/pico_alto/index.html	Pico Alto	-12.334067	-76.833033
1320	https://www.wannasurf.com/spot/South_America/Peru/Lima/playa_blanca/index.html	Playa Blanca	NaN	NaN
1321	https://www.wannasurf.com/spot/South_America/Peru/Lima/playa_norte/index.html	Playa Norte	-12.335083	-76.830617
1322	https://www.wannasurf.com/spot/South_America/Peru/Lima/playa_sur/index.html	Playa Sur	NaN	NaN
1323	https://www.wannasurf.com/spot/South_America/Peru/Lima/puerto_fiel/index.html	Puerto Fiel	NaN	NaN
1324	https://www.wannasurf.com/spot/South_America/Peru/Lima/puerto_nuevo/index.html	Puerto Nuevo	-12.571733	-76.7165
1325	https://www.wannasurf.com/spot/South_America/Peru/Lima/puerto_viejo/index.html	Puerto Viejo	-12.588917	-76.707233
1326	https://www.wannasurf.com/spot/South_America/Peru/Lima/pulpos/index.html	Pulpos	NaN	NaN
1327	https://www.wannasurf.com/spot/South_America/Peru/Lima/punta_corrientes/index.html	Punta Corrientes	NaN	NaN
1328	https://www.wannasurf.com/spot/South_America/Peru/Lima/punta_rocas/index.html	Punta Rocas	-12.35325	-76.81795
1329	https://www.wannasurf.com/spot/South_America/Peru/Lima/punta_roquitas/index.html	Punta Roquitas	-12.122367	-77.045983
1330	https://www.wannasurf.com/spot/South_America/Peru/Lima/puntilla/index.html	Puntilla	-12.3384	-76.822167
1332	https://www.wannasurf.com/spot/South_America/Peru/Lima/redondo/index.html	Redondo	-12.132067	-77.034517
1333	https://www.wannasurf.com/spot/South_America/Peru/Lima/regatas/index.html	Regatas	-12.165933	-77.035333
1334	https://www.wannasurf.com/spot/South_America/Peru/Lima/San_Antonio__Regatas_/index.html	San Antonio (Regatas)	-12.671117	-76.66475
1346	https://www.wannasurf.com/spot/South_America/Peru/Lima/triangulo/index.html	Triangulo	-12.160333	-77.027667
1335	https://www.wannasurf.com/spot/South_America/Peru/Lima/san_bartolo/index.html	San Bartolo	-12.386533	-76.78345
1336	https://www.wannasurf.com/spot/South_America/Peru/Lima/san_gallan/index.html	San Gallan	NaN	NaN
1337	https://www.wannasurf.com/spot/South_America/Peru/Lima/san_pedro/index.html	San Pedro	NaN	NaN
1338	https://www.wannasurf.com/spot/South_America/Peru/Lima/santa_maria/index.html	Santa Maria	-12.401283	-76.77855
1339	https://www.wannasurf.com/spot/South_America/Peru/Lima/santa_rosa/index.html	Santa Rosa	-12.382	-76.789117
1340	https://www.wannasurf.com/spot/South_America/Peru/Lima/Sarapampa/index.html	Sarapampa	NaN	NaN
1341	https://www.wannasurf.com/spot/South_America/Peru/Lima/senoritas/index.html	Señoritas	-12.328683	-76.83555
1342	https://www.wannasurf.com/spot/South_America/Peru/Lima/silencios/index.html	Silencios	NaN	NaN
1343	https://www.wannasurf.com/spot/South_America/Peru/Lima/sol_y_mar/index.html	Sol y Mar	NaN	NaN
1344	https://www.wannasurf.com/spot/South_America/Peru/Lima/tercerita/index.html	Tercerita	NaN	NaN
1345	https://www.wannasurf.com/spot/South_America/Peru/Lima/totoritas/index.html	Totoritas	NaN	NaN
1348	https://www.wannasurf.com/spot/South_America/Peru/Lima/villa/index.html	Villa	-12.22015	-77.002267
1349	https://www.wannasurf.com/spot/South_America/Peru/Lima/waikiki/index.html	Waikiki	-12.1296	-77.0375
1350	https://www.wannasurf.com/spot/South_America/Peru/Lima/wakama/index.html	Wakama	NaN	NaN
1352	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/Barrigona/index.html	Barrigona	9.881733	-85.5777
1353	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/brasilito/index.html	Brasilito	10.4053	-85.802983
1354	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/camaronal/index.html	Camaronal	9.8622	-85.444183
1355	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/carbo_reef/index.html	Carbo Reef	NaN	NaN
1356	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/el_culo/index.html	NaN	NaN	NaN
1357	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/el_estero/index.html	El Estero- Tamarindo	10.306917	-85.838783
1358	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/el_hoyo/index.html	El Hoyo	NaN	NaN
1359	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/flamingo_point/index.html	Flamingo Point	10.435983	-85.792533
2104	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Minutes/index.html	Minutes	44.62925	-63.41625
1360	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/gulf_of_pelcico/index.html	Gulf of pelcico	NaN	NaN
1361	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/Islita/index.html	Islita	9.852167	-85.400617
1362	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/junquillal/index.html	Junquillal	10.168317	-85.813533
1363	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/labyrinth/index.html	Labyrinth	NaN	NaN
1364	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/laverinto__laverint/index.html	Laverinto (Laverint)	10.823767	-85.800667
1365	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/little_hawaii/index.html	Little hawaii	NaN	NaN
1366	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/los_bados/index.html	Los Bados	NaN	NaN
1367	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/mal_pais/index.html	Mal Pais- Santa Teresa	9.626817	-85.152117
1368	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/mar_azul/index.html	Mar Azul	NaN	NaN
1369	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/marbella/index.html	Marbella	10.073567	-85.772367
1819	https://www.wannasurf.com/spot/Europe/France/Vendee/st_jean_de_monts/index.html	St jean de monts	46.773767	-2.060583
1370	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/nosara/index.html	Nosara  Beach	9.982817	-85.695617
1371	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/olgas/index.html	Olgas	NaN	NaN
1372	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/ollies_point/index.html	Ollie´s Point	10.85245	-85.802533
1373	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/ostional/index.html	Ostional	10.039683	-85.74555
1374	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/pelada/index.html	Pelada	9.953217	-85.676183
1375	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/pico_grande/index.html	Pico Grande	10.302767	-85.841133
1376	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/pico_pequeno/index.html	Pico Pequeno	NaN	NaN
1377	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/avellana/index.html	Playa Avellana	10.228067	-85.837567
1378	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_coyote/index.html	Playa Coyote	9.789583	-85.28275
1379	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_grande/index.html	Playa Grande	10.31635	-85.841583
1380	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_guiones/index.html	Playa Guiones	9.94725	-85.673517
1381	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_jackals/index.html	Playa Jackals	NaN	NaN
1382	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_lagosta/index.html	Playa Langosta	10.286117	-85.851367
1383	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_los_cedros/index.html	Playa los Cedros	NaN	NaN
1384	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_negra/index.html	Playa Negra	10.195867	-85.832283
1385	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_nosara/index.html	Playa Nosara	9.944583	-85.672433
1386	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/playa_samara/index.html	Playa samara	9.880417	-85.526633
1387	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/raps/index.html	raps	10.172683	-85.81765
1388	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/Rivermouth_at_Avellanas/index.html	Rivermouth at Avellanas	10.23595	-85.841167
1389	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/roca_bruja/index.html	Roca Bruja	10.780533	-85.683067
1390	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/santa_teresa/index.html	Santa Teresa	9.637217	-85.168167
1391	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/Scardog_reef/index.html	Scardog reef	10.84705	-85.856517
1392	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/suizo/index.html	Suizo	10.2982	-85.847683
1598	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/punta_molentis__sardinia/index.html	Punta molentis	NaN	NaN
1393	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/Sunset_Reef/index.html	Sunset Reef	9.59675	-85.145033
1394	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Guanacaste/tamarindo/index.html	Tamarindo	10.301917	-85.842317
1395	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/agujas/index.html	Agujas	9.7227	-84.653933
1396	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/backwash/index.html	Backwash	8.391467	-83.279117
1397	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/bajamar/index.html	Bajamar	9.85885	-84.70115
1398	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/bejuco/index.html	Bejuco	9.5181	-84.436117
1399	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/boca_baranca/index.html	Boca Barranca	9.959217	-84.7403
1400	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/boca_quepos/index.html	Boca quepos	NaN	NaN
1401	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/caldera/index.html	caldera	NaN	NaN
1402	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/corralillo/index.html	Corralillo	9.901383	-84.72845
1403	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/cutters_right/index.html	Cutters Right	NaN	NaN
1404	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/dominical/index.html	Dominical	9.2486	-83.861733
1405	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/dona_ana/index.html	Dona ana	NaN	NaN
1406	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/el_ollo/index.html	El ollo	NaN	NaN
1407	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/escondida/index.html	Escondida	NaN	NaN
1408	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/esterillos/index.html	Esterillos	9.527033	-84.503233
1409	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/eserillos_oeste/index.html	Esterillos Oeste	9.527533	-84.499183
1410	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/Gully_s/index.html	Gully's	9.570617	-84.59885
1581	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Is_Arenas/index.html	Is Arenas	40.071183	8.4801
1411	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/playa_hermosa/index.html	Hermosa	9.575183	-84.606567
1412	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/eradura/index.html	Herradura	NaN	NaN
1413	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/jaco_beach/index.html	Jaco Beach	9.59855	-84.621583
1414	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/la_isla/index.html	La Isla	NaN	NaN
1415	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/manuel_antonio/index.html	Manuel Antonio	9.38945	-84.148583
1416	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/matapalo/index.html	Matapalo	8.384833	-83.279883
1417	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/North_Playitas/index.html	North Playitas	NaN	NaN
1418	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/pan_dulce/index.html	Pan Dulce	8.395283	-83.277017
1419	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/pavones/index.html	Pavones	8.39285	-83.139367
1420	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/perro_fino/index.html	Perro Fino	9.59025	-84.6264
1421	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/playa_bejuca/index.html	Playa Bejuca	9.512383	-84.419117
1422	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/playa_blanca__el_punto_/index.html	Playa Blanca (el punto)	NaN	NaN
1423	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/playa_escondida/index.html	Playa escondida	9.6605	-84.674283
1435	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/Zancudo_Beach/index.html	Zancudo Beach	8.503317	-83.124267
1424	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/playitas/index.html	Playitas	9.396283	-84.16215
1425	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/puerto_caldera/index.html	Puerto Caldera	NaN	NaN
1426	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/punta_mala/index.html	Punta mala	NaN	NaN
1427	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/ricks_right/index.html	Ricks right	NaN	NaN
1428	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/rio_clairo/index.html	Rio Claro	NaN	NaN
1429	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/rio_sierpe_river_mouth/index.html	Rio Sierpe river mouth	NaN	NaN
1430	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/roca_loca/index.html	Roca Loca	9.5895	-84.625283
1431	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/t_box/index.html	T box	NaN	NaN
1432	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/the_tree/index.html	The Tree	9.565717	-84.591983
1433	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/tivives/index.html	Tivives	NaN	NaN
1434	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Pacific_South/turtle_farms/index.html	Turtle farms	NaN	NaN
1436	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/black_beach/index.html	Black Beach	9.67115	-82.787483
1437	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/caca_rio/index.html	Caca rio	NaN	NaN
1438	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/jah_handers/index.html	Jah handers	NaN	NaN
1439	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/los_tumbos/index.html	Los tumbos	NaN	NaN
1440	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/manzanillo/index.html	Manzanillo	9.6351	-82.637783
1441	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/playa_cocles/index.html	Playa cocles	9.651583	-82.73795
1442	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/playa_grande/index.html	Playa grande	NaN	NaN
1443	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/playa_negra/index.html	Playa negra	NaN	NaN
1444	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/punta_uva/index.html	Punta Uva	NaN	NaN
834	https://www.wannasurf.com/spot/Central_America/Mexico/Baja_Norte/Spot2/index.html	Spot2	29.195967	-114.78355
1445	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/salsa_brava/index.html	Salsa Brava	9.655583	-82.756067
1446	https://www.wannasurf.com/spot/Central_America/Costa_Rica/Caribbean/uvita_island/index.html	Uvita Island	NaN	NaN
1447	https://www.wannasurf.com/spot/Europe/Italy/Mainland/46°/index.html	46°	43.6388	10.284967
1448	https://www.wannasurf.com/spot/Europe/Italy/Mainland/acque_calde/index.html	Acque calde ( Savona )	NaN	NaN
1449	https://www.wannasurf.com/spot/Europe/Italy/Mainland/adria/index.html	Adria	42.833333	12.833333
1450	https://www.wannasurf.com/spot/Europe/Italy/Mainland/alassio/index.html	Alassio	44.004967	8.172817
1451	https://www.wannasurf.com/spot/Europe/Italy/Mainland/albenga/index.html	Albenga	44.041267	8.223783
1452	https://www.wannasurf.com/spot/Europe/Italy/Mainland/cartello_-_ansedonia/index.html	Ansedonia - Il Cartello	42.414633	11.27745
1453	https://www.wannasurf.com/spot/Europe/Italy/Mainland/soldati/index.html	Anzio - I Soldati	NaN	NaN
1454	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Arma_di_Taggia/index.html	Arma di Taggia	43.825567	7.845783
1455	https://www.wannasurf.com/spot/Europe/Italy/Mainland/bagni_fiume/index.html	bagni Fiume ( Livorno )	43.519617	10.312683
1456	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Bagni_Roma/index.html	Bagni Roma	43.496833	10.32045
1457	https://www.wannasurf.com/spot/Europe/Italy/Mainland/banzai/index.html	Banzai ( S. Marinella )	42.028367	11.83935
1458	https://www.wannasurf.com/spot/Europe/Italy/Mainland/baratti_il_dado/index.html	Baratti -Il Dado	NaN	NaN
1459	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Bari_Bommie/index.html	Bari Bommie	NaN	NaN
1460	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Belvedere/index.html	Belvedere	41.455633	12.655233
1461	https://www.wannasurf.com/spot/Europe/Italy/Mainland/bocchetta/index.html	Bocchetta ( Viareggio )	43.862267	10.233333
1462	https://www.wannasurf.com/spot/Europe/Italy/Mainland/bogliasco/index.html	Bogliasco	44.377383	9.069217
1463	https://www.wannasurf.com/spot/Europe/Italy/Mainland/cala_della_morte/index.html	Cala della morte ( S. Marinella )	NaN	NaN
1464	https://www.wannasurf.com/spot/Europe/Italy/Mainland/campo_di_mare/index.html	Campo di mare	NaN	NaN
1465	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Cannelle/index.html	Cannelle	42.374717	11.154167
1466	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Capo_bianco___Elba_island__/index.html	Capo bianco ( Elba island )	42.82025	10.312433
1467	https://www.wannasurf.com/spot/Europe/Italy/Mainland/capo_marina/index.html	Capo Marina ( Genova )	NaN	NaN
1468	https://www.wannasurf.com/spot/Europe/Italy/Mainland/capo_vieste/index.html	Capo Vieste	41.9254	16.109217
1469	https://www.wannasurf.com/spot/Europe/Italy/Mainland/carillon/index.html	Carillon ( Paraggi )	NaN	NaN
1470	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Castiglioncello___LI__/index.html	Castiglioncello ( LI )	NaN	NaN
1471	https://www.wannasurf.com/spot/Europe/Italy/Mainland/cavoli/index.html	Cavoli   ( Elba island )	NaN	NaN
1472	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Cesano_-_Piramidi/index.html	Cesano - Piramidi	43.748717	13.176583
1473	https://www.wannasurf.com/spot/Europe/Italy/Mainland/cesenatico/index.html	Cesenatico	NaN	NaN
1474	https://www.wannasurf.com/spot/Europe/Italy/Mainland/chiavari/index.html	Chiavari-Entella	44.309967	9.3313
1475	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Cinquale/index.html	Cinquale	43.976533	10.139683
1476	https://www.wannasurf.com/spot/Europe/Italy/Mainland/ciopu/index.html	Ciopu	NaN	NaN
1477	https://www.wannasurf.com/spot/Europe/Italy/Mainland/circoletto/index.html	Circoletto	NaN	NaN
1478	https://www.wannasurf.com/spot/Europe/Italy/Mainland/cogoleto/index.html	Clotilde Cangemi	44.388383	8.645067
1479	https://www.wannasurf.com/spot/Europe/Italy/Mainland/curvone/index.html	Curvone	NaN	NaN
1480	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Dar_Zagaja/index.html	Dar Zagaja	41.670883	12.39565
1481	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Diano_Marina/index.html	Diano Marina	43.90135	8.077433
1482	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Lido/index.html	Fano - Lido	43.8523	13.01245
1483	https://www.wannasurf.com/spot/Europe/Italy/Mainland/sassonia/index.html	Fano-Sassonia	43.845883	13.028583
1484	https://www.wannasurf.com/spot/Europe/Italy/Mainland/finale_ligure/index.html	Finale Ligure	44.167083	8.34185
1485	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Fiumicino_Nord/index.html	Fiumicino Nord	41.781383	12.224167
1486	https://www.wannasurf.com/spot/Europe/Italy/Mainland/focene/index.html	Focene	NaN	NaN
1540	https://www.wannasurf.com/spot/Europe/Italy/Mainland/recco/index.html	Recco	44.35995	9.1412
1487	https://www.wannasurf.com/spot/Europe/Italy/Mainland/forte_dei_marmi/index.html	Forte dei Marmi (pontile)	43.957067	10.165333
1488	https://www.wannasurf.com/spot/Europe/Italy/Mainland/fossacesia_marina/index.html	Fossacesia marina	NaN	NaN
1489	https://www.wannasurf.com/spot/Europe/Italy/Mainland/garuglia_point/index.html	Garuglia Point	NaN	NaN
1490	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Il_bunker__S_Marinella__/index.html	Il bunker (S.Marinella) 	NaN	NaN
1491	https://www.wannasurf.com/spot/Europe/Italy/Mainland/il_ristorante/index.html	Il ristorante -Tre Zeppi	NaN	NaN
1492	https://www.wannasurf.com/spot/Europe/Italy/Mainland/il_sale/index.html	Il Sale  ( Livorno )	43.498333	10.31945
1493	https://www.wannasurf.com/spot/Europe/Italy/Mainland/il_sasso/index.html	Il Sasso	NaN	NaN
1494	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Il_Sasso__Sassi_Neri_/index.html	Il Sasso (Sassi Neri)	43.532483	13.621067
1495	https://www.wannasurf.com/spot/Europe/Italy/Mainland/kamikaze/index.html	Kamikaze	NaN	NaN
1496	https://www.wannasurf.com/spot/Europe/Italy/Mainland/la_barraca/index.html	La Barraca	NaN	NaN
1497	https://www.wannasurf.com/spot/Europe/Italy/Mainland/La_brava__civitavecchia_/index.html	La brava (civitavecchia)	42.0859	11.796467
1498	https://www.wannasurf.com/spot/Europe/Italy/Mainland/La_Diga_sottomarina/index.html	La Diga sottomarina	45.2286	12.301767
1499	https://www.wannasurf.com/spot/Europe/Italy/Mainland/La_Lampara__Civitanova_Marche/index.html	La Lampara, Civitanova Marche	43.3306	13.7148
1500	https://www.wannasurf.com/spot/Europe/Italy/Mainland/la_sata/index.html	la sata	NaN	NaN
1501	https://www.wannasurf.com/spot/Europe/Italy/Mainland/toscana/index.html	La Toscana	42.038417	11.917033
1502	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Lacona/index.html	Lacona  ( Elba island )	42.7583	10.29985
1503	https://www.wannasurf.com/spot/Europe/Italy/Mainland/ladispoli/index.html	Ladispoli	NaN	NaN
1505	https://www.wannasurf.com/spot/Europe/Italy/Mainland/le_palafitte/index.html	Le Palafitte	NaN	NaN
1506	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lerici/index.html	Lerici	NaN	NaN
1507	https://www.wannasurf.com/spot/Europe/Italy/Mainland/levanto/index.html	Levanto	44.170283	9.607567
1508	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Li_Marangi___San_Foca_LE__/index.html	Li Marangi  (San Foca LE )	NaN	NaN
1509	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Licola_Beach/index.html	Licola Beach	40.874317	14.043617
1510	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lido_aurora/index.html	Lido Aurora	NaN	NaN
1511	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Lido_Carabiniere/index.html	Lido Carabiniere	44.540317	12.280833
1512	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lido_di_camaiore/index.html	Lido di Camaiore	43.9513	10.154117
1526	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Marina_Palmense/index.html	Marina Palmense	43.161483	13.811433
1513	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lido_garda/index.html	Lido Garda	NaN	NaN
1514	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lido_pola/index.html	Lido Pola	NaN	NaN
1515	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lignano_pineta/index.html	Lignano Pineta	45.667133	13.115267
1516	https://www.wannasurf.com/spot/Europe/Italy/Mainland/lillatro/index.html	Lillatro ( Rosignano LI )	43.3798	10.434933
1517	https://www.wannasurf.com/spot/Europe/Italy/Mainland/marangone/index.html	Marangone	42.092167	11.798367
1518	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Margidore/index.html	Margidore ( Elba island )	42.7612	10.325583
1519	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Campo_nell_elba/index.html	Marina di Campo  ( Elba island )	42.74745	10.240967
1520	https://www.wannasurf.com/spot/Europe/Italy/Mainland/carrara_idrovora/index.html	Marina di Carrara-Idrovora	44.03725	10.0324
1521	https://www.wannasurf.com/spot/Europe/Italy/Mainland/pietrasanta/index.html	Marina di Pietrasanta	NaN	NaN
1522	https://www.wannasurf.com/spot/Europe/Italy/Mainland/marina_di_pisa/index.html	Marina di Pisa	NaN	NaN
1523	https://www.wannasurf.com/spot/Europe/Italy/Mainland/marina_di_ravenna/index.html	Marina di Ravenna - Canalino	NaN	NaN
1524	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Marina_di_Romea/index.html	Marina di Romea	44.52585	12.279717
1525	https://www.wannasurf.com/spot/Europe/Italy/Mainland/marina_di_vecchiano/index.html	Marina di Vecchiano	NaN	NaN
1597	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Praiola/index.html	Praiola	38.155233	13.07985
1583	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/L_isolottp/index.html	L'isoletto	38.883417	8.86365
1527	https://www.wannasurf.com/spot/Europe/Italy/Mainland/marinaretti/index.html	Marinaretti  (Anzio )	41.45135	12.637033
1528	https://www.wannasurf.com/spot/Europe/Italy/Mainland/marinella/index.html	Marinella di Sarzana	44.047983	9.994917
1529	https://www.wannasurf.com/spot/Europe/Italy/Mainland/moneglia/index.html	Moneglia	44.240033	9.481417
1530	https://www.wannasurf.com/spot/Europe/Italy/Mainland/multedo/index.html	Multedo	44.42415	8.823967
1531	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Paloma_Silvi_Marina/index.html	Paloma Silvi Marina	42.53975	14.134483
1532	https://www.wannasurf.com/spot/Europe/Italy/Mainland/pegli/index.html	Pegli	NaN	NaN
1533	https://www.wannasurf.com/spot/Europe/Italy/Mainland/porto_di_santa_marinella/index.html	Porto di Santa Marinella	42.0365	11.875467
1534	https://www.wannasurf.com/spot/Europe/Italy/Mainland/porto_verde/index.html	Porto verde	NaN	NaN
1535	https://www.wannasurf.com/spot/Europe/Italy/Mainland/la_nave/index.html	Portonovo ( Ancona )	43.561333	13.601933
1536	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Procchio/index.html	Procchio ( Elba island )	42.79125	10.2432
1537	https://www.wannasurf.com/spot/Europe/Italy/Mainland/punta_sabbioni/index.html	Punta sabbioni ( Venezia )	45.435083	12.42965
1538	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Pura_Vida/index.html	Pura Vida	42.0382	11.916717
1539	https://www.wannasurf.com/spot/Europe/Italy/Mainland/rabina/index.html	Rabina	NaN	NaN
1541	https://www.wannasurf.com/spot/Europe/Italy/Mainland/riccione/index.html	Riccione	44.0017	12.662083
1542	https://www.wannasurf.com/spot/Europe/Italy/Mainland/rocchette/index.html	Rocchette	42.779283	10.785133
1543	https://www.wannasurf.com/spot/Europe/Italy/Mainland/rock_island/index.html	Rock island ( Rimini )	44.079083	12.576017
1544	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Rosignano___LI__/index.html	Rosignano ( LI )	NaN	NaN
1545	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Royal/index.html	Royal	43.875717	10.236467
1546	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Salerno_Rivermouth/index.html	Salerno Rivermouth	40.671883	14.772883
1547	https://www.wannasurf.com/spot/Europe/Italy/Mainland/san_benedetto_del_tronto/index.html	San Benedetto del Tronto	NaN	NaN
1548	https://www.wannasurf.com/spot/Europe/Italy/Mainland/San_Montano/index.html	San Montano	40.757883	13.87685
1549	https://www.wannasurf.com/spot/Europe/Italy/Mainland/san_nicola/index.html	San nicola	NaN	NaN
1550	https://www.wannasurf.com/spot/Europe/Italy/Mainland/sant_agostino/index.html	Sant'Agostino	41.210333	13.56635
1551	https://www.wannasurf.com/spot/Europe/Italy/Mainland/saporetti/index.html	Saporetti	41.24865	13.03365
1552	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Saraceno/index.html	Saraceno	42.152417	14.718633
1553	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Scaglieri____Elba_island__/index.html	Scaglieri  ( Elba island )	42.80435	10.268617
1554	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Seccheto___Elba_island__/index.html	Seccheto ( Elba island )	42.735783	10.17665
1584	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/La_Speranza/index.html	La Speranza	40.496183	8.368233
1555	https://www.wannasurf.com/spot/Europe/Italy/Mainland/serapo/index.html	Serapo	NaN	NaN
1556	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Silvi_Marina/index.html	Silvi Marina	42.5398	14.134467
1557	https://www.wannasurf.com/spot/Europe/Italy/Mainland/sori_point/index.html	Sori Point	NaN	NaN
1558	https://www.wannasurf.com/spot/Europe/Italy/Mainland/spiaggetta/index.html	Spiaggetta	NaN	NaN
1559	https://www.wannasurf.com/spot/Europe/Italy/Mainland/termoli/index.html	Termoli trabucco	NaN	NaN
1560	https://www.wannasurf.com/spot/Europe/Italy/Mainland/trabucco/index.html	Trabucco ( Massa )	NaN	NaN
1561	https://www.wannasurf.com/spot/Europe/Italy/Mainland/tre_ponti/index.html	Tre Ponti (La Scaletta)	43.822183	7.813867
1562	https://www.wannasurf.com/spot/Europe/Italy/Mainland/turbigo-l_onda_-_turbo_wave/index.html	Turbigo-l'onda - Turbo Wave	45.520533	8.746783
1563	https://www.wannasurf.com/spot/Europe/Italy/Mainland/varazze/index.html	Varazze	44.358267	8.577633
1564	https://www.wannasurf.com/spot/Europe/Italy/Mainland/venezia/index.html	Venezia	NaN	NaN
1565	https://www.wannasurf.com/spot/Europe/Italy/Mainland/nettuno/index.html	Viareggio - Nettuno, Ruffo, Piazza Mazzini	NaN	NaN
1566	https://www.wannasurf.com/spot/Europe/Italy/Mainland/tito-del-molo/index.html	Viareggio Tito del Molo (Ala Moana)	43.86395	10.239433
1585	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/li_putzi/index.html	Li putzi	NaN	NaN
1567	https://www.wannasurf.com/spot/Europe/Italy/Mainland/voltri/index.html	Voltri	NaN	NaN
1568	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/badesi__sardinia_/index.html	Badesi	40.9821	8.8536
1569	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/bassa_trinita/index.html	Bassa Trinita	41.242617	9.400467
1570	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/buggerru/index.html	Buggerru	39.4045	8.401317
1571	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Cala_Cipolla/index.html	Cala Cipolla	38.878633	8.854517
1572	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Cala_Pira/index.html	Cala Pira	39.1724	9.571583
1573	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/capo_mannu1/index.html	Capo mannu 1	40.0292	8.389
1574	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/capo_mannu2/index.html	Capo Mannu 2	40.03005	8.3834
1575	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/chia/index.html	Chia	38.8945	8.879017
1576	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Ciammarita/index.html	Ciammarita	NaN	NaN
1577	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Cipolla_-_Pipeline/index.html	Cipolla - Pipeline	38.881083	8.8597
1578	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Foddini/index.html	Foddini	39.803267	9.67235
1579	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/guroneddu/index.html	Guruneddu	39.248867	8.391317
1580	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/il_convento__sardinia_/index.html	Il Convento	38.9964	9.019117
1582	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/isola_rossa/index.html	Isola Rossa	41.017083	8.884683
1587	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/maresciallo/index.html	Maresciallo	39.109617	8.3648
1588	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/minicapo/index.html	Minicapo	40.029383	8.392183
1589	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/piscinas/index.html	Piscinas	39.521383	8.43115
1590	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/poetto_cagliari/index.html	Poetto-Cagliari	39.205067	9.166817
1591	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Porticciolo/index.html	Porticciolo	39.404633	8.40025
1592	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/portixeddu/index.html	Portixeddu	39.4409	8.409133
1593	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Porto_Armando/index.html	Porto Armando	39.20505	9.312517
1594	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/porto_ferro/index.html	Porto Ferro	40.6848	8.203017
1595	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/porto_giunco/index.html	Porto Giunco	39.1224	9.525667
1596	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Porto_Paglia/index.html	Porto Paglia	39.268883	8.424883
1599	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/racca_point/index.html	Racca Point	39.20545	9.312717
1600	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Reef_La_Maddalenetta/index.html	Reef La Maddalenetta	40.572367	8.3
1601	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/rena_majore/index.html	Rena Majore	41.1731	9.167917
1602	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/S_Archittu/index.html	S'Archittu	40.087883	8.49085
1603	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/sa_mesa_longa/index.html	Sa mesa longa	40.047583	8.398783
1604	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/sa_tonnara/index.html	Sa tonnara	NaN	NaN
1605	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/san_giovanni_di_sinis/index.html	San Giovanni di Sinis	39.8876	8.431883
1606	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/sant__Elmo/index.html	sant' Elmo	39.20725	9.56515
1607	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/santa_caterina/index.html	Santa Caterina	40.103217	8.489517
1608	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Santa_Reparata/index.html	Santa Reparata	41.230017	9.167233
1609	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/scivu/index.html	Scivu	39.488867	8.404033
1610	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/solanas/index.html	Solanas	39.136983	9.429017
1611	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Turri/index.html	Turri	38.9644	8.437717
1665	https://www.wannasurf.com/spot/Europe/France/Normandy/le_grand_large/index.html	Le Grand Large	49.48815	-1.8454
1612	https://www.wannasurf.com/spot/Europe/Italy/sicily/acitrezza__sicily_/index.html	Acitrezza (Sicily)	NaN	NaN
1613	https://www.wannasurf.com/spot/Europe/Italy/sicily/angolino__sicily_/index.html	Angolino (Sicily)	NaN	NaN
1614	https://www.wannasurf.com/spot/Europe/Italy/sicily/arenella__sicily_/index.html	Arenella (Sicily)	NaN	NaN
1615	https://www.wannasurf.com/spot/Europe/Italy/sicily/Backdoor/index.html	Backdoor	37.3332	13.393817
1616	https://www.wannasurf.com/spot/Europe/Italy/sicily/Cannatello/index.html	Cannatello	37.232533	13.621367
1617	https://www.wannasurf.com/spot/Europe/Italy/sicily/capannone/index.html	Capannone (Sicily)	NaN	NaN
1618	https://www.wannasurf.com/spot/Europe/Italy/sicily/Cornino/index.html	Cornino	38.09015	12.656183
1619	https://www.wannasurf.com/spot/Europe/Italy/sicily/Il_Faro/index.html	Il Faro	NaN	NaN
1620	https://www.wannasurf.com/spot/Europe/Italy/sicily/isola_delle_femmine_pa_-la_baia/index.html	Isola Delle Femmine(PA)-LA BAIA (Sicily)	38.193733	13.242983
1621	https://www.wannasurf.com/spot/Europe/Italy/sicily/kamikaze/index.html	Kamikaze (Sicily)	NaN	NaN
1622	https://www.wannasurf.com/spot/Europe/Italy/sicily/kaos/index.html	Kaos (Sicily)	NaN	NaN
1623	https://www.wannasurf.com/spot/Europe/Italy/sicily/la_rotonda__sicily_/index.html	La Rotonda (Sicily)	NaN	NaN
1624	https://www.wannasurf.com/spot/Europe/Italy/sicily/la_terza/index.html	La Terza (Sicily)	NaN	NaN
1625	https://www.wannasurf.com/spot/Europe/Italy/sicily/le_rocce/index.html	Le Rocce	NaN	NaN
1626	https://www.wannasurf.com/spot/Europe/Italy/sicily/Maggagiari/index.html	Magaggiari (Sicily)	38.16065	13.084383
1627	https://www.wannasurf.com/spot/Europe/Italy/sicily/Mondello/index.html	Mondello	38.184233	13.348383
1628	https://www.wannasurf.com/spot/Europe/Italy/sicily/Morghella/index.html	Morghella	36.700633	15.124517
1629	https://www.wannasurf.com/spot/Europe/Italy/sicily/playa/index.html	Playa (Sicily)	37.469433	15.085433
1630	https://www.wannasurf.com/spot/Europe/Italy/sicily/ponente/index.html	Ponente (Sicily)	NaN	NaN
1631	https://www.wannasurf.com/spot/Europe/Italy/sicily/San_Vito/index.html	San Vito	38.177883	12.737617
1632	https://www.wannasurf.com/spot/Europe/Italy/sicily/Siracusa/index.html	Siracusa	36.962417	15.2089
1633	https://www.wannasurf.com/spot/Europe/Italy/sicily/Wizard_-_Torre_Muzzard/index.html	Wizard - Torre Muzzard	38.180717	13.161683
1634	https://www.wannasurf.com/spot/South_America/French_Guiana/Iles-du-salut/Saint_Joseph/index.html	Saint Joseph	5.2884	-52.583833
1635	https://www.wannasurf.com/spot/Europe/France/Normandy/Anse_du_Brick/index.html	Anse du Brick	49.668833	-1.487217
1636	https://www.wannasurf.com/spot/Europe/France/Normandy/anse_st_martin/index.html	Anse st Martin	49.706567	-1.8891
1637	https://www.wannasurf.com/spot/Europe/France/Normandy/audreselles/index.html	Audreselles	50.821583	1.592033
1638	https://www.wannasurf.com/spot/Europe/France/Normandy/Baubigny/index.html	Baubigny	49.429317	-1.823733
1639	https://www.wannasurf.com/spot/Europe/France/Normandy/Becquerel_Point/index.html	Becquerel Point	49.54575	-1.876033
1640	https://www.wannasurf.com/spot/Europe/France/Normandy/berck_sur_mer/index.html	Berck sur mer	50.4086	1.557867
1641	https://www.wannasurf.com/spot/Europe/France/Normandy/berneval/index.html	Berneval	49.969183	1.195217
1642	https://www.wannasurf.com/spot/Europe/France/Normandy/Biville/index.html	Biville	49.609267	-1.843283
1643	https://www.wannasurf.com/spot/Europe/France/Normandy/Bretteville/index.html	Bretteville	49.657067	-1.523667
1644	https://www.wannasurf.com/spot/Europe/France/Normandy/calais/index.html	Calais	50.9624	1.8294
1656	https://www.wannasurf.com/spot/Europe/France/Normandy/Ecalgrain/index.html	Ecalgrain	49.6904	-1.936033
1657	https://www.wannasurf.com/spot/Europe/France/Normandy/etampes/index.html	Etampes	48.4274	2.1624
1645	https://www.wannasurf.com/spot/Europe/France/Normandy/cap_blanc_nez/index.html	Cap Blanc Nez	50.931217	1.715233
1646	https://www.wannasurf.com/spot/Europe/France/Normandy/cap_de_carteret/index.html	Cap de carteret	49.371817	-1.797633
1647	https://www.wannasurf.com/spot/Europe/France/Normandy/cap_griz_nez/index.html	Cap Griz Nez	50.870633	1.590767
1648	https://www.wannasurf.com/spot/Europe/France/Normandy/carolles/index.html	Carolles	48.758317	-1.572967
1649	https://www.wannasurf.com/spot/Europe/France/Normandy/Collignon/index.html	Collignon	49.657317	-1.568033
1650	https://www.wannasurf.com/spot/Europe/France/Normandy/courseulles_sur_mer/index.html	Courseulles sur mer	49.335817	-0.4462
1832	https://www.wannasurf.com/spot/Europe/France/charente_maritime/les_grenettes/index.html	Ile de Ré - Les Grenettes	46.158217	-1.358467
1651	https://www.wannasurf.com/spot/Europe/France/Normandy/deauville/index.html	Deauville	49.362783	0.06695
1652	https://www.wannasurf.com/spot/Europe/France/Normandy/Dielette_Harbour/index.html	Dielette Harbour	49.55145	-1.864267
1653	https://www.wannasurf.com/spot/Europe/France/Normandy/Dielette_Left/index.html	Dielette Left	49.560733	-1.859783
1654	https://www.wannasurf.com/spot/Europe/France/Normandy/dielette_shore_break/index.html	Dielette Shore Break	49.559067	-1.85455
1655	https://www.wannasurf.com/spot/Europe/France/Normandy/dunkerque/index.html	Dunkerque	51.058067	2.36245
1658	https://www.wannasurf.com/spot/Europe/France/Normandy/Etretat/index.html	Etretat	49.708517	0.201533
1659	https://www.wannasurf.com/spot/Europe/France/Normandy/fort_de_saint_germain_des_vaux/index.html	Fort de saint germain des vaux	49.718767	-1.900683
1660	https://www.wannasurf.com/spot/Europe/France/Normandy/Hardelot_plage/index.html	Hardelot plage	50.6366	1.57565
1661	https://www.wannasurf.com/spot/Europe/France/Normandy/J_/index.html	Jx	NaN	NaN
1662	https://www.wannasurf.com/spot/Europe/France/Normandy/La_Crecque/index.html	La Crecque	49.642817	-1.855267
1663	https://www.wannasurf.com/spot/Europe/France/Normandy/La_Mondree/index.html	La Mondrée	49.6917	-1.455583
1664	https://www.wannasurf.com/spot/Europe/France/Normandy/Le_bloc/index.html	Le bloc	49.581367	-1.8429
1666	https://www.wannasurf.com/spot/Europe/France/Normandy/le_havre_beach/index.html	Le Havre beach	49.49965	0.08875
1667	https://www.wannasurf.com/spot/Europe/France/Normandy/Le_Portel/index.html	Le Portel	50.7147	1.5714
1668	https://www.wannasurf.com/spot/Europe/France/Normandy/le_pou/index.html	Le Poux	49.470183	-1.84145
1669	https://www.wannasurf.com/spot/Europe/France/Normandy/le_rozel/index.html	Le Rozel	49.480117	-1.8463
1670	https://www.wannasurf.com/spot/Europe/France/Normandy/Le_Touquet/index.html	Le Touquet	50.524667	1.57925
1671	https://www.wannasurf.com/spot/Europe/France/Normandy/luc_sur_mer/index.html	Luc sur mer	49.31965	-0.3519
1672	https://www.wannasurf.com/spot/Europe/France/Normandy/mers-les-bains/index.html	Mers-Les-Bains	50.068783	1.385017
1673	https://www.wannasurf.com/spot/Europe/France/Normandy/nez_bayard/index.html	Nez Bayard	49.726917	-1.9379
1674	https://www.wannasurf.com/spot/Europe/France/Normandy/oye_plage__escardines/index.html	Oye plage (escardines)	51.001017	2.035217
1675	https://www.wannasurf.com/spot/Europe/France/Normandy/pointe_aux_oies/index.html	Pointe aux Oies	50.7877	1.600967
1676	https://www.wannasurf.com/spot/Europe/France/Normandy/pourville/index.html	Pourville	49.916983	1.028267
1677	https://www.wannasurf.com/spot/Europe/France/Normandy/sangatte/index.html	Sangatte	50.943783	1.743133
1678	https://www.wannasurf.com/spot/Europe/France/Normandy/Sciotot/index.html	Sciotot	49.503917	-1.849733
1679	https://www.wannasurf.com/spot/Europe/France/Normandy/Siouville/index.html	Siouville	49.5677	-1.8463
1680	https://www.wannasurf.com/spot/Europe/France/Normandy/Tardinghen/index.html	Tardinghen	50.873583	1.619467
1681	https://www.wannasurf.com/spot/Europe/France/Normandy/terminus_berck/index.html	Terminus berck	50.424133	1.56505
1682	https://www.wannasurf.com/spot/Europe/France/Normandy/trouville/index.html	Trouville	49.365883	0.081017
1683	https://www.wannasurf.com/spot/Europe/France/Normandy/vaucotte/index.html	Vaucotte	49.737933	0.290583
1684	https://www.wannasurf.com/spot/Europe/France/Normandy/vauville/index.html	Vauville	49.632567	-1.850217
1728	https://www.wannasurf.com/spot/Europe/France/Brittany_North/pors_ar_vag/index.html	Pors Ar Vag	48.166883	-4.294117
1685	https://www.wannasurf.com/spot/Europe/France/Normandy/veules_les_roses/index.html	Veules les Roses	49.877567	0.798833
1686	https://www.wannasurf.com/spot/Europe/France/Normandy/wimereux/index.html	Wimereux plage	50.7649	1.605083
1687	https://www.wannasurf.com/spot/Europe/France/Normandy/wimereux_pointe/index.html	Wimereux reef	50.772417	1.60545
1688	https://www.wannasurf.com/spot/Europe/France/Normandy/wissant/index.html	Wissant	50.88825	1.65975
1689	https://www.wannasurf.com/spot/Europe/France/Normandy/Yport/index.html	Yport	49.740767	0.306283
1690	https://www.wannasurf.com/spot/Europe/France/Brittany_North/aber_wrac_h_point/index.html	Aber wrac'h point	48.57925	-4.6328
2105	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/osbourne/index.html	osbourne	44.61065	-63.420433
1691	https://www.wannasurf.com/spot/Europe/France/Brittany_North/anael/index.html	Anaël	48.58345	-4.67515
1692	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Beg_Leguer/index.html	Beg Léguer	48.74365	-3.552667
1693	https://www.wannasurf.com/spot/Europe/France/Brittany_North/binic_harbourg/index.html	Binic Harbourg	NaN	NaN
1694	https://www.wannasurf.com/spot/Europe/France/Brittany_North/butlins/index.html	Butlins	NaN	NaN
1695	https://www.wannasurf.com/spot/Europe/France/Brittany_North/cap_de_la_chevre/index.html	Cap de la Chevre	48.16895	-4.556383
1729	https://www.wannasurf.com/spot/Europe/France/Brittany_North/pors_ar_villec/index.html	Pors-ar-Villec	48.694533	-3.648967
1696	https://www.wannasurf.com/spot/Europe/France/Brittany_North/cap_frehel/index.html	Cap frehel	48.685633	-2.3188
1697	https://www.wannasurf.com/spot/Europe/France/Brittany_North/dalbos/index.html	Dalbos	48.3418	-4.632967
1698	https://www.wannasurf.com/spot/Europe/France/Brittany_North/dame_jouanne/index.html	Dame jouanne	48.636717	-2.1415
1699	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Deolen/index.html	Deolen	48.34505	-4.640483
1700	https://www.wannasurf.com/spot/Europe/France/Brittany_North/dossen/index.html	Dossen	48.696167	-4.06065
1701	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Fremur/index.html	Fremur	48.626217	-2.1517
1702	https://www.wannasurf.com/spot/Europe/France/Brittany_North/goulien/index.html	Goulien	48.248233	-4.55435
1703	https://www.wannasurf.com/spot/Europe/France/Brittany_North/kerloch/index.html	Kerloc'h	48.257767	-4.5583
1704	https://www.wannasurf.com/spot/Europe/France/Brittany_North/kerlouan/index.html	Kerlouan	48.65545	-4.402883
1705	https://www.wannasurf.com/spot/Europe/France/Brittany_North/kersiguennou/index.html	Kersiguennoù	48.252117	-4.552283
1706	https://www.wannasurf.com/spot/Europe/France/Brittany_North/la_chapelle/index.html	La Chapelle	48.553467	-4.733083
1707	https://www.wannasurf.com/spot/Europe/France/Brittany_North/la_guarde_guerin/index.html	La Garde Guérin	48.63615	-2.135633
1708	https://www.wannasurf.com/spot/Europe/France/Brittany_North/La_Palue/index.html	La Palue	48.205117	-4.553233
1709	https://www.wannasurf.com/spot/Europe/France/Brittany_North/le_gouerou/index.html	Le Gouérou	48.457333	-4.771517
1710	https://www.wannasurf.com/spot/Europe/France/Brittany_North/le_gouffre_-_petit_fiti/index.html	Le Gouffre - petit fiti	NaN	NaN
1711	https://www.wannasurf.com/spot/Europe/France/Brittany_North/le_palus/index.html	le palus	NaN	NaN
1793	https://www.wannasurf.com/spot/Europe/France/Brittany_South/trigs/index.html	trigs	47.809883	-4.38745
1712	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Petit_Minou/index.html	Le Petit Minou	48.338817	-4.616233
1713	https://www.wannasurf.com/spot/Europe/France/Brittany_North/le_sillon/index.html	Le sillon	48.664883	-1.99075
1714	https://www.wannasurf.com/spot/Europe/France/Brittany_North/le_veryach/index.html	Le Veryac'h	48.2614	-4.61275
1726	https://www.wannasurf.com/spot/Europe/France/Brittany_North/dinan/index.html	Pointe de Dinan	48.2311	-4.567133
1715	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Blancs_Sablons/index.html	Les Blancs Sablons	48.366717	-4.767767
1716	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Les_Rosaires/index.html	Les Rosaires	NaN	NaN
1717	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Sables_Blancs/index.html	Les Sables Blancs	48.693667	-3.662633
1718	https://www.wannasurf.com/spot/Europe/France/Brittany_North/les_sables_blancs_-_la_plate/index.html	Les Sables Blancs - La Plate	48.697817	-3.66445
1719	https://www.wannasurf.com/spot/Europe/France/Brittany_North/locquirec/index.html	Locquirec	48.694933	-3.650467
1720	https://www.wannasurf.com/spot/Europe/France/Brittany_North/longchamps/index.html	Longchamps	48.636533	-2.124483
1721	https://www.wannasurf.com/spot/Europe/France/Brittany_North/lostmarch/index.html	Lostmarc'h	48.210983	-4.555767
1722	https://www.wannasurf.com/spot/Europe/France/Brittany_North/mauvaise_greve/index.html	Mauvaise Grève	48.691867	-4.086017
1723	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Morgat_Harbour/index.html	Morgat Harbour	48.22425	-4.49305
1724	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Pen_Had/index.html	Pen had	48.274617	-4.62005
1725	https://www.wannasurf.com/spot/Europe/France/Brittany_North/penfoul/index.html	Penfoul	48.532183	-4.752367
1727	https://www.wannasurf.com/spot/Europe/France/Brittany_North/pointe_du_toulinguet/index.html	Pointe du Toulinguet	48.281017	-4.6149
1730	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Pors_Nevez/index.html	Pors-Nevez	48.818283	-3.448883
1731	https://www.wannasurf.com/spot/Europe/France/Brittany_North/porsmilin/index.html	Porsmilin	48.355283	-4.678817
1732	https://www.wannasurf.com/spot/Europe/France/Brittany_North/port_goret__treveneuc_/index.html	Port Goret (Treveneuc)	48.67045	-2.862117
1733	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Porzh_Neil/index.html	Porz Naye	48.2811	-4.614433
1734	https://www.wannasurf.com/spot/Europe/France/Brittany_North/saint_quay/index.html	Saint Quay - Portrieux	NaN	NaN
1735	https://www.wannasurf.com/spot/Europe/France/Brittany_North/St_Anne_de_Portzic/index.html	Sainte Anne du Portzic	NaN	NaN
1736	https://www.wannasurf.com/spot/Europe/France/Brittany_North/ste_anne_la_palud/index.html	Ste Anne La Palud	48.1384	-4.2758
1737	https://www.wannasurf.com/spot/Europe/France/Brittany_North/tregana/index.html	Tregana	48.352667	-4.66695
1738	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Trestel/index.html	Trestel	48.821317	-3.35395
1739	https://www.wannasurf.com/spot/Europe/France/Brittany_North/Trestraou/index.html	Trestraou	48.816367	-3.455517
1740	https://www.wannasurf.com/spot/Europe/France/Brittany_North/trestrignel/index.html	Trestrignel	48.82015	-3.43215
1741	https://www.wannasurf.com/spot/Europe/France/Brittany_North/trez-hir/index.html	Trez-Hir	48.349683	-4.7006
1742	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Anse_du_Ris/index.html	Anse du Ris	48.094583	-4.306633
1954	https://www.wannasurf.com/spot/Europe/France/Mediterranean/ciotel/index.html	Ciotel	NaN	NaN
1743	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Ar_Loïs/index.html	Ar Loïs	47.826133	-4.369517
1744	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Audierne/index.html	Audierne - La Gamelle	48.009283	-4.547567
1745	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Audierne_-_La_Jetée/index.html	Audierne - La Jetée	48.0094	-4.540767
1746	https://www.wannasurf.com/spot/Europe/France/Brittany_South/trepasses_bay/index.html	Baie des Trépassés	48.0478	-4.7067
1747	https://www.wannasurf.com/spot/Europe/France/Brittany_South/barre_d_etel/index.html	Barre d'étel	47.638217	-3.209217
1748	https://www.wannasurf.com/spot/Europe/France/Brittany_South/beg_an_tour/index.html	Beg An Tour	47.774517	-3.638883
1749	https://www.wannasurf.com/spot/Europe/France/Brittany_South/belle_ile_en_mer_-_donnant/index.html	Belle Ile en Mer - Donnant	47.3262	-3.238817
1750	https://www.wannasurf.com/spot/Europe/France/Brittany_South/source/index.html	Bonne-source	NaN	NaN
1751	https://www.wannasurf.com/spot/Europe/France/Brittany_South/gavres/index.html	Gavres	47.694833	-3.33415
1752	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Guidel/index.html	Guidel	47.754517	-3.515667
1753	https://www.wannasurf.com/spot/Europe/France/Brittany_South/gwendrez/index.html	Gwendrez	47.9917	-4.47985
1754	https://www.wannasurf.com/spot/Europe/France/Brittany_South/ponant_secret1/index.html	Iles du Ponant - Secret 1	NaN	NaN
1755	https://www.wannasurf.com/spot/Europe/France/Brittany_South/ponant_secret2/index.html	Iles du Ponant - Secret 2	NaN	NaN
1756	https://www.wannasurf.com/spot/Europe/France/Brittany_South/kaolins/index.html	Kaolins	47.72405	-3.49355
1757	https://www.wannasurf.com/spot/Europe/France/Brittany_South/karek_hir/index.html	Karek hir	47.782333	-4.287117
1758	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Kerhillio/index.html	Kerhillio	47.606167	-3.161233
1759	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Lervily/index.html	L'île aux vaches - Lervily	48	-4.558983
1760	https://www.wannasurf.com/spot/Europe/France/Brittany_South/La_Torche/index.html	La Torche	47.840067	-4.34965
1761	https://www.wannasurf.com/spot/Europe/France/Brittany_South/larmor_-_the_kotron/index.html	Larmor - The Kotron	NaN	NaN
1762	https://www.wannasurf.com/spot/Europe/France/Brittany_South/le_goudoul/index.html	Le goudoul	47.7937	-4.23025
1763	https://www.wannasurf.com/spot/Europe/France/Brittany_South/le_guet/index.html	le guet	48.09775	-4.334567
1764	https://www.wannasurf.com/spot/Europe/France/Brittany_South/le_kerou/index.html	Le kerou	47.76795	-3.563733
1765	https://www.wannasurf.com/spot/Europe/France/Brittany_South/le_letty/index.html	Le Letty	47.861283	-4.090417
1766	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Lervily_reef/index.html	Lervily reef	47.998817	-4.56515
1767	https://www.wannasurf.com/spot/Europe/France/Brittany_South/les_moules/index.html	Les moules	47.731667	-3.4982
1768	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Leyde/index.html	Les Roches Blanches - le Leyde	48.108983	-4.361833
1769	https://www.wannasurf.com/spot/Europe/France/Brittany_South/lesconil/index.html	Lesconil	47.79695	-4.208283
1771	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Penhors_Reef/index.html	Penhors Reef	47.939117	-4.404217
1772	https://www.wannasurf.com/spot/Europe/France/Brittany_South/pic_kipu/index.html	pic kipu	47.710683	-3.374867
1773	https://www.wannasurf.com/spot/Europe/France/Brittany_South/tata_beach/index.html	Plouharnel - La Guérite Tata beach	47.586717	-3.140717
1774	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Plovan/index.html	Plovan	47.915417	-4.381133
1775	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Pointe_du_Milier/index.html	Pointe du Milier	48.096483	-4.467117
1776	https://www.wannasurf.com/spot/Europe/France/Brittany_South/pornichet/index.html	Pornichet	47.2638	-2.347133
1777	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Pors_Carn/index.html	Pors Carn	47.831367	-4.354283
1778	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Pors_Poulhan/index.html	Pors Poulhan	47.984717	-4.465033
1779	https://www.wannasurf.com/spot/Europe/France/Brittany_South/pors_theolen/index.html	Pors Theolen	48.062483	-4.67305
1780	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Prad_ar_Chastell/index.html	Prad ar C'hastell	47.872017	-4.360717
1781	https://www.wannasurf.com/spot/Europe/France/Brittany_South/roche_de_coulinec/index.html	Rocher de Coulinec	48.10665	-4.353983
1782	https://www.wannasurf.com/spot/Europe/France/Brittany_South/l_isthme_de_penthievre/index.html	Saint Pierre Quiberon - L'isthme de Penthièvre	47.55845	-3.135917
1783	https://www.wannasurf.com/spot/Europe/France/Brittany_South/port_bara_quiberon/index.html	Saint Pierre Quiberon - Port Bara	47.513	-3.150483
1784	https://www.wannasurf.com/spot/Europe/France/Brittany_South/port_blanc/index.html	Saint Pierre Quiberon - Port Blanc	47.521717	-3.1547
1785	https://www.wannasurf.com/spot/Europe/France/Brittany_South/saint_tugen/index.html	Saint Tugen	48.0133	-4.595717
1786	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Sein_Island/index.html	Sein Island	48.0327	-4.853167
1787	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Shaka/index.html	Shaka	47.97665	-4.447617
1788	https://www.wannasurf.com/spot/Europe/France/Brittany_South/les_crevettes/index.html	Ste Barbe	47.599133	-3.151967
1789	https://www.wannasurf.com/spot/Europe/France/Brittany_South/thoulars/index.html	Toulhars	47.706967	-3.377467
1790	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Tréguennec/index.html	Tréguennec	47.8806	-4.366667
1791	https://www.wannasurf.com/spot/Europe/France/Brittany_South/trestel/index.html	Treustel	47.854983	-4.143383
1792	https://www.wannasurf.com/spot/Europe/France/Brittany_South/trez-hir/index.html	Trez-hir	48.347917	-4.702317
1794	https://www.wannasurf.com/spot/Europe/France/Brittany_South/tronoen/index.html	Tronoen	47.85245	-4.3511
1795	https://www.wannasurf.com/spot/Europe/France/Vendee/Bud_Bud/index.html	Bud Bud	46.381867	-1.4892
1796	https://www.wannasurf.com/spot/Europe/France/Vendee/Gohaud/index.html	Gohaud	47.190817	-2.160567
1797	https://www.wannasurf.com/spot/Europe/France/Vendee/Ile_de_Noirmoutier_-_Barbatre/index.html	Île de Noirmoutier - Barbâtre	46.943833	-2.18945
1798	https://www.wannasurf.com/spot/Europe/France/Vendee/l_aubraie/index.html	L'Aubraie	46.512067	-1.823517
1799	https://www.wannasurf.com/spot/Europe/France/Vendee/la_baie_des_sables/index.html	La Baie des Sables	46.493517	-1.784717
1800	https://www.wannasurf.com/spot/Europe/France/Vendee/la_courance/index.html	La Courance	47.23945	-2.2722
1801	https://www.wannasurf.com/spot/Europe/France/Vendee/La_Couronne/index.html	La Couronne	NaN	NaN
1802	https://www.wannasurf.com/spot/Europe/France/Vendee/govelle/index.html	La Govelle	47.264733	-2.4545
1803	https://www.wannasurf.com/spot/Europe/France/Vendee/La_Grange/index.html	La Mine	46.414583	-1.628967
1804	https://www.wannasurf.com/spot/Europe/France/Vendee/La_Sauzaie/index.html	La Sauzaie	46.636417	-1.892467
1805	https://www.wannasurf.com/spot/Europe/France/Vendee/la_terriere/index.html	La Terriere	46.354567	-1.476717
1806	https://www.wannasurf.com/spot/Europe/France/Vendee/La_Tranche_sur_Mer/index.html	La Tranche sur Mer	46.344067	-1.427733
1807	https://www.wannasurf.com/spot/Europe/France/Vendee/la_phare/index.html	Le Phare du Groin du Cou	46.339367	-1.459983
1808	https://www.wannasurf.com/spot/Europe/France/Vendee/Les_Conches/index.html	Les Conches	46.389617	-1.493333
1809	https://www.wannasurf.com/spot/Europe/France/Vendee/Les_Dunes/index.html	Les Dunes	46.607183	-1.855417
1810	https://www.wannasurf.com/spot/Europe/France/Vendee/Margaret/index.html	Margaret	47.124233	-2.2163
1811	https://www.wannasurf.com/spot/Europe/France/Vendee/Parée_Préneau/index.html	Parée Préneau	46.729167	-1.994767
1812	https://www.wannasurf.com/spot/Europe/France/Vendee/La_Gachere/index.html	Plage des Granges	46.584583	-1.851717
1813	https://www.wannasurf.com/spot/Europe/France/Vendee/plage_valentin/index.html	Plage valentin	47.27935	-2.4966
1814	https://www.wannasurf.com/spot/Europe/France/Vendee/prefaille/index.html	Préfailles	47.129817	-2.226183
1815	https://www.wannasurf.com/spot/Europe/France/Vendee/saint_gilles_croix_de_vie/index.html	Saint gilles croix de vie	46.688483	-1.93995
1816	https://www.wannasurf.com/spot/Europe/France/Vendee/sauveterre/index.html	Sauveterre	46.5529	-1.833883
1817	https://www.wannasurf.com/spot/Europe/France/Vendee/Sion/index.html	Sion	46.710717	-1.981967
1818	https://www.wannasurf.com/spot/Europe/France/Vendee/st_brevin_-_l_ermitage/index.html	St Brévin - l'Ermitage	47.20645	-2.15975
1834	https://www.wannasurf.com/spot/Europe/France/charente_maritime/ile_de_re-_rivedoux/index.html	Ile de ré- rivedoux	46.163967	-1.253167
1820	https://www.wannasurf.com/spot/Europe/France/Vendee/tanchet__les_sables_d_olonne_/index.html	Tanchet (Les Sables d'Olonne)	46.480667	-1.7621
1821	https://www.wannasurf.com/spot/Europe/France/charente_maritime/aytre_-_lopette_beach/index.html	Aytré - lopette beach	46.132	-1.148783
1822	https://www.wannasurf.com/spot/Europe/France/charente_maritime/Cote_sauvage_-_la_pointe_espagnole/index.html	Côte sauvage - la pointe espagnole	45.779317	-1.24145
1823	https://www.wannasurf.com/spot/Europe/France/charente_maritime/Cote_sauvage_-_Le_27/index.html	Côte sauvage - Le 27	45.742017	-1.241233
1824	https://www.wannasurf.com/spot/Europe/France/charente_maritime/Cote_sauvage_-_Le_43/index.html	Côte sauvage - Le 43	45.713283	-1.23905
1825	https://www.wannasurf.com/spot/Europe/France/charente_maritime/cote_sauvage_-_pk20/index.html	Côte sauvage - Le 46	45.708217	-1.242833
1826	https://www.wannasurf.com/spot/Europe/France/charente_maritime/Cote_sauvage_-_Le_47/index.html	Côte sauvage - Le 47	45.706067	-1.239433
1827	https://www.wannasurf.com/spot/Europe/France/charente_maritime/La_Coubre/index.html	Côte sauvage - Phare de la Coubre  (lighthouse)	45.69305	-1.2375
1828	https://www.wannasurf.com/spot/Europe/France/charente_maritime/grande_cote_-_saint_palais/index.html	Grande Côte - Saint Palais	45.67215	-1.1554
1829	https://www.wannasurf.com/spot/Europe/France/charente_maritime/La_Couarde/index.html	Ile de Ré - La Couarde	46.188817	-1.426333
1830	https://www.wannasurf.com/spot/Europe/France/charente_maritime/le_gouyot/index.html	Ile de Ré - Le gouyot	46.1731	-1.38565
1831	https://www.wannasurf.com/spot/Europe/France/charente_maritime/le_lizay/index.html	Ile de Ré - Le lizay	46.257917	-1.517867
1833	https://www.wannasurf.com/spot/Europe/France/charente_maritime/ile_de_re_-_petit_bec/index.html	Ile de Ré - Petit bec	46.255367	-1.521633
1835	https://www.wannasurf.com/spot/Europe/France/charente_maritime/la_rochelle_-_chef_de_baie/index.html	La Rochelle - Chef de baie	NaN	NaN
1836	https://www.wannasurf.com/spot/Europe/France/charente_maritime/nauzan/index.html	Nauzan	45.63865	-1.07735
1837	https://www.wannasurf.com/spot/Europe/France/charente_maritime/chassiron/index.html	Oléron - Chassiron	46.048417	-1.42175
1838	https://www.wannasurf.com/spot/Europe/France/charente_maritime/grand-village/index.html	Oleron - Grand-Village	45.8496	-1.258017
1839	https://www.wannasurf.com/spot/Europe/France/charente_maritime/les_boulassiers/index.html	Oléron - Les Boulassiers	46.0105	-1.332867
1840	https://www.wannasurf.com/spot/Europe/France/charente_maritime/les_huttes/index.html	Oléron - Les huttes	46.004883	-1.392867
1841	https://www.wannasurf.com/spot/Europe/France/charente_maritime/Oléron_-_Saint_Denis/index.html	Oléron - Saint Denis	46.039167	-1.367517
1842	https://www.wannasurf.com/spot/Europe/France/charente_maritime/Saint_Trojan/index.html	Oléron - Saint Trojan	45.840333	-1.256217
1855	https://www.wannasurf.com/spot/Europe/France/Gironde/Grand_Crohot/index.html	Grand Crohot	44.79755	-1.23425
1843	https://www.wannasurf.com/spot/Europe/France/charente_maritime/vert_bois/index.html	Oléron - Vert bois - Les Allassins	45.875217	-1.268617
1844	https://www.wannasurf.com/spot/Europe/France/charente_maritime/passe_du_treuil/index.html	Passe du Trillou	45.868117	-1.26395
1845	https://www.wannasurf.com/spot/Europe/France/charente_maritime/pontaillac/index.html	Pontaillac	45.625917	-1.05315
1846	https://www.wannasurf.com/spot/Europe/France/charente_maritime/st_georges_de_didonne_-_la_jetee/index.html	St Georges de Didonne - la jetee	45.597317	-0.996417
1847	https://www.wannasurf.com/spot/Europe/France/Gironde/amelie/index.html	Amélie	45.485267	-1.152467
1848	https://www.wannasurf.com/spot/Europe/France/Gironde/boby_s/index.html	Bobby's	44.4959	-1.24995
1849	https://www.wannasurf.com/spot/Europe/France/Gironde/Cap_Ferret/index.html	Cap Ferret	44.631533	-1.259567
1850	https://www.wannasurf.com/spot/Europe/France/Gironde/cap_ferret_chenal/index.html	Cap Ferret Chenal	44.621883	-1.253817
1851	https://www.wannasurf.com/spot/Europe/France/Gironde/carcans/index.html	Carcans	45.083333	-1.192367
1853	https://www.wannasurf.com/spot/Europe/France/Gironde/dead_zone/index.html	Dead Zone	44.520933	-1.2593
1856	https://www.wannasurf.com/spot/Europe/France/Gironde/hourtin_plage/index.html	Hourtin Plage	45.2235	-1.173383
1857	https://www.wannasurf.com/spot/Europe/France/Gironde/L_oranger/index.html	L'oranger	NaN	NaN
1858	https://www.wannasurf.com/spot/Europe/France/Gironde/la_chambrette/index.html	La Chambrette	45.54955	-1.05525
1859	https://www.wannasurf.com/spot/Europe/France/Gironde/La_Garonne/index.html	La Garonne	44.69795	-1.25455
1860	https://www.wannasurf.com/spot/Europe/France/Gironde/La_Jenny/index.html	La Jenny	44.857267	-1.224033
1861	https://www.wannasurf.com/spot/Europe/France/Gironde/la_lagune/index.html	La Lagune	44.548517	-1.251583
1862	https://www.wannasurf.com/spot/Europe/France/Gironde/La_Salie/index.html	La Salie	44.514967	-1.256
1863	https://www.wannasurf.com/spot/Europe/France/Gironde/La_Torchere/index.html	La Torchere	44.676067	-1.257717
1864	https://www.wannasurf.com/spot/Europe/France/Gironde/La_vache_morte/index.html	La vache morte	44.694383	-1.254217
1865	https://www.wannasurf.com/spot/Europe/France/Gironde/lacanau/index.html	Lacanau	45.00335	-1.204467
1866	https://www.wannasurf.com/spot/Europe/France/Gironde/lacanau_supersud/index.html	Lacanau Supersud	44.985933	-1.205917
1867	https://www.wannasurf.com/spot/Europe/France/Gironde/Le_Bayle_Nord/index.html	Le Bayle Nord	44.721767	-1.250767
1868	https://www.wannasurf.com/spot/Europe/France/Gironde/Le_Cimetiere/index.html	Le Cimetière	44.686733	-1.256083
1869	https://www.wannasurf.com/spot/Europe/France/Gironde/Le_Gurp/index.html	Le Gurp	45.434567	-1.155417
1870	https://www.wannasurf.com/spot/Europe/France/Gironde/le_pelican_mort/index.html	Le pelican mort	NaN	NaN
1871	https://www.wannasurf.com/spot/Europe/France/Gironde/Le_Petit_Nice/index.html	Le Petit Nice	44.559083	-1.244267
1872	https://www.wannasurf.com/spot/Europe/France/Gironde/le_petit_train/index.html	Le petit train	44.655017	-1.258883
1873	https://www.wannasurf.com/spot/Europe/France/Gironde/le_pin_sec/index.html	Le Pin Sec	45.268483	-1.166267
1874	https://www.wannasurf.com/spot/Europe/France/Gironde/le_porge/index.html	Le Porge	44.894317	-1.220517
1875	https://www.wannasurf.com/spot/Europe/France/Gironde/le_Sail_Fish/index.html	Le Sail Fish	44.6407	-1.263617
1876	https://www.wannasurf.com/spot/Europe/France/Gironde/le_truc_vert/index.html	Le Truc Vert	44.715117	-1.250417
1877	https://www.wannasurf.com/spot/Europe/France/Gironde/le_verdon/index.html	Le Verdon	45.56575	-1.08885
1878	https://www.wannasurf.com/spot/Europe/France/Gironde/Les_Dunes/index.html	Les Dunes	44.645467	-1.262583
1879	https://www.wannasurf.com/spot/Europe/France/Gironde/Mascaret_Garonne/index.html	Mascaret Garonne	44.720983	-0.447583
1880	https://www.wannasurf.com/spot/Europe/France/Gironde/Mascaret_St_Pardon/index.html	Mascaret St Pardon	44.912183	-0.316117
1881	https://www.wannasurf.com/spot/Europe/France/Gironde/montalivet/index.html	Montalivet	45.377533	-1.161283
1882	https://www.wannasurf.com/spot/Europe/France/Gironde/Soulac/index.html	Soulac	45.516083	-1.1297
1883	https://www.wannasurf.com/spot/Europe/France/Landes/arna_plage/index.html	Arna plage	43.911583	-1.3769
1884	https://www.wannasurf.com/spot/Europe/France/Landes/Biscarosse/index.html	Biscarrosse	44.4473	-1.2569
1898	https://www.wannasurf.com/spot/Europe/France/Landes/les_culs_nuls/index.html	Les Culs Nuls	43.66525	-1.443883
1911	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Chambre_d_Amour/index.html	Anglet - Chambre d Amour	43.494583	-1.547783
1885	https://www.wannasurf.com/spot/Europe/France/Landes/cap_de_lhomy/index.html	Cap de l´Homy	44.039233	-1.342733
1886	https://www.wannasurf.com/spot/Europe/France/Landes/capbreton_-_la_pointe/index.html	Capbreton - La pointe	43.626283	-1.456883
1887	https://www.wannasurf.com/spot/Europe/France/Landes/Capbreton_-_Le_Prevent/index.html	Capbreton - Le Prevent	43.650583	-1.446683
1888	https://www.wannasurf.com/spot/Europe/France/Landes/Contis_Plage/index.html	Contis plage	44.0919	-1.325733
1889	https://www.wannasurf.com/spot/Europe/France/Landes/La_Graviere/index.html	La Graviere	43.677333	-1.443033
1890	https://www.wannasurf.com/spot/Europe/France/Landes/la_lette_blanche/index.html	La Lette Blanche	43.902783	-1.377883
1891	https://www.wannasurf.com/spot/Europe/France/Landes/La_Nord/index.html	La Nord	43.66495	-1.44545
1852	https://www.wannasurf.com/spot/Europe/France/Gironde/Crohot_des_cavalles/index.html	Crohot des cavalles	45.114883	-1.191217
1892	https://www.wannasurf.com/spot/Europe/France/Landes/La_Piste/index.html	La Piste	43.644017	-1.447017
1893	https://www.wannasurf.com/spot/Europe/France/Landes/la_sud/index.html	La Sud	43.66185	-1.447283
1894	https://www.wannasurf.com/spot/Europe/France/Landes/Labenne_Ocean/index.html	Labenne-ocean	43.600383	-1.473967
1895	https://www.wannasurf.com/spot/Europe/France/Landes/le_penon/index.html	Le Penon	43.710417	-1.43815
1896	https://www.wannasurf.com/spot/Europe/France/Landes/santosha/index.html	Le Santocha	43.647567	-1.446467
1897	https://www.wannasurf.com/spot/Europe/France/Landes/les_bourdaines/index.html	Les Bourdaines	43.698017	-1.4409
1899	https://www.wannasurf.com/spot/Europe/France/Landes/Les_Estagnots/index.html	Les Estagnots	43.6869	-1.44135
1900	https://www.wannasurf.com/spot/Europe/France/Landes/Les_Montagnes_Mortes/index.html	Les Montagnes Mortes	0	0
1901	https://www.wannasurf.com/spot/Europe/France/Landes/Messanges/index.html	Messanges	43.81605	-1.405217
1902	https://www.wannasurf.com/spot/Europe/France/Landes/Mimizan/index.html	Mimizan	44.214633	-1.299083
1903	https://www.wannasurf.com/spot/Europe/France/Landes/Moliets/index.html	Moliets	43.852917	-1.393117
1904	https://www.wannasurf.com/spot/Europe/France/Landes/Moliets_Golf/index.html	Moliets Golf	43.843167	-1.397317
1905	https://www.wannasurf.com/spot/Europe/France/Landes/ondres-plage/index.html	Ondres-Plage	43.57815	-1.490283
1919	https://www.wannasurf.com/spot/Europe/France/Basque_Country/belharra/index.html	Belharra	43.414533	-1.705967
1906	https://www.wannasurf.com/spot/Europe/France/Landes/plage_des_casernes/index.html	Plage des Casernes	43.7231	-1.433067
1907	https://www.wannasurf.com/spot/Europe/France/Landes/Soustons_-_Plage_de_l_océan/index.html	Soustons - Plage de l'océan	43.7762	-1.42005
1908	https://www.wannasurf.com/spot/Europe/France/Landes/st_girons_plage/index.html	St. Girons Plage	43.95325	-1.36415
1909	https://www.wannasurf.com/spot/Europe/France/Landes/tarnos/index.html	Tarnos	43.558283	-1.502083
1910	https://www.wannasurf.com/spot/Europe/France/Landes/Vieux_Boucau_north_beach/index.html	Vieux Boucau (north beach)	43.7956	-1.412567
1912	https://www.wannasurf.com/spot/Europe/France/Basque_Country/La_Barre/index.html	Anglet - La Barre	43.526517	-1.525133
1913	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Anglet_-_La_Madrague/index.html	Anglet - La Madrague	43.511983	-1.535433
1914	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Anglet_-_Le_club/index.html	Anglet - Le club	43.499267	-1.544283
1915	https://www.wannasurf.com/spot/Europe/France/Basque_Country/la_barre_-_le_furoncle/index.html	Anglet - Le Furoncle	43.527967	-1.526533
1916	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Les_Cavaliers/index.html	Anglet - Les Cavaliers	43.52325	-1.526417
1917	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Les_Sables_d_Or/index.html	Anglet - Les Sables d'Or	43.501767	-1.5419
1918	https://www.wannasurf.com/spot/Europe/France/Basque_Country/marinella/index.html	Anglet - Marinella	43.504983	-1.539833
1920	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Cote_des_Basques/index.html	Biarritz - Cote des Basques	43.47905	-1.567183
1921	https://www.wannasurf.com/spot/Europe/France/Basque_Country/La_Grande_Plage/index.html	Biarritz - Grande Plage	43.485467	-1.5592
1922	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Biarritz_-_Milady/index.html	Biarritz - Milady	43.46485	-1.577183
1923	https://www.wannasurf.com/spot/Europe/France/Basque_Country/biarritz_-_plage_de_marbella/index.html	Biarritz - Plage de Marbella	43.469117	-1.57455
1924	https://www.wannasurf.com/spot/Europe/France/Basque_Country/bidart_pavillion_royal/index.html	Bidart - Pavillon Royal	43.455733	-1.583783
1925	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Bidart/index.html	Bidart - Plage centrale	43.437083	-1.59675
1953	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Cap_St_Louis_Left/index.html	Cap St Louis Left	43.17855	5.674067
1926	https://www.wannasurf.com/spot/Europe/France/Basque_Country/bidart_2/index.html	BidartII	43.456067	-1.58205
1927	https://www.wannasurf.com/spot/Europe/France/Basque_Country/cenitz/index.html	Cenitz	43.4232	-1.62215
1928	https://www.wannasurf.com/spot/Europe/France/Basque_Country/erretas/index.html	Erretas	NaN	NaN
1929	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Erretegia/index.html	Erretegia	43.447567	-1.590317
1930	https://www.wannasurf.com/spot/Europe/France/Basque_Country/erromardie/index.html	erromardie	43.411133	-1.6388
1931	https://www.wannasurf.com/spot/Europe/France/Basque_Country/hendaye/index.html	Hendaye	43.378167	-1.762967
1932	https://www.wannasurf.com/spot/Europe/France/Basque_Country/IIbarritz/index.html	IIbarritz	43.45505	-1.584617
1933	https://www.wannasurf.com/spot/Europe/France/Basque_Country/la_bougie/index.html	La bougie	43.390583	-1.681267
1934	https://www.wannasurf.com/spot/Europe/France/Basque_Country/lafitenia/index.html	Lafiténia	43.415733	-1.62965
1935	https://www.wannasurf.com/spot/Europe/France/Basque_Country/le_port/index.html	Le Port	43.389467	-1.671517
1936	https://www.wannasurf.com/spot/Europe/France/Basque_Country/avalanche/index.html	Les Alcyons Avalanche	43.427	-1.6119
1937	https://www.wannasurf.com/spot/Europe/France/Basque_Country/les_deux_jumeaux/index.html	Les deux jumeaux	43.381333	-1.7575
1938	https://www.wannasurf.com/spot/Europe/France/Basque_Country/les_flots_bleus/index.html	les flots bleus	43.396767	-1.664133
1939	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Guethary/index.html	Parlementia	43.42885	-1.609517
1940	https://www.wannasurf.com/spot/Europe/France/Basque_Country/plage_de_mayarco/index.html	Plage de Mayarco	43.419067	-1.626333
1941	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Sainte_Barbe/index.html	Sainte Barbe	43.399167	-1.667
1942	https://www.wannasurf.com/spot/Europe/France/Basque_Country/Sainte_Barbe_inside/index.html	Sainte Barbe Inside	43.397383	-1.666133
1943	https://www.wannasurf.com/spot/Europe/France/Basque_Country/vortex/index.html	Vanthrax	43.3957	-1.754717
1944	https://www.wannasurf.com/spot/Europe/France/Mediterranean/almanarre/index.html	Almanarre	NaN	NaN
1945	https://www.wannasurf.com/spot/Europe/France/Mediterranean/almanarre_-_le_petit_port/index.html	Almanarre - le petit port	NaN	NaN
1946	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Argeles-Sur-Mer/index.html	Argelès-Sur-Mer	42.5673	3.046317
1947	https://www.wannasurf.com/spot/Europe/France/Mediterranean/bandol/index.html	bandol	43.13285	5.74795
1948	https://www.wannasurf.com/spot/Europe/France/Mediterranean/banyuls_bay/index.html	Banyuls bay	NaN	NaN
1949	https://www.wannasurf.com/spot/Europe/France/Mediterranean/canet_plage/index.html	Canet plage	42.700333	3.039417
1950	https://www.wannasurf.com/spot/Europe/France/Mediterranean/aerospatial/index.html	Cannes  l'Aérospatiale	43.54705	6.98005
1951	https://www.wannasurf.com/spot/Europe/France/Mediterranean/cap_rousset/index.html	Cap rousset	NaN	NaN
1952	https://www.wannasurf.com/spot/Europe/France/Mediterranean/cap_saint_louis/index.html	Cap Saint Louis	43.17635	5.6716
1955	https://www.wannasurf.com/spot/Europe/France/Mediterranean/collioure_bay/index.html	Collioure bay	42.526733	3.086183
1956	https://www.wannasurf.com/spot/Europe/France/Mediterranean/le_phare/index.html	Embiez - Le Phare	NaN	NaN
1957	https://www.wannasurf.com/spot/Europe/France/Mediterranean/epluchures_beach/index.html	Epluchures Beach	43.258583	5.374883
1958	https://www.wannasurf.com/spot/Europe/France/Mediterranean/fabregas/index.html	Fabregas	43.067883	5.8689
1959	https://www.wannasurf.com/spot/Europe/France/Mediterranean/galiote/index.html	Galiote	43.2732	6.588217
1960	https://www.wannasurf.com/spot/Europe/France/Mediterranean/gigaro/index.html	Gigaro	NaN	NaN
1961	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Grande_plage_de_Bandol/index.html	Grande plage de Bandol	43.133367	5.779767
1962	https://www.wannasurf.com/spot/Europe/France/Mediterranean/les_lecques/index.html	Grande Plage des Lecques	NaN	NaN
1963	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Gruissan_Plage/index.html	Gruissan Plage	43.0962	3.1128
1964	https://www.wannasurf.com/spot/Europe/France/Mediterranean/kamikaze/index.html	Kamikaze	NaN	NaN
1965	https://www.wannasurf.com/spot/Europe/France/Mediterranean/keller/index.html	Keller	43.555667	7.13655
1966	https://www.wannasurf.com/spot/Europe/France/Mediterranean/plage_de_larene/index.html	L'Arène	NaN	NaN
1967	https://www.wannasurf.com/spot/Europe/France/Mediterranean/l_arquet/index.html	L'Arquet	NaN	NaN
1968	https://www.wannasurf.com/spot/Europe/France/Mediterranean/sausset_les_pins/index.html	L'Hermitage	43.327667	5.1187
1969	https://www.wannasurf.com/spot/Europe/France/Mediterranean/l_olivette/index.html	L'Olivette	NaN	NaN
1982	https://www.wannasurf.com/spot/Europe/France/Mediterranean/le_manege/index.html	Le manège	NaN	NaN
1970	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_tour/index.html	La Cigale	NaN	NaN
1971	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_ciotat/index.html	La Ciotat	NaN	NaN
1972	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_couronne/index.html	La couronne	NaN	NaN
1973	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_faviere/index.html	La Favière	NaN	NaN
1974	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_garonne/index.html	La garonne	NaN	NaN
1975	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_guillotine/index.html	La Guillotine (DEAD SPOT)	43.2819	3.444817
1976	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_nartelle/index.html	La Nartelle	NaN	NaN
1977	https://www.wannasurf.com/spot/Europe/France/Mediterranean/paillotte/index.html	La Paillotte	NaN	NaN
1978	https://www.wannasurf.com/spot/Europe/France/Mediterranean/la_verrerie/index.html	La verrerie	NaN	NaN
1979	https://www.wannasurf.com/spot/Europe/France/Mediterranean/le_canebas/index.html	Le Canebas	NaN	NaN
1980	https://www.wannasurf.com/spot/Europe/France/Mediterranean/le_lavandou_-_front_de_mer/index.html	Le Lavandou - Front de mer	43.134217	6.37225
1981	https://www.wannasurf.com/spot/Europe/France/Mediterranean/le_mail/index.html	Le Mail	NaN	NaN
1983	https://www.wannasurf.com/spot/Europe/France/Mediterranean/le_niel___giens/index.html	Le niel   Giens	NaN	NaN
1984	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Les_Ayguades/index.html	Les Ayguades	43.138183	3.149917
1985	https://www.wannasurf.com/spot/Europe/France/Mediterranean/les_bonnettes/index.html	Les bonnettes	NaN	NaN
1986	https://www.wannasurf.com/spot/Europe/France/Mediterranean/les_laurons_-_centrale_edf/index.html	Les Laurons - centrale EDF	43.352883	5.02265
1987	https://www.wannasurf.com/spot/Europe/France/Mediterranean/les_oursinnieres/index.html	Les oursinniéres	NaN	NaN
1988	https://www.wannasurf.com/spot/Europe/France/Mediterranean/les_sablettes/index.html	Les sablettes	NaN	NaN
1989	https://www.wannasurf.com/spot/Europe/France/Mediterranean/lescuales_house/index.html	Lescuale's House	NaN	NaN
1990	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Maguelone/index.html	Maguelone	NaN	NaN
1991	https://www.wannasurf.com/spot/Europe/France/Mediterranean/marseille_-_la_digue_de_la_pointe_rouge/index.html	Marseille - La digue de la pointe rouge	43.240583	5.361933
1993	https://www.wannasurf.com/spot/Europe/France/Mediterranean/menton/index.html	Menton	NaN	NaN
1994	https://www.wannasurf.com/spot/Europe/France/Mediterranean/dents_de_la_mer/index.html	Menton -Les dents de la mer	NaN	NaN
1995	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Narbonne_Plage/index.html	Narbonne Plage	43.148967	3.158617
1996	https://www.wannasurf.com/spot/Europe/France/Mediterranean/nice/index.html	Nice	43.654367	7.197167
1997	https://www.wannasurf.com/spot/Europe/France/Mediterranean/palavas_-_le_prevost/index.html	Palavas - Le Prevost	NaN	NaN
1998	https://www.wannasurf.com/spot/Europe/France/Mediterranean/palavas_les_flots/index.html	Palavas les Flots	43.5282	3.935767
1999	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Paulilles/index.html	Paulilles	42.505683	3.123583
2000	https://www.wannasurf.com/spot/Europe/France/Mediterranean/pin_rolland/index.html	Pin rolland	NaN	NaN
2001	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Plage_de_Portisol/index.html	Plage de Portisol	43.115317	5.7885
2002	https://www.wannasurf.com/spot/Europe/France/Mediterranean/plage_de_renecros/index.html	Plage de Renécros	NaN	NaN
2003	https://www.wannasurf.com/spot/Europe/France/Mediterranean/pointe_alègre/index.html	pointe alègre	43.294317	6.61735
2004	https://www.wannasurf.com/spot/Europe/France/Mediterranean/portissol/index.html	Portissol	NaN	NaN
2005	https://www.wannasurf.com/spot/Europe/France/Mediterranean/roc_amour/index.html	Roc Amour	NaN	NaN
2006	https://www.wannasurf.com/spot/Europe/France/Mediterranean/six_fours/index.html	Six fours	43.092083	5.80405
2007	https://www.wannasurf.com/spot/Europe/France/Mediterranean/tamaris/index.html	Tamaris	43.328283	5.083017
2008	https://www.wannasurf.com/spot/Europe/France/Mediterranean/the_magique_left/index.html	The magique left	NaN	NaN
2019	https://www.wannasurf.com/spot/Europe/France/Corsica/l_ostriconi/index.html	L'Ostriconi	42.6618	9.060367
2009	https://www.wannasurf.com/spot/Europe/France/Mediterranean/Trois_Montagne/index.html	Trois Montagne	43.448367	4.42105
2010	https://www.wannasurf.com/spot/Europe/France/Mediterranean/villefranche/index.html	Villefranche sur mer	43.699983	7.320883
2011	https://www.wannasurf.com/spot/Europe/France/Corsica/nouveau_cimetire/index.html	Ajaccio Nouveau cimetière	NaN	NaN
2012	https://www.wannasurf.com/spot/Europe/France/Corsica/algajola/index.html	Algajola	42.6087	8.868367
2013	https://www.wannasurf.com/spot/Europe/France/Corsica/arone/index.html	Arone	NaN	NaN
2014	https://www.wannasurf.com/spot/Europe/France/Corsica/campo_del_oro/index.html	Campo dell' Oro	NaN	NaN
2016	https://www.wannasurf.com/spot/Europe/France/Corsica/cargese/index.html	Cargese	NaN	NaN
2017	https://www.wannasurf.com/spot/Europe/France/Corsica/espuma/index.html	Espuma	NaN	NaN
2018	https://www.wannasurf.com/spot/Europe/France/Corsica/Etang_de_l_Ovu_Santu/index.html	Etang de l'Ovu Santu	41.717283	9.401383
2020	https://www.wannasurf.com/spot/Europe/France/Corsica/pain_de_sucre/index.html	Le pain de sucre	42.569483	8.80395
2021	https://www.wannasurf.com/spot/Europe/France/Corsica/Lozari_Beach/index.html	Lozari Beach	42.641383	9.0158
2022	https://www.wannasurf.com/spot/Europe/France/Corsica/lumio_26_aout/index.html	Lumio	42.582783	8.8
2023	https://www.wannasurf.com/spot/Europe/France/Corsica/parata_point/index.html	Parata point	NaN	NaN
2024	https://www.wannasurf.com/spot/Europe/France/Corsica/pinarellu/index.html	Pinarellu	NaN	NaN
2025	https://www.wannasurf.com/spot/Europe/France/Corsica/portigliolo/index.html	Portigliolo	NaN	NaN
2026	https://www.wannasurf.com/spot/Europe/France/Corsica/Punta_di_Testa/index.html	Punta di Testa	41.689967	9.393133
2027	https://www.wannasurf.com/spot/Europe/France/Corsica/roca_punta/index.html	Roca Punta	NaN	NaN
2028	https://www.wannasurf.com/spot/Europe/France/Corsica/ruppione/index.html	Ruppione	41.832033	8.78425
2029	https://www.wannasurf.com/spot/Europe/France/Corsica/sagone/index.html	Sagone	NaN	NaN
2030	https://www.wannasurf.com/spot/Europe/France/Corsica/sainte-restitude/index.html	Sainte-Restitude	42.56695	8.7999
2031	https://www.wannasurf.com/spot/Europe/France/Corsica/tuccia_left/index.html	tuccia left	42.0502	8.74715
2266	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Vares/index.html	Vares	NaN	NaN
2032	https://www.wannasurf.com/spot/Europe/France/Corsica/vardiolla/index.html	Vardiolla	NaN	NaN
2033	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Alona_Bay/index.html	Alona Bay	NaN	NaN
2034	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Bayfield_Wharf/index.html	Bayfield Wharf	NaN	NaN
2035	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Birthdays/index.html	Birthdays	NaN	NaN
2036	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Bluffers/index.html	Bluffers	43.704217	-79.228983
2037	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Bothwell_beach/index.html	Bothwell beach	0	0
2038	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/D-Land/index.html	D-Land	42.853283	-79.534383
2039	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Erieau/index.html	Erieau	42.258817	-81.905783
2040	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Flannies/index.html	Flannies	43.338367	-79.769017
2041	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Grand_Bend/index.html	Grand Bend	43.313433	-81.759217
2056	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/christopher_point/index.html	Christopher Point	NaN	NaN
2042	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Hutches/index.html	Hutches	NaN	NaN
2043	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Inverhuron_-_Mac_Gregor_Point/index.html	Inverhuron - Mac Gregor Point	44.295633	-81.601017
2044	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Kincardine/index.html	Kincardine	44.177683	-81.64375
2045	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Lang_s_Left/index.html	Lang's Left	43.616883	-79.328333
2047	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/South_Hampton/index.html	South Hampton	NaN	NaN
2048	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/the_hill/index.html	the hill	0	0
2049	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/The_Pier/index.html	The Pier	43.273917	-79.778117
2050	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/29th_Street/index.html	29th Street	49.334967	-123.194733
2051	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/Ambleside_Park/index.html	Ambleside Park	49.325017	-123.151717
2052	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/Bowie_Seamount/index.html	Bowie Seamount	53.307083	-135.659867
2053	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/chesterman_beach/index.html	Chesterman Beach	49.068517	-125.803567
2054	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/chestermans_beach_-_north/index.html	Chestermans beach - north	49.117767	-125.899283
2057	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/cox_bay/index.html	Cox Bay	49.101967	-125.880317
2058	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/Florencia_Bay/index.html	Florencia Bay	48.99385	-125.636217
2059	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/hansons/index.html	Hansons	49.77095	-124.386267
2060	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/jackie_s_hole_-_no_rooks/index.html	Jackie's Hole - No Rooks	49.00185	-125.639733
2061	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/jordan_river/index.html	Jordan river	48.419867	-124.056217
2062	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/long_beach/index.html	Long Beach	49.070917	-125.765217
2063	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/midgets/index.html	Midgets	48.497333	-123.33295
2064	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/nootka_island/index.html	Nootka Island	49.658983	-126.844333
2065	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/North_Beach/index.html	North Beach	NaN	NaN
2066	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/pacheedat_beach/index.html	Pacheedat Beach	NaN	NaN
2067	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/pachina_bay/index.html	Pachina Bay	6	-95
2068	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/port_renfrew/index.html	Port Renfrew	48.56735	-124.410033
2069	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/qualicum_beach/index.html	Qualicum Beach	NaN	NaN
2070	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/raft_cove/index.html	Raft Cove	50.5865	-128.237567
2071	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/rosies_bay/index.html	Rosie's Bay	NaN	NaN
2072	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/Silver_Foxes/index.html	Silver Foxes	49.791383	-124.4661
2073	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/sombrio_beach/index.html	Sombrio Beach	48.4942	-124.296233
2074	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/sooke_harbour/index.html	Sooke Harbour	NaN	NaN
2075	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/tofino/index.html	Tofino	49.130067	-125.906067
2076	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/twin_rivers/index.html	Twin Rivers	NaN	NaN
2077	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/Waldo_s_Cove/index.html	Waldo's Cove	54.171283	-133.0343
2078	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/Wickaninish/index.html	Wickaninnish	49.015833	-125.670217
2079	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/witty_s_lagoon/index.html	Witty's Lagoon	48.382867	-123.51375
2080	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Andrews_Head/index.html	Andrews Head	44.06795	-64.563617
2106	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/point_michaud/index.html	Point Michaud	45.5881	-60.67955
2081	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Antlers_beach/index.html	Antlers beach	49.740533	-119.761367
2082	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Banc_de_Pabos/index.html	Banc de Pabos	48.372017	-64.587483
2083	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Blueberry_Bay/index.html	Blueberry Bay	44.065817	-64.582233
2084	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Broad_Cove/index.html	Broad Cove	44.17715	-64.470117
2085	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Cape_Lumiere/index.html	Cape Lumiere	NaN	NaN
2086	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/cherry_hill/index.html	Cherry Hill	44.14015	-64.50665
2087	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/cow_bay_-_moose_rocks/index.html	Cow Bay - Moose Rocks	44.613933	-63.429567
2088	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/dennis_beach/index.html	Dennis Beach	NaN	NaN
2089	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/eastern_brook/index.html	Eastern Brook	NaN	NaN
2090	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/fisherman_s_reserve/index.html	Fisherman's Reserve	44.648133	-63.274383
2091	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/forevers/index.html	Forevers	NaN	NaN
2092	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Habitat__67_-_Montreal/index.html	Habitat '67 - Montreal	45.500267	-73.54235
2093	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/hirtles/index.html	Hirtles	44.25885	-64.270367
2217	https://www.wannasurf.com/spot/Europe/Spain/Galicia/cobas/index.html	Cobas	43.538483	-8.298
2094	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/icicles/index.html	Icicles	NaN	NaN
2095	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/ingonish_beach/index.html	Ingonish Beach	46.647017	-60.38755
2096	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/juicy_s/index.html	Juicy's	NaN	NaN
2097	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Kennington_Cove/index.html	Kennington Cove	45.876467	-60.060533
2098	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/killaz/index.html	Killaz	44.6529	-63.264433
2099	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/lawrencetown/index.html	Lawrencetown	44.64215	-63.342017
2100	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/lawrencetown_-_plan_b/index.html	Lawrencetown - Plan B	44.644217	-63.35945
2101	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/left_point/index.html	Left Point	NaN	NaN
2102	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/martinique/index.html	Martinique	NaN	NaN
2107	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/point_pleasant_beach_park/index.html	Point Pleasant Beach Park	NaN	NaN
2108	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/pubnico_beach/index.html	Pubnico Beach	NaN	NaN
2109	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Rissers/index.html	Rissers	44.229717	-64.427183
2110	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/rudy_s/index.html	Rudy's	NaN	NaN
2111	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/sable_island/index.html	Sable Island	43.9288	-59.876
2112	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Seals/index.html	Seals	44.667383	-63.252417
2113	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/the_juice/index.html	The Juice	NaN	NaN
2114	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/The_Meadows/index.html	The Meadows	44.0578	-64.637217
2115	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/saint_laurent_-_lachine/index.html	Vague à Guy - Lasalle	45.419317	-73.603067
2116	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/White_Point/index.html	White Point	43.961817	-64.735267
2117	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/Windmill_Bight/index.html	Windmill Bight	NaN	NaN
2118	https://www.wannasurf.com/spot/North_America/Canada/East_Coast/zaluds/index.html	Zaluds	NaN	NaN
2119	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/aizkorri/index.html	Aizkorri	43.381967	-3.016783
2120	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Arrigunaga/index.html	Arrigunaga	43.358133	-3.022267
2121	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/bakio/index.html	Bakio	43.43225	-2.805017
2122	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/deba/index.html	Deba	43.3037	-2.353133
2123	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/El_Basurero/index.html	El Basurero	43.431133	-2.7394
2124	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/el_sitio/index.html	El Sitio	43.395733	-2.986567
2125	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/ereaga/index.html	Ereaga	43.3421	-3.01485
2126	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Gaztetape/index.html	Gaztetape	43.3037	-2.20615
2127	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Itziar/index.html	Itziar	43.297733	-2.309233
2128	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/izaro/index.html	Izaro	43.42515	-2.68595
2129	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Jefrys/index.html	Jefrys	43.351067	-3.0203
2130	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/karramarro/index.html	Karramarro	43.2951	-2.1911
2131	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/la_arena/index.html	La arena	43.348717	-3.11685
2132	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/la_central/index.html	La central	43.434267	-2.86755
2133	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/La_Concha/index.html	La Concha	43.319917	-2.004667
2134	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/la_galea/index.html	La Galea	43.3714	-3.0383
2135	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/laga/index.html	Laga	43.409017	-2.656483
2136	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Meniakos/index.html	Meniakos	43.397017	-2.986867
2137	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Mundaka/index.html	Mundaka	43.40745	-2.694133
2138	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Mutriku/index.html	Mutriku	43.307967	-2.3705
2139	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Ogella/index.html	Ogella	43.3728	-2.545617
2140	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Ondareeta/index.html	Ondareeta	43.317217	-2.002283
2141	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/orio/index.html	Orio	43.2915	-2.130033
2142	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Orrua__Rocca_Puta/index.html	Orrua, Rocca Puta	43.3051	-2.23975
2143	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Playa_de_Carraspio/index.html	Playa de Carraspio	43.363817	-2.493717
2144	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/playa_de_gros/index.html	Playa de Gros	43.326833	-1.975883
2145	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/Playa_Laida/index.html	Playa Laida	43.401183	-2.687233
2146	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/la_salvaje/index.html	Playa Salvaje	43.384367	-3.0067
2147	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/plentzia/index.html	Plentzia	43.411267	-2.9468
2148	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/sopelana/index.html	Sopelana	43.389217	-2.994783
2149	https://www.wannasurf.com/spot/Europe/Spain/Pais_Vasco/zarautz/index.html	Zarautz	43.289133	-2.16955
2150	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/ajo/index.html	Ajo	43.498917	-3.613233
2151	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/berria/index.html	Berria	43.464483	-3.463917
2152	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/Brazomar/index.html	Brazomar	43.3752	-3.212367
2153	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/Comillas/index.html	Comillas	43.38995	-4.288317
2154	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/covachos/index.html	Covachos	43.473733	-3.909317
2155	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/de_langre/index.html	De langre	43.4757	-3.68945
2156	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/El_Brusco/index.html	El Brusco	43.4703	-3.482583
2157	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/el_muro/index.html	El Muro	43.479467	-3.788217
2158	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/el_sardinero/index.html	El sardinero	43.475567	-3.783883
2159	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/galizano/index.html	Galizano	43.480217	-3.67565
2160	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/galizano_point/index.html	Galizano Point	43.48035	-3.679833
2161	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/isla_santa_marina/index.html	Isla Santa Marina	43.47015	-3.731217
2162	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/Islares/index.html	Islares	43.404333	-3.31465
2163	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/la_fortaleza/index.html	La Fortaleza	43.438267	-3.436983
2164	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/laredo/index.html	Laredo	43.422633	-3.44335
2165	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/liencres/index.html	Liencres	43.4536	-3.962117
2166	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/los_caballos/index.html	Los Caballos	43.44435	-4.02375
2167	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/Los_Locos/index.html	Los Locos	43.4387	-4.04775
2168	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/matalenas/index.html	Matalenas	43.48585	-3.788133
2169	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/Meron/index.html	Meron	43.39095	-4.380967
2170	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/Oyambre/index.html	Oyambre	43.394633	-4.336083
2171	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/La_Concha/index.html	Playa de La Concha	43.4362	-4.04145
2172	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/playa_de_noja/index.html	Playa de Noja	43.491667	-3.528283
2173	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/ria_de_suances/index.html	Ria de Suances	43.43485	-4.0347
2174	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/ris/index.html	Ris	43.494183	-3.537217
2175	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/somo/index.html	Somo	43.457033	-3.7444
2176	https://www.wannasurf.com/spot/Europe/Spain/Cantabria/punta_de_sonabia/index.html	Sonabia	43.414117	-3.3371
2177	https://www.wannasurf.com/spot/Europe/Spain/Asturias/Aernal_de_Morís/index.html	Aernal de Morís	43.475183	-5.175233
2178	https://www.wannasurf.com/spot/Europe/Spain/Asturias/aguilar/index.html	Aguilar	43.555017	-6.116717
2179	https://www.wannasurf.com/spot/Europe/Spain/Asturias/cotarelo/index.html	Cotarelo	NaN	NaN
2180	https://www.wannasurf.com/spot/Europe/Spain/Asturias/el_mongol/index.html	El Mongol	NaN	NaN
2181	https://www.wannasurf.com/spot/Europe/Spain/Asturias/frejulfe/index.html	Frejulfe	43.560083	-6.675867
2182	https://www.wannasurf.com/spot/Europe/Spain/Asturias/la_roca/index.html	La Roca	43.543517	-5.647133
2183	https://www.wannasurf.com/spot/Europe/Spain/Asturias/los_cubos/index.html	Los cubos	NaN	NaN
2184	https://www.wannasurf.com/spot/Europe/Spain/Asturias/luanco/index.html	Luanco	43.61865	-5.787783
2185	https://www.wannasurf.com/spot/Europe/Spain/Asturias/munielles/index.html	Munielles	43.5796	-6.0124
2186	https://www.wannasurf.com/spot/Europe/Spain/Asturias/Navia/index.html	Navia	43.555917	-6.721917
2187	https://www.wannasurf.com/spot/Europe/Spain/Asturias/otur/index.html	Otur	43.55355	-6.597417
2232	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Larino/index.html	Larino -El faro	42.7726	-9.12365
2188	https://www.wannasurf.com/spot/Europe/Spain/Asturias/penarronda/index.html	Peñarronda	43.553133	-6.995317
2189	https://www.wannasurf.com/spot/Europe/Spain/Asturias/penarrubia/index.html	Peñarrubia	43.5519	-5.6238
2190	https://www.wannasurf.com/spot/Europe/Spain/Asturias/playa_cueva/index.html	Playa cueva	43.549883	-6.472833
2191	https://www.wannasurf.com/spot/Europe/Spain/Asturias/playa_de_la_andrin/index.html	Playa de la Andrin	43.410767	-4.708583
2192	https://www.wannasurf.com/spot/Europe/Spain/Asturias/Playa_de_Vega/index.html	Playa de Vega	43.481767	-5.142283
2193	https://www.wannasurf.com/spot/Europe/Spain/Asturias/vidiago/index.html	Playa de Vidiago	43.401383	-4.652167
2194	https://www.wannasurf.com/spot/Europe/Spain/Asturias/playa_espana/index.html	Playa Espana	43.54535	-5.529
2195	https://www.wannasurf.com/spot/Europe/Spain/Asturias/playa_La_Espasa/index.html	playa La Espasa	43.474783	-5.214217
2196	https://www.wannasurf.com/spot/Europe/Spain/Asturias/playa_san_lorenzo/index.html	Playa San Lorenzo	43.541333	-5.65435
2197	https://www.wannasurf.com/spot/Europe/Spain/Asturias/Ribadesella/index.html	Ribadesella	43.465517	-5.071083
2198	https://www.wannasurf.com/spot/Europe/Spain/Asturias/Rodiles/index.html	Rodiles	43.5339	-5.383767
2199	https://www.wannasurf.com/spot/Europe/Spain/Asturias/salinas___san_juan/index.html	Salinas   San juan	43.582383	-5.949267
2200	https://www.wannasurf.com/spot/Europe/Spain/Asturias/San_Antolin/index.html	San Antolin	43.443517	-4.868483
2201	https://www.wannasurf.com/spot/Europe/Spain/Asturias/san_lorenzo_-_san_pedro/index.html	San lorenzo - san pedro	43.544917	-5.660083
2246	https://www.wannasurf.com/spot/Europe/Spain/Galicia/ponte_da_ria/index.html	Ponte da ria	NaN	NaN
2202	https://www.wannasurf.com/spot/Europe/Spain/Asturias/Tapia/index.html	Tapia de Casariego	43.5645	-6.9564
2203	https://www.wannasurf.com/spot/Europe/Spain/Asturias/xago/index.html	Xagó	43.602517	-5.9206
2204	https://www.wannasurf.com/spot/Europe/Spain/Asturias/xivares/index.html	Xivares	43.569567	-5.716317
2205	https://www.wannasurf.com/spot/Europe/Spain/Galicia/a_lanzada/index.html	A Lanzada	42.454617	-8.881417
2206	https://www.wannasurf.com/spot/Europe/Spain/Galicia/aguieira/index.html	Aguieira	NaN	NaN
2207	https://www.wannasurf.com/spot/Europe/Spain/Galicia/avino/index.html	Aviño	43.293683	-8.74025
2208	https://www.wannasurf.com/spot/Europe/Spain/Galicia/corrubedo/index.html	Balieiro - Corrubedo	NaN	NaN
2209	https://www.wannasurf.com/spot/Europe/Spain/Galicia/barranan/index.html	Barrañán	43.311883	-8.54865
2210	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Basti_Pequeno/index.html	Basti Pequeño	NaN	NaN
2211	https://www.wannasurf.com/spot/Europe/Spain/Galicia/bastiagueiro/index.html	Bastiagueiro	43.343317	-8.36355
2212	https://www.wannasurf.com/spot/Europe/Spain/Galicia/cabo_home/index.html	Cabo Home	42.2532	-8.871983
2213	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Campelo/index.html	Campelo	43.582733	-8.216083
2214	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Cantos__Mougas/index.html	Cantos, Mougas	42.050617	-8.887333
2215	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Carnota/index.html	Carnota	NaN	NaN
2216	https://www.wannasurf.com/spot/Europe/Spain/Galicia/cayon/index.html	Cayon	43.315367	-8.610067
2218	https://www.wannasurf.com/spot/Europe/Spain/Galicia/coprino_s_left/index.html	Coprino's left	43.371733	-8.456733
2219	https://www.wannasurf.com/spot/Europe/Spain/Galicia/depuradora/index.html	depuradora	42.116267	-8.898667
2220	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Doninos/index.html	Doninos	43.491533	-8.321633
2221	https://www.wannasurf.com/spot/Europe/Spain/Galicia/el_baleo/index.html	El Baleo	43.645767	-8.10255
2222	https://www.wannasurf.com/spot/Europe/Spain/Galicia/El_Portillon/index.html	El Portillon	42.17525	-8.815617
2223	https://www.wannasurf.com/spot/Europe/Spain/Galicia/El_Seijo/index.html	El Seijo	NaN	NaN
2224	https://www.wannasurf.com/spot/Europe/Spain/Galicia/espineirido/index.html	Espiñeirido	NaN	NaN
2225	https://www.wannasurf.com/spot/Europe/Spain/Galicia/fornos/index.html	Fornos	43.7132	-7.853183
2226	https://www.wannasurf.com/spot/Europe/Spain/Galicia/foxos/index.html	Foxos	42.426783	-8.874767
2227	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Foz/index.html	Foz Area	43.562483	-7.203167
2228	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Tukan/index.html	Kanido	NaN	NaN
2229	https://www.wannasurf.com/spot/Europe/Spain/Galicia/La_Buraca/index.html	La Buraca	42.191517	-8.81315
2230	https://www.wannasurf.com/spot/Europe/Spain/Galicia/la_cueva/index.html	La Cueva	43.32265	-8.520917
2231	https://www.wannasurf.com/spot/Europe/Spain/Galicia/la_machacona/index.html	La machacona	43.637933	-7.333467
2233	https://www.wannasurf.com/spot/Europe/Spain/Galicia/leira/index.html	Leira	43.3085	-8.64285
2234	https://www.wannasurf.com/spot/Europe/Spain/Galicia/los_castros/index.html	Los Castros	NaN	NaN
2235	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Louro/index.html	Louro (Ancoradoiro)	42.75055	-9.094783
2236	https://www.wannasurf.com/spot/Europe/Spain/Galicia/malpica/index.html	Malpica	43.323467	-8.81425
2237	https://www.wannasurf.com/spot/Europe/Spain/Galicia/melide/index.html	Melide	NaN	NaN
2251	https://www.wannasurf.com/spot/Europe/Spain/Galicia/rinlo/index.html	Rinlo	43.561433	-7.113183
2238	https://www.wannasurf.com/spot/Europe/Spain/Galicia/montalvo_beach/index.html	Montalvo Beach	42.397883	-8.8485
2239	https://www.wannasurf.com/spot/Europe/Spain/Galicia/nemina/index.html	Nemiña	43.011933	-9.266667
2240	https://www.wannasurf.com/spot/Europe/Spain/Galicia/O_Pindo/index.html	O Pindo	42.889467	-9.13895
2241	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Pantin/index.html	Pantin	43.63965	-8.113533
2242	https://www.wannasurf.com/spot/Europe/Spain/Galicia/patos/index.html	Patos	42.156333	-8.826767
2243	https://www.wannasurf.com/spot/Europe/Spain/Galicia/peizas/index.html	Peizas	43.565217	-7.226133
2244	https://www.wannasurf.com/spot/Europe/Spain/Galicia/playa_areas_-_los_muertos/index.html	Playa Areas - Los Muertos	42.391133	-8.777567
2245	https://www.wannasurf.com/spot/Europe/Spain/Galicia/playa_del_orzan/index.html	Playa del Orzan	43.373817	-8.405467
2248	https://www.wannasurf.com/spot/Europe/Spain/Galicia/punta_dos_picos/index.html	punta dos picos	41.869183	-8.875433
2249	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Queiruga/index.html	Queiruga	42.677133	-9.033167
2250	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Playa_del_Razo/index.html	Razo	43.291233	-8.702633
2252	https://www.wannasurf.com/spot/Europe/Spain/Galicia/rio_sieira/index.html	Río Sieira	42.647283	-9.0338
2253	https://www.wannasurf.com/spot/Europe/Spain/Galicia/sabon/index.html	Sabon	43.328883	-8.508767
2254	https://www.wannasurf.com/spot/Europe/Spain/Galicia/samil/index.html	Samil	42.211667	-8.775767
2255	https://www.wannasurf.com/spot/Europe/Spain/Galicia/San_Cosme/index.html	San Cosme	43.561933	-7.191683
2256	https://www.wannasurf.com/spot/Europe/Spain/Galicia/San_Francisco/index.html	San Francisco	42.024633	-8.887833
2257	https://www.wannasurf.com/spot/Europe/Spain/Galicia/San_Xurxo/index.html	San Xurxo (San Jorge)	43.536033	-8.295533
2258	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Santa_Comba/index.html	Santa Comba	43.556233	-8.290817
2259	https://www.wannasurf.com/spot/Europe/Spain/Galicia/santa_cruz/index.html	Santa Cruz	NaN	NaN
2260	https://www.wannasurf.com/spot/Europe/Spain/Galicia/santa_maria_de_oya/index.html	Santa María de Oya	41.9985	-8.884533
2261	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Seijo_Branco/index.html	Seijo Branco	43.399083	-8.329983
2262	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Soesto/index.html	Soesto	43.214833	-9.025817
2263	https://www.wannasurf.com/spot/Europe/Spain/Galicia/toraya/index.html	Toraya	42.197433	-8.808667
2264	https://www.wannasurf.com/spot/Europe/Spain/Galicia/valcobo/index.html	Valcobo	43.316033	-8.533817
2265	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Valdovino/index.html	Valdovino	43.612717	-8.164217
2267	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Villarrube/index.html	Villarrube	43.645583	-8.0765
2268	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/barbate/index.html	Barbate	36.186083	-5.9468
2269	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/bolonia/index.html	Bolonia	NaN	NaN
2270	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/cadiz/index.html	Cadiz	36.516267	-6.284183
2271	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/calita/index.html	Calita	NaN	NaN
2272	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/camposoto/index.html	Camposoto	36.429267	-6.2359
2273	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/canos_de_la_meca/index.html	Caños de la Meca	36.1836	-6.027767
2274	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/conil/index.html	Conil	36.28455	-6.104883
2275	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/costa_ballena/index.html	Costa Ballena	36.689	-6.419617
2276	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/el_balneario/index.html	El Balneario	NaN	NaN
2277	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/el_buzo/index.html	El Buzo	NaN	NaN
2278	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/el_castillo/index.html	El castillo	NaN	NaN
2279	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/el_millon/index.html	El Millon	NaN	NaN
2280	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/El_Palmar/index.html	El Palmar	36.23355	-6.073683
2281	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/faro_de_trafalgar/index.html	Faro de Trafalgar	36.183617	-6.036233
2282	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/getares/index.html	Getares	NaN	NaN
2283	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/guadalmar/index.html	Guadalmar	NaN	NaN
2284	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/la_barrosa/index.html	La Barrosa	36.362967	-6.1817
2285	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/la_carihuela/index.html	La Carihuela	NaN	NaN
2286	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/la_cuchiya/index.html	La cuchiya	NaN	NaN
2287	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/La_Linea_de_la_Concepcion/index.html	La Linea de la Concepcion	36.168517	-5.33705
2288	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/la_ponderosa/index.html	La Ponderosa	NaN	NaN
2289	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/la_puntilla/index.html	La Puntilla	NaN	NaN
2290	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/las_redes/index.html	Las Redes	NaN	NaN
2291	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/las_tres_piedras/index.html	Las Tres Piedras	36.703767	-6.4304
2292	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/Mazagon/index.html	Mazagón	37.119283	-6.79115
2293	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/playa_de_los_alemanes/index.html	Playa de los alemanes	NaN	NaN
2295	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/punta_paloma/index.html	Punta Paloma	36.066667	-5.69555
2296	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/Punta_Umbria/index.html	Punta Umbria	37.2071	-7.090483
2297	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/roche/index.html	Roche	36.3096	-6.153367
2298	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/tarifa/index.html	Tarifa	36.01265	-5.6032
2299	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/Zahara_Redtuna/index.html	Zahara Redtuna	36.131	-5.8446
2300	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Aiguadolc/index.html	Aiguadolc	41.23435	1.828583
2301	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/aiguaoliva/index.html	AiguaOliva	NaN	NaN
2302	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/altafulla/index.html	altafulla	41.1344	1.384433
2303	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/barceloneta/index.html	Barceloneta	41.37885	2.192667
2304	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/benicassim/index.html	Benicassim	NaN	NaN
2305	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/bogatell/index.html	BOGATELL	41.3928	2.207367
2306	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/cabopino/index.html	Cabopino	36.483517	-4.741883
2308	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Cala_Finestrat/index.html	Cala Finestrat	38.523917	-0.166767
2309	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/cala_mesquida__palma_/index.html	Cala Mesquida ( Palma)	39.746133	3.4322
2310	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Calblanque/index.html	Calblanque	37.602667	-0.729483
1586	https://www.wannasurf.com/spot/Europe/Italy/Sicily_Sardinia/Lu_Litarroni/index.html	Lu Litarroni	41.157017	9.153067
2311	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/calita/index.html	Calita	38.354367	-0.4274
2312	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/calpe/index.html	Calpe Rock	38.6409	0.047383
2313	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/cantal_roig/index.html	Cantal Roig	NaN	NaN
2314	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/comandancia/index.html	Comandancia	41.111183	1.257133
2315	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/derecha_de_la_cala/index.html	Derecha de la cala	38.52755	-0.160883
2316	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/el_arenal/index.html	El Arenal	NaN	NaN
2317	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/el_bombo/index.html	El Bombo	NaN	NaN
2318	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/el_chanquete/index.html	El chanquete	36.71585	-4.35015
2319	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/el_dosel/index.html	El Dosel	NaN	NaN
2320	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/El_Perello/index.html	El Perelló	39.279367	-0.2744
2321	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/El_Puerto__Javea_/index.html	El Puerto (Javea)	38.791967	0.182683
2323	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/empuriabrava/index.html	Empuriabrava	NaN	NaN
2324	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/es_secret/index.html	es secret	40.061233	4.0758
2325	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/fuengirola/index.html	Fuengirola	36.532467	-4.622883
2326	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Garraf/index.html	Garraf	41.2543	1.905
2327	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/cala_nova/index.html	Ibiza - Cala Nova	39.001783	1.57875
2328	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Irta/index.html	Irta	40.295983	0.345867
2329	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Jucar/index.html	Jucar	39.152933	-0.2384
2330	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/l_espigo/index.html	L'Espigó de Vilassar	NaN	NaN
2331	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/La_Caleta/index.html	La caleta	NaN	NaN
2332	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/la_manga/index.html	La Manga	37.707117	-0.7384
2333	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/el_dulce/index.html	La Mata	38.009	-0.651267
2334	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/la_placa/index.html	La Placa	NaN	NaN
2335	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/la_punta/index.html	La Punta	NaN	NaN
2336	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/la_rotonda/index.html	La Rotonda	NaN	NaN
2337	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/la_siesta/index.html	La Siesta	38.792617	0.182883
2338	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/La_Zenia/index.html	La Zenia	37.927333	-0.72235
2339	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/largos/index.html	Largos	NaN	NaN
2340	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/latigo/index.html	Latigo	NaN	NaN
2341	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Les_Rotes/index.html	Les Rotes	38.8287	0.151083
2342	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/mallorca_-_cala_major/index.html	Mallorca - Cala Major	39.551783	2.60655
2343	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/mallorca_-_es_trenc/index.html	Mallorca - Es Trenc	39.34105	2.988967
2344	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/mallorca_-_son_serra_nova/index.html	Mallorca - Son Serra Nova	NaN	NaN
2345	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/malpas/index.html	Malpas	39.86555	3.135217
2346	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Malva-Rosa/index.html	Malva-rosa	39.4656	-0.3219
2347	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/marbella/index.html	Marbella	NaN	NaN
2348	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Masnou/index.html	Masnou	41.473733	2.29855
2349	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/mejillones_point/index.html	Mejillones  point	NaN	NaN
2350	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Menorca_-_Son_Bou/index.html	Menorca - Son Bou	39.9017	4.0694
2351	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Miami_Platja/index.html	Miami Platja	40.9932	0.933317
2352	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/mojacar_beach_pier/index.html	Mojacar	0	0
2353	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/molino_de_papel/index.html	Molino de papel	36.7507	-3.815183
2354	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Montgat/index.html	Montgat	NaN	NaN
2355	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/montgo_di_bongo/index.html	Montgo di Bongo	38.787733	0.182867
2356	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/morgans_beach/index.html	Morgan's Beach	NaN	NaN
2357	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Nova_Mar_Bella/index.html	Nova Mar Bella	41.401617	2.214817
2359	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/paguera_tora/index.html	Paguera -Tora-	39.5347	2.45615
2360	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/palmira/index.html	Palmira	NaN	NaN
2361	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/peyo_s/index.html	peyo's	40.8248	0.74175
2294	https://www.wannasurf.com/spot/Europe/Spain/Andalucia/playa_las_Negras/index.html	playa las Negras	36.879667	-2.003333
2362	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/pico_madrid/index.html	Pico Madrid	NaN	NaN
2363	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/platja_ampolla/index.html	Platja de l'Ampolla	NaN	NaN
2364	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/formentera/index.html	Platja de Migjorn	38.6634	1.512483
2365	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Platja_de_Sant_Pol/index.html	Platja de Sant Pol	41.790133	3.047983
2366	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Playa_de_Levante/index.html	Playa de Levante	38.75985	1.4435
2367	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Playa_de_San_Juan/index.html	Playa de San Juan	NaN	NaN
2368	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Playa_del_Bol/index.html	Playa del Bol	38.641333	0.051717
2369	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/playa_del_suso/index.html	Playa del suso	NaN	NaN
2370	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Playa_del_Torres/index.html	Playa del Torres	38.51335	-0.199167
2371	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/playa_san_juan/index.html	Playa San Juan	38.373833	-0.4098
2372	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/poniente/index.html	Poniente	NaN	NaN
2373	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/port_de_mataro/index.html	Port de mataró	41.537367	2.455
2374	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/port_ginesta/index.html	Port Ginesta	41.2592	1.930483
2375	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/port_saplaya/index.html	Port saplaya	39.51	-0.319283
2376	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Portman/index.html	Portman	37.577883	-0.846117
2377	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Puerto_Benidorm/index.html	Puerto Benidorm	38.53545	-0.134983
2378	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/puerto_marina/index.html	Puerto marina	36.599817	-4.50885
2379	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/punta_prima/index.html	Punta Prima	NaN	NaN
2380	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Rio_Algar/index.html	Rio Algar	38.603117	-0.040583
3126	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Engenhoca/index.html	Engenhoca	-14.352533	-39.00095
2381	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/san_cayetano/index.html	Roc San Cayetano	NaN	NaN
2382	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/saint_andreu_de_llavaneres/index.html	Saint Andreu de Llavaneres	NaN	NaN
2383	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/san_juan/index.html	San Juan	NaN	NaN
2384	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/segur_de_calafell/index.html	Segur de Calafell	41.188333	1.609933
2385	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Son_Serra_de_Marina/index.html	Son Serra de Marina	39.740267	3.219633
2386	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Sotogrande/index.html	Sotogrande	36.29345	-5.270217
2387	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/st_mart/index.html	St. Martí	NaN	NaN
2388	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/The_Box/index.html	The Box	NaN	NaN
2389	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/punta_xarraca/index.html	The Cavern -  IBIZA	NaN	NaN
2390	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/the_chucha/index.html	The chucha	36.6963	-3.460483
2391	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Torre_Bank/index.html	Torre Bank	41.137467	1.405483
2392	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/TORRE_VALENTINA/index.html	TORRE VALENTINA	41.83925	3.09635
2393	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/tower/index.html	Tower	NaN	NaN
2394	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Vilassar/index.html	Vilassar	41.498967	2.3867
2395	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/voramar/index.html	Voramar-Benicassim	NaN	NaN
2396	https://www.wannasurf.com/spot/Africa/South_Africa/Marion_Island/Kaalkop_Strand/index.html	Kaalkop Strand	-46.877117	37.8615
2397	https://www.wannasurf.com/spot/Africa/South_Africa/Marion_Island/Ships_Cove__Marion_Island/index.html	Ships Cove, Marion Island	-46.856167	37.844267
2398	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/11th_ave/index.html	11th Ave Melkbos Strand	-33.671783	18.4076
2399	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/A-house/index.html	A-house	NaN	NaN
2400	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Beach_road/index.html	Beach road	NaN	NaN
2401	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Bokpoint/index.html	Bokpoint	NaN	NaN
2402	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Boxers/index.html	Boxers	NaN	NaN
2403	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Braaivleis/index.html	Braaivleis	NaN	NaN
2404	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Brittania_Bay__Beachbreak_/index.html	Brittania Bay (Beachbreak)	NaN	NaN
2405	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Brittania_Bay__Shelly_point_/index.html	Brittania Bay (Shelly point)	NaN	NaN
2406	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Bubbles/index.html	Bubbles	NaN	NaN
2407	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Captains/index.html	Captains	NaN	NaN
2408	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Dassen_Island_Rights/index.html	Dassen Island Rights	NaN	NaN
2409	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/derde_steen/index.html	Derde Steen	NaN	NaN
2410	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Diazville_Mainbeach/index.html	Diazville Mainbeach	NaN	NaN
2411	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Dwarskersbos/index.html	Dwarskersbos	NaN	NaN
2425	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Langebaan_Harbour_Reef/index.html	Langebaan Harbour Reef	NaN	NaN
2412	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/gas_chambers/index.html	Gas Chambers	-33.608717	18.371517
2413	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Grotto_Bay/index.html	Grotto Bay	-33.500317	18.3125
2414	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Harbour_Bay/index.html	Harbour Bay	NaN	NaN
2415	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Hell/index.html	Hell	-32.700083	17.965633
2416	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Holbaai/index.html	Holbaai	NaN	NaN
2417	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/horse_trails/index.html	Horse Trails	-33.783817	18.4494
2418	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Hosh_Dala_Trails/index.html	Hosh Dala Trails	NaN	NaN
2419	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Jacobsbaai/index.html	Jacobsbaai	NaN	NaN
2420	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Kamer_van_17/index.html	Kamer van 17	NaN	NaN
2421	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Kreefbaai/index.html	Kreefbaai	NaN	NaN
2422	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Laaiplek_Beach/index.html	Laaiplek Beach	NaN	NaN
2423	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Langebaan__groot_strand_/index.html	Langebaan (groot strand)	NaN	NaN
2424	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Langebaan__klein_strand_/index.html	Langebaan (klein strand)	NaN	NaN
2426	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Oom_Kalliemaries/index.html	Oom Kalliemaries	NaN	NaN
2427	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Outer_banks/index.html	Outer banks	NaN	NaN
2428	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Oysters/index.html	Oysters	NaN	NaN
2429	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Papsakbaai/index.html	Papsakbaai	NaN	NaN
2430	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Paternoster/index.html	Paternoster	NaN	NaN
2431	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Plaasbaai_Shorey/index.html	Plaasbaai Shorey	NaN	NaN
2432	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Reserve_Beach/index.html	Reserve Beach	NaN	NaN
2433	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/rockboils/index.html	Rockboils	NaN	NaN
2434	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Sandbags_Wedge/index.html	Sandbags Wedge	NaN	NaN
2435	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/seconds/index.html	Seconds	NaN	NaN
2436	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Shells/index.html	Shells	NaN	NaN
2437	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Slabberts/index.html	Slabberts	-33.720983	18.4396
2438	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Springbokkies/index.html	Springbokkies	NaN	NaN
2439	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/strand_silkys/index.html	Strand Silkys	NaN	NaN
2440	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/The_Pit/index.html	The Pit	NaN	NaN
2441	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/TNT/index.html	TNT	NaN	NaN
2442	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/tube_wave/index.html	Tube Wave	-33.724683	18.440017
2443	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/V-Bowl/index.html	V-Bowl	NaN	NaN
2444	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Van_Riebeek/index.html	Van Riebeek	NaN	NaN
2445	https://www.wannasurf.com/spot/Africa/South_Africa/SW_Coast/Yzerfontein/index.html	Yzerfontein	-33.346067	18.146767
2446	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/16_MILE_BEACH/index.html	16 MILE BEACH	-33.359017	18.154667
2447	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Baby_Pipes/index.html	Baby Pipes	NaN	NaN
2448	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Boneyard_CJ/index.html	Boneyard CJ	NaN	NaN
2449	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Boskraal_Strand/index.html	Boskraal Strand	-31.536417	18.073483
2450	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Cape_Death/index.html	Cape Death	NaN	NaN
2451	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Cape_st__Martin_reef/index.html	Cape st. Martin reef	-32.71725	17.9193
2452	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Donkin_Bay/index.html	Donkin Bay	NaN	NaN
2453	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Doring_Bay/index.html	Doring Bay	-31.816383	18.232833
2454	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/elands_bay/index.html	Elands Bay	-32.31405	18.328967
2455	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/farmer_burgers/index.html	Farmer Burgers	NaN	NaN
2456	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Garbage_dumps/index.html	Garbage dumps	NaN	NaN
2457	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Groenrivier_Rivermouth/index.html	Groenrivier Rivermouth	NaN	NaN
2458	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Trekoskraal/index.html	Groot Trekoskraal	-32.910867	17.865
2459	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Heaven/index.html	Heaven	-32.703633	17.96685
2460	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Hell/index.html	Hell	NaN	NaN
2461	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Hondeklip_Bay_Reef/index.html	Hondeklip Bay Reef	-30.313883	17.2721
2462	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Kelp_Reef/index.html	Kelp Reef	NaN	NaN
2463	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Klein_Trekoskraal/index.html	Klein Trekoskraal	-32.886	17.8781
2464	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Lamberts_Bay/index.html	Lamberts Bay	-32.084	18.31265
2465	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Langberg_Point/index.html	Langberg Point	-30.612467	17.4344
2466	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Marble_shorey/index.html	Marble shorey	NaN	NaN
2467	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/McDougals_Bay_/index.html	McDougals Bay 	NaN	NaN
2468	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/mossel_bay/index.html	Mossel bay	NaN	NaN
2469	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Olifants_Rivermouth/index.html	Olifants Rivermouth	-31.693167	18.1825
2470	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Paradise/index.html	Paradise	NaN	NaN
2471	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Pastures/index.html	Pastures	NaN	NaN
2472	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Pepper_Grinders/index.html	Pepper Grinders	NaN	NaN
2473	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Port_Nolloth_Reef/index.html	Port Nolloth Reef	-29.27235	16.867467
2474	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Rollers/index.html	Rollers	-29.205233	16.838967
2510	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/herolds_bay/index.html	herolds bay	NaN	NaN
2475	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Samson_s_Bak/index.html	Samson's Bak	NaN	NaN
2476	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Skulpfontein_Reef/index.html	Skulpfontein Reef	-30.062483	17.177967
2477	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Sours/index.html	Sours	-32.077533	18.306783
2478	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/stompneus_baai/index.html	Stompneus Baai	NaN	NaN
2479	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Stovepipes/index.html	Stovepipes	NaN	NaN
2480	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Strandfontein_beachbreak/index.html	Strandfontein beachbreak	-31.750317	18.224217
2481	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Suicide_Reef/index.html	Suicide Reef	-29.447717	16.9665
2482	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Swartriet_beach/index.html	Swartriet beach	-32.949483	17.884533
2483	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Trailer_Bay/index.html	Trailer Bay	NaN	NaN
2484	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Undisclosed/index.html	Undisclosed	NaN	NaN
2485	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/vredenberg_point/index.html	Vredenberg point	NaN	NaN
2511	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Hobie_Beach/index.html	Hobie Beach	NaN	NaN
2486	https://www.wannasurf.com/spot/Africa/South_Africa/West_Coast/Wallekraal_Point/index.html	Wallekraal Point	-30.474717	17.35565
2487	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/A-Span/index.html	A-Span	NaN	NaN
2488	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Aghulus_Reef/index.html	Aghulus Reef	NaN	NaN
2489	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Arniston/index.html	Arniston	NaN	NaN
2490	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Baby_J/index.html	Baby J	NaN	NaN
2491	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/bay_view/index.html	Bay view	NaN	NaN
2492	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/bettysbay/index.html	Bettysbay (main beach)	NaN	NaN
2493	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Buffeljags_Bay/index.html	Buffeljags Bay	NaN	NaN
2494	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Camelot/index.html	Camelot	NaN	NaN
2495	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Cape_Infanta/index.html	Cape Infanta	-34.426067	20.865533
2496	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Chrystal_Road/index.html	Chrystal Road	NaN	NaN
2497	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Colonels/index.html	Colonels	NaN	NaN
2498	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Danger_Point/index.html	Danger Point	-34.627517	19.303067
2499	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/De_Kelders/index.html	De Kelders	-34.558767	19.35065
2500	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Die_Dam/index.html	Die Dam	NaN	NaN
2501	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Dolphins/index.html	Dolphins	NaN	NaN
2502	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Gansbaai_Reefs/index.html	Gansbaai Reefs	-34.5803	19.3405
2503	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Gerickes_back_reef/index.html	Gerickes back reef	-34.0358	22.75835
2504	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Glentana/index.html	Glentana	NaN	NaN
2505	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Gouritsmouth/index.html	Gouritsmouth	-34.348483	21.885233
2506	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Grootbrak/index.html	Grootbrak	NaN	NaN
2507	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Grotto_Beach/index.html	Grotto Beach	NaN	NaN
2508	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Hardebaai/index.html	Hardebaai	NaN	NaN
2509	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Hawston/index.html	Hawston	-34.403583	19.11715
2512	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Igoda/index.html	Igoda	NaN	NaN
2513	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Jessies_Bay/index.html	Jessies Bay	NaN	NaN
2514	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/kak_gat/index.html	Kak Gat (KAK HOLE)	NaN	NaN
2515	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Kakkarlak_/index.html	Kakkarlak 	NaN	NaN
2516	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Kammabaai/index.html	Kammabaai	NaN	NaN
2517	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Kanon/index.html	Kanon	-34.3345	21.907517
2518	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Kleinmond/index.html	Kleinmond	-34.3459	19.0034
2519	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Lelik_Reef/index.html	Lelik Reef	NaN	NaN
2520	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Meerensee_beach/index.html	Meerensee beach	-34.36965	19.096983
2521	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Meisho_Maru/index.html	Meisho Maru	-34.830133	19.983517
2522	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Mini_Reef/index.html	Mini Reef	NaN	NaN
2523	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Mosselrivier_Rivermouth/index.html	Mosselrivier Rivermouth	NaN	NaN
2524	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/natures_valley/index.html	Nature's Valley	-33.984	23.5631
2525	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/North_Westerns/index.html	North Westerns	NaN	NaN
2526	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Onrus/index.html	Onrus	-34.419967	19.178433
2527	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Pearly_Beach/index.html	Pearly Beach edit	-34.667183	19.496433
2528	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Pearly_Reef/index.html	Pearly Reef	NaN	NaN
2529	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Peerboom/index.html	Peerboom	NaN	NaN
2530	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Plett_Wedge/index.html	Plett Wedge	-34.05475	23.379717
2531	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Quoin_Point__Insides_/index.html	Quoin Point (Insides)	NaN	NaN
2532	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Quoin_Point__Outsides_/index.html	Quoin Point (Outsides)	NaN	NaN
2533	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Ramyatoolies/index.html	Ramyatoolies	NaN	NaN
2534	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Rondeclip/index.html	Rondeclip	NaN	NaN
2535	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Sandbaai_Beach/index.html	Sandbaai Beach	NaN	NaN
2536	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Saxon__left_/index.html	Saxon (left)	NaN	NaN
2537	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Seaweeds/index.html	Seaweeds	NaN	NaN
2538	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Silversands_beach/index.html	Silversands beach	-34.3698	18.870133
2539	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Skipskop/index.html	Skipskop	NaN	NaN
2540	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Skulpiesbaai/index.html	Skulpiesbaai	NaN	NaN
2541	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Sparkplugs/index.html	Sparkplugs	NaN	NaN
2542	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/St_Sebastian_Bay/index.html	St Sebastian Bay	NaN	NaN
2543	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Stanford_beachbreak/index.html	Stanford beachbreak	NaN	NaN
2544	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Still_Bay__lefts_/index.html	Still Bay (lefts)	NaN	NaN
2545	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/still_bay_reef/index.html	Still Bay (Reef)	-34.386517	21.427367
2546	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Struisbaai_Harbour_Wedge/index.html	Struisbaai Harbour Wedge	NaN	NaN
2547	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Struisbaai_Reef/index.html	Struisbaai Reef	-34.798917	20.058817
2548	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Suiderstrand/index.html	Suiderstrand	-34.8162	19.955467
2549	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/The_Computer/index.html	The Computer	NaN	NaN
2550	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/The_Point/index.html	The Point	NaN	NaN
2551	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Toilets/index.html	The Toilet (Chowpoo)	-34.580333	19.340783
2552	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Uilkraalmond/index.html	Uilkraalmond	NaN	NaN
2553	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Vendetta_Reef/index.html	Vendetta Reef	NaN	NaN
2554	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/vleesbaai/index.html	Vleesbaai	-34.292033	21.92605
2555	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Voelklip/index.html	Voelklip	-34.412683	19.279017
2556	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/waenhuiskrans/index.html	Waenhuiskrans  Arniston Roman beach	NaN	NaN
2557	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Waenhuiskrans_Point/index.html	Waenhuiskrans Point	-34.692717	20.236567
2558	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/XXX/index.html	XXX	NaN	NaN
2559	https://www.wannasurf.com/spot/Africa/South_Africa/South_Garden_Route/Yellowsand/index.html	Yellowsand	NaN	NaN
2560	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/_Secret__spot/index.html	'Secret' spot	NaN	NaN
2561	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Clifton_2nd_Beach/index.html	1st Bank	-33.9365	18.377367
2562	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/1ste_Steen/index.html	1ste Steen	NaN	NaN
2563	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/2de_Steen/index.html	2de Steen	NaN	NaN
2564	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/3de_steen/index.html	3de Steen	-33.772767	18.444333
2565	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/AECI_beachbreak_/index.html	AECI beachbreak.	NaN	NaN
2566	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/baileys_cottage/index.html	Baileys cottage	-34.112333	18.466683
2567	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Bakoven/index.html	Bakoven	NaN	NaN
2568	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Bali_Bay/index.html	Bali Bay	-33.972817	18.3705
2569	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Barnicles/index.html	Barnicles	NaN	NaN
2570	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Battery/index.html	Battery	-34.146267	18.317133
2571	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Bellows/index.html	Bellows	-34.156	18.592983
2572	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Belly_Dancers/index.html	Belly Dancers	NaN	NaN
2574	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/big_bay/index.html	Big Bay	-33.792267	18.451067
2575	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/blaauwberg/index.html	Blaauwberg	-33.80835	18.466617
2576	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Black_Rocks/index.html	Black Rocks	-34.309867	18.46175
2577	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Blinkklip_Inner_Reef/index.html	Blinkklip Inner Reef	NaN	NaN
2578	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Blinkklip_Reef/index.html	Blinkklip Reef	-34.101933	18.79945
2579	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Boneyards/index.html	Boneyards	NaN	NaN
2580	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Buffels_Bay/index.html	Buffels Bay	-34.32425	18.466
2581	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Camps_Bay_shorey/index.html	Camps Bay shorey	-33.948067	18.376867
2582	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Cannonball_Reef/index.html	Cannonball Reef	NaN	NaN
2583	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/cemetery/index.html	Cemetery	-34.096767	18.5107
2584	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Chapman_s_Peak_mystery_lefts_/index.html	Chapman's Peak mystery lefts.	-34.0737	18.3605
2585	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Cherry_Rock/index.html	Cherry Rock	NaN	NaN
2586	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Clifton_3rd_Beach/index.html	Clifton 3rd Beach	NaN	NaN
2587	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Clifton_4th_Beach/index.html	Clifton 4th Beach	NaN	NaN
2588	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/clovelly/index.html	Clovelly	-34.132283	18.440633
2589	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/clovelly_wedge/index.html	Clovelly Wedge	-34.132767	18.440717
2590	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Conveyer_Belts/index.html	Conveyer Belts	NaN	NaN
2591	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Crabs/index.html	Crabs	NaN	NaN
2592	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/crayfish_factory/index.html	Crayfish Factory	-34.181417	18.342367
2593	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Crayfish_Reef/index.html	Crayfish Reef	-33.733333	18.4315
2594	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/dangers_reef/index.html	Dangers, reef	-34.1221	18.45645
2616	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Harbour_Island/index.html	Harbour Island	NaN	NaN
2595	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Dias_Beach/index.html	Dias Beach	-34.355267	18.481067
2596	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Die_Poort_/index.html	Die Poort 	NaN	NaN
2597	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Dolose_point/index.html	Dolose point	-33.906583	18.4714
2598	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Drainpipes/index.html	Drainpipes	NaN	NaN
2599	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Duckies_Reef/index.html	Duckies Reef	-34.106017	18.811433
2600	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Dumps/index.html	Dumps	NaN	NaN
2601	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/dunes/index.html	Dunes	-34.108267	18.351467
2602	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/dungeons/index.html	Dungeons	-34.061767	18.326567
2603	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Dungeons__The_Slab_section_/index.html	Dungeons (The Slab section)	-34.06045	18.326167
2604	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Electrics/index.html	Electrics	-34.119333	18.460367
2605	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Extensions/index.html	Extensions	NaN	NaN
2606	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Gasworks/index.html	Gasworks	NaN	NaN
2607	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/glen_beach/index.html	Glen Beach	-33.947	18.376383
2608	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Glen_Reef/index.html	Glen Reef	NaN	NaN
2609	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Glencairn_Reef/index.html	Glencairn Reef	-34.158217	18.435733
2610	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/bikini_beach/index.html	Gordon's Bay , Bikini beach	-34.167183	18.85525
2611	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Gordons_Bay__Back_Reef/index.html	Gordons Bay, Back Reef	NaN	NaN
2612	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Gordons_Bay__Bikini_Shorebreak_/index.html	Gordons Bay, Bikini Shorebreak.	NaN	NaN
2613	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Gordons_Bay__helicopters/index.html	Gordons Bay, helicopters	NaN	NaN
2614	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Greenways_Reef/index.html	Greenways Reef	NaN	NaN
2615	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Haakgat_Point/index.html	Haakgat Point	-33.750917	18.4421
2617	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Hout_Bay/index.html	Hout Bay	-34.047033	18.354417
2618	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Hout_Bay_Harbour_Wall/index.html	Hout Bay Harbour Wall	-34.0476	18.349183
2619	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/I_J_s/index.html	I&J's	-34.161933	18.327633
2620	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/inner_kom/index.html	Inner kom	-34.14435	18.318467
2621	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Jerilotto/index.html	Jerilotto	-34.296367	18.8214
2622	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/K_364/index.html	K 364	NaN	NaN
2623	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/K_365/index.html	K 365	-34.150533	18.317
2703	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Tidals/index.html	Tidals	-33.9551	18.374717
2624	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Kakapo/index.html	Kakapo	NaN	NaN
2625	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Kalk_Bay__Backdoor_/index.html	Kalk Bay (Backdoor)	NaN	NaN
2626	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/kalk_bay_reef/index.html	Kalk Bay Reef	-34.125783	18.45225
2627	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Kelp_Factory/index.html	Kelp Factory	NaN	NaN
2628	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/koeelbay/index.html	Koeelbay (caves)	-34.231533	18.843433
2629	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Koeelbay__Ledges_/index.html	Koeelbay (Ledges)	-34.232033	18.8443
2630	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Koeelbay__Main_beach_/index.html	Koeelbay (Main beach)	-34.2301	18.843383
2631	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/kokkerot/index.html	Kokkerot	-34.348667	18.987633
2632	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/crans/index.html	Krans	-34.135117	18.331367
2633	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/lagoon_mouth/index.html	Lagoon Mouth	-33.890983	18.481067
2634	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/ledge/index.html	Ledge	NaN	NaN
2635	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Leftovers/index.html	Leftovers	NaN	NaN
2636	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Little_Bay/index.html	Little Bay	-33.796683	18.45705
2637	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/llandudno/index.html	Llandudno	-34.0066	18.34
2638	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/long_beach/index.html	Long Beach	-34.13615	18.32685
2639	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Long_Dong_Island/index.html	Long Dong Island	NaN	NaN
2640	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Lucky_Dube_s/index.html	Lucky Dube's	NaN	NaN
2641	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Mac_s_spot/index.html	Mac's spot	NaN	NaN
2642	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Madiba_s_Hat/index.html	Madiba's Hat	-33.81755	18.381867
2643	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/madiba_s_left/index.html	Madiba's Left	-33.793183	18.361583
2644	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Madiba_s_left__Outers_/index.html	Madiba's left (Outers)	-33.796733	18.357567
2645	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Madiba_s_Right/index.html	Madiba's Right	-33.820983	18.371133
2646	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Madiba_s_Sack/index.html	Madiba's Sack	NaN	NaN
2647	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/magnet_rock/index.html	Magnet Rock	NaN	NaN
2648	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/marion_island_point/index.html	Marion Island Point	NaN	NaN
2649	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/milnerton/index.html	Milnerton	-33.881217	18.485983
2686	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Silver_Sands/index.html	Silver Sands	-34.36995	18.876467
2650	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Milton_Pool_left/index.html	Milton Pool left	NaN	NaN
2651	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Misty_Cliffs/index.html	Misty Cliffs	-34.1817	18.377717
2652	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Monwabisi/index.html	Monwabisi	NaN	NaN
2653	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Moonlight_Bay/index.html	Moonlight Bay	-34.380217	18.826233
2654	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/muizenburg_corner/index.html	Muizenburg corner	-34.10985	18.468967
2655	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Mysto_Freight_Trains/index.html	Mysto Freight Trains	NaN	NaN
2656	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Nine_mile_Reef/index.html	Nine mile Reef	NaN	NaN
2657	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Noordhoek_Beach/index.html	Noordhoek Beach	-34.10175	18.351033
2658	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/off_the_wall/index.html	Off The Wall	-33.898333	18.404083
2659	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Off_the_wall__Kalk_Bay/index.html	Off the wall, Kalk Bay	NaN	NaN
2660	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Olifants_bos/index.html	Olifants bos	NaN	NaN
2661	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Oscar_s_Point/index.html	Oscar's Point	NaN	NaN
2662	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/outer_kom/index.html	Outer Kom	-34.145317	18.316267
2663	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/paranoia/index.html	Paranoia	-34.2442	18.851567
2664	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Pebbles_Shorey/index.html	Pebbles Shorey	-34.136533	18.325883
2665	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/penguins/index.html	penguins	-34.371383	18.897433
2666	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/pitzmah/index.html	pitzmah (clazo's ledge)	-34.123033	18.454933
2667	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/platboom/index.html	Platboom	NaN	NaN
2668	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Poes/index.html	Poes	NaN	NaN
3473	https://www.wannasurf.com/spot/Asia/India/Kerala/Kalpeni_left/index.html	Kalpeni left	10.057883	73.6388
2669	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Potjielos/index.html	Potjielos	NaN	NaN
2670	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/pringle_bay/index.html	Pringle Bay	-34.3401	18.82825
2671	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Pringle_Bay_Reef/index.html	Pringle Bay Reef	NaN	NaN
2672	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/queens/index.html	Queens	-33.920317	18.37875
2673	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/railways/index.html	Railways	NaN	NaN
2674	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Razorblades/index.html	Razorblades	NaN	NaN
2675	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/rocklands/index.html	Rocklands	NaN	NaN
2676	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Rooi_Els_/index.html	Rooi Els 	NaN	NaN
2677	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Royals/index.html	Royals	NaN	NaN
2678	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Sandy_Bay/index.html	Sandy Bay	-34.0136	18.33465
2679	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Sandy_Bay_south/index.html	Sandy Bay south	-34.02395	18.330183
2847	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/gonubie_point/index.html	Gonubie Point	-32.940833	28.0367
2680	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Scarborough_Beach/index.html	Scarborough Beach	-34.200517	18.370767
2681	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/scarborough/index.html	Scarborough Point	-34.201633	18.370533
2682	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Seconds/index.html	Seconds	-34.0966	18.800667
2683	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Selecta_s_Wedge/index.html	Selecta's Wedge	NaN	NaN
2684	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Selis/index.html	Selis	-33.819667	18.473517
2685	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Silkies/index.html	Silkies	-34.1125	18.821033
2687	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Snottballs/index.html	Snottballs	NaN	NaN
2688	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Solly_s/index.html	Solly's	NaN	NaN
2689	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Southwest_Reef/index.html	Southwest Reef	-34.358817	18.497283
2690	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/strand_pipe/index.html	Strand (pipe)	-34.103233	18.811733
2691	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Sunlight_Bay/index.html	Sunlight Bay	NaN	NaN
2692	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Sunset_Beach/index.html	Sunset Beach	NaN	NaN
2693	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/sunset_reef/index.html	Sunset reef	NaN	NaN
2694	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Tableview/index.html	Tableview	NaN	NaN
2695	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Tafelberg_Reef/index.html	Tafelberg Reef	NaN	NaN
2696	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/The_Bluff_left/index.html	The Bluff left	NaN	NaN
2697	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/The_Boiler/index.html	The Boiler	NaN	NaN
2698	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/the_hoek/index.html	The Hoek	-34.097733	18.351283
2699	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/The_Wedge/index.html	The Wedge	NaN	NaN
2700	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/thermopylae/index.html	Thermopylae	-33.898967	18.40895
2701	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Thunder_Dome/index.html	Thunder Dome	NaN	NaN
2702	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Tidal_Pools/index.html	Tidal Pools	NaN	NaN
2704	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Tombstones/index.html	Tombstones	NaN	NaN
2705	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Underwater_Point/index.html	Underwater Point	NaN	NaN
2706	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/unnamed/index.html	Virgin Point	-34.1871	18.817867
2707	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Washing_Machines/index.html	Washing Machines	NaN	NaN
2708	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Waterfalls/index.html	Waterfalls	-34.35935	18.926183
2709	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Wipey_s/index.html	Wipey's	NaN	NaN
2710	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Witsands/index.html	Witsands	-34.179	18.35245
2711	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/A_Frames/index.html	A Frames	NaN	NaN
2712	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Arniston/index.html	Arniston	NaN	NaN
2713	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Banzai/index.html	Banzai	NaN	NaN
2714	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Bi_Reef/index.html	Bi Reef	NaN	NaN
2715	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Brak_River/index.html	Brak River	NaN	NaN
2716	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Brenton_On_Sea/index.html	Brenton On Sea	NaN	NaN
2717	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Bert_rock_/index.html	Buffalo Bay (Bert rock)	NaN	NaN
2718	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Bowls_/index.html	Buffalo Bay (Bowls)	NaN	NaN
2719	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Murpheys_/index.html	Buffalo Bay (Murpheys)	-34.08445	22.975633
2720	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Opies_/index.html	Buffalo Bay (Opies)	NaN	NaN
2721	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Oyster_Banks_/index.html	Buffalo Bay (Oyster Banks)	NaN	NaN
2722	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Point_/index.html	Buffalo Bay (Point)	-34.08895	22.97765
2723	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Reef_/index.html	Buffalo Bay (Reef)	NaN	NaN
2724	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Rivermouth_/index.html	Buffalo Bay (Rivermouth)	NaN	NaN
2725	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Rock_/index.html	Buffalo Bay (Rock)	NaN	NaN
2726	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Buffalo_Bay__Wildside_Shorey_/index.html	Buffalo Bay (Wildside Shorey)	NaN	NaN
2727	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/buffalo_bay/index.html	Buffalo Bay beachbreak	-34.08605	22.97495
3043	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/marbella/index.html	Marbella	NaN	NaN
2728	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Dana_Bay/index.html	Dana Bay	NaN	NaN
2729	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/De_Bakke/index.html	De Bakke	NaN	NaN
2730	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/diaz_beach/index.html	Dias Beach	NaN	NaN
2731	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Ding-Dangs/index.html	Ding-Dangs	NaN	NaN
2732	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/dolfines/index.html	Dolfines	NaN	NaN
2733	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Dolphin_Point/index.html	Dolphin Point	NaN	NaN
2734	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Fish_Boma/index.html	Fish Boma	-34.08415	22.9595
2735	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Gerickes__Scar_reef_/index.html	Gerickes (Scar reef)	NaN	NaN
2736	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/gerickes/index.html	Gerickes Point (Left)	-34.036067	22.764267
2737	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Glentana/index.html	Glentana	NaN	NaN
2738	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Goukama_Rivermouth/index.html	Goukamma Rivermouth	NaN	NaN
2739	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Gourits_Rivermouth/index.html	Gourits Beach	NaN	NaN
2740	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Hartenbos/index.html	Hartenbos	NaN	NaN
2741	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Harolds_Bay/index.html	Herolds Bay	-34.055617	22.391267
2742	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Hobie_Beach/index.html	Hobie Beach	NaN	NaN
2743	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Inner_Pool/index.html	Inner Pool	-34.16665	22.120783
2744	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Jongensfontein/index.html	Jongensfontein	-34.427483	21.340133
2745	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/keurbooms/index.html	Keurbooms	NaN	NaN
2746	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Kleinkrans_Beach/index.html	Kleinkrans Beach	NaN	NaN
2747	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Lagoon_Wedge/index.html	Lagoon Wedge	NaN	NaN
2748	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Lookout_beach/index.html	Lookout beach	-34.0514	23.378817
2749	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Lourie_Reef/index.html	Lourie Reef	NaN	NaN
2750	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Mystery_Reef/index.html	Mystery Reef	NaN	NaN
2751	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Noetsie__De_Hoop_Reserve_/index.html	Noetsie (De Hoop Reserve)	NaN	NaN
2752	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/outer_pool/index.html	Outer Pool	-34.180967	22.157917
2753	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Pathways/index.html	Pathways	NaN	NaN
2754	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/red_nose_rock/index.html	Red Nose Rock	NaN	NaN
2755	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Robberg/index.html	Robberg	NaN	NaN
2756	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Rondevlei_Beach/index.html	Rondevlei Beach	NaN	NaN
2757	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Sandbaai/index.html	Sandbaai	-34.42375	19.187067
2758	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Sandpoep_Shorey/index.html	Sandpoep Shorey	NaN	NaN
2759	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Santos_Reef/index.html	Santos Reef	NaN	NaN
2760	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/SCS/index.html	SCS	NaN	NaN
2761	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Spot_25/index.html	Spot 25	NaN	NaN
2762	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Stinky_Pits_/index.html	Stinky Pits!	-34.586183	19.343517
3004	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Anse_Royale/index.html	Anse Royale	-4.747083	55.521033
2763	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Storms_River_Mouth/index.html	Storms River Mouth	NaN	NaN
2764	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Struisbaai_Back_Reef/index.html	Struisbaai Back Reef	-34.798883	20.0635
2765	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Struisbaai_Point/index.html	Struisbaai Point	NaN	NaN
2766	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Swartvlei__Rivermouth_/index.html	Swartvlei (Rivermouth)	-33.986067	22.80625
2767	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Swartvlei_Beach/index.html	Swartvlei Beach	-34.029017	22.7753
2768	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/The_Heads/index.html	The Heads	-34.077733	23.057617
2769	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/The_Heads__Back_Reef_/index.html	The Heads (Back Reef)	NaN	NaN
2770	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/The_Heads__Rock_spot_/index.html	The Heads (Rock spot)	NaN	NaN
2771	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/The_Point/index.html	The Point	NaN	NaN
2772	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/The_Wedge/index.html	The Wedge	-34.055033	23.379633
2773	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/The_Wreck/index.html	The Wreck	-34.09575	23.376333
2774	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Tidle_Pool/index.html	Tidle Pool	-34.355567	21.880717
2775	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Vallies_Doom_Shorey/index.html	Vallies Doom Shorey	NaN	NaN
2776	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/victoria_bay/index.html	Victoria bay	-34.0078	22.550033
2777	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Vleesbaai/index.html	Vleesbaai	NaN	NaN
2778	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Wilderness_Beach/index.html	Wilderness Beach	-33.997317	22.568583
2779	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Wilderness_Rivermouth/index.html	Wilderness Rivermouth	-34.001917	22.557533
2780	https://www.wannasurf.com/spot/Africa/South_Africa/South_George/Yonders/index.html	Yonders	NaN	NaN
2781	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Albatross/index.html	Albatross	-34.010233	24.919867
2782	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/anne_avenue/index.html	Anne Avenue (St Francis Bay)	-34.16295	24.8334
2783	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Boneyards/index.html	Boneyards	-34.034533	24.934367
2784	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Boulders/index.html	Boulders	NaN	NaN
2785	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/bruce_s_beauties/index.html	Bruce's Beauties	-34.175317	24.841467
2786	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/cape_saint_francis/index.html	Cape Saint Francis	-34.187517	24.859483
2787	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Claptons/index.html	Claptons	-34.089767	24.9157
2788	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Ducks/index.html	Ducks	-34.195117	24.853517
2789	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/El_Dumpo/index.html	El Dumpo	-34.1594	24.83555
2790	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Hullets_Reef/index.html	Hullets Reef	-34.16885	24.83485
2791	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Impossibles/index.html	Impossibles	-34.030483	24.933083
2792	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Killers/index.html	Killers	-34.179117	24.846133
2793	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/kitchen_windows/index.html	Kitchen windows	-34.058317	24.927117
2794	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Kromme_Rivermouth/index.html	Kromme Rivermouth	NaN	NaN
2795	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Leftovers/index.html	Leftovers	-34.168567	24.834517
2796	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Magna_Tubes/index.html	Magna Tubes	-34.038183	24.93295
2797	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Nik_s_Secret/index.html	Nik's Secret	-34.1553	24.839067
2798	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Oyster_Bay/index.html	Oyster Bay	NaN	NaN
2799	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Paradise/index.html	Paradise	-34.098833	24.89625
2800	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Phantoms/index.html	Phantoms	NaN	NaN
2801	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Salad_Bowls/index.html	Salad Bowls	NaN	NaN
2802	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/seal_point/index.html	Seal Point	-34.207333	24.836483
2803	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/Sixty_Nines/index.html	Sixty Nines	-34.181983	24.849867
2804	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/supertubes/index.html	Supertubes (J-Bay)	-34.0282	24.930817
2805	https://www.wannasurf.com/spot/Africa/South_Africa/South_J_Bay/the_point/index.html	The Point	-34.025033	24.931
2806	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/6_pillars/index.html	6 pillars	-33.97845	25.655883
2807	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/avalanche/index.html	Avalanche	-33.9825	25.669517
2808	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/baked_beans/index.html	Baked Beans	NaN	NaN
2809	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Beachview/index.html	Beachview	NaN	NaN
2810	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Cobbles/index.html	Cobbles	NaN	NaN
3005	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Anse_Soleil/index.html	Anse Soleil	-4.744633	55.46535
2811	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Compo_s_Reef/index.html	Compo's Reef	NaN	NaN
2812	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/denvils/index.html	Denville	NaN	NaN
2813	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/doughnuts/index.html	Doughnuts	NaN	NaN
2814	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/doughnuts_backreef/index.html	Doughnuts Backreef	-34.0366	25.492117
2815	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/fence/index.html	Fence	-33.962217	25.645117
2816	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Flat_Rocks/index.html	Flat Rocks	-33.996117	25.68665
2817	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/gouritzmouth/index.html	Gouritzmouth	NaN	NaN
2818	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Happy_s/index.html	Happy's	NaN	NaN
2819	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Hogan_Park/index.html	Hogan Park	NaN	NaN
2820	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/humewood/index.html	Humewood	-33.978017	25.654517
2821	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/king_s_beach/index.html	King's Beach	-33.971833	25.64765
2822	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/loch_ness/index.html	Loch Ness	-34.033567	25.648117
2823	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/millars_piont/index.html	Millars Point	-33.980317	25.663167
2824	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/new_pier/index.html	New Pier	-33.979817	25.65915
2825	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/noncom/index.html	Noncom	-34.0283	25.678117
2826	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/nordhoek/index.html	Noordhoek	-34.0426	25.639583
2827	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Pier/index.html	Pier	-33.979667	25.659017
2828	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/pollock_beach/index.html	Pollock Beach	NaN	NaN
2829	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/pollock_beach_-_pipe/index.html	Pollock beach - pipe	-33.9872	25.674583
2830	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/port_alfred/index.html	Port Alfred	-33.603033	26.902083
2831	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Rocky_s/index.html	Rocky"s	NaN	NaN
2833	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Sards/index.html	Sards	NaN	NaN
2834	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/schoenies/index.html	Schoenies	NaN	NaN
2835	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Stinley_s_Wedge/index.html	Stinley's Wedge	NaN	NaN
2836	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/the_beacon/index.html	The beacon	NaN	NaN
2837	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/the_mouth/index.html	The Mouth	-33.867467	25.636183
2838	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/wild_side/index.html	Wild Side	NaN	NaN
2839	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/3_Little_Pumpkins/index.html	3 Little Pumpkins	NaN	NaN
2840	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/bonzas/index.html	Bonza Bay	-32.975433	27.967483
2841	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Double_Mouth/index.html	Double Mouth	NaN	NaN
2842	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Eastern_Beach/index.html	Eastern Beach	NaN	NaN
2843	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Fat_Bastard/index.html	Fat Bastard	NaN	NaN
2844	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/gashers/index.html	Gashers	NaN	NaN
2845	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Glen_Eden_Point/index.html	Glen Eden Point	-32.8807	28.091833
2846	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/gonubie_lefts/index.html	Gonubie Lefts	-32.935583	28.036333
2859	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Sharpleys_Reef/index.html	Sharpleys Reef	NaN	NaN
2848	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/graveyards/index.html	Graveyards	NaN	NaN
2849	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Haga_Haga/index.html	Haga Haga	NaN	NaN
2850	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/kidds_beach/index.html	Kidds Beach	NaN	NaN
2851	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Morgans_Bay/index.html	Morgans Bay	NaN	NaN
2852	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Nahoon_Beach_Break/index.html	Nahoon Beach Break	-32.991283	27.951533
2853	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/nahoon_reef/index.html	Nahoon Reef	-32.996367	27.9533
2854	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/naidoo_s_point/index.html	Naidoo's Point	NaN	NaN
2855	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/ntlonyane_breezy/index.html	Ntlonyane (breezy)	NaN	NaN
2856	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Queensbury_Lefts/index.html	Queensbury Lefts	NaN	NaN
2857	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/queensbury_point/index.html	Queensbury Point	NaN	NaN
2858	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Sarcasm_s/index.html	Sarcasm's	NaN	NaN
3213	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Flamengo/index.html	Flamengo	-22.928833	-43.170267
2860	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/Whacky_Point/index.html	Whacky Point	NaN	NaN
2861	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/yellows_beach_break/index.html	Yellows Beach Break	NaN	NaN
2862	https://www.wannasurf.com/spot/Africa/South_Africa/East_London/yellow_sands_point/index.html	Yellowsands Point	-32.910317	28.0805
2864	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/Devil_s_Horn/index.html	Devil's Horn	-34.191267	24.610367
2865	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/Dredges/index.html	Dredges	NaN	NaN
2866	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/Ebalow/index.html	Ebalow	NaN	NaN
2867	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/gonubie_point/index.html	Gonubie Point	NaN	NaN
2868	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/Hole_in_the_Wall/index.html	Hole in the Wall	-32.0403	29.1083
2869	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/lwandile/index.html	Lwandile	-31.897033	29.248167
2870	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/umdumbi/index.html	Mdumbi	-31.937967	29.219683
2871	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/Mezeppa/index.html	Mezeppa	NaN	NaN
2872	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/ntlonyane/index.html	Ntlonyane	-32.207067	28.949017
2873	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/Presleys_Bay/index.html	Presleys Bay	-31.87955	29.264683
2874	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/amazimtoti/index.html	AmazimToti	NaN	NaN
2875	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/ansteys/index.html	Ansteys	NaN	NaN
2876	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/ansteys_beach/index.html	Ansteys Beach	-29.925617	31.019167
2877	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/baggies/index.html	Baggies	-30.078933	30.872567
2878	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/battery_beach/index.html	Battery Beach	NaN	NaN
2879	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/bay/index.html	Bay of Plenty	NaN	NaN
2880	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/Blue_Lagoon/index.html	Blue Lagoon	NaN	NaN
2881	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/breakers/index.html	Breakers	NaN	NaN
2882	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/bluff/index.html	Brighton - Bluff	NaN	NaN
2883	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/brighton_reef/index.html	Brighton Reef	NaN	NaN
2884	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/bronze_beach/index.html	Bronze Beach	-29.71805	31.094
2885	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/cave_banks/index.html	Cave Banks	NaN	NaN
2886	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/cave_rock/index.html	Cave Rock	-29.933983	31.014067
2887	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/crossways/index.html	Crossways	NaN	NaN
2888	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/Dairy_Beach/index.html	Dairy Beach	-29.851417	31.040583
2889	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/garvies/index.html	Garvies	NaN	NaN
2890	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/getaway_wavehouse__wavepool_/index.html	Geteway Wavehouse	-29.72295	31.067667
2891	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/gremmies/index.html	Gremmies	NaN	NaN
2892	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/Isipingo/index.html	Isipingo	NaN	NaN
2893	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/new_pier/index.html	New Pier	-29.8597	31.041867
2894	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/north_beach/index.html	North Beach	-29.844217	31.030717
2895	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/oasis/index.html	Oasis	NaN	NaN
2896	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/peace_cottage/index.html	Peace Cottage	NaN	NaN
2897	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/river_mouth/index.html	River Mouth	NaN	NaN
2898	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/sharks_alley_-_reef/index.html	Sharks Alley - Reef	NaN	NaN
2899	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/sharks_alley_sand_bar/index.html	Sharks Alley Sand Bar	NaN	NaN
2900	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/snake_park/index.html	Snake park	-29.8447	31.038467
2901	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/south_beach/index.html	South Beach	NaN	NaN
2902	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/sunkist/index.html	Sunkist	NaN	NaN
2903	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/tekweni_beach/index.html	Tekweni Beach	NaN	NaN
3569	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/funto/index.html	Funtão	NaN	NaN
2904	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/tidal_pool/index.html	Tidal Pool	NaN	NaN
2905	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/treasure_beach/index.html	Treasure Beach	NaN	NaN
2906	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/Umalanga_Rocks/index.html	Umhlanga Rocks	-29.72875	31.088483
2907	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/vetchies_reef/index.html	Vetchies Reef	-29.866433	31.05315
2908	https://www.wannasurf.com/spot/Africa/South_Africa/Durban/the_wedge/index.html	Wedge	NaN	NaN
2909	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/baggies/index.html	Baggies	-30.078467	30.873067
2910	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Banana-Beach/index.html	Banana Beach	-30.66405	30.51625
2911	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Banana_Beach/index.html	Banana Reef	NaN	NaN
2912	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Bendigo_Point/index.html	Bendigo Point	NaN	NaN
2913	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Black_Rock/index.html	Black Rock	-30.2686	30.76655
2914	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/High_Rock_Point/index.html	Coffins	NaN	NaN
2915	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/La_Dauphine_Point/index.html	Dolphin Point	NaN	NaN
2916	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Donkey_Kong_Island/index.html	Donkey Kong Island	-30.333917	30.734767
2917	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Garfield/index.html	Garfield	-30.071733	30.876417
2918	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Glenmore_Beach/index.html	Glenmore Beach	NaN	NaN
2919	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/green_point/index.html	Green Point	-30.247217	30.783367
2920	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Haines_Backdoor/index.html	Haines Backdoor	NaN	NaN
2921	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Happy_Wanderers/index.html	Happy Wanderers	-30.357867	30.718667
2922	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/hibberdene/index.html	Hibberdene	NaN	NaN
2923	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Ifafa_Beach/index.html	Ifafa Pipes	-30.425067	30.673233
2924	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Impenjati/index.html	Impenjati	NaN	NaN
2925	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/karridene___illovo_beach/index.html	Karridene  Illovo Beach	NaN	NaN
2926	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/kennaway_ledge/index.html	Kennaway Ledge	NaN	NaN
2927	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Leisure_Bay/index.html	Leisure Bay	-31.031517	30.2356
2928	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Lucien/index.html	Lucien	-30.85725	30.380917
2929	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Margate_Beach/index.html	Margate Beach	-30.862267	30.372833
2930	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/San_Lameer/index.html	Marina Beach	-30.659167	30.51695
2931	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/The_Spot/index.html	Mfazazana Point	NaN	NaN
2932	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/mk_s/index.html	MK's	NaN	NaN
2933	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Mtwalume_Crest/index.html	Mtwalume Crest	NaN	NaN
2934	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Oslo_Beach/index.html	Oslo Beach	NaN	NaN
2935	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Palm_Beach/index.html	Palm Beach	NaN	NaN
2936	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Pennington/index.html	Pennington	NaN	NaN
2937	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Port_Shepstone/index.html	Port Shepstone	-30.7421	30.460717
2938	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Ramsgate_Beach/index.html	Ramsgate Beach	NaN	NaN
2939	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Rocky_Bay/index.html	Rocky Bay	NaN	NaN
2940	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/scottburgh/index.html	Scottburgh	-30.27995	30.760317
2941	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Shelly_Beach/index.html	Shelly Beach	NaN	NaN
2942	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Silver_Beach__Port_Edward_/index.html	Silver Beach (Port Edward)	NaN	NaN
2989	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Anse_Sevére/index.html	Anse Sevére	-4.33985	55.829767
2943	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Silver_Beach_Pipeline/index.html	Silver Beach Pipeline	NaN	NaN
2944	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Ski-Boat_Bay/index.html	Ski-Boat Bay	NaN	NaN
2945	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/southbroom/index.html	Southbroom	NaN	NaN
2946	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/southbroom_-_sea_village/index.html	Southbroom - Sea Village	NaN	NaN
2947	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/st_michaels/index.html	St Michaels	-30.820367	30.406817
2948	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/strand/index.html	Strand	NaN	NaN
2949	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/subways/index.html	Subways	NaN	NaN
2950	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Suck_Rock/index.html	Suck Rock	NaN	NaN
2951	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Sunwich_Port/index.html	Sunwich Port	-30.6668	30.51425
2952	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/trafalgar/index.html	Trafalgar	NaN	NaN
2953	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Umtentweni/index.html	Umtentweni	-30.716683	30.4783
2954	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/umzumbe/index.html	Umzumbe	-30.625517	30.546267
2955	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Uvongo/index.html	Uvongo Beach	NaN	NaN
2956	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Vacancy_Reef/index.html	Vacancy Reef	NaN	NaN
2957	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/Vulamanzi_Point/index.html	Vulamanzi Point	NaN	NaN
2958	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/warner_beach/index.html	Warner Beach	-30.079067	30.872417
2959	https://www.wannasurf.com/spot/Africa/South_Africa/Hibiscous_Coast/winkle_rocks/index.html	Winkle Rocks	NaN	NaN
2960	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/ballito_-_surfers_point/index.html	Ballito - Surfers Point	-29.539167	31.221
2961	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/bog_beach/index.html	Bog beach	NaN	NaN
2962	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/cape_vidal/index.html	Cape Vidal	-28.126067	32.5577
2963	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Christmas_Bay/index.html	Christmas Bay	NaN	NaN
2964	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Four_poles/index.html	Four poles	NaN	NaN
2965	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Gates/index.html	Gates	NaN	NaN
3006	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Barbarons/index.html	Barbarons	-4.687017	55.455967
2966	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/gateway/index.html	Gateway	NaN	NaN
2967	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Grannies/index.html	Grannies	NaN	NaN
2968	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Kleiklip/index.html	Kleiklip	NaN	NaN
2969	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/la_mercy/index.html	La Mercy	NaN	NaN
2970	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/mtunzini/index.html	Mtunzini	NaN	NaN
2971	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/one_eye/index.html	One eye	NaN	NaN
2972	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/richards_bay/index.html	Richards Bay	-28.8052	32.098967
2973	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Salmon_Bay/index.html	Salmon Bay	NaN	NaN
2974	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Salt_Rock/index.html	Salt Rock	NaN	NaN
2975	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Shelley_Shorey/index.html	Shelley Shorey	NaN	NaN
2976	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/South_Pier/index.html	South Pier	NaN	NaN
3003	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Anse_Poules_Bleues/index.html	Anse Poules Bleues	-4.74125	55.472317
2977	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/tiffanys/index.html	Tiffanys	NaN	NaN
2978	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/tinley_manor_north_point/index.html	Tinley Manor North Point	NaN	NaN
2979	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/westbrook/index.html	Tongaat - Westbrook	-29.594017	31.17095
2980	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/umdloti/index.html	Umdloti	-29.67595	31.116333
2981	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/umdloti_tidal_pool/index.html	umdloti tidal pool	-29.666133	31.12405
2982	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/umhlanga_main_beach/index.html	Umhlanga Main Beach	NaN	NaN
2983	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/umhlanga_rocks/index.html	Umhlanga Rocks	-29.7273	31.088717
2984	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/Umvoti_mouth/index.html	Umvoti mouth	NaN	NaN
2985	https://www.wannasurf.com/spot/Africa/South_Africa/East_Coast_North/zinkwazi/index.html	Zinkwazi	-29.2885	31.4399
2986	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Anse_Banane/index.html	Anse Banane	-4.350867	55.8482
2987	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Anse_Cocos/index.html	Anse Cocos	-4.367033	55.8517
2988	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Anse_Patates/index.html	Anse Patates	-4.337667	55.83385
2990	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Anse_source_argent/index.html	Anse source argent	NaN	NaN
2991	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Cross_Pier/index.html	Cross Pier	NaN	NaN
2992	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Grand_anse/index.html	Grand anse	-4.367983	55.842817
2993	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Pointe_Camille/index.html	Pointe Camille	-4.3762	55.83595
2994	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Pointe_Canon/index.html	Pointe Canon	NaN	NaN
2995	https://www.wannasurf.com/spot/Africa/Seychelles/La_Digue/Pointe_Jacques/index.html	Pointe Jacques	NaN	NaN
2997	https://www.wannasurf.com/spot/Africa/Seychelles/Pralin/Anse_Kerlan/index.html	Anse Kerlan	-4.309383	55.6835
2998	https://www.wannasurf.com/spot/Africa/Seychelles/Pralin/Cote_D_Or_Lodge/index.html	Cote D'Or Lodge	-4.320067	55.758083
2999	https://www.wannasurf.com/spot/Africa/Seychelles/Pralin/La_Farine_Reef/index.html	La Farine Reef	NaN	NaN
3000	https://www.wannasurf.com/spot/Africa/Seychelles/Pralin/Villa_Reef/index.html	Villa Reef	NaN	NaN
3001	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Anse_Bourgainville/index.html	Anse Bourgainville	-4.759367	55.521667
3002	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Anse_Gaulette/index.html	Anse Gaulette	-4.760517	55.484083
3007	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Beau_Vallon_Beach/index.html	Beau Vallon Beach	-4.610567	55.428517
3008	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Bel_Ombre/index.html	Bel Ombre	NaN	NaN
3009	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Carana_beach/index.html	Carana beach	-4.566117	55.453883
3010	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Grand_Anse/index.html	Grand Anse	-4.680967	55.446117
3011	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Intendance/index.html	Intendance	-4.786017	55.497917
3012	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/seychelles__mahe/index.html	Mahe	-4.725617	55.505683
3013	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Misfit_Bay/index.html	Misfit Bay	NaN	NaN
3014	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/North_East_Point/index.html	North East Point	-4.567717	55.45685
3015	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Police_Bay/index.html	Police Bay	-4.803283	55.525933
3016	https://www.wannasurf.com/spot/Africa/Seychelles/Mahe/Port_Glaud_Lefts/index.html	Port Glaud Lefts	-4.667117	55.417633
3017	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coco_Island/index.html	Coco Island	NaN	NaN
3018	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-Cocktails/index.html	Coevity Island-Cocktails	NaN	NaN
3030	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/arrecifes/index.html	Arrecifes	NaN	NaN
3019	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-Eastern_Ledge/index.html	Coevity Island-Eastern Ledge	NaN	NaN
3020	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-The_Cocktail/index.html	Coevity Island-Gashers	NaN	NaN
3021	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-Jagged_Knife_Reef/index.html	Coevity Island-Jagged Knife Reef	NaN	NaN
3022	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-Quest_Cove/index.html	Coevity Island-Quest Cove	NaN	NaN
3023	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-Runway_Ledge/index.html	Coevity Island-Runway Ledge	NaN	NaN
3024	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Coevity_Island-The_Handle/index.html	Coevity Island-The Handle	-7.182133	56.2573
3025	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Denis_Island-South_Point/index.html	Denis Island-South Point	NaN	NaN
3026	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Fregate_Island_-_Fregate_Reef/index.html	Fregate Island - Fregate Reef	NaN	NaN
3027	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Marie_Ann_Island-Leftovers/index.html	Marie Ann Island-Leftovers	NaN	NaN
3028	https://www.wannasurf.com/spot/Africa/Seychelles/Other_Islands/Marie_Ann_Island-Shorey/index.html	Marie Ann Island-Shorey	NaN	NaN
3029	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/7_olas/index.html	7 olas	11.320367	-74.098467
3031	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/cartagena_jetty/index.html	Cartagena Jetty	10.398567	-75.564467
3032	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/castillogrande/index.html	Castillogrande	10.394983	-75.555367
3033	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/colpipe/index.html	colpipe	9.395717	-76.1701
3034	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/el_bolsillo/index.html	El bolsillo	11.006967	-74.9524
3035	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/El_frances/index.html	El frances	9.601267	-75.571667
3036	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/el_muelle/index.html	EL muelle	10.989733	-74.964617
3037	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/El_Paredon/index.html	El Paredón	11.00835	-74.951117
3038	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/galerazamba/index.html	Galerazamba	NaN	NaN
3039	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/hilton/index.html	Hilton	10.394	-75.557483
3040	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/la_caracola/index.html	La Caracola	NaN	NaN
3041	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/los_gaviotas/index.html	Los Gaviotas	NaN	NaN
3052	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/juan_tornillo/index.html	Juan Tornillo	NaN	NaN
3065	https://www.wannasurf.com/spot/South_America/Brazil/Maranhao/ponta_da_aeria/index.html	Ponta da Aeria	NaN	NaN
3042	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/los_naranjos/index.html	Los Naranjos	NaN	NaN
3044	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/mendihuaca/index.html	Mendihuaca	NaN	NaN
3045	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/pradomar/index.html	Pradomar	11.004717	-74.9528
3046	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/punta_roca/index.html	Punta Roca	11.044833	-74.9129
3047	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/punta_sur/index.html	Punta Sur	12.480217	-81.728633
3048	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/Buritaca/index.html	Rio Buritaca	11.262683	-73.77365
3049	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/salgar/index.html	Salgar	NaN	NaN
3050	https://www.wannasurf.com/spot/South_America/Colombia/Caribbean/terquito/index.html	Terquito	NaN	NaN
3051	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/el_cantil/index.html	El Cantil	NaN	NaN
3053	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/juanchaco/index.html	Juanchaco	3.905367	-77.319033
3054	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/pico_de_loro/index.html	Pico de Loro	NaN	NaN
3055	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/el_valle/index.html	Playa El Almejal, El Valle	6.031317	-77.398683
3056	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/terco/index.html	Terco	NaN	NaN
3057	https://www.wannasurf.com/spot/South_America/Colombia/Pacific/termales/index.html	Termales	NaN	NaN
3058	https://www.wannasurf.com/spot/South_America/Brazil/Para/algodoal/index.html	Algodoal	NaN	NaN
3059	https://www.wannasurf.com/spot/South_America/Brazil/Para/Araruna/index.html	Araruna	-0.688517	-48.483267
3060	https://www.wannasurf.com/spot/South_America/Brazil/Para/atalaia__salinas/index.html	Atalaia (salinas)	NaN	NaN
3061	https://www.wannasurf.com/spot/South_America/Brazil/Para/Camarauacu/index.html	Camaraçu	-0.868833	-46.4308
3062	https://www.wannasurf.com/spot/South_America/Brazil/Para/marahu/index.html	marahu	-1.073417	-48.403183
3063	https://www.wannasurf.com/spot/South_America/Brazil/Maranhao/caolho/index.html	Caolho	NaN	NaN
3064	https://www.wannasurf.com/spot/South_America/Brazil/Maranhao/olho_da_agua/index.html	Olho da Agua	NaN	NaN
3066	https://www.wannasurf.com/spot/South_America/Brazil/Maranhao/pororoca/index.html	Pororoca	1.2426	-50.291967
3067	https://www.wannasurf.com/spot/South_America/Brazil/Maranhao/sao_marcos/index.html	Sao Marcos	NaN	NaN
3068	https://www.wannasurf.com/spot/South_America/Brazil/Maranhao/travosa/index.html	Travosa	-2.358983	-43.2439
3069	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/futuro/index.html	Futuro	-3.726683	-38.457017
3070	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/icarai/index.html	Icarai	-3.670283	-38.66945
3071	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/Iguape_Meio/index.html	Iguape Meio	-3.9413	-38.29225
3072	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/iracema__ponte_metalica/index.html	Iracema (ponte metalica)	-3.718217	-38.518
3073	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/Jericoacoara/index.html	Jericoacoara	-2.787083	-40.512617
3074	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/Leste-Oeste/index.html	Leste-Oeste	-3.714083	-38.540483
3075	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/morro_branco/index.html	Morro Branco	-4.150767	-38.109733
3076	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/paracuru/index.html	Paracuru	-3.406717	-39.032617
3077	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/Pico_das_Almas/index.html	Pico das Almas	-3.605083	-38.762
3078	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/prainha/index.html	Prainha	NaN	NaN
3079	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/Taiba/index.html	Taiba	-3.505667	-38.905267
3080	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/titanzinho/index.html	Titanzinho	-3.70735	-38.467817
3082	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/abras/index.html	Abras	-3.8276	-32.400583
3083	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/boboca/index.html	Biboca	-3.8351	-32.40335
3084	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/boldro/index.html	Boldró	-3.84545	-32.4317
3085	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/cachorro/index.html	Cachorro	-3.8389	-32.411133
3086	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/cacimba_do_padre/index.html	Cacimba do Padre	-3.84895	-32.439533
3087	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/conceicao/index.html	Conceição	-3.841117	-32.4185
3088	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/laje_do_bode/index.html	Laje do Bode	NaN	NaN
3089	https://www.wannasurf.com/spot/South_America/Brazil/Fernando_do_Noronha/mejo/index.html	Meio	-3.8396	-32.413283
3090	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/Baia_Formosa/index.html	Baia Formosa	-6.367	-35.0148
3091	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/cacimbinhas/index.html	Cacimbinhas	-6.211533	-35.0775
3092	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/Genipabu/index.html	Genipabu	-5.687217	-35.211017
3093	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/lajo/index.html	Lajão	-6.225933	-35.05025
3094	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/madeiro/index.html	Madeiro	-6.22105	-35.068
3095	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/Mar_aberto/index.html	Mar aberto	NaN	NaN
3096	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/pipa/index.html	Pipa	-6.2277	-35.044633
3097	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/ponta_negra/index.html	Ponta negra	-5.879267	-35.171267
3098	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/Praia_do_Picao/index.html	Praia do Picao	NaN	NaN
3099	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/Saji/index.html	Saji	NaN	NaN
3100	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/Tabatinga/index.html	Tabatinga	-6.068867	-35.0972
3101	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_Do_Norte/urtigas_reef/index.html	Urtigas Reef	NaN	NaN
3127	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Itacarezinho_/index.html	Itacarezinho 	-14.370583	-39.006017
3102	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/borete/index.html	Borete	-8.499617	-35.003133
3103	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/cupe/index.html	cupe	-8.466617	-34.989433
3104	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/Dique_de_Cabedelo/index.html	Dique de Cabedelo	-6.963417	-34.842567
3105	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/Enseada_dos_Corais/index.html	Enseada dos Corais	-8.312233	-34.946183
3106	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/Intermares/index.html	Mar do Macaco	-7.045017	-34.841417
3107	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/maracaipe/index.html	Maracaipe	-8.525433	-35.006267
3108	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/Pedra_de_Xaréu/index.html	Pedra de Xaréu	NaN	NaN
3109	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/serrambi/index.html	Serrambi	NaN	NaN
3110	https://www.wannasurf.com/spot/South_America/Brazil/Paraiba_Pernambucco/Tambaba/index.html	Tambaba	-7.3613	-34.7984
3111	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/aracaju/index.html	Aracaju	-10.987667	-37.04115
3112	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/Barra_de_Sao_Miguel/index.html	Barra de São Miguel	NaN	NaN
3113	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/cruz_das_almas/index.html	Cruz das Almas	-9.6312	-35.696067
3125	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Boca_da_Barra/index.html	Boca da Barra	-14.265883	-38.9867
3211	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/CcB/index.html	CcB	-23.034583	-43.488733
3114	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/new_orleans/index.html	New Orleans	-9.526283	-35.583017
3115	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/pedra_virada/index.html	Pedra Virada	-9.6789	-35.702517
3116	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/ponta_dos_mangues/index.html	Ponta dos Mangues	NaN	NaN
3117	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/praia_dos_frances/index.html	Praia  Do  Francês	-9.772383	-35.845167
3118	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/Praia_do_Morro/index.html	Praia do Morro	-9.327167	-35.438533
3119	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/Praia_do_Pontal_/index.html	Praia do Pontal	NaN	NaN
3120	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/rainha/index.html	Rainha	NaN	NaN
3121	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/riacho_doce/index.html	Riacho Doce	-9.56805	-35.6468
3122	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/Salgema_/index.html	Salgema 	NaN	NaN
3123	https://www.wannasurf.com/spot/South_America/Brazil/Sergipe-Alagoas/solaris/index.html	Solaris	NaN	NaN
3124	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Backdoor/index.html	Backdoor	-14.8406	-39.001467
3129	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Lost/index.html	Lost	NaN	NaN
3130	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Pedra_do_Moleque/index.html	Pedra do Moleque	-13.377017	-38.912633
3131	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Pontal/index.html	Pontal	-14.26355	-38.993567
3132	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Resende/index.html	Praia da Resende	-14.283883	-38.985067
3133	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Praia_dos_Algodoes/index.html	Praia dos Algodoes	-14.0775	-38.95445
3134	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Prainha/index.html	Prainha	-14.297733	-38.981033
3135	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Saquaira/index.html	Saquaira	-14.041083	-38.948083
3136	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Sirihyba/index.html	Sirihyba	NaN	NaN
3137	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Sol_do_Muta/index.html	Sol do Muta	NaN	NaN
3138	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Taipu_de_Fora/index.html	Taipu de Fora	-13.9424	-38.926617
3139	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Tiririca/index.html	Tiririca	-14.286017	-38.982933
3140	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Barra_Vento/index.html	Barravento	-13.009767	-38.526967
3141	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Casinha/index.html	Casinha	-12.556333	-37.98835
3142	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Corsario/index.html	Corsário	-12.97645	-38.4234
3143	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/costa_de_sauipe/index.html	Costa de sauipe	NaN	NaN
3144	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Espanhol/index.html	Espanhol	-13.006233	-38.5334
3145	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Farol_da_Barra/index.html	Farol da Barra	-13.01	-38.5336
3146	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Jaguaribe/index.html	Jaguaribe	-12.95575	-38.385
3147	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/massacre/index.html	Massacre	NaN	NaN
3148	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Praia_das_Ondas/index.html	Praia das Ondas	NaN	NaN
3149	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/praia_do_forte/index.html	Praia do forte	-12.734417	-38.14445
3150	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/Ribeira/index.html	Ribeira	NaN	NaN
3151	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/rock_quente/index.html	Rock Quente	NaN	NaN
3152	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/scar_reef/index.html	Scar Reef	-12.674933	-38.085167
3153	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/seper/index.html	Seper	NaN	NaN
3154	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_North_Coast/stella_maris/index.html	Stella Maris	-12.9361	-38.323717
3155	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Barra_Sol/index.html	Barra Sol	-20.384267	-40.310083
3156	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/barro/index.html	Barrão	NaN	NaN
3157	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Barrote-Jacaraipe/index.html	Barrote-Jacaraipe	-20.1511	-40.183467
3158	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Canal_de_Vitoria/index.html	Canal de Vitória	-20.317517	-40.288533
3159	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/cemiterio/index.html	Cemitério	NaN	NaN
3160	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/coral_de_cima/index.html	Coral de Cima	NaN	NaN
3161	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Coral_do_Céu/index.html	Coral do Céu	-20.3787	-40.286883
3162	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/coral_do_meio/index.html	Coral do Meio	NaN	NaN
3163	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/d2/index.html	D2	-20.348967	-40.270667
3164	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/dunas_de_ule/index.html	Dunas de Ulé	NaN	NaN
3165	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/guriri/index.html	Guriri	-18.739383	-39.746383
3166	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/jacaraipe-_solemar/index.html	Jacaraípe- Solemar	-20.13565	-40.180633
3167	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/nova_guarapari/index.html	Nova Guarapari	NaN	NaN
3168	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/pompeia/index.html	Pompeia	-20.356917	-40.289633
3169	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/ponta_da_belina/index.html	Ponta da Belina	NaN	NaN
3170	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Praia_de_Camburi/index.html	Praia de Camburi	-20.2758	-40.270983
3171	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/praia_do_morro/index.html	Praia do Morro	NaN	NaN
3172	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Prainha_de_Carapebus/index.html	Prainha de Carapebus	-20.23655	-40.215017
3173	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/regencia/index.html	Regencia	-19.659233	-39.841583
3174	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Secret/index.html	Secret	-20.37905	-40.307133
3175	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/setiba_pina/index.html	Setiba Pina	-20.635267	-40.425733
3176	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/Tenso/index.html	Tenso	NaN	NaN
3177	https://www.wannasurf.com/spot/South_America/Brazil/Espirito_Santo/xangao/index.html	XANGÃO	NaN	NaN
3261	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/baleia/index.html	Baleia	-23.7776	-45.670217
3178	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Arraial_do_Cabo/index.html	Arraial do Cabo	-22.942667	-42.03005
3179	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/atafona_-_sao_joao_da_barra/index.html	atafona - sao joao da barra	NaN	NaN
3180	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/ilha_grande_-_aventureiro/index.html	Aventureiro	-23.180133	-44.304433
3181	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Backdoor/index.html	Backdoor	-22.938417	-42.472317
3182	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/cavaleiros/index.html	Cavaleiros	-22.405117	-41.798367
3183	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/costazul/index.html	Costazul	-22.525117	-41.92035
3185	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/geriba/index.html	Geriba	-22.779067	-41.910517
3186	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Grussaí/index.html	Grussaí	-21.690033	-41.022267
3187	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/itauna/index.html	Itauna	-22.938833	-42.4762
3188	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Lage_de_fora/index.html	Lage de fora	-22.94435	-42.468183
3189	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Laje_Da_Manitiba/index.html	Laje Da Manitiba	NaN	NaN
3264	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/rio_una/index.html	Barra do Una	NaN	NaN
3190	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Laje_da_Rasa/index.html	Laje da Rasa	-22.7264	-41.971467
3191	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Massambaba/index.html	Massambaba	-22.947167	-42.166817
3192	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Pecado/index.html	Pecado	-22.41055	-41.80825
3193	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/ponta_negra/index.html	Ponta Negra - Maricá - RJ	-22.958183	-42.69735
3194	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Praia_Brava_-_Cabo_Frio/index.html	Praia Brava - Cabo Frio	-22.88455	-41.998067
3195	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/praia_brava_-_pontal_do_atalaia/index.html	Praia Brava - Pontal do Atalaia	-22.982967	-42.021683
3196	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/praia_da_amor/index.html	Praia da amor	NaN	NaN
3197	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/praia_de_unamar/index.html	praia de unamar	-22.609517	-41.997767
3198	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Cabo_Frio/index.html	Praia do Foguete - Cabo Frio	-22.929733	-42.03775
3199	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Praia_do_Forte_-_Cabo_Frio/index.html	Praia do Forte - Cabo Frio	-22.8854	-42.013983
3200	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Praia_Grande_-_Arraial_do_Cabo/index.html	Praia Grande - Arraial do Cabo	-22.975317	-42.033833
3201	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Saquarema_-_Itauna_Beach/index.html	Saquarema - Itauna Beach	-22.938317	-42.479983
3202	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/saquarema/index.html	Saquarema - Praia da Vila	-22.936167	-42.495217
3203	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/arpoador/index.html	Arpoador	-22.989917	-43.19165
3204	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/baixio/index.html	Baixio	NaN	NaN
3205	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/barra_da_tijuca/index.html	Barra da Tijuca - Posto 8	-23.01085	-43.361867
3206	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/pedra_de_guaratiba/index.html	Barra de Guaratiba	-23.064017	-43.569367
3207	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/camboinhas/index.html	Camboinhas	-22.966617	-43.052583
3208	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/canal_de_camboinhas/index.html	Canal de Camboinhas	-22.968067	-43.048167
3209	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/recreio/index.html	Canto do recreio	-23.0333	-43.4675
3210	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/castelinho/index.html	Castelinho	NaN	NaN
3214	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Forte_de_Copacabana/index.html	Forte de Copacabana	-22.9851	-43.185533
3215	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/grumari/index.html	Grumari	-23.049133	-43.526667
3216	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/inferno/index.html	Inferno	NaN	NaN
3217	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/ipanema/index.html	Ipanema	-22.98755	-43.205417
3218	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/itacoatiara/index.html	Itacoatiara	-22.972617	-43.03345
3219	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/itapuca/index.html	Itapuca	-22.906617	-43.1197
3607	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/Figueira_da_Foz/index.html	Figueira da Foz	40.148817	-8.868
3220	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/joatinga/index.html	Joatinga	-23.0152	-43.291083
3221	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Lage_Postinho/index.html	Lage Postinho	-23.015483	-43.306533
3222	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Laje_Cartao_Postal/index.html	Laje Cartao Postal	NaN	NaN
3223	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/laje_de_itaipu/index.html	Laje de Itaipu	NaN	NaN
3270	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/enseada/index.html	Enseada	NaN	NaN
3224	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Laje_do_Dramin/index.html	Laje do Dramin	-23.056	-44.366817
3225	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/laje_do_sheraton/index.html	Laje do sheraton	-22.995667	-43.23125
3226	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Laranjeiras/index.html	Laranjeiras	-23.33605	-44.6743
3227	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/leblon/index.html	Leblon	-22.98795	-43.219533
3228	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/leme/index.html	Leme	-22.963633	-43.166667
3229	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Lopes_Mendes/index.html	Lopes Mendes	-23.17145	-44.128983
3262	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/bananas_point/index.html	Banana´s Point	NaN	NaN
3230	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/macumba__curvo_/index.html	Macumba (Curvão)	-23.034083	-43.472733
3231	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/macumba-secreto/index.html	Macumba-secreto	NaN	NaN
3232	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/mambucaba/index.html	Mambucaba	-23.029267	-44.52
3233	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/marambaia/index.html	Marambaia	NaN	NaN
3234	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/martim_de_sa/index.html	Martim de Sa	-23.30405	-44.553483
3235	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/pier/index.html	Pier	NaN	NaN
3236	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Piratininga/index.html	Piratininga	-22.9547	-43.095667
3237	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/ponta_do_cepilio/index.html	Ponta do Cepílio	-23.343983	-44.711783
3238	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/ponto_do_leblon/index.html	Pontão do leblon	-22.989967	-43.226483
3239	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Posto_10/index.html	Posto 10 - Recreio	-23.026217	-43.458033
3240	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/posto_11__Atlântico_sul_/index.html	posto 11 (Atlântico sul)	-23.03	-43.46645
3241	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/posto_4/index.html	Posto 4	NaN	NaN
3242	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/posto_5/index.html	Posto 5 - Copacabana	-22.983917	-43.18845
3243	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/posto6/index.html	Posto 6	NaN	NaN
3244	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/praia_brava_de_angra_dos_reis/index.html	Praia Brava de Angra dos Reis	NaN	NaN
3245	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/praia_da_macumba/index.html	Praia da Macumba	-23.032033	-43.4756
3246	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/praia_do_diabo/index.html	Praia do Diabo	-22.988817	-43.18915
3247	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/praia_do_meio/index.html	Praia do Meio	NaN	NaN
3248	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/prainha/index.html	Prainha	-23.040767	-43.505267
3249	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/prainha_de_adão_e_eva/index.html	prainha de adão e eva	-22.927767	-43.123317
3250	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/presidio/index.html	Presídio	NaN	NaN
3251	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Recreio_Posto_9/index.html	Recreio Posto 9	-23.023633	-43.448233
3263	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/barra_do_sahy/index.html	Barra do Sahy	NaN	NaN
3252	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/reserva/index.html	Reserva	NaN	NaN
3253	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/sao_conrado/index.html	Sao Conrado	-22.9998	-43.25435
3254	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Shock/index.html	Shock	-22.975817	-43.0405
3269	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/castelhanos/index.html	Castelhanos	-23.857583	-45.2889
3255	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/shore_break/index.html	Shore break  expresso escorpiao	-22.986033	-43.182017
3256	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/sossego/index.html	Sossego	NaN	NaN
3257	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/sugarloaf___po_de_acucar/index.html	Sugarloaf   Pão de Açucar	NaN	NaN
3258	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/postinho__posto_1_/index.html	Tropical (posto 1)	-23.014833	-43.30185
3259	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/vala_do_mauri/index.html	Vala do Mauri	NaN	NaN
3260	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/astrias/index.html	Astúrias	-24.007733	-46.266467
3265	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/meio/index.html	Barra do Una - Meio	NaN	NaN
3266	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/bonete/index.html	Bonete	-23.917383	-45.347783
3267	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Brava_do_Camburi/index.html	Brava do Camburi	-23.370967	-44.799867
3268	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/camburi/index.html	Camburi	-23.778833	-45.649133
3271	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Enseada_-_Bertioga/index.html	Enseada - Bertioga	-23.839867	-46.123667
3272	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Enseada_-_Ubatuba/index.html	Enseada - Ubatuba	NaN	NaN
3273	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/guaeca/index.html	Guaecá	-23.819117	-45.4662
3274	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/guaiba/index.html	Guaiúba	NaN	NaN
3275	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Guaratuba/index.html	Guaratuba	-23.7723	-45.92225
3276	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/indaia_-_bertioga/index.html	Indaiá - Bertioga	NaN	NaN
3277	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/itaguare/index.html	Itaguaré	-23.796033	-45.991167
3278	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/itamambuca/index.html	Itamambuca	-23.402333	-45.001467
3279	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/juquehy/index.html	Juquehy	-23.768067	-45.73815
3280	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/jureia/index.html	Jureia	NaN	NaN
3281	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/lagoinha/index.html	Lagoinha	-23.521333	-45.205217
3282	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/maresias/index.html	Maresias	-23.791533	-45.57345
3283	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Massaguaçu/index.html	Massaguaçu	-23.590767	-45.334617
3284	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/monto_do_trigo/index.html	Montão do trigo	NaN	NaN
3285	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/patiero/index.html	Patiero	-23.456317	-45.02125
3286	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/paba/index.html	Paúba	-23.802817	-45.553167
3287	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/pitangueiras/index.html	Pitangueiras	-24.036433	-45.84595
3288	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/porta_do_sol/index.html	porta do sol	-23.981333	-46.373767
3289	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/praia_brava/index.html	Praia Brava	NaN	NaN
3290	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/praia_de_pernambuco/index.html	Praia de Pernambuco	NaN	NaN
3291	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/praia_do_felix/index.html	Praia do Felix	-23.389333	-44.9724
3292	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/praia_do_sape/index.html	Praia do sape	-23.531967	-45.2223
3293	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Praia_Dura/index.html	Praia Dura	NaN	NaN
3294	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/praia_grande__pg_/index.html	Praia Grande (PG)	-23.478833	-45.067283
3295	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Praia_Grande_North/index.html	Praia Grande North	-23.4675	-45.06205
3296	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/praia_preta/index.html	Praia Preta	NaN	NaN
3297	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/prainha_branca/index.html	Prainha branca	NaN	NaN
3298	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/riviera_de_so_lourenco/index.html	Riviera de São Lourenço	-23.808667	-46.022067
3299	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/santiago/index.html	Santiago	-23.8199	-45.541417
3300	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Sao_Pedro/index.html	Sao Pedro	-23.908517	-46.166583
3301	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/Simao/index.html	Simão	-23.58515	-45.238283
3302	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/sununga/index.html	Sununga	-23.51135	-45.129433
3303	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/toninhas/index.html	Toninhas	-23.484733	-45.073767
3304	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/vermelha_do_centro/index.html	Vermelha do Centro	-23.463133	-45.04935
3305	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_North_Coast/vermelha_do_norte/index.html	Vermelha do Norte	-23.416983	-45.035883
3306	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/barra/index.html	Barra	NaN	NaN
3307	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/Boqueirao/index.html	Boqueirão	NaN	NaN
3308	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/cibratel/index.html	Cibratel	NaN	NaN
3309	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/desertinha/index.html	Desertinha	NaN	NaN
3310	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/Guarau__Peruibe_SP/index.html	Guarau, Peruibe SP	-24.369533	-47.0117
3311	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/itarare/index.html	Itarare	-23.972333	-46.362
3312	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/Pier_de_Mongagua/index.html	Pier de Mongaguá	-24.095717	-46.61855
3313	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/pitangueiras2/index.html	Pitangueiras	NaN	NaN
3314	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/pitangueiras_beach/index.html	Pitangueiras Beach	-24.000933	-46.260767
3315	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/praia_branca/index.html	praia branca	-23.863433	-46.1308
3316	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/the_rock/index.html	Praia de Iporanga	-23.9022	-46.152717
3317	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/Praia_de_Pernambuco__Pernambuco_Beach__in_Guaruja_/index.html	Praia de Pernambuco (Pernambuco Beach, in Guaruja)	-23.963433	-46.184033
3318	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/praia_do_sonho/index.html	Praia do Sonho	NaN	NaN
3319	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/santos/index.html	Santos	-23.97175	-46.347217
3841	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/golden_burn/index.html	Golden Burn	NaN	NaN
3320	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/sao_pedro/index.html	Sao Pedro	NaN	NaN
3321	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/taguaiba/index.html	Taguaíba	-23.896733	-46.15135
3322	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/tombo/index.html	Tombo	-24.014983	-46.2727
3323	https://www.wannasurf.com/spot/South_America/Brazil/Sao_Paulo_South_Coast/vermelha/index.html	Vermelha	NaN	NaN
3324	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Barrinha/index.html	Barrinha	-25.9767	-48.590733
3325	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Brava_de_Matinhos/index.html	Brava de Matinhos	NaN	NaN
3326	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Direitas_de_Guaratuba/index.html	Direitas de Guaratuba	-25.89005	-48.560283
3327	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Farolete/index.html	Farolete	-25.515317	-48.286117
3328	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Guaratuba_Praia_Brava/index.html	Guaratuba Praia Brava	-25.89775	-48.564283
3329	https://www.wannasurf.com/spot/South_America/Brazil/Parana/ilha_do_mel/index.html	Ilha do Mel	-25.548333	-48.295383
3330	https://www.wannasurf.com/spot/South_America/Brazil/Parana/pico_de_matinhos/index.html	Pico de Matinhos	-25.817817	-48.5297
3331	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Pontal_do_Sul/index.html	Pontal do Sul	NaN	NaN
3332	https://www.wannasurf.com/spot/South_America/Brazil/Parana/Praia_Brava_Guaratuba/index.html	Praia Brava Guaratuba	-25.892817	-48.561467
3333	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/atalaia/index.html	Atalaia	-26.915167	-48.639367
3334	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/balneario_camburiu/index.html	Balneário Camboriú	-26.987717	-48.62995
3335	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/barra_de_Itajuba/index.html	barra de Itajuba	-26.69135	-48.684167
3336	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Barra_do_sai_mirim/index.html	Barra do sai mirim	-26.007833	-48.604067
3337	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/barrinha/index.html	Barrinha	-26.6239	-48.679983
3338	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/bombas/index.html	Bombas	-27.140117	-48.506783
3339	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/bombinhas/index.html	Bombinhas	-27.148367	-48.489533
3340	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Barra_Velha_Canoas/index.html	Canoas	-26.6394	-48.6825
3341	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Estaleirinho/index.html	Estaleirinho	-27.049117	-48.586783
3342	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Estaleiro__reef_/index.html	Estaleiro (reef)	-27.02505	-48.574067
3343	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Foz_do_Itapocú/index.html	Foz do Itapocu	-26.5807	-48.663767
3344	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Garrincha/index.html	Garrincha	-26.8587	-48.634617
3345	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Gravata/index.html	Gravatá	-26.831733	-48.623433
3346	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Gravatá__1_e_2_/index.html	Gravatá (1 e 2)	-26.831883	-48.621967
3347	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/ilha_do_grants/index.html	ilha do grants	-26.696033	-48.674983
3348	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/itapema/index.html	Itapema	-27.095533	-48.609733
3349	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Laje_do_Jacques/index.html	Laje do Jacques	-26.726917	-48.673067
3350	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/mariscal/index.html	Mariscal	-27.1665	-48.494833
3351	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/meia_praia/index.html	Meia Praia	-27.104817	-48.609017
3352	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Moco/index.html	Mocó	-27.080183	-48.58845
3353	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/molhe_de_Piçarras/index.html	molhe de Piçarras	-26.757033	-48.673433
3354	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Morcego/index.html	Morcego	-26.93105	-48.625217
3365	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Praia_do_Tabulero/index.html	Praia do Tabuleiro	-26.643017	-48.68205
3355	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/navegantes/index.html	Navegantes	-26.897583	-48.6387
3367	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Praia_Grande__São_Francisco_do_Sul/index.html	Praia Grande, São Francisco do Sul	-26.235883	-48.5026
3356	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/palmas/index.html	Palmas	-27.321983	-48.53545
3357	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Parcel/index.html	Parcel	-26.976467	-48.623167
3358	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Picama/index.html	Picama	-26.458083	-48.596867
3359	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Silêncio/index.html	Ponta do Cabeço	-27.093433	-48.601967
3360	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Pracinha/index.html	Pracinha	-26.901883	-48.641617
3361	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/praia_brava/index.html	Praia Brava	-26.941667	-48.628233
3362	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Praia_do_Bispo/index.html	Praia do Bispo	-26.46925	-48.60705
3363	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Praia_do_Forte/index.html	Praia do Forte	-26.1633	-48.533217
3364	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Praia_do_Sol/index.html	Praia do Sol	-26.679967	-48.688167
3366	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/praia_dos_amores/index.html	Praia dos Amores	-26.957183	-48.629217
3368	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/quatro_ilhas/index.html	Quatro Ilhas	-27.1562	-48.482917
3369	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Quilombo/index.html	Quilombo	-26.767	-48.639417
3370	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Quilombo__reef_/index.html	Quilombo (reef)	-26.76575	-48.64015
3371	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Sumidouro/index.html	Sumidouro	-26.169533	-48.552483
3372	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Syphodys/index.html	Syphodys	-26.701367	-48.68025
3373	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Terceira_Pedra/index.html	Terceira Pedra	-26.067017	-48.60765
3374	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina_North/Tingua/index.html	Tingua	-27.368167	-48.5325
3375	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Armacao/index.html	Armação	-27.741617	-48.508117
3376	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Barra_da_Lagoa/index.html	Barra da Lagoa	-27.572817	-48.424383
3377	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/boca_da_barra/index.html	Boca da Barra	NaN	NaN
3378	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Caldeirao/index.html	Caldeirao	-27.723683	-48.5046
3390	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Ponta_Do_Rapa/index.html	Ponta Do Rapa	-27.380833	-48.420517
3379	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Campeche_Rights/index.html	Campeche Rights	-27.693867	-48.482683
3380	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Canasvieiras/index.html	Canasvieiras	-27.430967	-48.479667
3381	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Galheta/index.html	Galheta	-27.593483	-48.425217
3382	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Ingleses/index.html	Ingleses	-27.429833	-48.390567
3383	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Joaquina/index.html	Joaquina	-27.629583	-48.448767
3384	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Lagoinha_do_Leste/index.html	Lagoinha do Leste	-27.773583	-48.486533
3385	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Lambe_lambe/index.html	Lambe lambe	-27.3876	-48.433183
3386	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Matadeiro/index.html	Matadeiro	-27.755133	-48.498517
3387	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Mocambique/index.html	Mocambique	-27.525317	-48.410567
3388	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Morro_das_Pedras/index.html	Morro das Pedras	-27.715517	-48.50225
3389	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Naufragados/index.html	Naufragados	-27.834733	-48.56675
3391	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Praia_Brava/index.html	Praia Brava	-27.4008	-48.4134
3392	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Praia_do_Forte/index.html	Praia do Forte	-27.43075	-48.519667
3393	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Praia_Mole/index.html	Praia Mole	-27.602483	-48.432583
3394	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Riozinho/index.html	Riozinho	-27.685517	-48.4796
3395	https://www.wannasurf.com/spot/South_America/Brazil/Florianopolis/Santinho/index.html	Santinho	-27.457933	-48.372633
3396	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Arroio_do_Silva/index.html	Arroio do Silva	-28.9938	-49.4153
3397	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Barrinha/index.html	Barrinha	-28.085383	-48.6309
3398	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Camacho/index.html	Camacho	-28.61595	-48.8595
3399	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/cardoso/index.html	Cardozo	-28.607517	-48.823
3400	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Castelinho/index.html	Castelinho	-28.256233	-48.6727
3401	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Cavalinho/index.html	Cavalinho	-28.419033	-48.744283
3402	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Cemiterio/index.html	Cemiterio	-28.60435	-48.812
69	https://www.wannasurf.com/spot/Europe/Ireland/West/Dugort/index.html	Dugort	54.0118	-10.021583
3403	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/cigana/index.html	Cigana	-28.613533	-48.845383
3404	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Costão_da_Pinheira/index.html	Costão da Pinheira	-27.881083	-48.58655
3405	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/ferrugem/index.html	Ferrugem	-28.077733	-48.6266
3406	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Itapocu/index.html	Foz do Itapocu	-26.566917	-48.657517
3407	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Gaivota/index.html	Gaivota	-29.164833	-49.58215
3408	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Gamboa/index.html	Gamboa	-27.958933	-48.624667
3409	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Garopaba_Centro/index.html	Garopaba Centro	-28.021583	-48.61945
3410	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/guarda_do_embau/index.html	Guarda do embau	-27.905533	-48.586783
3411	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/ibiraquera/index.html	Ibiraquera	-28.153733	-48.6459
3412	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/ilha_do_batuta/index.html	Ilha do Batuta	NaN	NaN
3413	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/ipoa/index.html	Ipoa	-28.536683	-48.765517
3414	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Itajuba/index.html	Itajuba	NaN	NaN
3415	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/itapiruba/index.html	Itapirubá	-28.342317	-48.7078
3416	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Itapiruba_Norte/index.html	Itapirubá Norte	-28.336783	-48.704717
3417	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/jaguaruna/index.html	Jaguaruna	-28.63515	-48.948217
3418	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/laguna/index.html	Laguna	-28.473967	-48.76265
3419	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/laje_da_jaguaruna/index.html	Laje da Jagua	NaN	NaN
3420	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Lambe-lambe/index.html	Lambe-lambe	NaN	NaN
3421	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/morro_dos_conventos/index.html	Morro dos Conventos	-28.93725	-49.32965
3422	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Ouvidor/index.html	Ouvidor	-28.10545	-48.635267
3423	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Píer_da_Petrobras/index.html	Píer da Petrobras	-26.217383	-48.500517
3424	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Ponta_das_Aranhas/index.html	Ponta das Aranhas	-27.4821	-48.3809
3425	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Praia_Brava/index.html	Praia Brava	-27.396433	-48.414133
532	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/shishikui/index.html	Shishikui	33.566683	134.310667
3461	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/prainha/index.html	Prainha	-29.342433	-49.7245
3426	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/praia_da_saudade_prainha/index.html	Praia da Saudade	-26.2306	-48.498883
3427	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/praia_da_villa/index.html	Praia da Vila	-28.24115	-48.653883
3428	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Praia_do_Tamborete/index.html	Praia de Cima	-28.49735	-48.74875
3429	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Praia_do_Porto/index.html	Praia do Porto	NaN	NaN
3430	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/silveira/index.html	Praia do Silveira	-28.039067	-48.606867
3431	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Praia_dos_Acores/index.html	Praia dos Açores	-27.78475	-48.525983
3432	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/prainha_do_farol/index.html	Prainha do Farol	-28.60045	-48.81665
3433	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/ribanceira/index.html	Ribanceira	-28.19175	-48.66135
3434	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/rinco/index.html	Rincão	-28.83385	-49.216
3435	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/rosa_norte/index.html	Rosa Norte	-28.124367	-48.637683
3460	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Praia_do_Cassino/index.html	Praia do Cassino	-32.178333	-52.14215
3436	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/rosa_sul/index.html	Rosa Sul	-28.1354	-48.6427
3437	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Sao_Francisco_do_Sul/index.html	Sao Francisco do Sul	-26.21955	-48.5021
3439	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Siriu/index.html	Siriu	-27.97625	-48.628
3440	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Solidao_-_Caladinho/index.html	Solidao - Caladinho	-27.793517	-48.53345
3441	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/teresa/index.html	Teresa	-28.524983	-48.76245
3442	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/vermelha/index.html	Vermelha	-28.11445	-48.635567
3443	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Arroio_Teixeira/index.html	Arroio Teixeira	NaN	NaN
3444	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/xangri_la/index.html	Atlântida - Pier	-29.784717	-50.02255
3445	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/cal/index.html	Cal	-29.349417	-49.72985
3446	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/capao_da_canoa/index.html	Capao da Canoa	-29.758683	-50.010967
3459	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/passo_de_torres/index.html	Passo de Torres	-29.324167	-49.712417
3447	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Capao_Novo/index.html	Capao Novo	-29.686967	-49.97255
3448	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Curumim/index.html	Curumim	-29.6256	-49.93575
3449	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/guarita/index.html	Guarita	-29.3578	-49.734
3450	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Hermenegildo/index.html	Hermenegildo	-33.66835	-53.2624
3451	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/ilha_dos_lobos/index.html	Ilha dos Lobos	-29.346883	-49.704417
3452	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/imbe/index.html	Imbé	0	0
3453	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Itapeva/index.html	Itapeva	-29.372983	-49.748417
3454	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Mariluz/index.html	Mariluz	NaN	NaN
3455	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/molhes/index.html	Molhes	-29.327317	-49.712
3456	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Navio/index.html	Navio	-32.290567	-52.258667
3457	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Nova_Tramandai/index.html	Nova Tramandaí	-30.04525	-50.150033
3472	https://www.wannasurf.com/spot/Asia/India/Kerala/gokarna/index.html	Gokarna	NaN	NaN
3462	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Xangri-la/index.html	Quintão	-30.410783	-50.292667
3463	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Rainha_do_Mar/index.html	Rainha do Mar	-29.859483	-50.064567
3464	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/salinas/index.html	Salinas	NaN	NaN
3465	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/sao_jose_do_norte/index.html	Sao Jose do Norte	-32.008083	-52.018883
3466	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Saraiva/index.html	Saraiva	-29.3404	-49.723233
3467	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/tramanda/index.html	Tramandai	-29.993083	-50.1255
3468	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Malvina/index.html	Tramandai - Malvina	-30.005483	-50.12915
3469	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Tres_Marias/index.html	Tres Marias	-32.192617	-52.085067
3470	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Xangrila/index.html	Xangri-lá	-29.785983	-50.024633
3488	https://www.wannasurf.com/spot/Asia/India/Tamil_Nadu/Pondichery/index.html	Pondichery	11.958717	79.8397
3474	https://www.wannasurf.com/spot/Asia/India/Kerala/Kannur/index.html	Kannur	11.875967	75.347367
3475	https://www.wannasurf.com/spot/Asia/India/Kerala/kovalam/index.html	Kovalam	8.385317	76.97835
3477	https://www.wannasurf.com/spot/Asia/India/Kerala/Shipwreck/index.html	Shipwreck	10.541483	72.61935
3478	https://www.wannasurf.com/spot/Asia/India/Kerala/Varkala/index.html	Varkala	8.73185	76.705833
3479	https://www.wannasurf.com/spot/Asia/India/North-West/Anjarle/index.html	Anjarle	17.843983	73.08745
3480	https://www.wannasurf.com/spot/Asia/India/North-West/Arambol/index.html	Arambol	15.687167	73.702817
3481	https://www.wannasurf.com/spot/Asia/India/North-West/Benaulim_Beach/index.html	Benaulim Beach	15.25695	73.918767
3482	https://www.wannasurf.com/spot/Asia/India/North-West/Betalbatim_Beach_-_Taj/index.html	Betalbatim Beach - Taj	15.292967	73.902283
3483	https://www.wannasurf.com/spot/Asia/India/North-West/Gokarna/index.html	Gokarna	14.5454	74.318383
3484	https://www.wannasurf.com/spot/Asia/India/North-West/Pirawadi/index.html	Pirawadi	16.199383	73.4345
3485	https://www.wannasurf.com/spot/Asia/India/Andaman_Islands/West_Twin/index.html	West Twin	11.3438	92.624083
3486	https://www.wannasurf.com/spot/Asia/India/Tamil_Nadu/mahaballipuram/index.html	Mahaballipuram	12.618067	80.19865
3487	https://www.wannasurf.com/spot/Asia/India/Tamil_Nadu/near_repos_beach/index.html	near repos beach	11.9725	79.845283
3489	https://www.wannasurf.com/spot/Asia/India/Tamil_Nadu/Spencer/index.html	Spencer	NaN	NaN
3490	https://www.wannasurf.com/spot/Asia/India/North-East/Hanuman_point/index.html	Hanuman point	17.748133	83.350933
3491	https://www.wannasurf.com/spot/Asia/India/North-East/The_Baan/index.html	The Baan	22.586183	88.347167
3492	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Federated_States_of_Micronesia/Pohnpei/index.html	Pohnpei	NaN	NaN
3493	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Federated_States_of_Micronesia/Kosrae/index.html	Kosrae	NaN	NaN
3494	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/boat_basin_lefts/index.html	Boat Basin Lefts	13.48295	144.75165
3495	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/boat_basin_rights/index.html	Boat Basin Rights	13.482667	144.752883
3496	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/gab_gab_beach/index.html	Gab Gab Beach	13.444383	144.645767
3497	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/glass_breakwater/index.html	Glass Breakwater	NaN	NaN
3498	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/inarajan_bay/index.html	Inarajan bay	NaN	NaN
3499	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/Mugandas_Bay/index.html	Magandas Reef	13.467517	144.640883
3500	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/mallesso/index.html	Mallesso	NaN	NaN
3501	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/marine_lab/index.html	Marine Lab	NaN	NaN
3502	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/Matala/index.html	Matala	NaN	NaN
533	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/tainohama/index.html	Tainohama	NaN	NaN
3503	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/meritzo/index.html	Meritzo	NaN	NaN
3504	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/Pickop_s_Point/index.html	Pickop's Point	13.340517	144.773033
3505	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/rick_s_reef/index.html	Rick's Reef	13.49775	144.768933
3506	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/talafofo_bay/index.html	Talafofo Bay	13.33705	144.762
3507	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/umatac_bay/index.html	Umatac Bay	13.29715	144.6589
3508	https://www.wannasurf.com/spot/Australia_Pacific/Micronesia/Guam/Ylig/index.html	Ylig	13.4191	144.7908
3509	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/afu/index.html	Afu	NaN	NaN
3510	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Faaone/index.html	Faaone	-17.674767	-149.3054
3511	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/La_Fayette/index.html	La Fayette	-17.5315	-149.512033
3512	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/La_Fayette_Reef/index.html	La Fayette Reef	-17.522433	-149.515017
3513	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/mahaena/index.html	mahaena	-17.562367	-149.324667
3514	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/maraa/index.html	Maraa	-17.75	-149.581083
3515	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Orofara/index.html	Orofara	-17.507633	-149.461417
3516	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Paparaa/index.html	Paparaa	-17.77245	-149.4803
3517	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/paparaa_-_outer_reefs/index.html	Paparaa - Outer Reefs	-17.77575	-149.48355
3518	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Papeete_Harbour/index.html	Papeete Harbour	-17.534617	-149.584433
3519	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Papeete_Harbour_Reef/index.html	Papeete Harbour Reef	-17.53625	-149.589433
3520	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Papenoo/index.html	Papenoo	-17.508833	-149.431333
3521	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Papenoo_Rivermouth/index.html	Papenoo Rivermouth	-17.51265	-149.418117
3522	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/petit_reef_de_vaischa/index.html	Petit reef de Vaischa	NaN	NaN
3523	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/PK15/index.html	PK15	-17.507917	-149.4392
3524	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Point_Venus/index.html	Point Venus	-17.495183	-149.50105
3525	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Rocky_Point/index.html	Rocky Point	-17.507817	-149.437617
3548	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Raiatea_Tahaa/miri_miri/index.html	Miri miri	-16.76135	-151.5049
3526	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Sapinus/index.html	Sapinus	-17.634	-149.620567
3527	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Sapinus_Beach_Break/index.html	Sapinus Beach Break	-17.6324	-149.615
3528	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Taapuna/index.html	Taapuna	-17.603633	-149.622367
3529	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Taharaa_Reef/index.html	Taharaa Reef	-17.515317	-149.507533
3530	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/te_ava_iti/index.html	te ava iti	-17.840383	-149.2963
3531	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Teahupoo/index.html	Teahupoo	-17.866733	-149.253817
3532	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Trou_Du_Souffleur/index.html	Trou du Souffleur	-17.52425	-149.389983
3533	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tahiti/Vairao/index.html	Vairao	-17.8014	-149.313333
3534	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/Atiha/index.html	Atiha	NaN	NaN
3535	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/cook_bay_left/index.html	Cook bay left	-17.477667	-149.827167
3536	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/Haapiti/index.html	Haapiti	-17.572683	-149.878667
3537	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/papetoai/index.html	Papetoai	-17.4861	-149.8645
3538	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/Taotai_-_CLub_Med_left/index.html	Taotai - Club Med left	-17.482733	-149.894967
3539	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/Taotai_-_Club_Med_right/index.html	Taotai - Club Med right	-17.482983	-149.89325
3540	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Moorea/Temae/index.html	Temae	-17.490833	-149.7537
3541	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tuamotu_Islands/Avatura/index.html	Avatoru Pass, Rangiroa	-14.9363	-147.710067
3542	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Tuamotu_Islands/Faaite/index.html	Faaite	-16.695083	-145.351433
3543	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Huahine/Fare/index.html	Fare	-16.7125	-151.0459
3544	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Huahine/Fare_Right/index.html	Fare Right	-16.708183	-151.043883
3545	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Huahine/fitii/index.html	Fitii	-16.723583	-151.049567
3546	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Huahine/motu_mahara/index.html	Motu Mahara	-16.7215	-150.976317
3547	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Raiatea_Tahaa/pass_of_faaroa/index.html	faaroa	-16.7873	-151.38175
3549	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Raiatea_Tahaa/Plei_Plei/index.html	Plei Plei	-16.666117	-151.53665
3550	https://www.wannasurf.com/spot/Australia_Pacific/French_Polynesia/Raiatea_Tahaa/teavapiti/index.html	Teavapiti	-16.745283	-151.420267
3551	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/A-ver-o-mar/index.html	A-ver-o-mar	41.390583	-8.7752
3552	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/agucadoura/index.html	Aguçadoura	41.430367	-8.787683
3553	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/amorosa/index.html	Amorosa	41.669317	-8.824083
3554	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/apulia/index.html	Apulia	NaN	NaN
3555	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/azurara/index.html	Azurara	41.338933	-8.7447
3556	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/bezerro/index.html	Bezerro	NaN	NaN
3557	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/cabedelo_de_viana/index.html	Cabedelo de Viana	NaN	NaN
3558	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/cabedelo_do_douro/index.html	Cabedelo do douro	41.139433	-8.668333
3559	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/cagalhotos/index.html	Cagalhotos	40.997583	-8.6484
3560	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Canidelo/index.html	Canidelo	41.1123	-8.666733
3561	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/paramos/index.html	Capela de Paramos	40.978483	-8.650067
3562	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Cavalos_de_fao/index.html	Cavalos de fão	41.50295	-8.798267
3563	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/cortegaca/index.html	Cortegaça	40.9397	-8.658167
3564	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/esmoriz/index.html	Esmoriz	40.961533	-8.655067
3565	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Esmoriz_praia_da_barra_e_praia_velha/index.html	Esmoriz praia da barra e praia velha	40.957767	-8.656717
3566	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Espinho/index.html	Espinho	41.009117	-8.647933
3567	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/esposende/index.html	Esposende	NaN	NaN
3568	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/fiscais/index.html	Fiscais	NaN	NaN
3570	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Furca/index.html	Furca	NaN	NaN
3571	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/granja/index.html	Granja	NaN	NaN
3572	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/ilha/index.html	Ilha	NaN	NaN
3573	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Kings_Rock/index.html	Kings Rock	41.721167	-8.870733
3574	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/leca/index.html	Leça	41.189183	-8.707617
3575	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/luz/index.html	Luz	NaN	NaN
3576	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/maceda/index.html	Maceda	40.920783	-8.66265
3577	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/matosinhos/index.html	Matosinhos	41.173367	-8.690833
3578	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/mindelo/index.html	Mindelo	41.307083	-8.7402
3579	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/ofir/index.html	Ofir	41.523483	-8.791383
3580	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/ourigo/index.html	Ourigo	NaN	NaN
3581	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/pinhal/index.html	Pinhal	NaN	NaN
3582	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/povoa_de_varzim/index.html	Póvoa de Varzim	NaN	NaN
3583	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/atlantico/index.html	Praia Atlântico	NaN	NaN
3584	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_azul/index.html	Praia azul	NaN	NaN
3585	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Praia_da_Arda/index.html	Praia da Arda	41.769733	-8.87325
3586	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_da_sereia/index.html	Praia da Sereia	41.116867	-8.66615
3587	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_da_torreira/index.html	praia da torreira	40.761817	-8.713367
3629	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/almagreira/index.html	Almagreira	39.379033	-9.314633
3588	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_de_arda/index.html	Praia de arda	NaN	NaN
3589	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_de_moledo/index.html	Praia de Moledo	41.847867	-8.86705
3590	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_do_aterro/index.html	Praia do aterro	41.209383	-8.715567
3591	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/rock/index.html	praia do rock	41.355667	-8.755367
3592	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/praia_dos_ingleses/index.html	Praia dos Ingleses	NaN	NaN
3593	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/pressure_point/index.html	Pressure Point	NaN	NaN
4218	https://www.wannasurf.com/spot/South_America/Argentina/South/Rio_Grande-Tierra_del_Fuego/index.html	Rio Grande-Tierra del Fuego	-53.77445	-67.701083
3594	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/rocky_point/index.html	Rocky Point	NaN	NaN
3595	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/sacor/index.html	Sacor	41.2094	-8.715583
3596	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Salgueiros/index.html	Salgueiros	NaN	NaN
3597	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/Silvalde/index.html	Silvalde	40.989183	-8.64585
3598	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/troll/index.html	Troll	NaN	NaN
3599	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/viana_do_castelo/index.html	Viana do castelo	41.664767	-8.8228
3600	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/vila_praia_de_ancora/index.html	Vila Praia de Ancora	41.810033	-8.86855
3601	https://www.wannasurf.com/spot/Europe/Portugal/North_Porto/vivendas/index.html	Vivendas	NaN	NaN
3602	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/buarcos/index.html	Buarcos	40.163317	-8.8803
3603	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/cabedelo/index.html	Cabedelo	40.140017	-8.863217
3604	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/Cabedelo__o_Point-Break_/index.html	Cabedelo (o Point-Break)	40.1395	-8.869533
3605	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/cabo_mondego/index.html	cabo mondego	40.178017	-8.903817
3606	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/cova_gala/index.html	Cova Gala	40.126383	-8.865367
3608	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/furadouro/index.html	Furadouro	40.873033	-8.679283
3609	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/murtinheira/index.html	Murtinheira	40.20645	-8.900467
3610	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/pedrogo/index.html	Pedrogão	39.924483	-8.952483
3611	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/Pico_da_mina/index.html	Pico da mina	40.182367	-8.909017
3612	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_da_barra/index.html	Praia da Barra	40.644767	-8.762633
1245	https://www.wannasurf.com/spot/South_America/Peru/North/Las_Pocitas/index.html	Las Pocitas	-4.111	-81.071783
3613	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_da_leirosa/index.html	Praia da leirosa	40.0563	-8.89245
3614	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_da_nazare/index.html	Praia da Nazaré	39.5998	-9.0757
3615	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_da_tocha/index.html	Praia da Tocha	40.3291	-8.843633
3616	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_da_vaqueira/index.html	Praia da Vagueira	40.558583	-8.771933
3617	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_da_vieira/index.html	Praia da Vieira	39.8745	-8.971917
3618	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/Praia_de_Mira/index.html	Praia de Mira	40.456117	-8.803733
3619	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_do_norte/index.html	Praia do Norte	39.610583	-9.08595
3620	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/Praia_do_Osso_da_Baleia/index.html	Praia do Osso da Baleia	40.003133	-8.914033
3621	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_do_sul/index.html	Praia do Sul	NaN	NaN
3622	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/praia_paredes/index.html	Praia Paredes	39.700983	-9.048783
3623	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/rock/index.html	Rock	NaN	NaN
3624	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/samouco/index.html	Samouco	39.819233	-8.997967
3625	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/Sao_Jacinto/index.html	Sao Jacinto	40.67095	-8.746467
3626	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/sao_pedro_de_moel/index.html	Sao Pedro de Moel	39.757017	-9.034533
3627	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/ss/index.html	Ss	NaN	NaN
3628	https://www.wannasurf.com/spot/Europe/Portugal/North_Beira/The_Edge_-_Molhe_Norte/index.html	The Edge - Molhe Norte	40.146717	-8.87455
3630	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/baia/index.html	Baía	39.366483	-9.3558
3631	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/baleal/index.html	Baleal	39.367217	-9.342417
3632	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/baleal_sul/index.html	Baleal Sul	39.361483	-9.355633
3633	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/belgas/index.html	Belgas	39.416517	-9.25265
3645	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/praia_do_piso/index.html	Praia do Pisão	NaN	NaN
3634	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/cantinho/index.html	Cantinho da Baia	39.369667	-9.3398
3635	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/consolacao/index.html	Consolaçao	39.323583	-9.361333
3636	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/foz_do_arelho/index.html	Foz do Arelho	39.432683	-9.234017
3637	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/lagide/index.html	Lagide	39.37425	-9.335833
3638	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/mini_pipe/index.html	Mini pipe	39.324683	-9.36245
3639	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/molho_leste/index.html	Molhe Leste	39.3493	-9.36795
3640	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/porto_batel/index.html	Porto Batel	39.322567	-9.359133
3641	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/praia_azul/index.html	Praia Azul	39.10955	-9.39555
3642	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/praia_da_areia_branca/index.html	Praia da Areia Branca	39.263867	-9.337183
3643	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/praia_da_vigia/index.html	Praia Da Vigia	NaN	NaN
3644	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/Praia_do_Cerro/index.html	Praia do Cerro	39.36275	-9.368617
3646	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/santa_cruz/index.html	Santa Cruz	39.140583	-9.378217
3647	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/Santa_Rita/index.html	Santa Rita	39.1728	-9.358467
3648	https://www.wannasurf.com/spot/Europe/Portugal/Central_Peniche/supertubos/index.html	Supertubos	39.344817	-9.364517
3649	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/backdoor/index.html	Backdoor	NaN	NaN
3650	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/cave/index.html	Cave	38.996533	-9.426833
3651	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/coxos/index.html	Coxos	39.000583	-9.426917
3652	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/crazy_left/index.html	Crazy Left	NaN	NaN
3653	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/foz_do_lizandro/index.html	Foz do Lizandro	38.942283	-9.417
3654	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/furnas/index.html	Furnas	NaN	NaN
3655	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/limipicos/index.html	Limipicos	38.932933	-9.41995
3656	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/malhadinha/index.html	Malhadinha	38.944467	-9.418117
3657	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/Matadouro/index.html	Matadouro	38.9761	-9.422317
3658	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/papucos/index.html	Papuços	38.9561	-9.417067
3659	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/pedra_branca/index.html	Pedra Branca	38.979767	-9.423867
3660	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/praia_do_norte/index.html	Praia do Norte	38.96665	-9.420433
3661	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/praia_do_sul/index.html	Praia do Sul	NaN	NaN
3662	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/reef/index.html	Reef	38.982567	-9.4227
3663	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/ribeira_d_ilhas/index.html	Ribeira D'Ilhas	38.988217	-9.421067
3664	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/sanguessuga/index.html	Sanguessuga	38.97865	-9.423217
2247	https://www.wannasurf.com/spot/Europe/Spain/Galicia/Poxos/index.html	Ponzos	43.555717	-8.269167
3665	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/so_julio/index.html	São Julião	38.9319	-9.4199
3666	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/sao_lourenco/index.html	Sao Lourenco	39.012217	-9.422283
3667	https://www.wannasurf.com/spot/Europe/Portugal/Central_Ericeira/São_Sebastião/index.html	São Sebastião	38.972067	-9.420767
3668	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/adraga/index.html	Adraga	38.803267	-9.485317
3669	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/azarujinha/index.html	Azarujinha	NaN	NaN
3670	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/azenhas_do_mar/index.html	Azenhas do mar	NaN	NaN
3671	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/bafureira/index.html	Bafureira	38.692233	-9.366167
3685	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Suicida/index.html	Esquerda da Bafureira	38.690867	-9.3658
3672	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/bico/index.html	Bica	38.692483	-9.3718
3673	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/bicas/index.html	Bicas	38.42285	-9.218917
3674	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/bolina/index.html	Bolina	38.701567	-9.394283
3675	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/cabo_raso/index.html	Cabo Raso	38.7076	-9.490383
3676	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/carcavelos/index.html	Carcavelos	38.678683	-9.3352
3677	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Casa_do_Sol/index.html	Casa do Sol	NaN	NaN
3678	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/caxias/index.html	Caxias	38.697533	-9.2771
3679	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/coco_loco/index.html	Coco Loco	NaN	NaN
3680	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/costa_da_caparica/index.html	Costa da Caparica	38.637783	-9.2356
3681	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Cresmina/index.html	Cresmina	38.727267	-9.47655
3682	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Cruz_Quebrada/index.html	Cruz Quebrada	38.698983	-9.251783
3683	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Cubiculo/index.html	Cubiculo	38.68025	-9.3448
3684	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/dragao_vermelho/index.html	Dragao Vermelho	NaN	NaN
3686	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/fonte_da_telha/index.html	Fonte da Telha	38.5793	-9.202417
3687	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/guincho/index.html	Guincho	38.730117	-9.475367
3688	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/santa/index.html	Inatel	38.678883	-9.31595
3689	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/lagoa_de_albufeira/index.html	Lagoa de Albufeira	38.508217	-9.1838
3690	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/magoito/index.html	Magoito	38.863833	-9.449333
3691	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/paco_darcos/index.html	Paço D´arcos	38.690683	-9.297133
3692	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/parede/index.html	Parede	38.688733	-9.359667
3693	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/poga/index.html	Poça	38.70015	-9.389467
3694	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_cds/index.html	Praia CDS	38.644617	-9.242433
3695	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_da_foz-_cabo_espichel_sesimbra/index.html	Praia da Foz - Cabo Espichel, Sesimbra	38.453767	-9.199083
3696	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_da_rainha/index.html	Praia da Rainha	38.6163	-9.218517
3697	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Praia_da_saude/index.html	Praia da saude	38.62995	-9.22755
3698	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_das_mas/index.html	Praia das Maçãs	38.825167	-9.470383
3699	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_do_barbas/index.html	Praia do Barbas	38.641017	-9.241567
3700	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_do_castelo/index.html	Praia Do Castelo	NaN	NaN
3701	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_do_meco/index.html	Praia do meco	38.490183	-9.18595
3702	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_grande/index.html	Praia Grande	38.814833	-9.478533
3703	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_nova/index.html	Praia Nova	NaN	NaN
3704	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/praia_pequena/index.html	Praia Pequena	38.82035	-9.474383
3705	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/rata/index.html	Rata	NaN	NaN
3706	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/riviera/index.html	Riviera	NaN	NaN
3707	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/santa_amaro/index.html	Santo Amaro	38.68145	-9.31365
3708	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/sao_joao_da_caparica/index.html	São João da Caparica	NaN	NaN
3709	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/Sao_Pedro/index.html	Sao Pedro	38.693067	-9.371633
3710	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/sesimbra/index.html	Sesimbra	38.444983	-9.107667
3711	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/sta_maria/index.html	Sta Maria	NaN	NaN
3712	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/tamariz/index.html	Tamariz	38.701917	-9.399167
3713	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/torre/index.html	Torre	38.6754	-9.323117
3714	https://www.wannasurf.com/spot/Europe/Portugal/Central_Lisboa/troia/index.html	Troia	38.45375	-8.863483
3715	https://www.wannasurf.com/spot/Europe/Portugal/South/aberta-a-nova/index.html	Aberta-A-Nova	38.1761	-8.78215
3716	https://www.wannasurf.com/spot/Europe/Portugal/South/Aivados/index.html	Aivados	37.806267	-8.797383
3717	https://www.wannasurf.com/spot/Europe/Portugal/South/alfagar/index.html	Alfagar	NaN	NaN
3718	https://www.wannasurf.com/spot/Europe/Portugal/South/almograve/index.html	Almograve	NaN	NaN
3719	https://www.wannasurf.com/spot/Europe/Portugal/South/baia/index.html	Baia	NaN	NaN
3720	https://www.wannasurf.com/spot/Europe/Portugal/South/barranco_da_belharucas/index.html	Barranco da Belharucas	37.091283	-8.182967
3721	https://www.wannasurf.com/spot/Europe/Portugal/South/burrinho/index.html	Burrinho	37.89605	-8.79915
3722	https://www.wannasurf.com/spot/Europe/Portugal/South/canal/index.html	Canal	NaN	NaN
3723	https://www.wannasurf.com/spot/Europe/Portugal/South/canal_das_barcas/index.html	Canal das Barcas	NaN	NaN
3724	https://www.wannasurf.com/spot/Europe/Portugal/South/carvalhal/index.html	Carvalhal	38.30635	-8.780417
3725	https://www.wannasurf.com/spot/Europe/Portugal/South/comporta/index.html	Comporta	38.38035	-8.803483
3726	https://www.wannasurf.com/spot/Europe/Portugal/South/malhao/index.html	Malhão	37.78795	-8.803133
3727	https://www.wannasurf.com/spot/Europe/Portugal/South/melides/index.html	Melides	38.128917	-8.79275
3728	https://www.wannasurf.com/spot/Europe/Portugal/South/molhe_de_ferragudo/index.html	Molhe de Ferragudo	37.109367	-8.519983
3729	https://www.wannasurf.com/spot/Europe/Portugal/South/odeceixe/index.html	Odeceixe	37.4425	-8.799667
3730	https://www.wannasurf.com/spot/Europe/Portugal/South/porto_covo/index.html	Porto Covo	37.855	-8.794383
3731	https://www.wannasurf.com/spot/Europe/Portugal/South/praia_da_marina/index.html	Praia da Marina	NaN	NaN
4000	https://www.wannasurf.com/spot/Europe/UK/South_East/walberswick/index.html	Walberswick	NaN	NaN
3732	https://www.wannasurf.com/spot/Europe/Portugal/South/praia_da_vieirinha/index.html	Praia da Vieirinha	37.895017	-8.797417
3733	https://www.wannasurf.com/spot/Europe/Portugal/South/praia_do_pego/index.html	Praia do PEGO	38.292067	-8.776567
3734	https://www.wannasurf.com/spot/Europe/Portugal/South/prainha/index.html	Prainha	NaN	NaN
3735	https://www.wannasurf.com/spot/Europe/Portugal/South/sanguessuga/index.html	Sanguessuga	37.905983	-8.802617
3736	https://www.wannasurf.com/spot/Europe/Portugal/South/Sao_Torpes/index.html	Sao Torpes	37.9252	-8.807383
3737	https://www.wannasurf.com/spot/Europe/Portugal/South/vila_nova_de_milfontes/index.html	Vila Nova de Milfontes	37.721033	-8.79485
3738	https://www.wannasurf.com/spot/Europe/Portugal/South/Vila_Real_Santo_Antonio/index.html	Vila Real Santo Antonio	37.171367	-7.412717
3739	https://www.wannasurf.com/spot/Europe/Portugal/South/zambujeira_do_mar/index.html	Zambujeira do Mar	37.525117	-8.7882
3740	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/albufeira/index.html	Albufeira	37.085633	-8.248683
3741	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/alvor/index.html	Alvor	37.122417	-8.596467
3742	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/amoreira/index.html	Amoreira	37.350033	-8.8455
3743	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/arcos_da_mesquita/index.html	Arcos da mesquita	NaN	NaN
3744	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/armaco_de_pera/index.html	Armação de pêra	37.101667	-8.36235
3745	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/arrifana/index.html	Arrifana	37.294433	-8.87125
3746	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/barranco/index.html	Barranco	37.042133	-8.8949
3747	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/beliche/index.html	Beliche	37.025717	-8.965533
3748	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Boca_do_rio/index.html	Boca do rio	37.065433	-8.810117
3749	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Burgau/index.html	Burgau	37.070183	-8.776167
3750	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/cabanas_velhas/index.html	Cabanas Velhas	37.06555	-8.7948
3751	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/carrapateira/index.html	Carrapateira	37.19995	-8.906217
3752	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Carriagem/index.html	Carriagem	37.361433	-8.841333
3753	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/castelejo/index.html	Castelejo	37.101083	-8.945367
3754	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/coelhos/index.html	Coelhos	NaN	NaN
3755	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/coice/index.html	Coiçe	NaN	NaN
3756	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/cordoama/index.html	Cordoama	37.1051	-8.941817
3757	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/falesia/index.html	Falesia	NaN	NaN
3758	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Figueiros/index.html	Figueiros	37.247783	-8.8694
3759	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Forte_Novo/index.html	Forte Novo	37.061733	-8.090783
3760	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/gale/index.html	Gale	NaN	NaN
3761	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ilha_da_culatra/index.html	Ilha da culatra	NaN	NaN
3762	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ilha_da_fuzeta/index.html	Ilha da Fuzeta	NaN	NaN
3763	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Ilha_de_Faro/index.html	Ilha de Faro	36.987533	-7.967583
3764	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ilha_de_tavira/index.html	Ilha de Tavira	37.11215	-7.62245
3765	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ilha_deserta/index.html	Ilha Deserta	36.964367	-7.87745
3766	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ilha_do_farol/index.html	Ilha do farol	36.972333	-7.8653
3767	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ingrina/index.html	Ingrina	37.045117	-8.878233
3768	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/julias/index.html	Julias	37.039483	-8.050783
3769	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/lage_do_pescador/index.html	Lage do Pescador	37.321067	-8.87955
3770	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/luz/index.html	Luz	37.0861	-8.7255
3771	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/manta_rota/index.html	Manta Rota	NaN	NaN
3772	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/mareta/index.html	Mareta	37.005483	-8.938917
3773	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/martinhal/index.html	Martinhal	37.0194	-8.925583
3774	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/meia_praia/index.html	Meia Praia	37.108383	-8.66195
3775	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/monte_clerigo/index.html	Monte Clerigo	37.344533	-8.854167
3776	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ponta_do_levante/index.html	Pirata or Ponta do Levante	37.090617	-8.4
3777	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/ponta_ruiva/index.html	Ponta Ruiva	37.06925	-8.966083
3778	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/praia_da_rocha/index.html	Praia da Rocha	37.114883	-8.533033
3779	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/praia_de_altura/index.html	Praia de Altura	37.170317	-7.498367
3780	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/praia_de_faro/index.html	Praia de Faro	37.006817	-7.99565
3781	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/praia_do_amado/index.html	Praia do amado	37.16665	-8.904467
3783	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/praia_do_farol_-_lado_poente/index.html	Praia do Farol - lado poente	NaN	NaN
3784	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Praia_do_Telheiro/index.html	Praia do Telheiro	37.045717	-8.9793
3786	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/rosa_branca/index.html	Rosa Branca	NaN	NaN
3787	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/salema/index.html	Salema	37.0649	-8.825083
3788	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/tonel/index.html	Tonel	37.006383	-8.948217
3789	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/tres_irmos/index.html	Três Irmãos	NaN	NaN
3790	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/vale_do_lobo/index.html	Vale do Lobo	37.048217	-8.064733
3791	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/vale_figueira/index.html	Vale Figueira	37.247483	-8.87
3792	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Zavial/index.html	Zavial	37.04565	-8.87265
3793	https://www.wannasurf.com/spot/Europe/UK/West_Scotland/Machrihanish/index.html	Machrihanish	55.4716	-5.714783
3794	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/breakwater/index.html	Breakwater	50.2156	-5.47545
3795	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/carbis_bay/index.html	Carbis Bay	50.198767	-5.4612
3796	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/Chapel_Porth/index.html	Chapel Porth	50.300517	-5.235333
3797	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/cot_valley_reef/index.html	cot valley reef	NaN	NaN
3798	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/crantock/index.html	Crantock	50.408517	-5.12495
3799	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/droskyn/index.html	Droskyn, Perranporth	50.350283	-5.15735
3800	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/fistral/index.html	Fistral	50.417383	-5.101983
3801	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/Great_Western/index.html	Great Western	50.415883	-5.076717
3802	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/gwithian/index.html	Gwithian	50.234467	-5.3984
3803	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/Hayle_Rivermouth/index.html	Hayle Rivermouth	50.2007	-5.427867
3804	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/lusty_glaze/index.html	Lusty Glaze	50.422017	-5.063983
3805	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/mousehole_reef/index.html	Mousehole Reef	50.081217	-5.537883
3806	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/penhale/index.html	Penhale	50.393917	-5.143133
3807	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/peter_s_point/index.html	Peter's point	NaN	NaN
3808	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/porth_beach/index.html	Porth Beach	50.42535	-5.06255
3809	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/porthmeor/index.html	Porthmeor	50.215867	-5.4827
3810	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/porthtowan/index.html	Porthtowan	50.284967	-5.2469
3811	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/porthreath/index.html	Portreath	50.26125	-5.289233
3812	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/sennen/index.html	Sennen	50.082667	-5.698517
3813	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/st_agnes/index.html	St Agnes	50.32125	-5.201083
3814	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/st_ives_harbour_wall/index.html	St. Ives harbour wall.	50.2114	-5.475917
2358	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Oliva_beach/index.html	Oliva beach	38.933867	-0.09695
3815	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/the_cribber/index.html	The Cribber	50.42575	-5.103583
3816	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/tolcarne/index.html	Tolcarne, The Wedge	50.41815	-5.073817
3829	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/constantine_point/index.html	Constantine Point	NaN	NaN
3817	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/towan/index.html	Towan	50.41595	-5.084733
3818	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/Watergate_Bay/index.html	Watergate Bay	50.445583	-5.043417
3819	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/whipsiderry/index.html	Whipsiderry	50.431383	-5.05345
3820	https://www.wannasurf.com/spot/Europe/UK/Cornwall_West/zorbas_reef/index.html	Zorbas Reef	50.414083	-5.118833
3821	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/barras_nose/index.html	Barras Nose	NaN	NaN
3822	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/barrets_zawn/index.html	Barrets Zawn	NaN	NaN
3823	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/black_rock/index.html	Black Rock	NaN	NaN
3824	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/boobies/index.html	Boobies	50.536133	-5.024183
3825	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/bossiney_haven/index.html	Bossiney haven	NaN	NaN
3826	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/compass_point/index.html	Compass Point	NaN	NaN
3827	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/constantine/index.html	Constantine	NaN	NaN
3828	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/constantine_beach/index.html	Constantine beach	NaN	NaN
3830	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/constantine_reef/index.html	Constantine Reef	NaN	NaN
3831	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/crackington_haven/index.html	Crackington Haven	50.741617	-4.633917
3832	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/Crooklets/index.html	Crooklets	50.835783	-4.5552
4122	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/sandford_bay/index.html	Sandford Bay	NaN	NaN
3833	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/crosstown/index.html	Crosstown (part of Sandymouth)	NaN	NaN
3834	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/daymer_point/index.html	Daymer Point	50.559933	-4.926
3835	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/death_bay/index.html	Death Bay	50.572283	-4.92435
3836	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/devils_palace_near_grower_rock/index.html	Devils Palace Near Grower Rock	NaN	NaN
3837	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/diggorys/index.html	Diggorys	NaN	NaN
3838	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/duckpool/index.html	Duckpool	NaN	NaN
3839	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/dunsmouth/index.html	Dunsmouth (part of Sandymouth)	NaN	NaN
3840	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/foxhole/index.html	Foxhole	NaN	NaN
3842	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/gullies_-_tintagel/index.html	Gullies - Tintagel	NaN	NaN
3843	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/harlyn/index.html	Harlyn	50.53875	-4.997583
3844	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/hippa_rock/index.html	Hippa Rock	NaN	NaN
3845	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/lundy_bay/index.html	Lundy Bay	50.58305	-4.884917
3846	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/marsland_point/index.html	Marsland Point (left)	NaN	NaN
3847	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/marsland_point_right/index.html	Marsland Point (right)	NaN	NaN
3848	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/mawgan_porth/index.html	Mawgan Porth	50.465583	-5.032
3849	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/milook/index.html	Milbrook	50.771517	-4.58265
3850	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/mother_iveys/index.html	Mother Ivey's (spot M)	50.54545	-5.018183
3862	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/the_strangles/index.html	The strangles	NaN	NaN
3863	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/trebarwith_strand/index.html	Trebarwith Strand	50.645783	-4.764683
3851	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/nudies/index.html	Nudies	NaN	NaN
3852	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/pengold/index.html	Pengold	NaN	NaN
4160	https://www.wannasurf.com/spot/South_America/Argentina/North/acantilados/index.html	Acantilados	NaN	NaN
3853	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/phillips_point/index.html	Phillips Point	NaN	NaN
3854	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/polzeath/index.html	Polzeath	50.575083	-4.916767
3855	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/porthcothan/index.html	Porthcothan	NaN	NaN
3856	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/rusey_beach/index.html	Rusey beach - Pengold	NaN	NaN
3857	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/sandymouth/index.html	Sandymouth	NaN	NaN
3858	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/stanbury_mouth/index.html	Stanbury Mouth	NaN	NaN
3859	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/stinky_bay/index.html	Stinky Bay	NaN	NaN
3860	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/stowe_cliffs/index.html	Stowe Cliffs	NaN	NaN
3861	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/the_box/index.html	The Box	NaN	NaN
3864	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/tregardock_beach/index.html	Tregardock beach	NaN	NaN
3865	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/unmaxibles/index.html	Tremoutha Haven (Unmaxibles)	NaN	NaN
3866	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/trevone/index.html	Trevone	50.54355	-4.979217
3867	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/treyarnon/index.html	Treyarnon	50.526033	-5.02315
3868	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/upton/index.html	Upton	NaN	NaN
3869	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/wanson_mouth/index.html	Wanson Mouth	NaN	NaN
3870	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/watergate/index.html	Watergate	50.445183	-5.04315
3871	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/welcombe_mouth/index.html	Welcombe mouth	NaN	NaN
3872	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/whaley/index.html	Whaley beach	NaN	NaN
3873	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/Widemouth_Bay/index.html	Widemouth Bay	50.790933	-4.560017
3874	https://www.wannasurf.com/spot/Europe/UK/Cornwall_North/yeol_mouth/index.html	Yeol Mouth	NaN	NaN
3875	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/cabage_patch/index.html	Cabage patch	NaN	NaN
3910	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Preston_Beach/index.html	Preston Beach	50.44365	-3.556217
3876	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/caerhays/index.html	Caerhays	NaN	NaN
3877	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/downderry_schoolhouse/index.html	Downderry Schoolhouse	NaN	NaN
3878	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/Falmouth_Beaches__Gylly_Swanpool_Maenporth_/index.html	Falmouth Beaches (Gylly,Swanpool,Maenporth)	50.140233	-5.0762
3879	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/gwenvor/index.html	Gwenvor	NaN	NaN
3880	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/Kennack_Sands/index.html	Kennack Sands	50.005017	-5.1615
3881	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/kynance_cove/index.html	Kynance Cove	NaN	NaN
3882	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/looe/index.html	Looe	NaN	NaN
3883	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/marazion_-_pointers/index.html	Marazion - pointers	NaN	NaN
3884	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/nanjizal__mill_bay/index.html	Nanjizal (Mill Bay)	NaN	NaN
3885	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/newlyn_harbour_wall/index.html	Newlyn Harbour wall	NaN	NaN
3886	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/pentewan/index.html	Pentewan	NaN	NaN
3887	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/perranuthanoe/index.html	Perranuthanoe	NaN	NaN
3942	https://www.wannasurf.com/spot/Europe/UK/Devon_North/wild_pear_beach/index.html	wild pear beach	51.211717	-4.034283
3888	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/rinsey/index.html	Portcew	NaN	NaN
3889	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/porthcurno_and_logan_rock/index.html	Porthcurno and Logan Rock	50.042817	-5.650067
3890	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/porthleven/index.html	Porthleven	50.082	-5.321233
3891	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/porthleven_beach/index.html	Porthleven Beach	NaN	NaN
3892	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/Port_wrinkle_/index.html	Portwrinkle	NaN	NaN
3893	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/Praa_sands/index.html	Praa sands	50.1018	-5.388233
3894	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/prussia_cove/index.html	Prussia Cove	NaN	NaN
3785	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/PRAIA_NOVA/index.html	PRAIA NOVA	37.09615	-8.388633
3895	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/rame_reef/index.html	Rame reef	NaN	NaN
3896	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/rame_reef_eastern/index.html	Rame Reef Eastern	NaN	NaN
3897	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/Seaton/index.html	Seaton	50.364217	-4.3875
3898	https://www.wannasurf.com/spot/Europe/UK/Cornwall_South/whitsands_bay/index.html	Whitsands Bay	NaN	NaN
3899	https://www.wannasurf.com/spot/Europe/UK/Devon_South/bantham/index.html	Bantham	50.278283	-3.88515
3900	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Bantham_Rivermouth/index.html	Bantham Rivermouth	50.278017	-3.886933
3901	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Beer_Point/index.html	Beer Point	50.685467	-3.0954
3902	https://www.wannasurf.com/spot/Europe/UK/Devon_South/boneyard_exmouth/index.html	BoneYard Exmouth	50.608667	-3.369967
3903	https://www.wannasurf.com/spot/Europe/UK/Devon_South/bovisands_reef/index.html	Bovisands Reef	NaN	NaN
3904	https://www.wannasurf.com/spot/Europe/UK/Devon_South/challabrough/index.html	Challabrough	50.288467	-3.898767
3905	https://www.wannasurf.com/spot/Europe/UK/Devon_South/drakes_bowl/index.html	drakes bowl	NaN	NaN
3906	https://www.wannasurf.com/spot/Europe/UK/Devon_South/teignmouth/index.html	Lip T	NaN	NaN
3907	https://www.wannasurf.com/spot/Europe/UK/Devon_South/mattiscombe/index.html	Mattiscombe	NaN	NaN
3908	https://www.wannasurf.com/spot/Europe/UK/Devon_South/mothecombe/index.html	Mothecombe	50.309267	-3.952767
3909	https://www.wannasurf.com/spot/Europe/UK/Devon_South/paignton/index.html	Paignton	NaN	NaN
3911	https://www.wannasurf.com/spot/Europe/UK/Devon_South/salcombe/index.html	Salcombe	NaN	NaN
3912	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Sidmouth/index.html	Sidmouth	NaN	NaN
3913	https://www.wannasurf.com/spot/Europe/UK/Devon_South/the_plug/index.html	The Plug	NaN	NaN
3914	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Thurlestone/index.html	Thurlestone	50.26665	-3.872767
3925	https://www.wannasurf.com/spot/Europe/UK/Devon_North/fremington_quay/index.html	Fremington quay	NaN	NaN
3915	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Thurlsestone/index.html	Thurlsestone	50.2667	-3.87055
3916	https://www.wannasurf.com/spot/Europe/UK/Devon_South/wembury_beach/index.html	Wembury beach	NaN	NaN
3917	https://www.wannasurf.com/spot/Europe/UK/Devon_South/wembury_point/index.html	Wembury Point	NaN	NaN
3918	https://www.wannasurf.com/spot/Europe/UK/Devon_South/Whitsand_Bay/index.html	Whitsand Bay	50.354167	-4.278367
3919	https://www.wannasurf.com/spot/Europe/UK/Devon_North/Boneyards/index.html	Boneyards	51.13175	-4.24175
3920	https://www.wannasurf.com/spot/Europe/UK/Devon_North/bucks_mills/index.html	Buck's Mill	50.98965	-4.346383
3921	https://www.wannasurf.com/spot/Europe/UK/Devon_North/clovelly/index.html	Clovelly	NaN	NaN
3922	https://www.wannasurf.com/spot/Europe/UK/Devon_North/coombesgate_beach/index.html	Coombesgate Beach	51.177617	-4.216867
3923	https://www.wannasurf.com/spot/Europe/UK/Devon_North/croyde/index.html	Croyde	51.1286	-4.244117
3924	https://www.wannasurf.com/spot/Europe/UK/Devon_North/Down_End_Point/index.html	Down End Point	51.125067	-4.2457
3926	https://www.wannasurf.com/spot/Europe/UK/Devon_North/greencliffabbotsham_cliff/index.html	Greencliffs	NaN	NaN
3927	https://www.wannasurf.com/spot/Europe/UK/Devon_North/breakers__morte_point/index.html	Grunta (Morte Point)	NaN	NaN
3928	https://www.wannasurf.com/spot/Europe/UK/Devon_North/hartland_quay/index.html	Hartland Quay	NaN	NaN
3929	https://www.wannasurf.com/spot/Europe/UK/Devon_North/lee_bay/index.html	Lee bay	NaN	NaN
3930	https://www.wannasurf.com/spot/Europe/UK/Devon_North/lester_point/index.html	Lester point	NaN	NaN
3931	https://www.wannasurf.com/spot/Europe/UK/Devon_North/lynmouth/index.html	Lynmouth	51.231783	-3.831033
3932	https://www.wannasurf.com/spot/Europe/UK/Devon_North/noahs_right/index.html	noahs right	50.938217	-4.548167
3933	https://www.wannasurf.com/spot/Europe/UK/Devon_North/oyster_falls/index.html	Oyster Falls	NaN	NaN
3934	https://www.wannasurf.com/spot/Europe/UK/Devon_North/porlock_weir/index.html	Porlock Weir Somerset	51.219817	-3.626317
3935	https://www.wannasurf.com/spot/Europe/UK/Devon_North/putsborough/index.html	Putsborough Beach	51.143983	-4.220983
3949	https://www.wannasurf.com/spot/Europe/UK/South/compton/index.html	Compton	50.664267	-1.482467
3936	https://www.wannasurf.com/spot/Europe/UK/Devon_North/saunton_sands/index.html	Saunton Sands	51.109767	-4.226983
3937	https://www.wannasurf.com/spot/Europe/UK/Devon_North/Skateparks_Left/index.html	Skateparks Left	NaN	NaN
3938	https://www.wannasurf.com/spot/Europe/UK/Devon_North/spekes_mill/index.html	Spekes mill	NaN	NaN
3939	https://www.wannasurf.com/spot/Europe/UK/Devon_North/taw_bore/index.html	Taw Bore	NaN	NaN
3940	https://www.wannasurf.com/spot/Europe/UK/Devon_North/umberleigh_river_wave/index.html	Umberleigh river wave	NaN	NaN
3941	https://www.wannasurf.com/spot/Europe/UK/Devon_North/westward_ho/index.html	Westward Ho!	51.045817	-4.2318
3943	https://www.wannasurf.com/spot/Europe/UK/Devon_North/Woody_Bay/index.html	Woody Bay	51.225617	-3.895733
3944	https://www.wannasurf.com/spot/Europe/UK/Devon_North/woolacombe_bay/index.html	Woolacombe bay	51.169467	-4.216083
3945	https://www.wannasurf.com/spot/Europe/UK/South/boscombe_pier/index.html	Boscombe Pier	50.7188	-1.8436
3946	https://www.wannasurf.com/spot/Europe/UK/South/bournemouth/index.html	Bournemouth	NaN	NaN
3947	https://www.wannasurf.com/spot/Europe/UK/South/bournemouth_pier/index.html	Bournemouth Pier	50.715067	-1.87565
3948	https://www.wannasurf.com/spot/Europe/UK/South/bracklesham/index.html	Bracklesham	NaN	NaN
3950	https://www.wannasurf.com/spot/Europe/UK/South/durlston_point/index.html	Durlston Point	NaN	NaN
3951	https://www.wannasurf.com/spot/Europe/UK/South/freshwater_bay/index.html	Freshwater bay	NaN	NaN
3952	https://www.wannasurf.com/spot/Europe/UK/South/highcliffe/index.html	Highcliffe	50.736783	-1.6967
3953	https://www.wannasurf.com/spot/Europe/UK/South/the_ledges/index.html	Kimmeridge (The Ledges)	50.60645	-2.13075
3954	https://www.wannasurf.com/spot/Europe/UK/South/kimmeridge_bay/index.html	Kimmeridge Bay (Bench)	50.61015	-2.133917
3955	https://www.wannasurf.com/spot/Europe/UK/South/lyme_bay/index.html	Lyme bay	NaN	NaN
3956	https://www.wannasurf.com/spot/Europe/UK/South/Needles/index.html	Needles	50.6626	-1.585
3957	https://www.wannasurf.com/spot/Europe/UK/South/niton/index.html	Niton	NaN	NaN
3958	https://www.wannasurf.com/spot/Europe/UK/South/shanklin/index.html	Shanklin	NaN	NaN
3960	https://www.wannasurf.com/spot/Europe/UK/South/swanage/index.html	Swanage	NaN	NaN
3961	https://www.wannasurf.com/spot/Europe/UK/South/The_Bill/index.html	The Bill	50.51245	-2.458183
3962	https://www.wannasurf.com/spot/Europe/UK/South/ventnor/index.html	Ventnor	NaN	NaN
3963	https://www.wannasurf.com/spot/Europe/UK/South/weymouth/index.html	Weymouth	NaN	NaN
3964	https://www.wannasurf.com/spot/Europe/UK/South/whitecliff_bay/index.html	Whitecliff bay	NaN	NaN
3965	https://www.wannasurf.com/spot/Europe/UK/South_East/3_z_a_crowd/index.html	3'z A CROWD!!!!!	NaN	NaN
3966	https://www.wannasurf.com/spot/Europe/UK/South_East/Bexhill/index.html	Bexhill	50.83605	0.4662
3967	https://www.wannasurf.com/spot/Europe/UK/South_East/birling_gap/index.html	Birling gap	50.742533	0.200333
3968	https://www.wannasurf.com/spot/Europe/UK/South_East/bracklesham_bay/index.html	Bracklesham Bay	50.76025	-0.860683
3970	https://www.wannasurf.com/spot/Europe/UK/South_East/brighton_marina/index.html	Brighton Marina	NaN	NaN
3971	https://www.wannasurf.com/spot/Europe/UK/South_East/brighton_new_beach/index.html	Brighton New Beach	NaN	NaN
3972	https://www.wannasurf.com/spot/Europe/UK/South_East/broadstairs/index.html	Broadstairs	51.35735	1.4429
3973	https://www.wannasurf.com/spot/Europe/UK/South_East/viking_bay/index.html	Broadstairs - Viking Bay	NaN	NaN
3974	https://www.wannasurf.com/spot/Europe/UK/South_East/broady_reef/index.html	Broady reef	NaN	NaN
3975	https://www.wannasurf.com/spot/Europe/UK/South_East/camber_sands/index.html	Camber sands	50.933083	0.784833
3976	https://www.wannasurf.com/spot/Europe/UK/South_East/east_wittering/index.html	East Witterings	50.765333	-0.877533
3977	https://www.wannasurf.com/spot/Europe/UK/South_East/eastbourne/index.html	Eastbourne	50.762	0.286783
3978	https://www.wannasurf.com/spot/Europe/UK/South_East/folkestone_east_cliff_reef/index.html	Folkestone East Cliff Reef	NaN	NaN
3979	https://www.wannasurf.com/spot/Europe/UK/South_East/folkestone_east_cliff_sands/index.html	Folkestone East Cliff Sands	51.090267	1.204983
3980	https://www.wannasurf.com/spot/Europe/UK/South_East/folkestone_ware_bay/index.html	Folkestone Wear Bay	NaN	NaN
3981	https://www.wannasurf.com/spot/Europe/UK/South_East/goring_sea_lane/index.html	Goring Sea Lane	NaN	NaN
3982	https://www.wannasurf.com/spot/Europe/UK/South_East/greatstone_on_sea/index.html	Greatstone	NaN	NaN
3983	https://www.wannasurf.com/spot/Europe/UK/South_East/hastings_pier/index.html	Hastings pier	50.852067	0.574317
3984	https://www.wannasurf.com/spot/Europe/UK/South_East/hollows/index.html	Hollows	NaN	NaN
3985	https://www.wannasurf.com/spot/Europe/UK/South_East/hot_pipe_alt/index.html	Hot pipe	50.8279	-0.228433
3986	https://www.wannasurf.com/spot/Europe/UK/South_East/joss_bay/index.html	Joss Bay	51.379417	1.446533
3987	https://www.wannasurf.com/spot/Europe/UK/South_East/kingsdown/index.html	Kingsdown	NaN	NaN
3988	https://www.wannasurf.com/spot/Europe/UK/South_East/littlehampton/index.html	Littlehampton	NaN	NaN
3989	https://www.wannasurf.com/spot/Europe/UK/South_East/rock_a_nore/index.html	Rock-a-nore Hastings	NaN	NaN
4046	https://www.wannasurf.com/spot/Europe/UK/South_Wales/langland_-_sandbar/index.html	Langland - Sandbar	NaN	NaN
3990	https://www.wannasurf.com/spot/Europe/UK/South_East/hot_pipe/index.html	Shoreham	50.828067	-0.228217
3991	https://www.wannasurf.com/spot/Europe/UK/South_East/st_margarets_bay/index.html	St Margarets Bay	NaN	NaN
3992	https://www.wannasurf.com/spot/Europe/UK/South_East/stamco/index.html	Stamco	50.849467	0.534483
3993	https://www.wannasurf.com/spot/Europe/UK/South_East/stonners/index.html	Stonners	NaN	NaN
3994	https://www.wannasurf.com/spot/Europe/UK/South_East/thames/index.html	Thames	NaN	NaN
3995	https://www.wannasurf.com/spot/Europe/UK/South_East/the_cliffs/index.html	The Cliffs	NaN	NaN
3996	https://www.wannasurf.com/spot/Europe/UK/South_East/the_harbour/index.html	The Harbour	NaN	NaN
3997	https://www.wannasurf.com/spot/Europe/UK/South_East/ramsgate_wall/index.html	The Wall	51.331667	1.422967
3998	https://www.wannasurf.com/spot/Europe/UK/South_East/tidemills/index.html	Tidemills	NaN	NaN
3999	https://www.wannasurf.com/spot/Europe/UK/South_East/undercliff/index.html	Undercliff	NaN	NaN
4001	https://www.wannasurf.com/spot/Europe/UK/South_East/west_witterings/index.html	West Wittering	50.77755	-0.911283
4002	https://www.wannasurf.com/spot/Europe/UK/East_England/admirals/index.html	Admirals	54.489267	-0.590433
4003	https://www.wannasurf.com/spot/Europe/UK/East_England/cayton_bay/index.html	Cayton Bay	54.244433	-0.355883
4004	https://www.wannasurf.com/spot/Europe/UK/East_England/East_Runton/index.html	East Runton	52.937633	1.269433
4005	https://www.wannasurf.com/spot/Europe/UK/East_England/Hornsea/index.html	Hornsea	53.913367	-0.16065
4006	https://www.wannasurf.com/spot/Europe/UK/East_England/Jabba_s/index.html	Jabba's	53.35075	0.259033
4007	https://www.wannasurf.com/spot/Europe/UK/East_England/north_bay/index.html	North bay	54.290383	-0.401167
4008	https://www.wannasurf.com/spot/Europe/UK/East_England/primrose_valley/index.html	Primrose Valley	NaN	NaN
4009	https://www.wannasurf.com/spot/Europe/UK/East_England/saltburn/index.html	Saltburn	54.58595	-0.9695
4010	https://www.wannasurf.com/spot/Europe/UK/East_England/sandsend/index.html	Sandsend	NaN	NaN
4011	https://www.wannasurf.com/spot/Europe/UK/East_England/skerrys/index.html	skerrys	53.727483	0.03905
4174	https://www.wannasurf.com/spot/South_America/Argentina/North/el_remanso/index.html	El Remanso	NaN	NaN
4012	https://www.wannasurf.com/spot/Europe/UK/East_England/south_bay/index.html	South Bay	54.2793	-0.397683
4013	https://www.wannasurf.com/spot/Europe/UK/East_England/staithes/index.html	Staithes	54.561017	-0.78535
4015	https://www.wannasurf.com/spot/Europe/UK/East_England/Sutton_on_sea/index.html	Sutton on sea	53.313333	0.28375
4016	https://www.wannasurf.com/spot/Europe/UK/East_England/whitby_beach/index.html	Whitby Beach	54.491083	-0.616
4017	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/annstead_bay/index.html	Annstead bay	NaN	NaN
4018	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/bamburgh/index.html	Bamburgh	55.61205	-1.716617
4019	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/beadnell_bay/index.html	Beadnell Bay	NaN	NaN
4020	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/black_middens/index.html	Black Middens	NaN	NaN
4021	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/blyth_beach/index.html	Blyth Beach	55.1103	-1.497317
4022	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/coldingham_bay/index.html	Coldingham Bay	55.89255	-2.130483
4023	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/embleton_bay/index.html	Embleton Bay	NaN	NaN
4024	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/hartlepool_-_steetley/index.html	Hartlepool - Steetley	NaN	NaN
4025	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/hartley_reef/index.html	Hartley Reef	NaN	NaN
4026	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/pease_bay/index.html	Pease Bay	55.932467	-2.333217
4027	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/roker_pier/index.html	Roker pier	NaN	NaN
4028	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/saltburn/index.html	Saltburn	NaN	NaN
4029	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/saltburn_pier/index.html	Saltburn pier	NaN	NaN
4031	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/seaton_carew/index.html	Seaton Carew	54.667183	-1.1879
4032	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/south_shields/index.html	South Shields	54.995433	-1.4035
4033	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/tynemouth_longsands/index.html	Tynemouth (Longsands)	55.02595	-1.425817
4034	https://www.wannasurf.com/spot/Europe/UK/South_Wales/aberavon/index.html	Aberavon	51.585333	-3.810967
4035	https://www.wannasurf.com/spot/Europe/UK/South_Wales/boiler_reef/index.html	Boiler Reef	51.537617	-4.211817
3128	https://www.wannasurf.com/spot/South_America/Brazil/Bahia_Sul/Jeribucacu/index.html	Jeribucaçu	-14.3444	-39.001383
4036	https://www.wannasurf.com/spot/Europe/UK/South_Wales/caswell_bay/index.html	Caswell Bay	51.566767	-4.032333
4037	https://www.wannasurf.com/spot/Europe/UK/South_Wales/coney_beach/index.html	Coney Beach	NaN	NaN
4038	https://www.wannasurf.com/spot/Europe/UK/South_Wales/Crab_Island_/index.html	Crab Island 	51.563983	-4.004717
4039	https://www.wannasurf.com/spot/Europe/UK/South_Wales/crofty_beach/index.html	Crofty Beach	NaN	NaN
4040	https://www.wannasurf.com/spot/Europe/UK/South_Wales/fall_bay/index.html	Fall Bay	NaN	NaN
4042	https://www.wannasurf.com/spot/Europe/UK/South_Wales/golf/index.html	Golf	NaN	NaN
4043	https://www.wannasurf.com/spot/Europe/UK/South_Wales/Horton/index.html	Horton	51.548683	-4.2021
4044	https://www.wannasurf.com/spot/Europe/UK/South_Wales/hunts_bay/index.html	Hunts Bay	NaN	NaN
4045	https://www.wannasurf.com/spot/Europe/UK/South_Wales/knap/index.html	Knap	NaN	NaN
4047	https://www.wannasurf.com/spot/Europe/UK/South_Wales/langland_bay/index.html	Langland bay	51.567917	-4.011767
4048	https://www.wannasurf.com/spot/Europe/UK/South_Wales/Llangenith/index.html	Llangennith	51.592217	-4.296683
4049	https://www.wannasurf.com/spot/Europe/UK/South_Wales/llantwit/index.html	LLantwit	NaN	NaN
4050	https://www.wannasurf.com/spot/Europe/UK/South_Wales/llantwit_major/index.html	Llantwit Major	NaN	NaN
4051	https://www.wannasurf.com/spot/Europe/UK/South_Wales/mewslade/index.html	Mewslade	NaN	NaN
4052	https://www.wannasurf.com/spot/Europe/UK/South_Wales/ogmore/index.html	Ogmore	51.467383	-3.641733
4053	https://www.wannasurf.com/spot/Europe/UK/South_Wales/oxwich_bay/index.html	Oxwich Bay	51.553383	-4.154517
4054	https://www.wannasurf.com/spot/Europe/UK/South_Wales/Pembrey_Beach/index.html	Pembrey Beach	51.682917	-4.337117
4055	https://www.wannasurf.com/spot/Europe/UK/South_Wales/penclawdd_reef/index.html	Penclawdd Reef	NaN	NaN
4056	https://www.wannasurf.com/spot/Europe/UK/South_Wales/petes_reef/index.html	Pete's Reef	NaN	NaN
4068	https://www.wannasurf.com/spot/Europe/UK/West_Wales/broadhaven/index.html	Broadhaven (North)	51.781217	-5.105217
4057	https://www.wannasurf.com/spot/Europe/UK/South_Wales/rest_bay/index.html	Rest Bay	51.4885	-3.724933
4058	https://www.wannasurf.com/spot/Europe/UK/South_Wales/Rhossili/index.html	Rhossili	51.570033	-4.2908
2573	https://www.wannasurf.com/spot/Africa/South_Africa/Cape_Town/Betty_s_Bay/index.html	Betty's Bay	-34.360433	18.907833
4059	https://www.wannasurf.com/spot/Europe/UK/South_Wales/scee/index.html	Sker	51.509633	-3.747483
4060	https://www.wannasurf.com/spot/Europe/UK/South_Wales/slade/index.html	Slade	51.54645	-4.183983
4061	https://www.wannasurf.com/spot/Europe/UK/South_Wales/sotherdown/index.html	Southerndown	51.44595	-3.605767
4062	https://www.wannasurf.com/spot/Europe/UK/South_Wales/swansea_bay/index.html	Swansea Bay	NaN	NaN
4063	https://www.wannasurf.com/spot/Europe/UK/South_Wales/the_esp/index.html	The Esp	NaN	NaN
4064	https://www.wannasurf.com/spot/Europe/UK/South_Wales/the_mixens/index.html	The Mixens	NaN	NaN
4065	https://www.wannasurf.com/spot/Europe/UK/South_Wales/the_point/index.html	The Point	NaN	NaN
4066	https://www.wannasurf.com/spot/Europe/UK/South_Wales/severn_bore/index.html	The Severn Bore	NaN	NaN
4067	https://www.wannasurf.com/spot/Europe/UK/South_Wales/three_cliffs/index.html	Three cliffs	51.567467	-4.11485
4069	https://www.wannasurf.com/spot/Europe/UK/West_Wales/broughton/index.html	Broughton	NaN	NaN
3959	https://www.wannasurf.com/spot/Europe/UK/South/southbourne/index.html	Southbourne	50.717933	-1.787633
4070	https://www.wannasurf.com/spot/Europe/UK/West_Wales/Caerfai_Bay/index.html	Caerfai Bay	51.872717	-5.253667
4071	https://www.wannasurf.com/spot/Europe/UK/West_Wales/cardigan_bay/index.html	Cardigan Bay	NaN	NaN
4072	https://www.wannasurf.com/spot/Europe/UK/West_Wales/frainslake_sands/index.html	frainslake sands	51.6399	-5.068683
4073	https://www.wannasurf.com/spot/Europe/UK/West_Wales/fresh_water_wales/index.html	Fresh Water West	51.658817	-5.062467
4074	https://www.wannasurf.com/spot/Europe/UK/West_Wales/freshwater_east/index.html	Freshwater East	51.644817	-4.860383
4075	https://www.wannasurf.com/spot/Europe/UK/West_Wales/Jeffs_left/index.html	Jeffs left	52.60805	-4.106833
4076	https://www.wannasurf.com/spot/Europe/UK/West_Wales/llangennith/index.html	Llangennith	NaN	NaN
4077	https://www.wannasurf.com/spot/Europe/UK/West_Wales/Llangrannog/index.html	Llangrannog	52.161033	-4.47235
4078	https://www.wannasurf.com/spot/Europe/UK/West_Wales/Llwyngwril/index.html	Llwyngwril	52.670183	-4.0959
4079	https://www.wannasurf.com/spot/Europe/UK/West_Wales/Manorbier/index.html	Manorbier	51.64285	-4.8054
4080	https://www.wannasurf.com/spot/Europe/UK/West_Wales/Marlose/index.html	Marloes	51.720533	-5.215583
4081	https://www.wannasurf.com/spot/Europe/UK/West_Wales/newgale/index.html	Newgale	51.850567	-5.123483
3969	https://www.wannasurf.com/spot/Europe/UK/South_East/west_pier/index.html	Brighton (West Pier)	50.82095	-0.1532
4082	https://www.wannasurf.com/spot/Europe/UK/West_Wales/the_trap/index.html	The Trap - Aberystwyth	52.408567	-4.090667
4083	https://www.wannasurf.com/spot/Europe/UK/West_Wales/whitesands/index.html	Whitesands	51.895767	-5.299867
4084	https://www.wannasurf.com/spot/Europe/UK/West_Wales/worms_head_reef/index.html	Worms Head Reef	NaN	NaN
4085	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/Aberdaron/index.html	Aberdaron	52.8065	-4.703517
4175	https://www.wannasurf.com/spot/South_America/Argentina/North/el_yacht/index.html	El Yacht	-38.030933	-57.529267
4086	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/abersoch/index.html	abersoch	52.8238	-4.5068
4087	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/Gansey/index.html	Gansey	54.082917	-4.728933
4088	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/hells_mouth/index.html	Hells Mouth	52.812417	-4.578217
4089	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/porth_ceiriad/index.html	porth ceiriad	52.79365	-4.500533
4090	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/Surf_Snowdoina/index.html	Surf Snowdoina	53.1898	-3.841283
4091	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/the_Dee_bore/index.html	the Dee bore	53.200683	-2.988617
4092	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/The_Point__isle_of_man_/index.html	The Point (isle of man)	53.99485	-3.647467
4093	https://www.wannasurf.com/spot/Europe/UK/North_Wales_and_NW_England/tywyn/index.html	Tywyn	52.5853	-4.0925
4094	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/brimms_ness/index.html	Brimms Ness	NaN	NaN
4095	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/dunnet_bay/index.html	Dunnet Bay	NaN	NaN
4096	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/melvich/index.html	Melvich	NaN	NaN
4097	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/sandside/index.html	Sandside	NaN	NaN
4098	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/sandwood_bay/index.html	Sandwood Bay	58.542633	-5.0574
4099	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/Sango_Sands/index.html	Sango Sands	58.567533	-4.734483
4100	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/sewer_pipe/index.html	Sewer Pipe	NaN	NaN
4101	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/strathy_bay/index.html	Strathy bay	58.568367	-4.000233
4102	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/the_bowl/index.html	The Bowl	NaN	NaN
4115	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/westpoint/index.html	Westpoint	NaN	NaN
4103	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/the_spur/index.html	The spur	NaN	NaN
4104	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/thurso_beach/index.html	Thurso beach	58.59935	-3.51545
4105	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/thurso_east/index.html	Thurso East	58.602433	-3.508067
4106	https://www.wannasurf.com/spot/Europe/UK/North_Scotland/Torrisdale_Bay/index.html	Torrisdale Bay	58.525483	-4.251367
4107	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/broadsea_point/index.html	Broadsea Point	NaN	NaN
4108	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/fraserburgh/index.html	Fraserburgh	57.68185	-1.996933
4109	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/lossie_east_beach/index.html	Lossie East Beach	57.717817	-3.27745
4110	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/pennan/index.html	Pennan	NaN	NaN
4111	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/philorth/index.html	Philorth	NaN	NaN
4112	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/phingask/index.html	Phingask	NaN	NaN
4113	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/sandend/index.html	Sandend	57.682583	-2.744
4114	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/sandhaven/index.html	Sandhaven	NaN	NaN
4116	https://www.wannasurf.com/spot/Europe/UK/NE_Scotland/wisemans/index.html	Wisemans	NaN	NaN
4117	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/aberdeen/index.html	Aberdeen	57.164633	-2.079333
4118	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/cruden_bay/index.html	Cruden Bay	NaN	NaN
4119	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/insanities/index.html	Insanities	NaN	NaN
4120	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/kingsbarns/index.html	Kingsbarns	56.297733	-2.635283
4121	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/nigg_bay/index.html	Nigg Bay	57.133233	-2.05865
4123	https://www.wannasurf.com/spot/Europe/UK/East_Scotland/st_andrews/index.html	St Andrews East Sands	56.336483	-2.781217
4124	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/alderney_-_braye__mount_hale_side_/index.html	Alderney - Braye (Mount Hale Side)	NaN	NaN
4125	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/alderney_-_braye_bay/index.html	Alderney - Braye Bay	NaN	NaN
4126	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/corblets_bay/index.html	Alderney - Corblets Bay	NaN	NaN
4149	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/watersplash/index.html	Jersey - Watersplash	NaN	NaN
4014	https://www.wannasurf.com/spot/Europe/UK/East_England/Stone_Groyne/index.html	Stone Groyne	52.932317	1.311833
4127	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/centres/index.html	Guernsey - Centres	49.467617	-2.61625
4128	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/fort_le_marchant/index.html	Guernsey - Fort Le Marchant	NaN	NaN
4129	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/lancresse/index.html	Guernsey - L'Ancresse   Pembroke	NaN	NaN
4130	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/perelle_big_peak/index.html	Guernsey - Perelle Big Peak	NaN	NaN
4131	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/perelle_left/index.html	Guernsey - Perelle Left	NaN	NaN
4132	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/perelle_right/index.html	Guernsey - Perelle Right	NaN	NaN
4133	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/portinfer/index.html	Guernsey - Portinfer	NaN	NaN
4134	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/suck_reef/index.html	Guernsey - Suck Reef	NaN	NaN
4135	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/suckers/index.html	Guernsey - Suckers	49.46085	-2.655567
4136	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/totherside/index.html	Guernsey - T'otherside	NaN	NaN
4030	https://www.wannasurf.com/spot/Europe/UK/Borders_and_NE_England/seaburn/index.html	Seaburn	54.93765	-1.366417
4137	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/the_knife/index.html	Guernsey - The Knife	NaN	NaN
4138	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/vazon_beach/index.html	Guernsey - Vazon Beach	NaN	NaN
4139	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/vazon_reef/index.html	Guernsey - Vazon Reef	NaN	NaN
4140	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/jersey_-_castles__gorey_/index.html	Jersey - Castles (gorey)	NaN	NaN
4141	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/goldsmiths/index.html	Jersey - Goldsmiths	NaN	NaN
4142	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/greve_de_lecq/index.html	Jersey - Greve de Lecq	NaN	NaN
4143	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/icco_tower/index.html	Jersey - Icco tower	NaN	NaN
4159	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/woodyville/index.html	woodyville	41.1574	29.728483
4144	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/jersey_-_la_mare/index.html	Jersey - La mare	49.169333	-2.084967
4145	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/secret_les_laveurs/index.html	Jersey - Les Laveurs	NaN	NaN
4146	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/petit_port/index.html	Jersey - Petit Port	NaN	NaN
4147	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/plemont/index.html	Jersey - Plemont	NaN	NaN
4148	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/jersey_-_stinkies/index.html	Jersey - Stinkies	NaN	NaN
4151	https://www.wannasurf.com/spot/Europe/UK/Channel_Islands/st_brelade/index.html	St Brelade	NaN	NaN
4152	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Aglayankaya/index.html	Aglayankaya	41.175133	29.624733
4153	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Erba/index.html	Erba	41.151683	30.196367
4154	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Igne_Ada/index.html	Igne Ada	NaN	NaN
4155	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Kumcagiz/index.html	Kumcagiz	41.159467	30.219783
4156	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Mavi_Rife/index.html	Mavi Rife	41.18725	30.242
4157	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Merkez_Sile/index.html	Merkez Sile	41.1585	29.619133
4158	https://www.wannasurf.com/spot/Middle_East/Turkey/Black-Sea/Sarisu/index.html	Sarisu	41.140083	30.152133
4161	https://www.wannasurf.com/spot/South_America/Argentina/North/alfar/index.html	Alfar	NaN	NaN
4162	https://www.wannasurf.com/spot/South_America/Argentina/North/alfonsina/index.html	Alfonsina	-37.993867	-57.542633
4163	https://www.wannasurf.com/spot/South_America/Argentina/North/Alicante/index.html	Alicante	NaN	NaN
4164	https://www.wannasurf.com/spot/South_America/Argentina/North/biologia/index.html	Biología	-38.02725	-57.528633
4165	https://www.wannasurf.com/spot/South_America/Argentina/North/cabo_corrientes/index.html	Cabo corrientes	-38.016083	-57.524883
4166	https://www.wannasurf.com/spot/South_America/Argentina/North/Cardiel/index.html	Cardiel	-37.976333	-57.54135
4167	https://www.wannasurf.com/spot/South_America/Argentina/North/chapadmalal/index.html	Chapadmalal	-38.206967	-57.688183
4168	https://www.wannasurf.com/spot/South_America/Argentina/North/Constitucion/index.html	Constitucion	-37.971467	-57.541167
4169	https://www.wannasurf.com/spot/South_America/Argentina/North/cruz_del_sur/index.html	Cruz del Sur	NaN	NaN
4170	https://www.wannasurf.com/spot/South_America/Argentina/North/cueva_del_tigre/index.html	Cueva del tigre	NaN	NaN
4171	https://www.wannasurf.com/spot/South_America/Argentina/North/diva/index.html	Diva	NaN	NaN
4172	https://www.wannasurf.com/spot/South_America/Argentina/North/el_muelle/index.html	El muelle	-38.284	-57.833417
4173	https://www.wannasurf.com/spot/South_America/Argentina/North/el_pomol/index.html	El Pomol	-38.284983	-57.8343
4176	https://www.wannasurf.com/spot/South_America/Argentina/North/escollera_necochea/index.html	Escollera Necochea	-38.581733	-58.702833
4177	https://www.wannasurf.com/spot/South_America/Argentina/North/Honu_Beach_Mar_Del_Plata/index.html	Honu Beach Mar Del Plata	-38.0879	-57.54055
4178	https://www.wannasurf.com/spot/South_America/Argentina/North/horizonte/index.html	Horizonte	NaN	NaN
4179	https://www.wannasurf.com/spot/South_America/Argentina/North/la_maquinita/index.html	La Maquinita	NaN	NaN
4180	https://www.wannasurf.com/spot/South_America/Argentina/North/la_paloma/index.html	La Paloma	-38.1685	-57.633683
4181	https://www.wannasurf.com/spot/South_America/Argentina/North/la_pepita/index.html	La Pepita	NaN	NaN
4182	https://www.wannasurf.com/spot/South_America/Argentina/North/la_punta___puerto_/index.html	la punta ( puerto)	-38.038467	-57.517117
4183	https://www.wannasurf.com/spot/South_America/Argentina/North/la_rambla/index.html	La Rambla	NaN	NaN
4184	https://www.wannasurf.com/spot/South_America/Argentina/North/la_serena/index.html	La Serena	NaN	NaN
4185	https://www.wannasurf.com/spot/South_America/Argentina/North/la_virazon/index.html	La Virazon	-38.578767	-58.692917
4186	https://www.wannasurf.com/spot/South_America/Argentina/North/luna_roja/index.html	Luna Roja	-38.173483	-57.6393
4187	https://www.wannasurf.com/spot/South_America/Argentina/North/mar_de_ajo/index.html	Mar de Ajo	-36.710483	-56.673933
4188	https://www.wannasurf.com/spot/South_America/Argentina/North/mariano/index.html	Mariano	NaN	NaN
4189	https://www.wannasurf.com/spot/South_America/Argentina/North/miramar/index.html	Miramar	-38.274333	-57.82955
4203	https://www.wannasurf.com/spot/South_America/Argentina/North/Varese/index.html	Varese	-38.0136	-57.52825
4190	https://www.wannasurf.com/spot/South_America/Argentina/North/monte_hermoso/index.html	Monte Hermoso	-38.989833	-61.298217
4191	https://www.wannasurf.com/spot/South_America/Argentina/North/norte/index.html	Norte	NaN	NaN
4192	https://www.wannasurf.com/spot/South_America/Argentina/North/off_the_wall/index.html	Off the Wall	-38.165267	-57.628867
4193	https://www.wannasurf.com/spot/South_America/Argentina/North/paradise/index.html	Paradise	NaN	NaN
4194	https://www.wannasurf.com/spot/South_America/Argentina/North/pinamar/index.html	Pinamar	-37.1235	-56.861033
4195	https://www.wannasurf.com/spot/South_America/Argentina/North/playa_anchorena/index.html	playa anchorena	-34.485217	-58.48035
4196	https://www.wannasurf.com/spot/South_America/Argentina/North/Punta_Medanos/index.html	Punta Medanos	-36.934533	-56.71005
4197	https://www.wannasurf.com/spot/South_America/Argentina/North/Quequen/index.html	Quequen	-38.575683	-58.688317
4198	https://www.wannasurf.com/spot/South_America/Argentina/North/san_clemente_del_tuyu/index.html	San clemente del tuyu	-36.388117	-56.693567
4199	https://www.wannasurf.com/spot/South_America/Argentina/North/Santa_Clara/index.html	Santa Clara del Mar	-37.844567	-57.501117
4200	https://www.wannasurf.com/spot/South_America/Argentina/North/teresa_beach/index.html	Santa Teresita	NaN	NaN
4201	https://www.wannasurf.com/spot/South_America/Argentina/North/Sun_rider/index.html	Sun rider	-37.956783	-57.538167
4202	https://www.wannasurf.com/spot/South_America/Argentina/North/Tamarindo__Playa_Serena/index.html	Tamarindo, Playa Serena	-38.10735	-57.572967
4204	https://www.wannasurf.com/spot/South_America/Argentina/North/Villa_Gesell/index.html	Villa Gesell	-37.256	-56.962517
4205	https://www.wannasurf.com/spot/South_America/Argentina/North/waikiki/index.html	Waikiki	-38.081267	-57.536433
4206	https://www.wannasurf.com/spot/South_America/Argentina/North/waimea/index.html	Waimea	NaN	NaN
4207	https://www.wannasurf.com/spot/South_America/Argentina/South/bajada_de_los_palitos/index.html	Bajada de los Palitos	NaN	NaN
4208	https://www.wannasurf.com/spot/South_America/Argentina/South/Bariloche/index.html	Bariloche	NaN	NaN
4209	https://www.wannasurf.com/spot/South_America/Argentina/South/cabo_raso/index.html	Cabo Raso	-44.341533	-65.2478
4210	https://www.wannasurf.com/spot/South_America/Argentina/South/Espigon/index.html	Espigon	-41.11995	-63.00945
4211	https://www.wannasurf.com/spot/South_America/Argentina/South/falkland_islands/index.html	Falkland Islands	-51.692983	-57.7771
4212	https://www.wannasurf.com/spot/South_America/Argentina/South/La_Perla/index.html	La Perla	-37.986333	-57.542783
4213	https://www.wannasurf.com/spot/South_America/Argentina/South/LAGO_FAGNANO_-_TOLHUIN_-_TIERRA_DEL_FUEGO/index.html	LAGO FAGNANO - TOLHUIN - TIERRA DEL FUEGO	-54.584567	-67.343283
4214	https://www.wannasurf.com/spot/South_America/Argentina/South/monte_hermoso/index.html	Monte hermoso	NaN	NaN
4215	https://www.wannasurf.com/spot/South_America/Argentina/South/Picoto/index.html	Picoto	-41.06175	-62.848667
4216	https://www.wannasurf.com/spot/South_America/Argentina/South/playa_union/index.html	Playa Unión	-43.330167	-65.050733
4217	https://www.wannasurf.com/spot/South_America/Argentina/South/rada_tilly/index.html	Rada Tilly	-45.929783	-67.5515
4220	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/El_Canon/index.html	El Canon	-2.712617	-85.1001
4221	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/El_Faro/index.html	El Faro	-0.95885	-90.982167
4222	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/Fernandina/index.html	Fernandina	NaN	NaN
4223	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/la_loberia/index.html	La Loberia	-0.928633	-89.61245
4224	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/galopagos_islands_-_la_perdida/index.html	la perdida	NaN	NaN
4225	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/stitches_santa_cruz_galapagos/index.html	Stitches Santa Cruz	NaN	NaN
4226	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/suicidio/index.html	suicidio	NaN	NaN
4227	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/tongo_reef/index.html	Tongo Reef	-0.91	-89.627767
4228	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/Tortuga_Bay/index.html	Tortuga Bay	-0.76335	-90.33285
1	https://www.wannasurf.com/spot/Europe/Ireland/North_West/ballyheirnan_bay/index.html	Ballyheirnan Bay	55.248983	-7.702783
3	https://www.wannasurf.com/spot/Europe/Ireland/North_West/Black_spot/index.html	Black spot	54.476383	-8.32195
72	https://www.wannasurf.com/spot/Europe/Ireland/West/Keel_beach/index.html	Keel beach	53.971383	-10.06185
125	https://www.wannasurf.com/spot/South_America/Chile/Tarapaca/toro_viejo/index.html	El Toro viejo	-18.479633	-70.3341
389	https://www.wannasurf.com/spot/North_America/USA/North_West/Oregon_Central/index.html	Oregon Central	NaN	NaN
176	https://www.wannasurf.com/spot/South_America/Chile/Central_Santiago/punta_quelen/index.html	Punta Quelen	-32.111483	-71.520567
214	https://www.wannasurf.com/spot/Asia/Philippines/Luzon/baler/index.html	Baler	15.753933	121.567833
393	https://www.wannasurf.com/spot/North_America/USA/North_East/Northern_New_England/index.html	Northern New England	NaN	NaN
395	https://www.wannasurf.com/spot/North_America/USA/North_East/Virginia/index.html	Delaware, Virginia, Maryland	NaN	NaN
473	https://www.wannasurf.com/spot/Asia/Japan/Izu_Islands/hachijojima_-_santos/index.html	Hachijojima - Santos	NaN	NaN
535	https://www.wannasurf.com/spot/Asia/Japan/Shikoku/tanoura/index.html	Tanoura	NaN	NaN
795	https://www.wannasurf.com/spot/Central_America/Mexico/Oaxaca-Chiapas/zipolite/index.html	Zipolite	15.658	-96.526217
1114	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/maspalomas/index.html	Maspalomas	27.735	-15.5982
1121	https://www.wannasurf.com/spot/Europe/Canary/Gran_Canaria/playa_la_laja/index.html	Playa la laja	28.05765	-15.417983
1151	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Cofete_beach/index.html	Cofete beach	28.111883	-14.389883
1173	https://www.wannasurf.com/spot/Europe/Canary/Fuerte_Ventura/Puerto_del_Rosario/index.html	Puerto del Rosario	28.475033	-13.865983
1227	https://www.wannasurf.com/spot/Europe/Canary/Outer_Isles/la_zamora/index.html	La zamora	28.515033	-17.875667
1351	https://www.wannasurf.com/spot/South_America/Peru/South/Ilo-_Moquegua/index.html	Ilo- Moquegua	NaN	NaN
1504	https://www.wannasurf.com/spot/Europe/Italy/Mainland/Laiguelia/index.html	Laiguelia	43.982883	8.1604
1770	https://www.wannasurf.com/spot/Europe/France/Brittany_South/Penhors/index.html	Penhors	47.938617	-4.4008
1854	https://www.wannasurf.com/spot/Europe/France/Gironde/Dune_du_Pyla/index.html	Dune du Pyla	44.5815	-1.218117
1992	https://www.wannasurf.com/spot/Europe/France/Mediterranean/mejean/index.html	Méjean	NaN	NaN
2015	https://www.wannasurf.com/spot/Europe/France/Corsica/capo_di_feno/index.html	capo di feno	41.935617	8.6198
2055	https://www.wannasurf.com/spot/North_America/Canada/West_Coast/china_beach/index.html	China Beach	48.433433	-124.093583
2046	https://www.wannasurf.com/spot/North_America/Canada/Great_Lakes/Patterson_Park/index.html	Patterson Park	NaN	NaN
2307	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/Cabrera/index.html	Cabrera	41.5069	2.40515
2322	https://www.wannasurf.com/spot/Europe/Spain/Mediterranean/el_socorro/index.html	El Socorro	NaN	NaN
2832	https://www.wannasurf.com/spot/Africa/South_Africa/South_East_Port_Elizabeth/Sandcastles/index.html	Sandcastles	-33.35995	27.370033
2863	https://www.wannasurf.com/spot/Africa/South_Africa/Wild_Coast/coffee_bay_beach_point/index.html	Coffee Bay point	-31.987	29.155533
2996	https://www.wannasurf.com/spot/Africa/Seychelles/Pralin/Anse_Georgette/index.html	Anse Georgette	NaN	NaN
3081	https://www.wannasurf.com/spot/South_America/Brazil/Ceara/volta_da_jurema/index.html	Volta da Jurema	NaN	NaN
3184	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_Norte/Dunas_do_Peró_-_Cabo_Frio_-RJ/index.html	Dunas do Peró - Cabo Frio -RJ	-22.842633	-41.981333
3212	https://www.wannasurf.com/spot/South_America/Brazil/Rio_de_Janeiro_City/Farorinha_/index.html	Farorinha 	-23.033833	-43.470983
3438	https://www.wannasurf.com/spot/South_America/Brazil/Santa_Catarina/Secret_Farol/index.html	Secret Farol	NaN	NaN
3458	https://www.wannasurf.com/spot/South_America/Brazil/Rio_Grande_do_Sul/Oasis_Sul/index.html	Oasis Sul	-30.039817	-50.147267
3471	https://www.wannasurf.com/spot/Asia/India/Kerala/Boar_rice/index.html	Boar rice	8.716783	76.70655
3476	https://www.wannasurf.com/spot/Asia/India/Kerala/Minicoy_pier/index.html	Minicoy pier	8.288567	73.067917
3782	https://www.wannasurf.com/spot/Europe/Portugal/Algarve/Praia_do_Bordeira/index.html	Praia do Bordeira	37.200867	-8.903383
4041	https://www.wannasurf.com/spot/Europe/UK/South_Wales/freshwater_west/index.html	Freshwater West	NaN	NaN
4219	https://www.wannasurf.com/spot/South_America/Ecuador/Galapagos_Islands/carola/index.html	Carola	-0.8905	-89.614383
\.


--
-- Name: surf_spots_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.surf_spots_id_seq', 4228, true);


--
-- Name: surf_spots surf_spots_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.surf_spots
    ADD CONSTRAINT surf_spots_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--


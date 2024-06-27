--
-- PostgreSQL database dump
--

-- Dumped from database version 13.10 (Debian 13.10-0+deb11u1)
-- Dumped by pg_dump version 13.10 (Debian 13.10-0+deb11u1)

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

--
-- Name: lab03; Type: SCHEMA; Schema: -; Owner: g315_chapaitis
--

CREATE SCHEMA lab03;


ALTER SCHEMA lab03 OWNER TO g315_chapaitis;

--
-- Name: lab04; Type: SCHEMA; Schema: -; Owner: g315_chapaitis
--

CREATE SCHEMA lab04;


ALTER SCHEMA lab04 OWNER TO g315_chapaitis;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: employees; Type: TABLE; Schema: lab04; Owner: g315_chapaitis
--

CREATE TABLE lab04.employees (
    id integer NOT NULL,
    lname character varying(50),
    fname character varying(50),
    mname character varying(50)
);


ALTER TABLE lab04.employees OWNER TO g315_chapaitis;

--
-- Name: installs; Type: TABLE; Schema: lab04; Owner: g315_chapaitis
--

CREATE TABLE lab04.installs (
    pc_id integer,
    soft_id integer
);


ALTER TABLE lab04.installs OWNER TO g315_chapaitis;

--
-- Name: pcs; Type: TABLE; Schema: lab04; Owner: g315_chapaitis
--

CREATE TABLE lab04.pcs (
    id integer NOT NULL,
    room_id integer,
    note character varying(100),
    ip_addr character varying(15),
    mac_addr character varying(17)
);


ALTER TABLE lab04.pcs OWNER TO g315_chapaitis;

--
-- Name: rooms; Type: TABLE; Schema: lab04; Owner: g315_chapaitis
--

CREATE TABLE lab04.rooms (
    id integer NOT NULL,
    num integer,
    emp_id integer
);


ALTER TABLE lab04.rooms OWNER TO g315_chapaitis;

--
-- Name: soft; Type: TABLE; Schema: lab04; Owner: g315_chapaitis
--

CREATE TABLE lab04.soft (
    id integer NOT NULL,
    sname character varying(50),
    ver character varying(50),
    quant character varying(50)
);


ALTER TABLE lab04.soft OWNER TO g315_chapaitis;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: lab04; Owner: g315_chapaitis
--

COPY lab04.employees (id, lname, fname, mname) FROM stdin;
1	Anisimov	Omega	Andreevich
2	Anisimov	Oleg	Andreevich
3	Anisimova	Helga	Andreevna
4	Baron	Vladik	Vladimirovoch
5	Bobsov	Bobs	Bobsikovich
6	Kickigin	Rostis	Alecksevich
7	Musay	Yahya	Ruslanovich
8	Rusiy	Alpha	Omegovich
9	Java	Dmitry	Vladimirovich
10	Basik	Maria	Olegovna
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: lab04; Owner: g315_chapaitis
--

COPY lab04.installs (pc_id, soft_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
1	2
2	3
3	4
4	5
5	2
6	3
7	4
8	5
9	2
10	3
11	4
12	5
13	2
14	3
15	4
16	5
17	2
18	3
19	4
20	5
21	2
22	3
23	4
24	5
25	2
26	3
27	4
28	5
29	2
30	3
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: lab04; Owner: g315_chapaitis
--

COPY lab04.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
1	1		118.137.15.244	52.2A.DB.51.A8.CD
2	2		118.137.15.245	52.3A.DB.51.A8.CD
3	3		118.137.15.246	52.4A.DB.51.A8.CD
4	4		118.137.15.247	52.5A.DB.51.A8.CD
5	5		118.137.15.248	52.6A.DB.51.A8.CD
6	6	Broken	118.137.15.249	52.7A.DB.51.A8.CD
7	7		118.137.15.250	52.8A.DB.51.A8.CD
8	8		118.137.15.251	52.9A.DB.51.A8.CD
9	9		118.137.15.252	52.2A.DB.61.A8.CD
10	10		118.137.15.253	52.2A.DB.71.A8.CD
11	11		118.137.15.254	52.2A.DB.81.A8.CD
12	12		118.137.15.255	52.2A.DB.91.A8.CD
13	13		118.137.15.256	52.2A.DB.51.A8.CD
14	14		118.137.15.257	52.2A.DB.52.A8.CD
15	15	new user	118.137.15.258	52.2A.DB.53.A8.CD
16	1		118.137.15.259	52.2A.DB.54.A8.CD
17	2		118.137.15.260	52.2A.DB.55.A8.CD
18	3		118.137.15.261	52.2A.DB.56.A8.CD
19	4		118.137.15.262	52.2A.DB.57.A8.CD
20	5		118.137.15.263	52.2A.DB.58.A8.CD
21	6	to sell	118.137.15.264	52.2A.DB.59.A8.CD
22	7		118.137.15.265	52.2A.DB.51.A1.CD
23	8		118.137.15.266	52.2A.DB.51.A2.CD
24	9		118.137.15.267	52.2A.DB.51.A3.CD
25	10		118.137.15.268	52.2A.DB.51.A4.CD
26	11		118.137.15.269	52.2A.DB.51.A5.CD
27	12		118.137.15.270	52.2A.DB.51.A6.CD
28	13		118.137.15.271	52.2A.DB.51.A7.CD
29	14		118.137.15.272	52.2A.DB.51.A9.CD
30	15		118.137.15.273	52.2A.DB.51.A8.SD
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: lab04; Owner: g315_chapaitis
--

COPY lab04.rooms (id, num, emp_id) FROM stdin;
1	101	1
2	102	2
3	103	3
4	104	4
5	105	5
6	106	6
7	107	7
8	108	8
9	109	9
10	110	10
11	111	1
12	112	2
13	113	3
14	114	4
15	115	5
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: lab04; Owner: g315_chapaitis
--

COPY lab04.soft (id, sname, ver, quant) FROM stdin;
1	MSAccess	2.19.07	200
2	MSExcel	5.01.02	400
3	MSWord	6.05.4	400
4	TLauncher	1.20.2	1000
5	OutLook	2.19.07	500
\.


--
-- Name: employees pk_employee_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.employees
    ADD CONSTRAINT pk_employee_id PRIMARY KEY (id);


--
-- Name: pcs pk_pc_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.pcs
    ADD CONSTRAINT pk_pc_id PRIMARY KEY (id);


--
-- Name: rooms pk_room_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.rooms
    ADD CONSTRAINT pk_room_id PRIMARY KEY (id);


--
-- Name: soft pk_soft_id; Type: CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.soft
    ADD CONSTRAINT pk_soft_id PRIMARY KEY (id);


--
-- Name: installs fk_inst_pc_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.installs
    ADD CONSTRAINT fk_inst_pc_id FOREIGN KEY (pc_id) REFERENCES lab04.pcs(id);


--
-- Name: pcs fk_inst_room_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.pcs
    ADD CONSTRAINT fk_inst_room_id FOREIGN KEY (room_id) REFERENCES lab04.rooms(id);


--
-- Name: installs fk_inst_soft_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.installs
    ADD CONSTRAINT fk_inst_soft_id FOREIGN KEY (soft_id) REFERENCES lab04.soft(id);


--
-- Name: rooms fk_rooms_emp_id; Type: FK CONSTRAINT; Schema: lab04; Owner: g315_chapaitis
--

ALTER TABLE ONLY lab04.rooms
    ADD CONSTRAINT fk_rooms_emp_id FOREIGN KEY (emp_id) REFERENCES lab04.employees(id);


--
-- PostgreSQL database dump complete
--


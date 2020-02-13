--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;


CREATE TABLE public.tbl_customer (
    customerid integer NOT NULL,
    customername character varying(18) DEFAULT NULL::character varying,
    gender character varying(6) DEFAULT NULL::character varying,
    address character varying(29) DEFAULT NULL::character varying,
    city character varying(22) DEFAULT NULL::character varying,
    postalcode character varying(10) DEFAULT NULL::character varying,
    country character varying(14) DEFAULT NULL::character VARYING
);


--ALTER TABLE public.tbl_customer OWNER TO rebasedata;

--
-- Data for Name: _tbl_customer; Type: TABLE DATA; Schema: public; Owner: rebasedata
--

INSERT INTO public.tbl_customer (customerid, customername, gender, address, city, postalcode, country) VALUES
(1, 'Maria Anders', 'Female', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo', 'Female', 'Avda. de la Construction 2222', 'Mexico D.F.', '5021', 'Mexico'),
(3, 'Antonio Moreno', 'Male', 'Mataderos 2312', 'Mexico D.F.', '5023', 'Mexico'),
(4, 'Thomas Hardy', 'Male', '120 Hanover Sq.', 'London', 'WA1 1DP', 'United Kingdom'),
(5, 'Paula Parente', 'Female', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(6, 'Wolski Zbyszek', 'Male', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland'),
(7, 'Matti Karttunen', 'Male', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(8, 'Karl Jablonski', 'Male', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'United States'),
(9, 'Paula Parente', 'Female', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(10, 'John Koskitalo', 'Male', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
(39, 'Ann Devon', 'Female', '35 King George', 'London', 'WX3 6FW', 'United Kingdom'),
(38, 'Janine Labrune', 'Female', '67, rue des Cinquante Otages', 'Nantes', '44000', 'Finland'),
(37, 'Kathryn Segal', 'Female', 'Augsburger Strabe 40', 'Ludenscheid Gevelndorf', '58513', 'Germany'),
(36, 'Elizabeth Brown', 'Female', 'Berkeley Gardens 12 Brewery', 'London', 'WX1 6LT', 'United Kingdom'),
(30, 'Trina Davidson', 'Female', '1049 Lockhart Drive', 'Barrie', 'ON L4M 3B1', 'Canada'),
(31, 'Jeff Putnam', 'Male', 'Industrieweg 56', 'Bouvignies', '7803', 'Belgium'),
(32, 'Joyce Rosenberry', 'Female', 'Norra Esplanaden 56', 'HELSINKI', '380', 'Finland'),
(33, 'Ronald Bowne', 'Male', '2343 Shadowmar Drive', 'New Orleans', '70112', 'United States'),
(34, 'Justin Adams', 'Male', '45, rue de Lille', 'ARMENTIERES', '59280', 'France'),
(35, 'Pedro Afonso', 'Male', 'Av. dos Lusiadas, 23', 'Sao Paulo', '05432-043', 'Brazil'),
(100, 'Kathryn Segal', 'Female', 'Augsburger Strabe 40', 'Ludenscheid Gevelndorf', '58513', 'Germany'),
(101, 'Tonia Sayre', 'Female', '84 Haslemere Road', 'ECHT', 'AB32 2DY', 'United Kingdom'),
(102, 'Loretta Harris', 'Female', 'Avenida Boavista 71', 'SANTO AMARO', '4920-111', 'Portugal'),
(103, 'Sean Wong', 'Male', 'Rua Vito Bovino, 240', 'Sao Paulo-SP', '04677-002', 'Brazil'),
(104, 'Frederick Sears', 'Male', 'ul. Marysiuska 64', 'Warszawa', '04-617', 'Poland'),
(105, 'Tammy Cantrell', 'Female', 'Lukiokatu 34', 'HAMEENLINNA', '13250', 'Finland'),
(106, 'Megan Kennedy', 'Female', '1210 Post Farm Road', 'Norcross', '30071', 'United States'),
(107, 'Maria Whittaker', 'Female', 'Spresstrasse 62', 'Bielefeld Milse', '33729', 'Germany'),
(108, 'Dorothy Parker', 'Female', '32 Lairg Road', 'NEWCHURCH', 'HR5 5DR', 'United Kingdom'),
(109, 'Roger Rudolph', 'Male', 'Avenida Julio Saul Dias 78', 'PENAFIEL', '4560-470', 'Portugal'),
(110, 'Karen Metivier', 'Female', 'Rua Guimaraes Passos, 556', 'Sao Luis-MA', '65025-450', 'Brazil'),
(111, 'Charles Hoover', 'Male', 'Al. Tysiaclecia 98', 'Warszawa', '03-851', 'Poland'),
(112, 'Becky Moss', 'Female', 'Laivurinkatu 6', 'MIKKELI', '50120', 'Finland'),
(113, 'Frank Kidd', 'Male', '2491 Carson Street', 'Cincinnati', 'KY 45202', 'United States'),
(114, 'Donna Wilson', 'Female', 'Hallesches Ufer 69', 'Dettingen', '73265', 'Germany'),
(115, 'Lillian Roberson', 'Female', '36 Iolaire Road', 'NEW BARN', 'DA3 3FT', 'United Kingdom'),
(144, 'Stephen M. Menzies', 'Male', '577 Hartway Street', 'Bruie', '57325', 'United States'),
(143, 'Nikki G. Pascual', 'Female', '4291 Kinney Street', 'Agawam', '1001', 'United States'),
(141, 'Alpha A. Brookover', 'Female', '3542 Trainer Avenue', 'Kilbourne', '62655', 'United States'),
(142, 'Austin D. Salem', 'Male', '1184 Farland Street', 'Brockton', '2401', 'United States'),
(140, 'Bianca A. Carone', 'Female', '1777 Elkview Drive', 'Hialeah', '33012', 'United States'),
(139, 'Stephen M. Menzies', 'Male', '577 Hartway Street', 'Bruie', '57325', 'United States'),
(138, 'Nikki G. Pascual', 'Female', '4291 Kinney Street', 'Agawam', '1001', 'United States'),
(136, 'Alpha A. Brookover', 'Female', '3542 Trainer Avenue', 'Kilbourne', '62655', 'United States'),
(137, 'Austin D. Salem', 'Male', '1184 Farland Street', 'Brockton', '2401', 'United States'),
(145, 'Bianca A. Carone', 'Female', '1777 Elkview Drive', 'Hialeah', '33012', 'United States');

ALTER TABLE public.tbl_customer
  ADD PRIMARY KEY (customerid);
  
-- ALTER TABLE public.tbl_customer ADD COLUMN customerid SERIAL PRIMARY KEY;


\.


--
-- PostgreSQL database dump complete
--

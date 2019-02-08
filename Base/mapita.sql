--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: marcador; Type: TABLE; Schema: public; Owner: ricardo
--

CREATE TABLE marcador (
    idmarcador integer NOT NULL,
    descripcion text NOT NULL,
    latitud double precision NOT NULL,
    longitud double precision NOT NULL,
    idusuario integer NOT NULL
);


ALTER TABLE marcador OWNER TO ricardo;

--
-- Name: marcador_idmarcador_seq; Type: SEQUENCE; Schema: public; Owner: ricardo
--

CREATE SEQUENCE marcador_idmarcador_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE marcador_idmarcador_seq OWNER TO ricardo;

--
-- Name: marcador_idmarcador_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ricardo
--

ALTER SEQUENCE marcador_idmarcador_seq OWNED BY marcador.idmarcador;


--
-- Name: marcador_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: ricardo
--

CREATE SEQUENCE marcador_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE marcador_idusuario_seq OWNER TO ricardo;

--
-- Name: marcador_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ricardo
--

ALTER SEQUENCE marcador_idusuario_seq OWNED BY marcador.idusuario;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: ricardo
--

CREATE TABLE usuario (
    idusuario integer NOT NULL,
    nombre text NOT NULL,
    correo text NOT NULL,
    contrasenia text NOT NULL,
    fecha_nacimiento date NOT NULL
);


ALTER TABLE usuario OWNER TO ricardo;

--
-- Name: usuario_idusuario_seq; Type: SEQUENCE; Schema: public; Owner: ricardo
--

CREATE SEQUENCE usuario_idusuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_idusuario_seq OWNER TO ricardo;

--
-- Name: usuario_idusuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ricardo
--

ALTER SEQUENCE usuario_idusuario_seq OWNED BY usuario.idusuario;


--
-- Name: marcador idmarcador; Type: DEFAULT; Schema: public; Owner: ricardo
--

ALTER TABLE ONLY marcador ALTER COLUMN idmarcador SET DEFAULT nextval('marcador_idmarcador_seq'::regclass);


--
-- Name: marcador idusuario; Type: DEFAULT; Schema: public; Owner: ricardo
--

ALTER TABLE ONLY marcador ALTER COLUMN idusuario SET DEFAULT nextval('marcador_idusuario_seq'::regclass);


--
-- Name: usuario idusuario; Type: DEFAULT; Schema: public; Owner: ricardo
--

ALTER TABLE ONLY usuario ALTER COLUMN idusuario SET DEFAULT nextval('usuario_idusuario_seq'::regclass);


--
-- Data for Name: marcador; Type: TABLE DATA; Schema: public; Owner: ricardo
--

COPY marcador (idmarcador, descripcion, latitud, longitud, idusuario) FROM stdin;
\.


--
-- Name: marcador_idmarcador_seq; Type: SEQUENCE SET; Schema: public; Owner: ricardo
--

SELECT pg_catalog.setval('marcador_idmarcador_seq', 1, false);


--
-- Name: marcador_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: ricardo
--

SELECT pg_catalog.setval('marcador_idusuario_seq', 1, false);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: ricardo
--

COPY usuario (idusuario, nombre, correo, contrasenia, fecha_nacimiento) FROM stdin;
1	Ricardo	meh@gmail.com	meh232	1995-06-24
2	Recardo	msdaeh@gmail.com	meh2fds32	1995-06-29
\.


--
-- Name: usuario_idusuario_seq; Type: SEQUENCE SET; Schema: public; Owner: ricardo
--

SELECT pg_catalog.setval('usuario_idusuario_seq', 2, true);


--
-- Name: marcador marcador_pkey; Type: CONSTRAINT; Schema: public; Owner: ricardo
--

ALTER TABLE ONLY marcador
    ADD CONSTRAINT marcador_pkey PRIMARY KEY (idmarcador);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: ricardo
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);


--
-- Name: marcador marcador_idusuario_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ricardo
--

ALTER TABLE ONLY marcador
    ADD CONSTRAINT marcador_idusuario_fkey FOREIGN KEY (idusuario) REFERENCES usuario(idusuario);


--
-- PostgreSQL database dump complete
--


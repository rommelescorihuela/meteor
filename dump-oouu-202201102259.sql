--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-0ubuntu0.20.04.1)

-- Started on 2022-01-10 22:59:59 -04

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3457 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 202 (class 1259 OID 16385)
-- Name: article; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article (
    id integer NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(512) NOT NULL,
    body text NOT NULL,
    view character varying(255),
    category_id integer,
    thumbnail_base_url character varying(1024),
    thumbnail_path character varying(1024),
    status smallint DEFAULT 0 NOT NULL,
    created_by integer,
    updated_by integer,
    published_at integer,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.article OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16392)
-- Name: article_attachment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_attachment (
    id integer NOT NULL,
    article_id integer NOT NULL,
    path character varying(255) NOT NULL,
    base_url character varying(255),
    type character varying(255),
    size integer,
    name character varying(255),
    created_at integer,
    "order" integer
);


ALTER TABLE public.article_attachment OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16398)
-- Name: article_attachment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_attachment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_attachment_id_seq OWNER TO postgres;

--
-- TOC entry 3458 (class 0 OID 0)
-- Dependencies: 204
-- Name: article_attachment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_attachment_id_seq OWNED BY public.article_attachment.id;


--
-- TOC entry 205 (class 1259 OID 16400)
-- Name: article_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_category (
    id integer NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(512) NOT NULL,
    body text,
    parent_id integer,
    status smallint DEFAULT 0 NOT NULL,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.article_category OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16407)
-- Name: article_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_category_id_seq OWNER TO postgres;

--
-- TOC entry 3459 (class 0 OID 0)
-- Dependencies: 206
-- Name: article_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_category_id_seq OWNED BY public.article_category.id;


--
-- TOC entry 207 (class 1259 OID 16409)
-- Name: article_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.article_id_seq OWNER TO postgres;

--
-- TOC entry 3460 (class 0 OID 0)
-- Dependencies: 207
-- Name: article_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_id_seq OWNED BY public.article.id;


--
-- TOC entry 208 (class 1259 OID 16411)
-- Name: datos_juridicos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datos_juridicos (
    estado_oficina integer,
    oficina_registro character varying,
    numero character varying,
    folio character varying,
    tomo character varying,
    fecha date,
    rif character varying,
    nit character varying,
    iddatosorganizacion integer,
    id integer NOT NULL,
    password character varying
);


ALTER TABLE public.datos_juridicos OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16417)
-- Name: datos_juridicos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.datos_juridicos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_juridicos_id_seq OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 209
-- Name: datos_juridicos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.datos_juridicos_id_seq OWNED BY public.datos_juridicos.id;


--
-- TOC entry 210 (class 1259 OID 16419)
-- Name: datos_organizacion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datos_organizacion (
    nombre_o1 character varying,
    nombre_o2 character varying,
    nombre_o3 character varying,
    funcionario character varying,
    fecha_registro date,
    direccion character varying,
    id_direccion integer,
    n_integrantes integer,
    observaciones character varying,
    servicios character varying,
    idtiposolicitud integer,
    idparroquia integer,
    idservicios integer,
    id_user integer,
    id integer NOT NULL
);


ALTER TABLE public.datos_organizacion OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16425)
-- Name: datos_organizacion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.datos_organizacion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_organizacion_id_seq OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 211
-- Name: datos_organizacion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.datos_organizacion_id_seq OWNED BY public.datos_organizacion.id;


--
-- TOC entry 212 (class 1259 OID 16427)
-- Name: datos_personales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.datos_personales (
    nombre character varying,
    apellido character varying,
    cedula integer,
    profesion_oficio character varying,
    telefono1 character varying,
    telefono2 character varying,
    telefono3 character varying,
    correo character varying,
    representante integer,
    integrante integer,
    id_organizacion integer,
    id integer NOT NULL,
    password character varying
);


ALTER TABLE public.datos_personales OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16433)
-- Name: datos_personales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.datos_personales_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.datos_personales_id_seq OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 213
-- Name: datos_personales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.datos_personales_id_seq OWNED BY public.datos_personales.id;


--
-- TOC entry 214 (class 1259 OID 16435)
-- Name: documentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.documentos (
    documento character varying,
    id_organizacion integer,
    id integer NOT NULL,
    tamano integer,
    create_at integer,
    orden integer,
    tipo character varying,
    base_url character varying,
    path character varying
);


ALTER TABLE public.documentos OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16441)
-- Name: documentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.documentos_id_seq OWNER TO postgres;

--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 215
-- Name: documentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.documentos_id_seq OWNED BY public.documentos.id;


--
-- TOC entry 216 (class 1259 OID 16443)
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id integer NOT NULL,
    estado character varying
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16449)
-- Name: file_storage_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.file_storage_item (
    id integer NOT NULL,
    component character varying(255) NOT NULL,
    base_url character varying(1024) NOT NULL,
    path character varying(1024) NOT NULL,
    type character varying(255),
    size integer,
    name character varying(255),
    upload_ip character varying(45),
    created_at integer NOT NULL
);


ALTER TABLE public.file_storage_item OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16455)
-- Name: file_storage_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.file_storage_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.file_storage_item_id_seq OWNER TO postgres;

--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 218
-- Name: file_storage_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.file_storage_item_id_seq OWNED BY public.file_storage_item.id;


--
-- TOC entry 219 (class 1259 OID 16457)
-- Name: i18n_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_message (
    id integer NOT NULL,
    language character varying(16) NOT NULL,
    translation text
);


ALTER TABLE public.i18n_message OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16463)
-- Name: i18n_source_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.i18n_source_message (
    id integer NOT NULL,
    category character varying(32),
    message text
);


ALTER TABLE public.i18n_source_message OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16469)
-- Name: i18n_source_message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.i18n_source_message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_source_message_id_seq OWNER TO postgres;

--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 221
-- Name: i18n_source_message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.i18n_source_message_id_seq OWNED BY public.i18n_source_message.id;


--
-- TOC entry 222 (class 1259 OID 16471)
-- Name: key_storage_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.key_storage_item (
    key character varying(128) NOT NULL,
    value text NOT NULL,
    comment text,
    updated_at integer,
    created_at integer
);


ALTER TABLE public.key_storage_item OWNER TO postgres;

--
-- TOC entry 257 (class 1259 OID 16829)
-- Name: material_apoyo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.material_apoyo (
    id integer NOT NULL,
    nombre character varying NOT NULL,
    tipo character varying NOT NULL,
    id_taller integer NOT NULL
);


ALTER TABLE public.material_apoyo OWNER TO postgres;

--
-- TOC entry 258 (class 1259 OID 16832)
-- Name: material_apoyo_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.material_apoyo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.material_apoyo_id_seq OWNER TO postgres;

--
-- TOC entry 3467 (class 0 OID 0)
-- Dependencies: 258
-- Name: material_apoyo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.material_apoyo_id_seq OWNED BY public.material_apoyo.id;


--
-- TOC entry 223 (class 1259 OID 16477)
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    id integer NOT NULL,
    municipio character varying,
    idestado integer
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16483)
-- Name: page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.page (
    id integer NOT NULL,
    slug character varying(2048) NOT NULL,
    title character varying(512) NOT NULL,
    body text NOT NULL,
    view character varying(255),
    status smallint NOT NULL,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.page OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16489)
-- Name: page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.page_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.page_id_seq OWNER TO postgres;

--
-- TOC entry 3468 (class 0 OID 0)
-- Dependencies: 225
-- Name: page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.page_id_seq OWNED BY public.page.id;


--
-- TOC entry 226 (class 1259 OID 16491)
-- Name: parroquia; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.parroquia (
    id integer NOT NULL,
    parroquia character varying,
    idmunicipio integer
);


ALTER TABLE public.parroquia OWNER TO postgres;

--
-- TOC entry 263 (class 1259 OID 16887)
-- Name: preguntas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.preguntas (
    id integer NOT NULL,
    id_taller integer NOT NULL,
    pregunta character varying NOT NULL
);


ALTER TABLE public.preguntas OWNER TO postgres;

--
-- TOC entry 264 (class 1259 OID 16890)
-- Name: preguntas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.preguntas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.preguntas_id_seq OWNER TO postgres;

--
-- TOC entry 3469 (class 0 OID 0)
-- Dependencies: 264
-- Name: preguntas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.preguntas_id_seq OWNED BY public.preguntas.id;


--
-- TOC entry 227 (class 1259 OID 16497)
-- Name: rbac_auth_assignment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rbac_auth_assignment (
    item_name character varying(64) NOT NULL,
    user_id character varying(64) NOT NULL,
    created_at integer
);


ALTER TABLE public.rbac_auth_assignment OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16500)
-- Name: rbac_auth_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rbac_auth_item (
    name character varying(64) NOT NULL,
    type smallint NOT NULL,
    description text,
    rule_name character varying(64),
    data bytea,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.rbac_auth_item OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16506)
-- Name: rbac_auth_item_child; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rbac_auth_item_child (
    parent character varying(64) NOT NULL,
    child character varying(64) NOT NULL
);


ALTER TABLE public.rbac_auth_item_child OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 16509)
-- Name: rbac_auth_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rbac_auth_rule (
    name character varying(64) NOT NULL,
    data bytea,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.rbac_auth_rule OWNER TO postgres;

--
-- TOC entry 266 (class 1259 OID 16940)
-- Name: respuestas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.respuestas (
    id integer NOT NULL,
    id_pregunta integer NOT NULL,
    id_alumno integer,
    respuesta character varying NOT NULL,
    id_alumno_juridico integer
);


ALTER TABLE public.respuestas OWNER TO postgres;

--
-- TOC entry 265 (class 1259 OID 16938)
-- Name: respuestas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.respuestas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.respuestas_id_seq OWNER TO postgres;

--
-- TOC entry 3470 (class 0 OID 0)
-- Dependencies: 265
-- Name: respuestas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.respuestas_id_seq OWNED BY public.respuestas.id;


--
-- TOC entry 231 (class 1259 OID 16515)
-- Name: servicios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.servicios (
    servicio character varying,
    id integer NOT NULL
);


ALTER TABLE public.servicios OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16521)
-- Name: servicios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.servicios_id_seq OWNER TO postgres;

--
-- TOC entry 3471 (class 0 OID 0)
-- Dependencies: 232
-- Name: servicios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.servicios_id_seq OWNED BY public.servicios.id;


--
-- TOC entry 233 (class 1259 OID 16523)
-- Name: system_db_migration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_db_migration (
    version character varying(180) NOT NULL,
    apply_time integer
);


ALTER TABLE public.system_db_migration OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16526)
-- Name: system_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_log (
    id bigint NOT NULL,
    level integer,
    category character varying(255),
    log_time double precision,
    prefix text,
    message text
);


ALTER TABLE public.system_log OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16532)
-- Name: system_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.system_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.system_log_id_seq OWNER TO postgres;

--
-- TOC entry 3472 (class 0 OID 0)
-- Dependencies: 235
-- Name: system_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.system_log_id_seq OWNED BY public.system_log.id;


--
-- TOC entry 236 (class 1259 OID 16534)
-- Name: system_rbac_migration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.system_rbac_migration (
    version character varying(180) NOT NULL,
    apply_time integer
);


ALTER TABLE public.system_rbac_migration OWNER TO postgres;

--
-- TOC entry 255 (class 1259 OID 16815)
-- Name: taller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taller (
    id integer NOT NULL,
    nombre character varying
);


ALTER TABLE public.taller OWNER TO postgres;

--
-- TOC entry 256 (class 1259 OID 16818)
-- Name: taller_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.taller_id_seq OWNER TO postgres;

--
-- TOC entry 3473 (class 0 OID 0)
-- Dependencies: 256
-- Name: taller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taller_id_seq OWNED BY public.taller.id;


--
-- TOC entry 237 (class 1259 OID 16537)
-- Name: timeline_event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timeline_event (
    id integer NOT NULL,
    application character varying(64) NOT NULL,
    category character varying(64) NOT NULL,
    event character varying(64) NOT NULL,
    data text,
    created_at integer NOT NULL
);


ALTER TABLE public.timeline_event OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16543)
-- Name: timeline_event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timeline_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timeline_event_id_seq OWNER TO postgres;

--
-- TOC entry 3474 (class 0 OID 0)
-- Dependencies: 238
-- Name: timeline_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timeline_event_id_seq OWNED BY public.timeline_event.id;


--
-- TOC entry 239 (class 1259 OID 16545)
-- Name: tipo_solicitud; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo_solicitud (
    tipo character varying,
    id integer NOT NULL
);


ALTER TABLE public.tipo_solicitud OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 16551)
-- Name: tipo_solicitud_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_solicitud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_solicitud_id_seq OWNER TO postgres;

--
-- TOC entry 3475 (class 0 OID 0)
-- Dependencies: 240
-- Name: tipo_solicitud_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_solicitud_id_seq OWNED BY public.tipo_solicitud.id;


--
-- TOC entry 241 (class 1259 OID 16553)
-- Name: user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."user" (
    id integer NOT NULL,
    username character varying(32),
    auth_key character varying(32) NOT NULL,
    access_token character varying(40) NOT NULL,
    password_hash character varying(255) NOT NULL,
    oauth_client character varying(255),
    oauth_client_user_id character varying(255),
    email character varying(255) NOT NULL,
    status smallint DEFAULT 2 NOT NULL,
    created_at integer,
    updated_at integer,
    logged_at integer
);


ALTER TABLE public."user" OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 16560)
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_id_seq OWNER TO postgres;

--
-- TOC entry 3476 (class 0 OID 0)
-- Dependencies: 242
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- TOC entry 243 (class 1259 OID 16562)
-- Name: user_profile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_profile (
    user_id integer NOT NULL,
    firstname character varying(255),
    middlename character varying(255),
    lastname character varying(255),
    avatar_path character varying(255),
    avatar_base_url character varying(255),
    locale character varying(32) NOT NULL,
    gender smallint
);


ALTER TABLE public.user_profile OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 16568)
-- Name: user_profile_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_profile_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_profile_user_id_seq OWNER TO postgres;

--
-- TOC entry 3477 (class 0 OID 0)
-- Dependencies: 244
-- Name: user_profile_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_profile_user_id_seq OWNED BY public.user_profile.user_id;


--
-- TOC entry 245 (class 1259 OID 16570)
-- Name: user_token; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_token (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    token character varying(40) NOT NULL,
    expire_at integer,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.user_token OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 16573)
-- Name: user_token_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_token_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_token_id_seq OWNER TO postgres;

--
-- TOC entry 3478 (class 0 OID 0)
-- Dependencies: 246
-- Name: user_token_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_token_id_seq OWNED BY public.user_token.id;


--
-- TOC entry 262 (class 1259 OID 16880)
-- Name: usuario_material; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_material (
    id integer NOT NULL,
    id_alumno integer,
    id_material_apoyo integer NOT NULL,
    visto character varying NOT NULL,
    id_alumno_juridico integer
);


ALTER TABLE public.usuario_material OWNER TO postgres;

--
-- TOC entry 261 (class 1259 OID 16878)
-- Name: usuario_material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_material_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_material_id_seq OWNER TO postgres;

--
-- TOC entry 3479 (class 0 OID 0)
-- Dependencies: 261
-- Name: usuario_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_material_id_seq OWNED BY public.usuario_material.id;


--
-- TOC entry 259 (class 1259 OID 16848)
-- Name: usuario_taller; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario_taller (
    id integer NOT NULL,
    id_alumno integer,
    id_taller integer NOT NULL,
    visto character varying NOT NULL,
    token character varying NOT NULL,
    id_alumno_juridico integer
);


ALTER TABLE public.usuario_taller OWNER TO postgres;

--
-- TOC entry 260 (class 1259 OID 16851)
-- Name: usuario_taller_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_taller_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_taller_id_seq OWNER TO postgres;

--
-- TOC entry 3480 (class 0 OID 0)
-- Dependencies: 260
-- Name: usuario_taller_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_taller_id_seq OWNED BY public.usuario_taller.id;


--
-- TOC entry 247 (class 1259 OID 16575)
-- Name: widget_carousel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widget_carousel (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    status smallint DEFAULT 0
);


ALTER TABLE public.widget_carousel OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 16579)
-- Name: widget_carousel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.widget_carousel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.widget_carousel_id_seq OWNER TO postgres;

--
-- TOC entry 3481 (class 0 OID 0)
-- Dependencies: 248
-- Name: widget_carousel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.widget_carousel_id_seq OWNED BY public.widget_carousel.id;


--
-- TOC entry 249 (class 1259 OID 16581)
-- Name: widget_carousel_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widget_carousel_item (
    id integer NOT NULL,
    carousel_id integer NOT NULL,
    base_url character varying(1024),
    path character varying(1024),
    asset_url character varying(1024),
    type character varying(255),
    url character varying(1024),
    caption character varying(1024),
    status smallint DEFAULT 0 NOT NULL,
    "order" integer DEFAULT 0,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.widget_carousel_item OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 16589)
-- Name: widget_carousel_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.widget_carousel_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.widget_carousel_item_id_seq OWNER TO postgres;

--
-- TOC entry 3482 (class 0 OID 0)
-- Dependencies: 250
-- Name: widget_carousel_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.widget_carousel_item_id_seq OWNED BY public.widget_carousel_item.id;


--
-- TOC entry 251 (class 1259 OID 16591)
-- Name: widget_menu; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widget_menu (
    id integer NOT NULL,
    key character varying(32) NOT NULL,
    title character varying(255) NOT NULL,
    items text NOT NULL,
    status smallint DEFAULT 0 NOT NULL
);


ALTER TABLE public.widget_menu OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 16598)
-- Name: widget_menu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.widget_menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.widget_menu_id_seq OWNER TO postgres;

--
-- TOC entry 3483 (class 0 OID 0)
-- Dependencies: 252
-- Name: widget_menu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.widget_menu_id_seq OWNED BY public.widget_menu.id;


--
-- TOC entry 253 (class 1259 OID 16600)
-- Name: widget_text; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.widget_text (
    id integer NOT NULL,
    key character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    body text NOT NULL,
    status smallint,
    created_at integer,
    updated_at integer
);


ALTER TABLE public.widget_text OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 16606)
-- Name: widget_text_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.widget_text_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.widget_text_id_seq OWNER TO postgres;

--
-- TOC entry 3484 (class 0 OID 0)
-- Dependencies: 254
-- Name: widget_text_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.widget_text_id_seq OWNED BY public.widget_text.id;


--
-- TOC entry 3105 (class 2604 OID 16608)
-- Name: article id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article ALTER COLUMN id SET DEFAULT nextval('public.article_id_seq'::regclass);


--
-- TOC entry 3106 (class 2604 OID 16609)
-- Name: article_attachment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_attachment ALTER COLUMN id SET DEFAULT nextval('public.article_attachment_id_seq'::regclass);


--
-- TOC entry 3108 (class 2604 OID 16610)
-- Name: article_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_category ALTER COLUMN id SET DEFAULT nextval('public.article_category_id_seq'::regclass);


--
-- TOC entry 3109 (class 2604 OID 16611)
-- Name: datos_juridicos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_juridicos ALTER COLUMN id SET DEFAULT nextval('public.datos_juridicos_id_seq'::regclass);


--
-- TOC entry 3110 (class 2604 OID 16612)
-- Name: datos_organizacion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_organizacion ALTER COLUMN id SET DEFAULT nextval('public.datos_organizacion_id_seq'::regclass);


--
-- TOC entry 3111 (class 2604 OID 16613)
-- Name: datos_personales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_personales ALTER COLUMN id SET DEFAULT nextval('public.datos_personales_id_seq'::regclass);


--
-- TOC entry 3112 (class 2604 OID 16614)
-- Name: documentos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos ALTER COLUMN id SET DEFAULT nextval('public.documentos_id_seq'::regclass);


--
-- TOC entry 3113 (class 2604 OID 16615)
-- Name: file_storage_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_storage_item ALTER COLUMN id SET DEFAULT nextval('public.file_storage_item_id_seq'::regclass);


--
-- TOC entry 3114 (class 2604 OID 16616)
-- Name: i18n_source_message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_source_message ALTER COLUMN id SET DEFAULT nextval('public.i18n_source_message_id_seq'::regclass);


--
-- TOC entry 3133 (class 2604 OID 16834)
-- Name: material_apoyo id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_apoyo ALTER COLUMN id SET DEFAULT nextval('public.material_apoyo_id_seq'::regclass);


--
-- TOC entry 3115 (class 2604 OID 16617)
-- Name: page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.page ALTER COLUMN id SET DEFAULT nextval('public.page_id_seq'::regclass);


--
-- TOC entry 3136 (class 2604 OID 16892)
-- Name: preguntas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas ALTER COLUMN id SET DEFAULT nextval('public.preguntas_id_seq'::regclass);


--
-- TOC entry 3137 (class 2604 OID 16943)
-- Name: respuestas id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas ALTER COLUMN id SET DEFAULT nextval('public.respuestas_id_seq'::regclass);


--
-- TOC entry 3116 (class 2604 OID 16618)
-- Name: servicios id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios ALTER COLUMN id SET DEFAULT nextval('public.servicios_id_seq'::regclass);


--
-- TOC entry 3117 (class 2604 OID 16619)
-- Name: system_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_log ALTER COLUMN id SET DEFAULT nextval('public.system_log_id_seq'::regclass);


--
-- TOC entry 3132 (class 2604 OID 16820)
-- Name: taller id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taller ALTER COLUMN id SET DEFAULT nextval('public.taller_id_seq'::regclass);


--
-- TOC entry 3118 (class 2604 OID 16620)
-- Name: timeline_event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeline_event ALTER COLUMN id SET DEFAULT nextval('public.timeline_event_id_seq'::regclass);


--
-- TOC entry 3119 (class 2604 OID 16621)
-- Name: tipo_solicitud id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_solicitud ALTER COLUMN id SET DEFAULT nextval('public.tipo_solicitud_id_seq'::regclass);


--
-- TOC entry 3121 (class 2604 OID 16622)
-- Name: user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- TOC entry 3122 (class 2604 OID 16623)
-- Name: user_profile user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_profile ALTER COLUMN user_id SET DEFAULT nextval('public.user_profile_user_id_seq'::regclass);


--
-- TOC entry 3123 (class 2604 OID 16624)
-- Name: user_token id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_token ALTER COLUMN id SET DEFAULT nextval('public.user_token_id_seq'::regclass);


--
-- TOC entry 3135 (class 2604 OID 16883)
-- Name: usuario_material id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_material ALTER COLUMN id SET DEFAULT nextval('public.usuario_material_id_seq'::regclass);


--
-- TOC entry 3134 (class 2604 OID 16853)
-- Name: usuario_taller id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_taller ALTER COLUMN id SET DEFAULT nextval('public.usuario_taller_id_seq'::regclass);


--
-- TOC entry 3125 (class 2604 OID 16625)
-- Name: widget_carousel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_carousel ALTER COLUMN id SET DEFAULT nextval('public.widget_carousel_id_seq'::regclass);


--
-- TOC entry 3128 (class 2604 OID 16626)
-- Name: widget_carousel_item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_carousel_item ALTER COLUMN id SET DEFAULT nextval('public.widget_carousel_item_id_seq'::regclass);


--
-- TOC entry 3130 (class 2604 OID 16627)
-- Name: widget_menu id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_menu ALTER COLUMN id SET DEFAULT nextval('public.widget_menu_id_seq'::regclass);


--
-- TOC entry 3131 (class 2604 OID 16628)
-- Name: widget_text id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_text ALTER COLUMN id SET DEFAULT nextval('public.widget_text_id_seq'::regclass);


--
-- TOC entry 3387 (class 0 OID 16385)
-- Dependencies: 202
-- Data for Name: article; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.article VALUES (1, 'articulo-prueba', 'articulo de prueba', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac facilisis est. Quisque condimentum ex et tortor viverra, in elementum arcu tincidunt. Phasellus eget ante at nunc dignissim rutrum quis vel justo. Vestibulum vel nulla sit amet magna interdum accumsan vitae vitae dolor. Curabitur eu elementum mauris. Praesent bibendum est non rutrum dignissim. Proin convallis felis ut enim lacinia, quis suscipit elit tempus. Integer cursus nulla quis mi malesuada egestas. Sed sit amet aliquet metus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed lectus id diam fermentum luctus euismod quis erat. Morbi porta ultrices eros at ullamcorper.</p><p>Morbi laoreet est ac ligula mollis tincidunt. Aenean nec felis velit. Sed tempus dolor eu rutrum tincidunt. Praesent tincidunt massa quis lacus ultrices tristique. Proin ac orci eleifend, imperdiet nulla ac, hendrerit tellus. Nullam scelerisque quam ex, nec pulvinar sapien cursus fermentum. Vestibulum fringilla condimentum posuere. Suspendisse vel nulla ut felis dictum pellentesque. Quisque sed mollis risus, at porttitor velit. Suspendisse ullamcorper dapibus est, ac mollis nisl. Nulla facilisi. Curabitur varius bibendum convallis. Donec aliquam nisi id libero aliquam fringilla. Proin imperdiet eleifend facilisis. Aliquam mollis erat non lacus porttitor, non fringilla urna eleifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Phasellus sit amet porta magna, non placerat sapien. Curabitur ante urna, iaculis a metus vel, tincidunt pretium sem. Nunc quis orci dapibus, gravida magna sit amet, aliquam elit. Phasellus aliquam, eros id lacinia consequat, odio risus condimentum tortor, quis consequat est dui eget tellus. Vestibulum lacinia sit amet dui vitae tincidunt. Integer vel enim sapien. Sed semper, diam ac feugiat volutpat, felis purus lacinia purus, nec accumsan erat nulla non neque.</p><p>Aliquam at aliquet velit, quis hendrerit nisi. Nullam sit amet imperdiet neque, vitae vulputate nibh. Sed ornare molestie lorem, ac accumsan odio semper vel. Aliquam sed ultricies elit. Maecenas ornare pulvinar gravida. Nunc id diam semper lectus laoreet maximus nec gravida enim. Ut porta eros vel nibh pellentesque, id egestas ante ullamcorper.</p><p>Integer viverra, mauris vitae aliquet luctus, elit elit ultrices justo, eu sagittis libero sem dignissim enim. Mauris luctus elit in lectus elementum hendrerit. Aliquam vehicula, nisl quis posuere convallis, metus nisi viverra nulla, vitae placerat odio libero vitae magna. Maecenas id facilisis mauris, sed gravida eros. Aenean ut dapibus lectus. Vivamus tempor pharetra ultricies. Suspendisse non est sed ex tempus commodo.</p>', '', 1, 'http://localhost/sitios_yii/oouu/storage/web/source', '1/Kri0IfpQnpynUJbDeaEp9enw7Tox1AWC.jpg', 1, 1, 1, 1617480276, 1617495913, 1617925316);


--
-- TOC entry 3388 (class 0 OID 16392)
-- Dependencies: 203
-- Data for Name: article_attachment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.article_attachment VALUES (1, 1, '1/3fEDKfn2bdAIgnXhj0ML0_rqhK4vMfF1.pdf', 'http://localhost/sitios_yii/oouu/storage/web/source', 'application/pdf', 705853, 'dudas-compromiso.pdf', 1617495913, NULL);


--
-- TOC entry 3390 (class 0 OID 16400)
-- Dependencies: 205
-- Data for Name: article_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.article_category VALUES (1, 'news', 'News', NULL, NULL, 1, 1616883425, NULL);


--
-- TOC entry 3393 (class 0 OID 16411)
-- Dependencies: 208
-- Data for Name: datos_juridicos; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3395 (class 0 OID 16419)
-- Dependencies: 210
-- Data for Name: datos_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.datos_organizacion VALUES ('organizacion11', 'organizacion22', 'organizacion33', NULL, '2021-12-30', 'asdasdasdad asd asdasdasdasd', NULL, 2, 'dfggdfgsasnfdhnfgsfsdsfdhdfgdfsfdsgfhjgdfgsgfdghdhjdfgdfsfgdghfdf', NULL, 1, 21, 3, NULL, 10);
INSERT INTO public.datos_organizacion VALUES ('organizacion 1', 'organizacion 2 ', 'organizacion 3', NULL, '2021-12-30', 'av ppal altavista', NULL, 5, 'egdfgdfgdfgdfgdfgdfgdgdfgdf', NULL, 1, 21, 1, 4, 11);


--
-- TOC entry 3397 (class 0 OID 16427)
-- Dependencies: 212
-- Data for Name: datos_personales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.datos_personales VALUES ('jesus', '', NULL, '', '', '', '', '', NULL, NULL, 10, 15, NULL);
INSERT INTO public.datos_personales VALUES ('rommel', 'escorihuela', NULL, '', '', '', '', '', NULL, NULL, 10, 13, NULL);
INSERT INTO public.datos_personales VALUES ('mari', 'xonh', 14963115, 'ama de casa', '04145698756', '', '', 'marixonh@yopmail.com', 2, 1, 11, 17, '5PhwqXmYiNJv');
INSERT INTO public.datos_personales VALUES ('jesus', 'velazques', 14569853, '', '04125558899', '', '', 'rommelescorihuela@yopmail.com', 1, 1, 11, 16, '123456789');


--
-- TOC entry 3399 (class 0 OID 16435)
-- Dependencies: 214
-- Data for Name: documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.documentos VALUES ('CV.pdf', 10, 2, 92820, NULL, NULL, 'application/pdf', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/GTZRHdskiBcCn6XQM3Rvgr9Dw54druGe.pdf');
INSERT INTO public.documentos VALUES ('PAGOS.pdf', 10, 3, 51823, NULL, NULL, 'application/pdf', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/zDPdj_H8Rut5gbUVfps7XaE3hNc7iFoW.pdf');


--
-- TOC entry 3401 (class 0 OID 16443)
-- Dependencies: 216
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.estado VALUES (2, 'AMAZONAS');
INSERT INTO public.estado VALUES (4, 'APURE');
INSERT INTO public.estado VALUES (5, 'ARAGUA');
INSERT INTO public.estado VALUES (6, 'BARINAS');
INSERT INTO public.estado VALUES (8, 'CARABOBO');
INSERT INTO public.estado VALUES (9, 'COJEDES');
INSERT INTO public.estado VALUES (10, 'DELTA AMACURO');
INSERT INTO public.estado VALUES (13, 'LARA');
INSERT INTO public.estado VALUES (15, 'MIRANDA');
INSERT INTO public.estado VALUES (16, 'MONAGAS');
INSERT INTO public.estado VALUES (17, 'NUEVA ESPARTA');
INSERT INTO public.estado VALUES (18, 'PORTUGUESA');
INSERT INTO public.estado VALUES (19, 'SUCRE');
INSERT INTO public.estado VALUES (20, 'TACHIRA');
INSERT INTO public.estado VALUES (21, 'TRUJILLO');
INSERT INTO public.estado VALUES (22, 'YARACUY');
INSERT INTO public.estado VALUES (23, 'ZULIA');
INSERT INTO public.estado VALUES (24, 'VARGAS');
INSERT INTO public.estado VALUES (25, 'DEPENDENCIAS FEDERALES');
INSERT INTO public.estado VALUES (12, 'GUÁRICO');
INSERT INTO public.estado VALUES (14, 'MÉRIDA');
INSERT INTO public.estado VALUES (11, 'FALCÓN');
INSERT INTO public.estado VALUES (7, 'BOLÍVAR');
INSERT INTO public.estado VALUES (3, 'ANZOÁTEGUI');
INSERT INTO public.estado VALUES (1, 'DISTRITO CAPITAL');
INSERT INTO public.estado VALUES (99, 'Informacion no disponible');


--
-- TOC entry 3402 (class 0 OID 16449)
-- Dependencies: 217
-- Data for Name: file_storage_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.file_storage_item VALUES (2, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/3fEDKfn2bdAIgnXhj0ML0_rqhK4vMfF1.pdf', 'application/pdf', 705853, '3fEDKfn2bdAIgnXhj0ML0_rqhK4vMfF1', '::1', 1617495875);
INSERT INTO public.file_storage_item VALUES (3, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/g-jG17l6Rd0p61CwIEZzAnBJkgZKWibM.png', 'image/png', 414878, 'g-jG17l6Rd0p61CwIEZzAnBJkgZKWibM', '::1', 1617496083);
INSERT INTO public.file_storage_item VALUES (4, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/wO5gB-xhIH8_rNgkgq_ErsVwB0iubxX9.png', 'image/png', 110585, 'wO5gB-xhIH8_rNgkgq_ErsVwB0iubxX9', '::1', 1617496113);
INSERT INTO public.file_storage_item VALUES (6, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/Pq4zQ2jt2h0V6YxziAOWKLggRHLixTQO.jpg', 'image/jpeg', 41771, 'Pq4zQ2jt2h0V6YxziAOWKLggRHLixTQO', '::1', 1617925275);
INSERT INTO public.file_storage_item VALUES (7, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/Kri0IfpQnpynUJbDeaEp9enw7Tox1AWC.jpg', 'image/jpeg', 20315, 'Kri0IfpQnpynUJbDeaEp9enw7Tox1AWC', '::1', 1617925311);
INSERT INTO public.file_storage_item VALUES (8, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/R-JjduD7OG261SPtPIjQbFd3920PYl2O.pdf', 'application/pdf', 29873, 'R-JjduD7OG261SPtPIjQbFd3920PYl2O', '::1', 1619052448);
INSERT INTO public.file_storage_item VALUES (9, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/1zUjt2i3MBgV30sz4eVzBGKdBry2BTWY.doc', 'application/msword', 1486336, '1zUjt2i3MBgV30sz4eVzBGKdBry2BTWY', '::1', 1619055338);
INSERT INTO public.file_storage_item VALUES (10, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/A18YFuETwevWiH7MyQRB_AApzsyE01hf.pdf', 'application/pdf', 29873, 'A18YFuETwevWiH7MyQRB_AApzsyE01hf', '::1', 1619058934);
INSERT INTO public.file_storage_item VALUES (11, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/zp1ohm41rYW4Q9HjmuhNEtHpwBQ8OEQJ.pdf', 'application/pdf', 30993, 'zp1ohm41rYW4Q9HjmuhNEtHpwBQ8OEQJ', '::1', 1619105485);
INSERT INTO public.file_storage_item VALUES (12, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/GTZRHdskiBcCn6XQM3Rvgr9Dw54druGe.pdf', 'application/pdf', 92820, 'GTZRHdskiBcCn6XQM3Rvgr9Dw54druGe', '::1', 1619128440);
INSERT INTO public.file_storage_item VALUES (13, 'fileStorage', 'http://localhost/sitios_yii/oouu/storage/web/source', '1/zDPdj_H8Rut5gbUVfps7XaE3hNc7iFoW.pdf', 'application/pdf', 51823, 'zDPdj_H8Rut5gbUVfps7XaE3hNc7iFoW', '::1', 1619128456);


--
-- TOC entry 3404 (class 0 OID 16457)
-- Dependencies: 219
-- Data for Name: i18n_message; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3405 (class 0 OID 16463)
-- Dependencies: 220
-- Data for Name: i18n_source_message; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3407 (class 0 OID 16471)
-- Dependencies: 222
-- Data for Name: key_storage_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.key_storage_item VALUES ('backend.theme-skin', 'skin-blue', 'skin-blue, skin-black, skin-purple, skin-green, skin-red, skin-yellow', NULL, NULL);
INSERT INTO public.key_storage_item VALUES ('backend.layout-fixed', '0', NULL, NULL, NULL);
INSERT INTO public.key_storage_item VALUES ('backend.layout-boxed', '0', NULL, NULL, NULL);
INSERT INTO public.key_storage_item VALUES ('backend.layout-collapsed-sidebar', '0', NULL, NULL, NULL);
INSERT INTO public.key_storage_item VALUES ('frontend.maintenance', 'disabled', 'Set it to "enabled" to turn on maintenance mode', NULL, NULL);
INSERT INTO public.key_storage_item VALUES ('adminlte.body-small-text', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.no-navbar-border', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.navbar-small-text', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.footer-small-text', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.footer-fixed', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-small-text', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-flat', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-legacy', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-compact', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-fixed', '0', NULL, 1617923219, 1617923219);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-collapsed', '0', NULL, 1617923220, 1617923220);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-mini', '0', NULL, 1617923220, 1617923220);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-child-indent', '0', NULL, 1617923220, 1617923220);
INSERT INTO public.key_storage_item VALUES ('adminlte.sidebar-no-expand', '0', NULL, 1617923220, 1617923220);
INSERT INTO public.key_storage_item VALUES ('adminlte.brand-small-text', '0', NULL, 1617923220, 1617923220);
INSERT INTO public.key_storage_item VALUES ('adminlte.navbar-fixed', '0', NULL, 1617925998, 1617923219);


--
-- TOC entry 3442 (class 0 OID 16829)
-- Dependencies: 257
-- Data for Name: material_apoyo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.material_apoyo VALUES (2, 'prueba', 'png', 2);


--
-- TOC entry 3408 (class 0 OID 16477)
-- Dependencies: 223
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.municipio VALUES (325, 'MACHIQUES DE PERIJA', 23);
INSERT INTO public.municipio VALUES (326, 'MARA', 23);
INSERT INTO public.municipio VALUES (327, 'MARACAIBO', 23);
INSERT INTO public.municipio VALUES (328, 'MIRANDA', 23);
INSERT INTO public.municipio VALUES (329, 'PAEZ', 23);
INSERT INTO public.municipio VALUES (330, 'ROSARIO DE PERIJA', 23);
INSERT INTO public.municipio VALUES (331, 'SAN FRANCISCO', 23);
INSERT INTO public.municipio VALUES (332, 'SANTA RITA', 23);
INSERT INTO public.municipio VALUES (333, 'SIMON BOLIVAR', 23);
INSERT INTO public.municipio VALUES (334, 'SUCRE', 23);
INSERT INTO public.municipio VALUES (335, 'VALMORE RODRIGUEZ', 23);
INSERT INTO public.municipio VALUES (336, 'VARGAS', 24);
INSERT INTO public.municipio VALUES (212, 'ANTOLIN DEL CAMPO', 17);
INSERT INTO public.municipio VALUES (213, 'ARISMENDI', 17);
INSERT INTO public.municipio VALUES (214, 'DIAZ', 17);
INSERT INTO public.municipio VALUES (215, 'GARCIA', 17);
INSERT INTO public.municipio VALUES (216, 'GOMEZ', 17);
INSERT INTO public.municipio VALUES (217, 'MANEIRO', 17);
INSERT INTO public.municipio VALUES (218, 'MARCANO', 17);
INSERT INTO public.municipio VALUES (219, 'MARINO', 17);
INSERT INTO public.municipio VALUES (220, 'PENINSULA DE MACANAO', 17);
INSERT INTO public.municipio VALUES (221, 'TUBORES', 17);
INSERT INTO public.municipio VALUES (222, 'VILLALBA', 17);
INSERT INTO public.municipio VALUES (223, 'AGUA BLANCA', 18);
INSERT INTO public.municipio VALUES (224, 'ARAURE', 18);
INSERT INTO public.municipio VALUES (225, 'ESTELLER', 18);
INSERT INTO public.municipio VALUES (226, 'GUANARE', 18);
INSERT INTO public.municipio VALUES (227, 'GUANARITO', 18);
INSERT INTO public.municipio VALUES (228, 'MONSENOR JOSE VICENTE DE UNDA', 18);
INSERT INTO public.municipio VALUES (229, 'OSPINO', 18);
INSERT INTO public.municipio VALUES (230, 'PAEZ', 18);
INSERT INTO public.municipio VALUES (231, 'PAPELON', 18);
INSERT INTO public.municipio VALUES (232, 'SAN GENARO DE BOCONOITO', 18);
INSERT INTO public.municipio VALUES (233, 'SAN RAFAEL DE ONOTO', 18);
INSERT INTO public.municipio VALUES (234, 'SANTA ROSALIA', 18);
INSERT INTO public.municipio VALUES (235, 'SUCRE', 18);
INSERT INTO public.municipio VALUES (236, 'TUREN', 18);
INSERT INTO public.municipio VALUES (237, 'ANDRES ELOY BLANCO', 19);
INSERT INTO public.municipio VALUES (238, 'ANDRES MATA', 19);
INSERT INTO public.municipio VALUES (239, 'ARISMENDI', 19);
INSERT INTO public.municipio VALUES (240, 'BENITEZ', 19);
INSERT INTO public.municipio VALUES (241, 'BERMUDEZ', 19);
INSERT INTO public.municipio VALUES (242, 'BOLIVAR', 19);
INSERT INTO public.municipio VALUES (243, 'CAJIGAL', 19);
INSERT INTO public.municipio VALUES (244, 'CRUZ SALMERON ACOSTA', 19);
INSERT INTO public.municipio VALUES (245, 'LIBERTADOR', 19);
INSERT INTO public.municipio VALUES (246, 'MARINO', 19);
INSERT INTO public.municipio VALUES (247, 'MEJIA', 19);
INSERT INTO public.municipio VALUES (248, 'MONTES', 19);
INSERT INTO public.municipio VALUES (249, 'RIBERO', 19);
INSERT INTO public.municipio VALUES (250, 'SUCRE', 19);
INSERT INTO public.municipio VALUES (251, 'VALDEZ', 19);
INSERT INTO public.municipio VALUES (252, 'ANDRES BELLO', 20);
INSERT INTO public.municipio VALUES (253, 'ANTONIO ROMULO COSTA', 20);
INSERT INTO public.municipio VALUES (254, 'AYACUCHO', 20);
INSERT INTO public.municipio VALUES (255, 'BOLIVAR', 20);
INSERT INTO public.municipio VALUES (256, 'CARDENAS', 20);
INSERT INTO public.municipio VALUES (257, 'CORDOBA', 20);
INSERT INTO public.municipio VALUES (258, 'FERNANDEZ FEO', 20);
INSERT INTO public.municipio VALUES (259, 'FRANCISCO DE MIRANDA', 20);
INSERT INTO public.municipio VALUES (260, 'GARCIA DE HEVIA', 20);
INSERT INTO public.municipio VALUES (261, 'GUASIMOS', 20);
INSERT INTO public.municipio VALUES (262, 'INDEPENDENCIA', 20);
INSERT INTO public.municipio VALUES (263, 'JAUREGUI', 20);
INSERT INTO public.municipio VALUES (264, 'JOSE MARIA VARGAS', 20);
INSERT INTO public.municipio VALUES (265, 'JUNIN', 20);
INSERT INTO public.municipio VALUES (266, 'LIBERTAD', 20);
INSERT INTO public.municipio VALUES (267, 'LIBERTADOR', 20);
INSERT INTO public.municipio VALUES (268, 'LOBATERA', 20);
INSERT INTO public.municipio VALUES (269, 'MICHELENA', 20);
INSERT INTO public.municipio VALUES (270, 'PANAMERICANO', 20);
INSERT INTO public.municipio VALUES (271, 'PEDRO MARIA URENA', 20);
INSERT INTO public.municipio VALUES (272, 'RAFAEL URDANETA', 20);
INSERT INTO public.municipio VALUES (273, 'SAMUEL DARIO MALDONADO', 20);
INSERT INTO public.municipio VALUES (274, 'SAN CRISTOBAL', 20);
INSERT INTO public.municipio VALUES (275, 'SEBORUCO', 20);
INSERT INTO public.municipio VALUES (276, 'SIMON RODRIGUEZ', 20);
INSERT INTO public.municipio VALUES (277, 'SUCRE', 20);
INSERT INTO public.municipio VALUES (278, 'TORBES', 20);
INSERT INTO public.municipio VALUES (279, 'URIBANTE', 20);
INSERT INTO public.municipio VALUES (280, 'SAN JUDAS TADEO', 20);
INSERT INTO public.municipio VALUES (281, 'ANDRES BELLO', 21);
INSERT INTO public.municipio VALUES (282, 'BOCONO', 21);
INSERT INTO public.municipio VALUES (283, 'BOLIVAR', 21);
INSERT INTO public.municipio VALUES (284, 'CANDELARIA', 21);
INSERT INTO public.municipio VALUES (285, 'CARACHE', 21);
INSERT INTO public.municipio VALUES (286, 'ESCUQUE', 21);
INSERT INTO public.municipio VALUES (287, 'JOSE FELIPE MARQUEZ CANIZALES', 21);
INSERT INTO public.municipio VALUES (288, 'JUAN VICENTE CAMPO ELIAS', 21);
INSERT INTO public.municipio VALUES (289, 'LA CEIBA', 21);
INSERT INTO public.municipio VALUES (290, 'MIRANDA', 21);
INSERT INTO public.municipio VALUES (291, 'MONTE CARMELO', 21);
INSERT INTO public.municipio VALUES (292, 'MOTATAN', 21);
INSERT INTO public.municipio VALUES (293, 'PAMPAN', 21);
INSERT INTO public.municipio VALUES (294, 'PAMPANITO', 21);
INSERT INTO public.municipio VALUES (295, 'RAFAEL RANGEL', 21);
INSERT INTO public.municipio VALUES (296, 'SAN RAFAEL DE CARVAJAL', 21);
INSERT INTO public.municipio VALUES (297, 'SUCRE', 21);
INSERT INTO public.municipio VALUES (298, 'TRUJILLO', 21);
INSERT INTO public.municipio VALUES (299, 'URDANETA', 21);
INSERT INTO public.municipio VALUES (300, 'VALERA', 21);
INSERT INTO public.municipio VALUES (301, 'ARISTIDES BASTIDAS', 22);
INSERT INTO public.municipio VALUES (302, 'BOLIVAR', 22);
INSERT INTO public.municipio VALUES (303, 'BRUZUAL', 22);
INSERT INTO public.municipio VALUES (304, 'COCOROTE', 22);
INSERT INTO public.municipio VALUES (305, 'INDEPENDENCIA', 22);
INSERT INTO public.municipio VALUES (306, 'JOSE ANTONIO PAEZ', 22);
INSERT INTO public.municipio VALUES (307, 'LA TRINIDAD', 22);
INSERT INTO public.municipio VALUES (308, 'MANUAL MONGE', 22);
INSERT INTO public.municipio VALUES (309, 'NIRGUA', 22);
INSERT INTO public.municipio VALUES (310, 'PENA', 22);
INSERT INTO public.municipio VALUES (311, 'SAN FELIPE', 22);
INSERT INTO public.municipio VALUES (312, 'SUCRE', 22);
INSERT INTO public.municipio VALUES (313, 'URACHICHE', 22);
INSERT INTO public.municipio VALUES (314, 'VEROES', 22);
INSERT INTO public.municipio VALUES (315, 'ALMIRANTE PADILLA', 23);
INSERT INTO public.municipio VALUES (316, 'BARALT', 23);
INSERT INTO public.municipio VALUES (317, 'CABIMAS', 23);
INSERT INTO public.municipio VALUES (318, 'CATATUMBO', 23);
INSERT INTO public.municipio VALUES (319, 'COLON', 23);
INSERT INTO public.municipio VALUES (320, 'FRANCISCO JAVIER PULGAR', 23);
INSERT INTO public.municipio VALUES (321, 'JESUS ENRIQUE LOSSADA', 23);
INSERT INTO public.municipio VALUES (322, 'JESUS MARIA SEMPRUN', 23);
INSERT INTO public.municipio VALUES (323, 'LA CANADA DE URDANETA', 23);
INSERT INTO public.municipio VALUES (324, 'LAGUNILLAS', 23);
INSERT INTO public.municipio VALUES (98, 'ROMULO GALLEGOS', 9);
INSERT INTO public.municipio VALUES (84, 'LOS GUAYOS', 8);
INSERT INTO public.municipio VALUES (100, 'TINACO', 9);
INSERT INTO public.municipio VALUES (101, 'ANTONIO DIAZ', 10);
INSERT INTO public.municipio VALUES (102, 'CASACOIMA', 10);
INSERT INTO public.municipio VALUES (103, 'PEDERNALES', 10);
INSERT INTO public.municipio VALUES (104, 'TUCUPITA', 10);
INSERT INTO public.municipio VALUES (105, 'ACOSTA', 11);
INSERT INTO public.municipio VALUES (106, 'BOLIVAR', 11);
INSERT INTO public.municipio VALUES (107, 'BUCHIVACOA', 11);
INSERT INTO public.municipio VALUES (108, 'CACIQUE MANAURE', 11);
INSERT INTO public.municipio VALUES (109, 'CARIRUBANA', 11);
INSERT INTO public.municipio VALUES (110, 'COLINA', 11);
INSERT INTO public.municipio VALUES (111, 'DABAJURO', 11);
INSERT INTO public.municipio VALUES (112, 'DEMOCRACIA', 11);
INSERT INTO public.municipio VALUES (113, 'FALCON', 11);
INSERT INTO public.municipio VALUES (114, 'FEDERACION', 11);
INSERT INTO public.municipio VALUES (115, 'JACURA', 11);
INSERT INTO public.municipio VALUES (116, 'LOS TAQUES', 11);
INSERT INTO public.municipio VALUES (117, 'MAUROA', 11);
INSERT INTO public.municipio VALUES (118, 'MIRANDA', 11);
INSERT INTO public.municipio VALUES (119, 'MONSENOR ITURRIZA', 11);
INSERT INTO public.municipio VALUES (120, 'PALMASOLA', 11);
INSERT INTO public.municipio VALUES (121, 'PETIT', 11);
INSERT INTO public.municipio VALUES (122, 'PIRITU', 11);
INSERT INTO public.municipio VALUES (123, 'SAN FRANCISCO', 11);
INSERT INTO public.municipio VALUES (124, 'SILVA', 11);
INSERT INTO public.municipio VALUES (125, 'SUCRE', 11);
INSERT INTO public.municipio VALUES (126, 'TOCOPERO', 11);
INSERT INTO public.municipio VALUES (127, 'UNION', 11);
INSERT INTO public.municipio VALUES (128, 'URUMACO', 11);
INSERT INTO public.municipio VALUES (129, 'ZAMORA', 11);
INSERT INTO public.municipio VALUES (130, 'CAMAGUAN', 12);
INSERT INTO public.municipio VALUES (131, 'CHAGUARAMAS', 12);
INSERT INTO public.municipio VALUES (132, 'EL SOCORRO', 12);
INSERT INTO public.municipio VALUES (133, 'SAN GERONIMO DE GUAYABAL', 12);
INSERT INTO public.municipio VALUES (134, 'LEONARDO INFANTE', 12);
INSERT INTO public.municipio VALUES (135, 'LAS MERCEDES', 12);
INSERT INTO public.municipio VALUES (136, 'JULIAN MELLADO', 12);
INSERT INTO public.municipio VALUES (137, 'FRANCISCO DE MIRANDA', 12);
INSERT INTO public.municipio VALUES (139, 'JOSE TADEO MONAGAS', 12);
INSERT INTO public.municipio VALUES (140, 'ORTIZ', 12);
INSERT INTO public.municipio VALUES (141, 'JOSE FELIX RIBAS', 12);
INSERT INTO public.municipio VALUES (142, 'JUAN GERMAN ROSCIO', 12);
INSERT INTO public.municipio VALUES (143, 'SAN JOSE DE GUARIBE', 12);
INSERT INTO public.municipio VALUES (144, 'SANTA MARIA DE IPIRE', 12);
INSERT INTO public.municipio VALUES (145, 'PEDRO ZARAZA', 12);
INSERT INTO public.municipio VALUES (146, 'ANDRES ELOY BLANCO', 13);
INSERT INTO public.municipio VALUES (147, 'CRESPO', 13);
INSERT INTO public.municipio VALUES (148, 'IRIBARREN', 13);
INSERT INTO public.municipio VALUES (149, 'JIMENEZ', 13);
INSERT INTO public.municipio VALUES (150, 'MORAN', 13);
INSERT INTO public.municipio VALUES (151, 'PALAVECINO', 13);
INSERT INTO public.municipio VALUES (152, 'SIMON PLANAS', 13);
INSERT INTO public.municipio VALUES (153, 'TORRES', 13);
INSERT INTO public.municipio VALUES (154, 'URDANETA', 13);
INSERT INTO public.municipio VALUES (155, 'ALBERTO ADRIANI', 14);
INSERT INTO public.municipio VALUES (156, 'ANDRES BELLO', 14);
INSERT INTO public.municipio VALUES (157, 'ANTONIO PINTO SALINAS', 14);
INSERT INTO public.municipio VALUES (158, 'ARICAGUA', 14);
INSERT INTO public.municipio VALUES (159, 'ARZOBISPO CHACON', 14);
INSERT INTO public.municipio VALUES (160, 'CAMPO ELIAS', 14);
INSERT INTO public.municipio VALUES (161, 'CARACCIOLO PARRA OLMEDO', 14);
INSERT INTO public.municipio VALUES (162, 'CARDENAL QUINTERO', 14);
INSERT INTO public.municipio VALUES (163, 'GUARAQUE', 14);
INSERT INTO public.municipio VALUES (164, 'JULIO CESAR SALAS', 14);
INSERT INTO public.municipio VALUES (165, 'JUSTO BRICENO', 14);
INSERT INTO public.municipio VALUES (166, 'LIBERTADOR', 14);
INSERT INTO public.municipio VALUES (167, 'MIRANDA', 14);
INSERT INTO public.municipio VALUES (168, 'OBISPO RAMOS DE LORA', 14);
INSERT INTO public.municipio VALUES (169, 'PADRE NOGUERA', 14);
INSERT INTO public.municipio VALUES (170, 'PUEBLO LLANO', 14);
INSERT INTO public.municipio VALUES (171, 'RANGEL', 14);
INSERT INTO public.municipio VALUES (172, 'RIVAS DAVILA', 14);
INSERT INTO public.municipio VALUES (173, 'SANTOS MARQUINA', 14);
INSERT INTO public.municipio VALUES (174, 'SUCRE', 14);
INSERT INTO public.municipio VALUES (175, 'TOVAR', 14);
INSERT INTO public.municipio VALUES (176, 'TULIO FEBRES CORDERO', 14);
INSERT INTO public.municipio VALUES (177, 'ZEA', 14);
INSERT INTO public.municipio VALUES (178, 'ACEVEDO', 15);
INSERT INTO public.municipio VALUES (179, 'ANDRES BELLO', 15);
INSERT INTO public.municipio VALUES (180, 'BARUTA', 15);
INSERT INTO public.municipio VALUES (181, 'BRION', 15);
INSERT INTO public.municipio VALUES (182, 'BUROZ', 15);
INSERT INTO public.municipio VALUES (183, 'CARRIZAL', 15);
INSERT INTO public.municipio VALUES (184, 'CHACAO', 15);
INSERT INTO public.municipio VALUES (185, 'CRISTOBAL ROJAS', 15);
INSERT INTO public.municipio VALUES (186, 'EL HATILLO', 15);
INSERT INTO public.municipio VALUES (187, 'GUACAIPURO', 15);
INSERT INTO public.municipio VALUES (188, 'INDEPENDENCIA', 15);
INSERT INTO public.municipio VALUES (189, 'LANDER', 15);
INSERT INTO public.municipio VALUES (190, 'LOS SALIAS', 15);
INSERT INTO public.municipio VALUES (191, 'PAEZ', 15);
INSERT INTO public.municipio VALUES (192, 'PAZ CASTILLO', 15);
INSERT INTO public.municipio VALUES (193, 'PEDRO GUAL', 15);
INSERT INTO public.municipio VALUES (194, 'PLAZA', 15);
INSERT INTO public.municipio VALUES (195, 'SIMON BOLIVAR', 15);
INSERT INTO public.municipio VALUES (196, 'SUCRE', 15);
INSERT INTO public.municipio VALUES (197, 'URDANETA', 15);
INSERT INTO public.municipio VALUES (198, 'ZAMORA', 15);
INSERT INTO public.municipio VALUES (199, 'ACOSTA', 16);
INSERT INTO public.municipio VALUES (200, 'AGUASAY', 16);
INSERT INTO public.municipio VALUES (201, 'BOLIVAR', 16);
INSERT INTO public.municipio VALUES (202, 'CARIPE', 16);
INSERT INTO public.municipio VALUES (203, 'CEDENO', 16);
INSERT INTO public.municipio VALUES (204, 'EZEQUIEL ZAMORA', 16);
INSERT INTO public.municipio VALUES (205, 'LIBERTADOR', 16);
INSERT INTO public.municipio VALUES (206, 'MATURIN', 16);
INSERT INTO public.municipio VALUES (207, 'PIAR', 16);
INSERT INTO public.municipio VALUES (208, 'PUNCERES', 16);
INSERT INTO public.municipio VALUES (209, 'SANTA BARBARA', 16);
INSERT INTO public.municipio VALUES (210, 'SOTILLO', 16);
INSERT INTO public.municipio VALUES (211, 'URACOA', 16);
INSERT INTO public.municipio VALUES (1, 'LIBERTADOR', 1);
INSERT INTO public.municipio VALUES (2, 'ALTO ORINOCO', 2);
INSERT INTO public.municipio VALUES (3, 'ATABAPO', 2);
INSERT INTO public.municipio VALUES (4, 'ATURES', 2);
INSERT INTO public.municipio VALUES (5, 'AUTANA', 2);
INSERT INTO public.municipio VALUES (6, 'MAROA', 2);
INSERT INTO public.municipio VALUES (7, 'MANAPIARE', 2);
INSERT INTO public.municipio VALUES (8, 'RIO NEGRO', 2);
INSERT INTO public.municipio VALUES (9, 'ANACO', 3);
INSERT INTO public.municipio VALUES (10, 'ARAGUA', 3);
INSERT INTO public.municipio VALUES (11, 'FERNANDO DE PENALVER', 3);
INSERT INTO public.municipio VALUES (12, 'FRANCISCO DEL CARMEN CARVAJAL', 3);
INSERT INTO public.municipio VALUES (13, 'FRANCISCO DE MIRANDA', 3);
INSERT INTO public.municipio VALUES (14, 'GUANTA', 3);
INSERT INTO public.municipio VALUES (15, 'INDEPENDENCIA', 3);
INSERT INTO public.municipio VALUES (16, 'JUAN ANTONIO SOTILLO', 3);
INSERT INTO public.municipio VALUES (17, 'JUAN MANUEL CAGIJAL', 3);
INSERT INTO public.municipio VALUES (18, 'JOSE GREGORIO MONAGAS', 3);
INSERT INTO public.municipio VALUES (19, 'LIBERTAD', 3);
INSERT INTO public.municipio VALUES (20, 'MANUEL EZEQUIEL BRUZUAL', 3);
INSERT INTO public.municipio VALUES (21, 'PEDRO MARIA FREITES', 3);
INSERT INTO public.municipio VALUES (22, 'PIRITU', 3);
INSERT INTO public.municipio VALUES (23, 'SAN JOSE DE GUANIPA', 3);
INSERT INTO public.municipio VALUES (24, 'SAN JUAN DE CAPISTRANO', 3);
INSERT INTO public.municipio VALUES (25, 'SANTA ANA', 3);
INSERT INTO public.municipio VALUES (26, 'SIMON BOLIVAR', 3);
INSERT INTO public.municipio VALUES (27, 'SIMON RODRIGUEZ', 3);
INSERT INTO public.municipio VALUES (28, 'SIR ARTHUR MACGREGOR', 3);
INSERT INTO public.municipio VALUES (29, 'DIEGO BAUTISTA URBANEJA', 3);
INSERT INTO public.municipio VALUES (30, 'ACHAGUAS', 4);
INSERT INTO public.municipio VALUES (31, 'BIRUACA', 4);
INSERT INTO public.municipio VALUES (32, 'MUNOZ', 4);
INSERT INTO public.municipio VALUES (33, 'PAEZ', 4);
INSERT INTO public.municipio VALUES (34, 'PEDRO CAMEJO', 4);
INSERT INTO public.municipio VALUES (35, 'ROMULO GALLEGOS', 4);
INSERT INTO public.municipio VALUES (36, 'SAN FERNANDO', 4);
INSERT INTO public.municipio VALUES (37, 'BOLIVAR', 5);
INSERT INTO public.municipio VALUES (38, 'CAMATAGUA', 5);
INSERT INTO public.municipio VALUES (39, 'GIRARDOT', 5);
INSERT INTO public.municipio VALUES (40, 'JOSE ANGEL LAMAS', 5);
INSERT INTO public.municipio VALUES (41, 'JOSE FELIX RIBAS', 5);
INSERT INTO public.municipio VALUES (42, 'JOSE RAFAEL REVENGA', 5);
INSERT INTO public.municipio VALUES (44, 'MARIO BRICENO IRAGORRY', 5);
INSERT INTO public.municipio VALUES (45, 'SAN CASIMIRO', 5);
INSERT INTO public.municipio VALUES (46, 'SAN SEBASTIAN', 5);
INSERT INTO public.municipio VALUES (47, 'SANTIAGO MARINO', 5);
INSERT INTO public.municipio VALUES (48, 'SANTOS MICHELENA', 5);
INSERT INTO public.municipio VALUES (49, 'SUCRE', 5);
INSERT INTO public.municipio VALUES (50, 'TOVAR', 5);
INSERT INTO public.municipio VALUES (51, 'URDANETA', 5);
INSERT INTO public.municipio VALUES (52, 'ZAMORA', 5);
INSERT INTO public.municipio VALUES (53, 'FRANCISCO LINARES ALCANTARA', 5);
INSERT INTO public.municipio VALUES (54, 'OCUMARE DE LA COSTA DE ORO', 5);
INSERT INTO public.municipio VALUES (55, 'ALBERTO ARVELO TORREALBA', 6);
INSERT INTO public.municipio VALUES (56, 'ANTONIO JOSE DE SUCRE', 6);
INSERT INTO public.municipio VALUES (57, 'ARISMENDI', 6);
INSERT INTO public.municipio VALUES (58, 'BARINAS', 6);
INSERT INTO public.municipio VALUES (59, 'BOLIVAR', 6);
INSERT INTO public.municipio VALUES (60, 'CRUZ PAREDES', 6);
INSERT INTO public.municipio VALUES (61, 'EZEQUIEL ZAMORA', 6);
INSERT INTO public.municipio VALUES (62, 'OBISPOS', 6);
INSERT INTO public.municipio VALUES (63, 'PEDRAZA', 6);
INSERT INTO public.municipio VALUES (64, 'ROJAS', 6);
INSERT INTO public.municipio VALUES (65, 'SOSA', 6);
INSERT INTO public.municipio VALUES (66, 'ANDRES ELOY BLANCO', 6);
INSERT INTO public.municipio VALUES (67, 'CARONI', 7);
INSERT INTO public.municipio VALUES (68, 'CEDENO', 7);
INSERT INTO public.municipio VALUES (69, 'EL CALLAO', 7);
INSERT INTO public.municipio VALUES (70, 'GRAN SABANA', 7);
INSERT INTO public.municipio VALUES (71, 'HERES', 7);
INSERT INTO public.municipio VALUES (72, 'PIAR', 7);
INSERT INTO public.municipio VALUES (73, 'RAUL LEONI', 7);
INSERT INTO public.municipio VALUES (74, 'ROSCIO', 7);
INSERT INTO public.municipio VALUES (75, 'SIFONTES', 7);
INSERT INTO public.municipio VALUES (76, 'SUCRE', 7);
INSERT INTO public.municipio VALUES (77, 'PADRE PEDRO CHIEN', 7);
INSERT INTO public.municipio VALUES (78, 'BEJUMA', 8);
INSERT INTO public.municipio VALUES (79, 'CARLOS ARVELO', 8);
INSERT INTO public.municipio VALUES (80, 'DIEGO IBARRA', 8);
INSERT INTO public.municipio VALUES (81, 'GUACARA', 8);
INSERT INTO public.municipio VALUES (82, 'JUAN JOSE MORA', 8);
INSERT INTO public.municipio VALUES (83, 'LIBERTADOR', 8);
INSERT INTO public.municipio VALUES (337, 'SAN CARLOS', 9);
INSERT INTO public.municipio VALUES (85, 'MIRANDA', 8);
INSERT INTO public.municipio VALUES (86, 'MONTALBAN', 8);
INSERT INTO public.municipio VALUES (87, 'NAGUANAGUA', 8);
INSERT INTO public.municipio VALUES (88, 'PUERTO CABELLO', 8);
INSERT INTO public.municipio VALUES (89, 'SAN DIEGO', 8);
INSERT INTO public.municipio VALUES (90, 'SAN JOAQUIN', 8);
INSERT INTO public.municipio VALUES (91, 'VALENCIA', 8);
INSERT INTO public.municipio VALUES (92, 'ANZOATEGUI', 9);
INSERT INTO public.municipio VALUES (93, 'FALCON', 9);
INSERT INTO public.municipio VALUES (94, 'GIRARDOT', 9);
INSERT INTO public.municipio VALUES (95, 'LIMA BLANCO', 9);
INSERT INTO public.municipio VALUES (96, 'PAO DE SAN JUAN BAUTISTA', 9);
INSERT INTO public.municipio VALUES (97, 'RICAURTE', 9);
INSERT INTO public.municipio VALUES (99, 'EZEQUIEL ZAMORA', 9);
INSERT INTO public.municipio VALUES (338, 'ARCHIPIÉLAGO LOS ROQUES', 25);
INSERT INTO public.municipio VALUES (43, 'LIBERTADOR', 5);
INSERT INTO public.municipio VALUES (999, 'Información no disponible', 99);


--
-- TOC entry 3409 (class 0 OID 16483)
-- Dependencies: 224
-- Data for Name: page; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.page VALUES (1, 'about', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, 1, 1616883425, 1616883425);
INSERT INTO public.page VALUES (2, 'pagina-1', 'pagina 1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac facilisis est. Quisque condimentum ex et tortor viverra, in elementum arcu tincidunt. Phasellus eget ante at nunc dignissim rutrum quis vel justo. Vestibulum vel nulla sit amet magna interdum accumsan vitae vitae dolor. Curabitur eu elementum mauris. Praesent bibendum est non rutrum dignissim. Proin convallis felis ut enim lacinia, quis suscipit elit tempus. Integer cursus nulla quis mi malesuada egestas. Sed sit amet aliquet metus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sed lectus id diam fermentum luctus euismod quis erat. Morbi porta ultrices eros at ullamcorper.</p><p>Morbi laoreet est ac ligula mollis tincidunt. Aenean nec felis velit. Sed tempus dolor eu rutrum tincidunt. Praesent tincidunt massa quis lacus ultrices tristique. Proin ac orci eleifend, imperdiet nulla ac, hendrerit tellus. Nullam scelerisque quam ex, nec pulvinar sapien cursus fermentum. Vestibulum fringilla condimentum posuere. Suspendisse vel nulla ut felis dictum pellentesque. Quisque sed mollis risus, at porttitor velit. Suspendisse ullamcorper dapibus est, ac mollis nisl. Nulla facilisi. Curabitur varius bibendum convallis. Donec aliquam nisi id libero aliquam fringilla. Proin imperdiet eleifend facilisis. Aliquam mollis erat non lacus porttitor, non fringilla urna eleifend. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p><p>Phasellus sit amet porta magna, non placerat sapien. Curabitur ante urna, iaculis a metus vel, tincidunt pretium sem. Nunc quis orci dapibus, gravida magna sit amet, aliquam elit. Phasellus aliquam, eros id lacinia consequat, odio risus condimentum tortor, quis consequat est dui eget tellus. Vestibulum lacinia sit amet dui vitae tincidunt. Integer vel enim sapien. Sed semper, diam ac feugiat volutpat, felis purus lacinia purus, nec accumsan erat nulla non neque.</p><p>Aliquam at aliquet velit, quis hendrerit nisi. Nullam sit amet imperdiet neque, vitae vulputate nibh. Sed ornare molestie lorem, ac accumsan odio semper vel. Aliquam sed ultricies elit. Maecenas ornare pulvinar gravida. Nunc id diam semper lectus laoreet maximus nec gravida enim. Ut porta eros vel nibh pellentesque, id egestas ante ullamcorper.</p><p>Integer viverra, mauris vitae aliquet luctus, elit elit ultrices justo, eu sagittis libero sem dignissim enim. Mauris luctus elit in lectus elementum hendrerit. Aliquam vehicula, nisl quis posuere convallis, metus nisi viverra nulla, vitae placerat odio libero vitae magna. Maecenas id facilisis mauris, sed gravida eros. Aenean ut dapibus lectus. Vivamus tempor pharetra ultricies. Suspendisse non est sed ex tempus commodo.</p>', '1', 1, 1617499123, 1617499123);


--
-- TOC entry 3411 (class 0 OID 16491)
-- Dependencies: 226
-- Data for Name: parroquia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.parroquia VALUES (1, 'ALTAGRACIA', 1);
INSERT INTO public.parroquia VALUES (2, 'ANTÍMANO', 1);
INSERT INTO public.parroquia VALUES (3, 'CANDELARIA', 1);
INSERT INTO public.parroquia VALUES (4, 'CARICUAO', 1);
INSERT INTO public.parroquia VALUES (5, 'CATEDRAL', 1);
INSERT INTO public.parroquia VALUES (6, 'COCHE', 1);
INSERT INTO public.parroquia VALUES (7, 'EL JUNQUITO', 1);
INSERT INTO public.parroquia VALUES (8, 'EL PARAÍSO', 1);
INSERT INTO public.parroquia VALUES (9, 'EL RECREO', 1);
INSERT INTO public.parroquia VALUES (10, 'EL VALLE', 1);
INSERT INTO public.parroquia VALUES (11, 'LA PASTORA', 1);
INSERT INTO public.parroquia VALUES (12, 'LA VEGA', 1);
INSERT INTO public.parroquia VALUES (13, 'MACARAO', 1);
INSERT INTO public.parroquia VALUES (14, 'SAN AGUSTÍN', 1);
INSERT INTO public.parroquia VALUES (15, 'SAN BERNARDINO', 1);
INSERT INTO public.parroquia VALUES (16, 'SAN JOSÉ', 1);
INSERT INTO public.parroquia VALUES (17, 'SAN JUAN', 1);
INSERT INTO public.parroquia VALUES (18, 'SAN PEDRO', 1);
INSERT INTO public.parroquia VALUES (19, 'SANTA ROSALÍA', 1);
INSERT INTO public.parroquia VALUES (20, 'SANTA TERESA', 1);
INSERT INTO public.parroquia VALUES (21, 'SUCRE', 1);
INSERT INTO public.parroquia VALUES (22, '23 DE ENERO', 1);
INSERT INTO public.parroquia VALUES (23, 'LA ESMERALDA', 2);
INSERT INTO public.parroquia VALUES (24, 'HUACHAMACARE', 2);
INSERT INTO public.parroquia VALUES (25, 'MARAWAKA', 2);
INSERT INTO public.parroquia VALUES (26, 'MAVACA', 2);
INSERT INTO public.parroquia VALUES (27, 'SIERRA PARIMA', 2);
INSERT INTO public.parroquia VALUES (28, 'SAN FERNANDO DE ATABAPO', 3);
INSERT INTO public.parroquia VALUES (29, 'UCATA', 3);
INSERT INTO public.parroquia VALUES (30, 'YAPACANA', 3);
INSERT INTO public.parroquia VALUES (31, 'CANAME', 3);
INSERT INTO public.parroquia VALUES (32, 'FERNANDO GIRÓN TOVAR', 4);
INSERT INTO public.parroquia VALUES (33, 'LUIS ALBERTO GÓMEZ', 4);
INSERT INTO public.parroquia VALUES (34, 'PARHUEÑA', 4);
INSERT INTO public.parroquia VALUES (35, 'PLATANILLAL', 4);
INSERT INTO public.parroquia VALUES (36, 'ISLA RATÓN', 5);
INSERT INTO public.parroquia VALUES (37, 'SAMARIAPO', 5);
INSERT INTO public.parroquia VALUES (38, 'SIPAPO', 5);
INSERT INTO public.parroquia VALUES (39, 'MUNDUAPO', 5);
INSERT INTO public.parroquia VALUES (40, 'GUAYAPO', 5);
INSERT INTO public.parroquia VALUES (41, 'VICTORINO', 6);
INSERT INTO public.parroquia VALUES (42, 'COMUNIDAD', 6);
INSERT INTO public.parroquia VALUES (43, 'SAN JUAN DE MANAPIARE', 7);
INSERT INTO public.parroquia VALUES (44, 'ALTO VENTUARI', 7);
INSERT INTO public.parroquia VALUES (45, 'MEDIO VENTUARI', 7);
INSERT INTO public.parroquia VALUES (46, 'BAJO VENTUARI', 7);
INSERT INTO public.parroquia VALUES (47, 'SAN CARLOS DE RÍO NEGRO', 8);
INSERT INTO public.parroquia VALUES (48, 'SOLANO', 8);
INSERT INTO public.parroquia VALUES (49, 'CASIQUIARE', 8);
INSERT INTO public.parroquia VALUES (50, 'COCUY', 8);
INSERT INTO public.parroquia VALUES (51, 'ANACO', 9);
INSERT INTO public.parroquia VALUES (52, 'SAN JOAQUÍN', 9);
INSERT INTO public.parroquia VALUES (53, 'ARAGUA DE BARCELONA', 10);
INSERT INTO public.parroquia VALUES (54, 'CACHIPO', 10);
INSERT INTO public.parroquia VALUES (55, 'PUERTO PÍRITU', 11);
INSERT INTO public.parroquia VALUES (56, 'SAN MIGUEL', 11);
INSERT INTO public.parroquia VALUES (57, 'SUCRE', 11);
INSERT INTO public.parroquia VALUES (58, 'VALLE DE GUANAPE', 12);
INSERT INTO public.parroquia VALUES (59, 'SANTA BÁRBARA', 12);
INSERT INTO public.parroquia VALUES (60, 'PARIAGUÁN', 13);
INSERT INTO public.parroquia VALUES (61, 'ATAPIRIRE', 13);
INSERT INTO public.parroquia VALUES (62, 'BOCA DEL PAO', 13);
INSERT INTO public.parroquia VALUES (63, 'EL PAO', 13);
INSERT INTO public.parroquia VALUES (64, 'MÚCURA', 13);
INSERT INTO public.parroquia VALUES (65, 'GUANTA', 14);
INSERT INTO public.parroquia VALUES (66, 'CHORRERÓN', 14);
INSERT INTO public.parroquia VALUES (67, 'SOLEDAD', 15);
INSERT INTO public.parroquia VALUES (68, 'MAMO', 15);
INSERT INTO public.parroquia VALUES (69, 'PUERTO LA CRUZ', 16);
INSERT INTO public.parroquia VALUES (70, 'POZUELOS', 16);
INSERT INTO public.parroquia VALUES (71, 'ONOTO', 17);
INSERT INTO public.parroquia VALUES (72, 'SAN PABLO', 17);
INSERT INTO public.parroquia VALUES (73, 'MAPIRE', 18);
INSERT INTO public.parroquia VALUES (74, 'PIAR', 18);
INSERT INTO public.parroquia VALUES (75, 'SAN DIEGO DE CABRUTICA', 18);
INSERT INTO public.parroquia VALUES (76, 'SANTA CLARA', 18);
INSERT INTO public.parroquia VALUES (77, 'UVERITO', 18);
INSERT INTO public.parroquia VALUES (78, 'ZUATA', 18);
INSERT INTO public.parroquia VALUES (79, 'SAN MATEO', 19);
INSERT INTO public.parroquia VALUES (80, 'EL CARITO', 19);
INSERT INTO public.parroquia VALUES (81, 'SANTA INÉS', 19);
INSERT INTO public.parroquia VALUES (82, 'CLARINES', 20);
INSERT INTO public.parroquia VALUES (83, 'GUANAPE', 20);
INSERT INTO public.parroquia VALUES (84, 'SABANA DE UCHIRE', 20);
INSERT INTO public.parroquia VALUES (85, 'CANTAURA', 21);
INSERT INTO public.parroquia VALUES (86, 'LIBERTADOR', 21);
INSERT INTO public.parroquia VALUES (87, 'SANTA ROSA', 21);
INSERT INTO public.parroquia VALUES (88, 'URICA', 21);
INSERT INTO public.parroquia VALUES (89, 'PÍRITU', 22);
INSERT INTO public.parroquia VALUES (90, 'SAN FRANCISCO', 22);
INSERT INTO public.parroquia VALUES (91, 'SAN JOSÉ DE GUANIPA (EL TIGRITO)', 23);
INSERT INTO public.parroquia VALUES (92, 'BOCA DE UCHIRE', 24);
INSERT INTO public.parroquia VALUES (93, 'BOCA DE CHÁVEZ', 24);
INSERT INTO public.parroquia VALUES (94, 'SANTA ANA', 25);
INSERT INTO public.parroquia VALUES (95, 'PUEBLO NUEVO', 25);
INSERT INTO public.parroquia VALUES (96, 'EL CARMEN', 26);
INSERT INTO public.parroquia VALUES (97, 'SAN CRISTÓBAL', 26);
INSERT INTO public.parroquia VALUES (98, 'BERGANTÍN', 26);
INSERT INTO public.parroquia VALUES (99, 'CAIGUA', 26);
INSERT INTO public.parroquia VALUES (100, 'EL PILAR', 26);
INSERT INTO public.parroquia VALUES (101, 'NARICUAL', 26);
INSERT INTO public.parroquia VALUES (102, 'EDMUNDO BARRIOS', 27);
INSERT INTO public.parroquia VALUES (103, 'MIGUEL OTERO SILVA', 27);
INSERT INTO public.parroquia VALUES (104, 'EL CHAPARRO', 28);
INSERT INTO public.parroquia VALUES (105, 'TOMÁS ALFARO CALATRAVA', 28);
INSERT INTO public.parroquia VALUES (106, 'LECHERÍAS', 29);
INSERT INTO public.parroquia VALUES (107, 'EL MORRO', 29);
INSERT INTO public.parroquia VALUES (108, 'ACHAGUAS', 30);
INSERT INTO public.parroquia VALUES (109, 'APURITO', 30);
INSERT INTO public.parroquia VALUES (110, 'EL YAGUAL', 30);
INSERT INTO public.parroquia VALUES (111, 'GUACHARA', 30);
INSERT INTO public.parroquia VALUES (112, 'MUCURITAS', 30);
INSERT INTO public.parroquia VALUES (113, 'QUESERAS DEL MEDIO', 30);
INSERT INTO public.parroquia VALUES (114, 'BIRUACA', 31);
INSERT INTO public.parroquia VALUES (115, 'BRUZUAL', 32);
INSERT INTO public.parroquia VALUES (116, 'MANTECAL', 32);
INSERT INTO public.parroquia VALUES (117, 'QUINTERO', 32);
INSERT INTO public.parroquia VALUES (118, 'RINCÓN HONDO', 32);
INSERT INTO public.parroquia VALUES (119, 'SAN VICENTE', 32);
INSERT INTO public.parroquia VALUES (120, 'GUASDUALITO', 33);
INSERT INTO public.parroquia VALUES (121, 'ARAMENDI', 33);
INSERT INTO public.parroquia VALUES (122, 'EL AMPARO', 33);
INSERT INTO public.parroquia VALUES (123, 'SAN CAMILO', 33);
INSERT INTO public.parroquia VALUES (124, 'URDANETA', 33);
INSERT INTO public.parroquia VALUES (125, 'SAN JUAN DE PAYARA', 34);
INSERT INTO public.parroquia VALUES (126, 'CODAZZI', 34);
INSERT INTO public.parroquia VALUES (127, 'CUNAVICHE', 34);
INSERT INTO public.parroquia VALUES (128, 'ELORZA', 35);
INSERT INTO public.parroquia VALUES (129, 'LA TRINIDAD', 35);
INSERT INTO public.parroquia VALUES (130, 'SAN FERNANDO', 36);
INSERT INTO public.parroquia VALUES (131, 'EL RECREO', 36);
INSERT INTO public.parroquia VALUES (132, 'PEÑALVER', 36);
INSERT INTO public.parroquia VALUES (133, 'SAN RAFAEL DE ATAMAICA', 36);
INSERT INTO public.parroquia VALUES (134, 'SAN MATEO', 37);
INSERT INTO public.parroquia VALUES (135, 'CAMATAGUA', 38);
INSERT INTO public.parroquia VALUES (136, 'CARMEN DE CURA', 38);
INSERT INTO public.parroquia VALUES (137, 'CHORONÍ', 39);
INSERT INTO public.parroquia VALUES (138, 'LAS DELICIAS', 39);
INSERT INTO public.parroquia VALUES (139, 'MADRE MARÍA DE SAN JOSÉ', 39);
INSERT INTO public.parroquia VALUES (140, 'JOAQUÍN CRESPO', 39);
INSERT INTO public.parroquia VALUES (141, 'PEDRO JOSÉ OVALLES', 39);
INSERT INTO public.parroquia VALUES (142, 'JOSÉ CASANOVA GODOY', 39);
INSERT INTO public.parroquia VALUES (143, 'ANDRÉS ELOY BLANCO', 39);
INSERT INTO public.parroquia VALUES (144, 'LOS TACARIGUAS', 39);
INSERT INTO public.parroquia VALUES (145, 'SANTA CRUZ', 40);
INSERT INTO public.parroquia VALUES (146, 'LA VICTORIA', 41);
INSERT INTO public.parroquia VALUES (147, 'CASTOR NIEVES RÍOS', 41);
INSERT INTO public.parroquia VALUES (148, 'LAS GUACAMAYAS', 41);
INSERT INTO public.parroquia VALUES (149, 'PAO DE ZÁRATE', 41);
INSERT INTO public.parroquia VALUES (150, 'ZUATA', 41);
INSERT INTO public.parroquia VALUES (151, 'EL CONSEJO', 42);
INSERT INTO public.parroquia VALUES (152, 'PALO NEGRO', 43);
INSERT INTO public.parroquia VALUES (153, 'SAN MARTÍN DE PORRES', 43);
INSERT INTO public.parroquia VALUES (154, 'EL LIMÓN', 44);
INSERT INTO public.parroquia VALUES (155, 'CAÑA DE AZÚCAR', 44);
INSERT INTO public.parroquia VALUES (156, 'SAN CASIMIRO', 45);
INSERT INTO public.parroquia VALUES (157, 'GÜIRIPA', 45);
INSERT INTO public.parroquia VALUES (158, 'OLLAS DE CARAMACATE', 45);
INSERT INTO public.parroquia VALUES (159, 'VALLE MORÍN', 45);
INSERT INTO public.parroquia VALUES (160, 'SAN SEBASTIÁN', 46);
INSERT INTO public.parroquia VALUES (161, 'TURMERO', 47);
INSERT INTO public.parroquia VALUES (162, 'ARÉVALO APONTE', 47);
INSERT INTO public.parroquia VALUES (163, 'CHUAO', 47);
INSERT INTO public.parroquia VALUES (164, 'SAMÁN DE GÜERE', 47);
INSERT INTO public.parroquia VALUES (165, 'ALFREDO PACHECO MIRANDA', 47);
INSERT INTO public.parroquia VALUES (166, 'LAS TEJERÍAS', 48);
INSERT INTO public.parroquia VALUES (167, 'TIARA', 48);
INSERT INTO public.parroquia VALUES (168, 'CAGUA', 49);
INSERT INTO public.parroquia VALUES (169, 'BELLA VISTA', 49);
INSERT INTO public.parroquia VALUES (170, 'LA COLONIA TOVAR', 50);
INSERT INTO public.parroquia VALUES (171, 'BARBACOAS', 51);
INSERT INTO public.parroquia VALUES (172, 'LAS PEÑITAS', 51);
INSERT INTO public.parroquia VALUES (173, 'SAN FRANCISCO DE CARA', 51);
INSERT INTO public.parroquia VALUES (174, 'TAGUAY', 51);
INSERT INTO public.parroquia VALUES (175, 'VILLA DE CURA', 52);
INSERT INTO public.parroquia VALUES (176, 'MAGDALENO', 52);
INSERT INTO public.parroquia VALUES (177, 'SAN FRANCISCO DE ASÍS', 52);
INSERT INTO public.parroquia VALUES (178, 'AUGUSTO MIJARES', 52);
INSERT INTO public.parroquia VALUES (179, 'VALLES DE TUCUTUNEMO', 52);
INSERT INTO public.parroquia VALUES (180, 'SANTA RITA', 53);
INSERT INTO public.parroquia VALUES (181, 'FRANCISCO DE MIRANDA', 53);
INSERT INTO public.parroquia VALUES (182, 'MONSEÑOR FELICIANO GONZÁLEZ', 53);
INSERT INTO public.parroquia VALUES (183, 'OCUMARE DE LA COSTA', 54);
INSERT INTO public.parroquia VALUES (184, 'SABANETA', 55);
INSERT INTO public.parroquia VALUES (185, 'RODRÍGUEZ DOMÍNGUEZ', 55);
INSERT INTO public.parroquia VALUES (186, 'TICOPORO', 56);
INSERT INTO public.parroquia VALUES (187, 'ANDRÉS BELLO', 56);
INSERT INTO public.parroquia VALUES (188, 'NICOLÁS PULIDO', 56);
INSERT INTO public.parroquia VALUES (189, 'ARISMENDI', 57);
INSERT INTO public.parroquia VALUES (190, 'GUADARRAMA', 57);
INSERT INTO public.parroquia VALUES (191, 'LA UNIÓN', 57);
INSERT INTO public.parroquia VALUES (192, 'SAN ANTONIO', 57);
INSERT INTO public.parroquia VALUES (193, 'BARINAS', 58);
INSERT INTO public.parroquia VALUES (194, 'ALFREDO ARVELO LARRIVA', 58);
INSERT INTO public.parroquia VALUES (195, 'SAN SILVESTRE', 58);
INSERT INTO public.parroquia VALUES (196, 'SANTA INÉS', 58);
INSERT INTO public.parroquia VALUES (197, 'SANTA LUCÍA', 58);
INSERT INTO public.parroquia VALUES (198, 'TORUNOS', 58);
INSERT INTO public.parroquia VALUES (199, 'EL CARMEN', 58);
INSERT INTO public.parroquia VALUES (200, 'RÓMULO BETANCOURT', 58);
INSERT INTO public.parroquia VALUES (201, 'CORAZÓN DE JESÚS', 58);
INSERT INTO public.parroquia VALUES (202, 'RAMÓN IGNACIO MÉNDEZ', 58);
INSERT INTO public.parroquia VALUES (203, 'ALTO BARINAS', 58);
INSERT INTO public.parroquia VALUES (204, 'MANUEL PALACIO FAJARDO', 58);
INSERT INTO public.parroquia VALUES (205, 'JUAN ANTONIO RODRÍGUEZ DOMÍNGUEZ', 58);
INSERT INTO public.parroquia VALUES (206, 'DOMINGA ORTIZ DE PÁEZ', 58);
INSERT INTO public.parroquia VALUES (207, 'BARINITAS', 59);
INSERT INTO public.parroquia VALUES (208, 'ALTAMIRA', 59);
INSERT INTO public.parroquia VALUES (209, 'CALDERAS', 59);
INSERT INTO public.parroquia VALUES (210, 'BARRANCAS', 60);
INSERT INTO public.parroquia VALUES (211, 'EL SOCORRO', 60);
INSERT INTO public.parroquia VALUES (212, 'MASPARRITO', 60);
INSERT INTO public.parroquia VALUES (213, 'SANTA BÁRBARA', 61);
INSERT INTO public.parroquia VALUES (214, 'JOSÉ IGNACIO DEL PUMAR', 61);
INSERT INTO public.parroquia VALUES (215, 'PEDRO BRICEÑO MÉNDEZ', 61);
INSERT INTO public.parroquia VALUES (216, 'RAMÓN IGNACIO MÉNDEZ', 61);
INSERT INTO public.parroquia VALUES (217, 'OBISPOS', 62);
INSERT INTO public.parroquia VALUES (218, 'EL REAL', 62);
INSERT INTO public.parroquia VALUES (219, 'LA LUZ', 62);
INSERT INTO public.parroquia VALUES (220, 'LOS GUASIMITOS', 62);
INSERT INTO public.parroquia VALUES (221, 'CIUDAD BOLIVIA', 63);
INSERT INTO public.parroquia VALUES (222, 'IGNACIO BRICEÑO', 63);
INSERT INTO public.parroquia VALUES (223, 'JOSÉ FÉLIX RIBAS', 63);
INSERT INTO public.parroquia VALUES (224, 'PÁEZ', 63);
INSERT INTO public.parroquia VALUES (225, 'LIBERTAD', 64);
INSERT INTO public.parroquia VALUES (226, 'DOLORES', 64);
INSERT INTO public.parroquia VALUES (227, 'PALACIOS FAJARDO', 64);
INSERT INTO public.parroquia VALUES (228, 'SANTA ROSA', 64);
INSERT INTO public.parroquia VALUES (229, 'CIUDAD DE NUTRIAS', 65);
INSERT INTO public.parroquia VALUES (230, 'EL REGALO', 65);
INSERT INTO public.parroquia VALUES (231, 'PUERTO DE NUTRIAS', 65);
INSERT INTO public.parroquia VALUES (232, 'SANTA CATALINA', 65);
INSERT INTO public.parroquia VALUES (233, 'EL CANTÓN', 66);
INSERT INTO public.parroquia VALUES (234, 'SANTA CRUZ DE GUACAS', 66);
INSERT INTO public.parroquia VALUES (235, 'PUERTO VIVAS', 66);
INSERT INTO public.parroquia VALUES (236, 'CACHAMAY', 67);
INSERT INTO public.parroquia VALUES (237, 'CHIRICA', 67);
INSERT INTO public.parroquia VALUES (238, 'DALLA COSTA', 67);
INSERT INTO public.parroquia VALUES (239, 'ONCE DE ABRIL', 67);
INSERT INTO public.parroquia VALUES (240, 'SIMÓN BOLÍVAR', 67);
INSERT INTO public.parroquia VALUES (241, 'UNARE', 67);
INSERT INTO public.parroquia VALUES (242, 'UNIVERSIDAD', 67);
INSERT INTO public.parroquia VALUES (243, 'VISTA AL SOL', 67);
INSERT INTO public.parroquia VALUES (244, 'POZO VERDE', 67);
INSERT INTO public.parroquia VALUES (245, 'YOCOIMA', 67);
INSERT INTO public.parroquia VALUES (246, 'SECCIÓN CEDEÑO', 68);
INSERT INTO public.parroquia VALUES (247, 'ALTAGRACIA', 68);
INSERT INTO public.parroquia VALUES (248, 'ASCENSIÓN FARRERAS', 68);
INSERT INTO public.parroquia VALUES (249, 'GUANIAMO', 68);
INSERT INTO public.parroquia VALUES (250, 'LA URBANA', 68);
INSERT INTO public.parroquia VALUES (251, 'PIJIGUAOS', 68);
INSERT INTO public.parroquia VALUES (252, 'EL CALLAO', 69);
INSERT INTO public.parroquia VALUES (253, 'SECCIÓN GRAN SABANA', 70);
INSERT INTO public.parroquia VALUES (254, 'IKABARÚ', 70);
INSERT INTO public.parroquia VALUES (255, 'AGUA SALADA', 71);
INSERT INTO public.parroquia VALUES (256, 'CATEDRAL', 71);
INSERT INTO public.parroquia VALUES (257, 'JOSÉ ANTONIO PÁEZ', 71);
INSERT INTO public.parroquia VALUES (258, 'LA SABANITA', 71);
INSERT INTO public.parroquia VALUES (259, 'MARHUANTA', 71);
INSERT INTO public.parroquia VALUES (260, 'VISTA HERMOSA', 71);
INSERT INTO public.parroquia VALUES (261, 'ORINOCO', 71);
INSERT INTO public.parroquia VALUES (262, 'PANAPANA', 71);
INSERT INTO public.parroquia VALUES (263, 'ZEA', 71);
INSERT INTO public.parroquia VALUES (264, 'SECCIÓN PIAR', 72);
INSERT INTO public.parroquia VALUES (265, 'ANDRÉS ELOY BLANCO', 72);
INSERT INTO public.parroquia VALUES (266, 'PEDRO COVA', 72);
INSERT INTO public.parroquia VALUES (267, 'SECCIÓN RAÚL LEONI', 73);
INSERT INTO public.parroquia VALUES (268, 'BARCELONETA', 73);
INSERT INTO public.parroquia VALUES (269, 'SAN FRANCISCO', 73);
INSERT INTO public.parroquia VALUES (270, 'SANTA BÁRBARA', 73);
INSERT INTO public.parroquia VALUES (271, 'SECCIÓN ROSCIO', 74);
INSERT INTO public.parroquia VALUES (272, 'SALOM', 74);
INSERT INTO public.parroquia VALUES (273, 'SECCIÓN SIFONTES', 75);
INSERT INTO public.parroquia VALUES (274, 'DALLA COSTA', 75);
INSERT INTO public.parroquia VALUES (275, 'SAN ISIDRO', 75);
INSERT INTO public.parroquia VALUES (276, 'SECCIÓN SUCRE', 76);
INSERT INTO public.parroquia VALUES (277, 'ARIPAO', 76);
INSERT INTO public.parroquia VALUES (278, 'GUARATARO', 76);
INSERT INTO public.parroquia VALUES (279, 'LAS MAJADAS', 76);
INSERT INTO public.parroquia VALUES (280, 'MOITACO', 76);
INSERT INTO public.parroquia VALUES (281, 'EL PALMAR', 77);
INSERT INTO public.parroquia VALUES (282, 'BEJUMA', 78);
INSERT INTO public.parroquia VALUES (283, 'CANOABO', 78);
INSERT INTO public.parroquia VALUES (284, 'SIMÓN BOLÍVAR', 78);
INSERT INTO public.parroquia VALUES (285, 'GÜIGÜE', 79);
INSERT INTO public.parroquia VALUES (286, 'BELÉN', 79);
INSERT INTO public.parroquia VALUES (287, 'TACARIGUA', 79);
INSERT INTO public.parroquia VALUES (288, 'AGUAS CALIENTES', 80);
INSERT INTO public.parroquia VALUES (289, 'MARIARA', 80);
INSERT INTO public.parroquia VALUES (290, 'CIUDAD ALIANZA', 81);
INSERT INTO public.parroquia VALUES (291, 'GUACARA', 81);
INSERT INTO public.parroquia VALUES (292, 'YAGUA', 81);
INSERT INTO public.parroquia VALUES (293, 'MORÓN', 82);
INSERT INTO public.parroquia VALUES (294, 'URAMA', 82);
INSERT INTO public.parroquia VALUES (295, 'TOCUYITO', 83);
INSERT INTO public.parroquia VALUES (296, 'INDEPENDENCIA', 83);
INSERT INTO public.parroquia VALUES (297, 'LOS GUAYOS', 84);
INSERT INTO public.parroquia VALUES (298, 'MIRANDA', 85);
INSERT INTO public.parroquia VALUES (299, 'MONTALBÁN', 86);
INSERT INTO public.parroquia VALUES (300, 'NAGUANAGUA', 87);
INSERT INTO public.parroquia VALUES (301, 'BARTOLOMÉ SALOM', 88);
INSERT INTO public.parroquia VALUES (302, 'DEMOCRACIA', 88);
INSERT INTO public.parroquia VALUES (303, 'FRATERNIDAD', 88);
INSERT INTO public.parroquia VALUES (304, 'GOAIGOAZA', 88);
INSERT INTO public.parroquia VALUES (305, 'JUAN JOSÉ FLORES', 88);
INSERT INTO public.parroquia VALUES (306, 'UNIÓN', 88);
INSERT INTO public.parroquia VALUES (307, 'BORBURATA', 88);
INSERT INTO public.parroquia VALUES (308, 'PATANEMO', 88);
INSERT INTO public.parroquia VALUES (309, 'SAN DIEGO', 89);
INSERT INTO public.parroquia VALUES (310, 'SAN JOAQUÍN', 90);
INSERT INTO public.parroquia VALUES (311, 'CANDELARIA', 91);
INSERT INTO public.parroquia VALUES (312, 'CATEDRAL', 91);
INSERT INTO public.parroquia VALUES (313, 'EL SOCORRO', 91);
INSERT INTO public.parroquia VALUES (314, 'MIGUEL PEÑA', 91);
INSERT INTO public.parroquia VALUES (315, 'RAFAEL URDANETA', 91);
INSERT INTO public.parroquia VALUES (316, 'SAN BLAS', 91);
INSERT INTO public.parroquia VALUES (317, 'SAN JOSÉ', 91);
INSERT INTO public.parroquia VALUES (318, 'SANTA ROSA', 91);
INSERT INTO public.parroquia VALUES (319, 'NEGRO PRIMERO', 91);
INSERT INTO public.parroquia VALUES (320, 'COJEDES', 92);
INSERT INTO public.parroquia VALUES (321, 'JUAN DE MATA SUÁREZ', 92);
INSERT INTO public.parroquia VALUES (322, 'TINAQUILLO', 93);
INSERT INTO public.parroquia VALUES (323, 'EL BAÚL', 94);
INSERT INTO public.parroquia VALUES (324, 'SUCRE', 94);
INSERT INTO public.parroquia VALUES (325, 'MACAPO', 95);
INSERT INTO public.parroquia VALUES (326, 'LA AGUADITA', 95);
INSERT INTO public.parroquia VALUES (327, 'EL PAO', 96);
INSERT INTO public.parroquia VALUES (328, 'LIBERTAD DE COJEDES', 97);
INSERT INTO public.parroquia VALUES (329, 'EL AMPARO', 97);
INSERT INTO public.parroquia VALUES (330, 'RÓMULO GALLEGOS', 98);
INSERT INTO public.parroquia VALUES (331, 'SAN CARLOS DE AUSTRIA', 99);
INSERT INTO public.parroquia VALUES (332, 'JUAN ANGEL BRAVO', 99);
INSERT INTO public.parroquia VALUES (333, 'MANUEL MANRIQUE', 99);
INSERT INTO public.parroquia VALUES (334, 'GENERAL EN JEFE JOSÉ LAURENCIO SILVA', 100);
INSERT INTO public.parroquia VALUES (335, 'CURIAPO', 101);
INSERT INTO public.parroquia VALUES (336, 'ALMIRANTE LUIS BRIÓN', 101);
INSERT INTO public.parroquia VALUES (337, 'FRANCISCO ANICETO LUGO', 101);
INSERT INTO public.parroquia VALUES (338, 'MANUEL RENAUD', 101);
INSERT INTO public.parroquia VALUES (339, 'PADRE BARRAL', 101);
INSERT INTO public.parroquia VALUES (340, 'SANTOS DE ABELGAS', 101);
INSERT INTO public.parroquia VALUES (341, 'IMATACA', 102);
INSERT INTO public.parroquia VALUES (342, 'CINCO DE JULIO', 102);
INSERT INTO public.parroquia VALUES (343, 'JUAN BAUTISTA ARISMENDI', 102);
INSERT INTO public.parroquia VALUES (344, 'MANUEL PIAR', 102);
INSERT INTO public.parroquia VALUES (345, 'RÓMULO GALLEGOS', 102);
INSERT INTO public.parroquia VALUES (346, 'PEDERNALES', 103);
INSERT INTO public.parroquia VALUES (347, 'LUIS BELTRÁN PRIETO FIGUEROA', 103);
INSERT INTO public.parroquia VALUES (348, 'SAN JOSÉ', 104);
INSERT INTO public.parroquia VALUES (349, 'JOSÉ VIDAL MARCANO', 104);
INSERT INTO public.parroquia VALUES (350, 'JUAN MILLÁN', 104);
INSERT INTO public.parroquia VALUES (351, 'LEONARDO RUÍZ PINEDA', 104);
INSERT INTO public.parroquia VALUES (352, 'MARISCAL ANTONIO JOSÉ DE SUCRE', 104);
INSERT INTO public.parroquia VALUES (353, 'MONSEÑOR ARGIMIRO GARCÍA', 104);
INSERT INTO public.parroquia VALUES (354, 'SAN RAFAEL', 104);
INSERT INTO public.parroquia VALUES (355, 'VIRGEN DEL VALLE', 104);
INSERT INTO public.parroquia VALUES (356, 'SAN JUAN DE LOS CAYOS', 105);
INSERT INTO public.parroquia VALUES (357, 'CAPADARE', 105);
INSERT INTO public.parroquia VALUES (358, 'LA PASTORA', 105);
INSERT INTO public.parroquia VALUES (359, 'LIBERTADOR', 105);
INSERT INTO public.parroquia VALUES (360, 'SAN LUIS', 106);
INSERT INTO public.parroquia VALUES (361, 'ARACUA', 106);
INSERT INTO public.parroquia VALUES (362, 'LA PEÑA', 106);
INSERT INTO public.parroquia VALUES (363, 'CAPATÁRIDA', 107);
INSERT INTO public.parroquia VALUES (364, 'BARIRO', 107);
INSERT INTO public.parroquia VALUES (365, 'BOROJÓ', 107);
INSERT INTO public.parroquia VALUES (366, 'GUAJIRO', 107);
INSERT INTO public.parroquia VALUES (367, 'SEQUE', 107);
INSERT INTO public.parroquia VALUES (368, 'ZAZÁRIDA', 107);
INSERT INTO public.parroquia VALUES (369, 'YARACAL', 108);
INSERT INTO public.parroquia VALUES (370, 'CARIRUBANA', 109);
INSERT INTO public.parroquia VALUES (371, 'NORTE', 109);
INSERT INTO public.parroquia VALUES (372, 'PUNTA CARDÓN', 109);
INSERT INTO public.parroquia VALUES (373, 'SANTA ANA', 109);
INSERT INTO public.parroquia VALUES (374, 'LA VELA DE CORO', 110);
INSERT INTO public.parroquia VALUES (375, 'ACURIGUA', 110);
INSERT INTO public.parroquia VALUES (376, 'GUAIBACOA', 110);
INSERT INTO public.parroquia VALUES (377, 'LAS CALDERAS', 110);
INSERT INTO public.parroquia VALUES (378, 'MACORUCA', 110);
INSERT INTO public.parroquia VALUES (379, 'DABAJURO', 111);
INSERT INTO public.parroquia VALUES (380, 'PEDREGAL', 112);
INSERT INTO public.parroquia VALUES (381, 'AGUA CLARA', 112);
INSERT INTO public.parroquia VALUES (382, 'AVARIA', 112);
INSERT INTO public.parroquia VALUES (383, 'PIEDRA GRANDE', 112);
INSERT INTO public.parroquia VALUES (384, 'PURURECHE', 112);
INSERT INTO public.parroquia VALUES (385, 'PUEBLO NUEVO', 113);
INSERT INTO public.parroquia VALUES (386, 'ADÍCORA', 113);
INSERT INTO public.parroquia VALUES (387, 'BARAIVED', 113);
INSERT INTO public.parroquia VALUES (388, 'BUENA VISTA', 113);
INSERT INTO public.parroquia VALUES (389, 'JADACAQUIVA', 113);
INSERT INTO public.parroquia VALUES (390, 'MORUY', 113);
INSERT INTO public.parroquia VALUES (391, 'ADAURE', 113);
INSERT INTO public.parroquia VALUES (392, 'EL HATO', 113);
INSERT INTO public.parroquia VALUES (393, 'EL VÍNCULO', 113);
INSERT INTO public.parroquia VALUES (394, 'CHURUGUARA', 114);
INSERT INTO public.parroquia VALUES (395, 'AGUA LARGA', 114);
INSERT INTO public.parroquia VALUES (396, 'PAUJÍ', 114);
INSERT INTO public.parroquia VALUES (397, 'INDEPENDENCIA', 114);
INSERT INTO public.parroquia VALUES (398, 'MAPARARÍ', 114);
INSERT INTO public.parroquia VALUES (399, 'JACURA', 115);
INSERT INTO public.parroquia VALUES (400, 'AGUA LINDA', 115);
INSERT INTO public.parroquia VALUES (401, 'ARAURIMA', 115);
INSERT INTO public.parroquia VALUES (402, 'LOS TAQUES', 116);
INSERT INTO public.parroquia VALUES (403, 'JUDIBANA', 116);
INSERT INTO public.parroquia VALUES (404, 'MENE DE MAUROA', 117);
INSERT INTO public.parroquia VALUES (405, 'CASIGUA', 117);
INSERT INTO public.parroquia VALUES (406, 'SAN FÉLIX', 117);
INSERT INTO public.parroquia VALUES (407, 'SAN ANTONIO', 118);
INSERT INTO public.parroquia VALUES (408, 'SAN GABRIEL', 118);
INSERT INTO public.parroquia VALUES (409, 'SANTA ANA', 118);
INSERT INTO public.parroquia VALUES (410, 'GUZMÁN GUILLERMO', 118);
INSERT INTO public.parroquia VALUES (411, 'MITARE', 118);
INSERT INTO public.parroquia VALUES (412, 'RÍO SECO', 118);
INSERT INTO public.parroquia VALUES (413, 'SABANETA', 118);
INSERT INTO public.parroquia VALUES (414, 'CHICHIRIVICHE', 119);
INSERT INTO public.parroquia VALUES (415, 'BOCA DE TOCUYO', 119);
INSERT INTO public.parroquia VALUES (416, 'TOCUYO DE LA COSTA', 119);
INSERT INTO public.parroquia VALUES (417, 'PALMASOLA', 120);
INSERT INTO public.parroquia VALUES (418, 'CABURE', 121);
INSERT INTO public.parroquia VALUES (419, 'COLINA', 121);
INSERT INTO public.parroquia VALUES (420, 'CURIMAGUA', 121);
INSERT INTO public.parroquia VALUES (421, 'PÍRITU', 122);
INSERT INTO public.parroquia VALUES (422, 'SAN JOSÉ DE LA COSTA', 122);
INSERT INTO public.parroquia VALUES (423, 'MIRIMIRE', 123);
INSERT INTO public.parroquia VALUES (424, 'TUCACAS', 124);
INSERT INTO public.parroquia VALUES (425, 'BOCA DE AROA', 124);
INSERT INTO public.parroquia VALUES (426, 'SUCRE', 125);
INSERT INTO public.parroquia VALUES (427, 'PECAYA', 125);
INSERT INTO public.parroquia VALUES (428, 'TOCÓPERO', 126);
INSERT INTO public.parroquia VALUES (429, 'SANTA CRUZ DE BUCARAL', 127);
INSERT INTO public.parroquia VALUES (430, 'EL CHARAL', 127);
INSERT INTO public.parroquia VALUES (431, 'LAS VEGAS DEL TUY', 127);
INSERT INTO public.parroquia VALUES (432, 'URUMACO', 128);
INSERT INTO public.parroquia VALUES (433, 'BRUZUAL', 128);
INSERT INTO public.parroquia VALUES (434, 'PUERTO CUMAREBO', 129);
INSERT INTO public.parroquia VALUES (435, 'LA CIÉNAGA', 129);
INSERT INTO public.parroquia VALUES (436, 'LA SOLEDAD', 129);
INSERT INTO public.parroquia VALUES (437, 'PUEBLO CUMAREBO', 129);
INSERT INTO public.parroquia VALUES (438, 'ZAZÁRIDA', 129);
INSERT INTO public.parroquia VALUES (439, 'CAMAGUÁN', 130);
INSERT INTO public.parroquia VALUES (440, 'PUERTO MIRANDA', 130);
INSERT INTO public.parroquia VALUES (441, 'UVERITO', 130);
INSERT INTO public.parroquia VALUES (442, 'CHAGUARAMAS', 131);
INSERT INTO public.parroquia VALUES (443, 'EL SOCORRO', 132);
INSERT INTO public.parroquia VALUES (444, 'GUAYABAL', 133);
INSERT INTO public.parroquia VALUES (445, 'CAZORLA', 133);
INSERT INTO public.parroquia VALUES (446, 'VALLE DE LA PASCUA', 134);
INSERT INTO public.parroquia VALUES (447, 'ESPINO', 134);
INSERT INTO public.parroquia VALUES (448, 'LAS MERCEDES', 135);
INSERT INTO public.parroquia VALUES (449, 'CABRUTA', 135);
INSERT INTO public.parroquia VALUES (450, 'SANTA RITA DE MANAPIRE', 135);
INSERT INTO public.parroquia VALUES (451, 'EL SOMBRERO', 136);
INSERT INTO public.parroquia VALUES (452, 'SOSA', 136);
INSERT INTO public.parroquia VALUES (453, 'CALABOZO', 137);
INSERT INTO public.parroquia VALUES (454, 'EL CALVARIO', 137);
INSERT INTO public.parroquia VALUES (455, 'EL RASTRO', 137);
INSERT INTO public.parroquia VALUES (456, 'GUARDATINAJAS', 137);
INSERT INTO public.parroquia VALUES (457, 'ALTAGRACIA DE ORITUCO', 139);
INSERT INTO public.parroquia VALUES (458, 'LEZAMA', 139);
INSERT INTO public.parroquia VALUES (459, 'LIBERTAD DE ORITUCO', 139);
INSERT INTO public.parroquia VALUES (460, 'PASO REAL DE MACAIRA', 139);
INSERT INTO public.parroquia VALUES (461, 'SAN FRANCISCO DE MACAIRA', 139);
INSERT INTO public.parroquia VALUES (462, 'SAN RAFAEL DE ORITUCO', 139);
INSERT INTO public.parroquia VALUES (463, 'SOUBLETTE', 139);
INSERT INTO public.parroquia VALUES (464, 'ORTIZ', 140);
INSERT INTO public.parroquia VALUES (465, 'SAN FRANCISCO DE TIZNADOS', 140);
INSERT INTO public.parroquia VALUES (466, 'SAN JOSÃ DE TIZNADOS', 140);
INSERT INTO public.parroquia VALUES (467, 'SAN LORENZO DE TIZNADOS', 140);
INSERT INTO public.parroquia VALUES (468, 'TUCUPIDO', 141);
INSERT INTO public.parroquia VALUES (469, 'SAN RAFAEL DE LAYA', 141);
INSERT INTO public.parroquia VALUES (470, 'SAN JUAN DE LOS MORROS', 142);
INSERT INTO public.parroquia VALUES (471, 'CANTAGALLO', 142);
INSERT INTO public.parroquia VALUES (472, 'PARAPARA', 142);
INSERT INTO public.parroquia VALUES (473, 'SAN JOSÉ DE GUARIBE', 143);
INSERT INTO public.parroquia VALUES (474, 'SANTA MARÍA DE IPIRE', 144);
INSERT INTO public.parroquia VALUES (475, 'ALTAMIRA', 144);
INSERT INTO public.parroquia VALUES (476, 'ZARAZA', 145);
INSERT INTO public.parroquia VALUES (477, 'SAN JOSÉ DE UNARE', 145);
INSERT INTO public.parroquia VALUES (478, 'PÍO TAMAYO', 146);
INSERT INTO public.parroquia VALUES (479, 'QUEBRADA HONDA DE GUACHE', 146);
INSERT INTO public.parroquia VALUES (480, 'YACAMBÚ', 146);
INSERT INTO public.parroquia VALUES (481, 'FRÉITEZ', 147);
INSERT INTO public.parroquia VALUES (482, 'JOSÉ MARÍA BLANCO', 147);
INSERT INTO public.parroquia VALUES (483, 'CATEDRAL', 148);
INSERT INTO public.parroquia VALUES (484, 'CONCEPCIÓN', 148);
INSERT INTO public.parroquia VALUES (485, 'EL CUJÍ', 148);
INSERT INTO public.parroquia VALUES (486, 'JUAN DE VILLEGAS', 148);
INSERT INTO public.parroquia VALUES (487, 'SANTA ROSA', 148);
INSERT INTO public.parroquia VALUES (488, 'TAMACA', 148);
INSERT INTO public.parroquia VALUES (489, 'UNIÓN', 148);
INSERT INTO public.parroquia VALUES (490, 'AGUEDO FELIPE ALVARADO', 148);
INSERT INTO public.parroquia VALUES (491, 'BUENA VISTA', 148);
INSERT INTO public.parroquia VALUES (492, 'JUÁREZ', 148);
INSERT INTO public.parroquia VALUES (493, 'JUAN BAUTISTA RODRÍGUEZ', 149);
INSERT INTO public.parroquia VALUES (494, 'CUARA', 149);
INSERT INTO public.parroquia VALUES (495, 'DIEGO DE LOZADA', 149);
INSERT INTO public.parroquia VALUES (496, 'PARAÍSO DE SAN JOSÉ', 149);
INSERT INTO public.parroquia VALUES (497, 'SAN MIGUEL', 149);
INSERT INTO public.parroquia VALUES (498, 'TINTORERO', 149);
INSERT INTO public.parroquia VALUES (499, 'JOSÉ BERNARDO DORANTE', 149);
INSERT INTO public.parroquia VALUES (500, 'CORONEL MARIANO PERAZA', 149);
INSERT INTO public.parroquia VALUES (501, 'BOLÍVAR', 150);
INSERT INTO public.parroquia VALUES (502, 'ANZOÁTEGUI', 150);
INSERT INTO public.parroquia VALUES (503, 'GUARICO', 150);
INSERT INTO public.parroquia VALUES (504, 'HILARIO LUNA Y LUNA', 150);
INSERT INTO public.parroquia VALUES (505, 'HUMOCARO ALTO', 150);
INSERT INTO public.parroquia VALUES (506, 'HUMOCARO BAJO', 150);
INSERT INTO public.parroquia VALUES (507, 'LA CANDELARIA', 150);
INSERT INTO public.parroquia VALUES (508, 'MORÁN', 150);
INSERT INTO public.parroquia VALUES (509, 'CABUDARE', 151);
INSERT INTO public.parroquia VALUES (510, 'JOSÉ GREGORIO BASTIDAS', 151);
INSERT INTO public.parroquia VALUES (511, 'AGUA VIVA', 151);
INSERT INTO public.parroquia VALUES (512, 'SARARE', 152);
INSERT INTO public.parroquia VALUES (513, 'BURÍA', 152);
INSERT INTO public.parroquia VALUES (514, 'GUSTAVO VEGAS LEÓN', 152);
INSERT INTO public.parroquia VALUES (515, 'TRINIDAD SAMUEL', 153);
INSERT INTO public.parroquia VALUES (516, 'ANTONIO DÍAZ', 153);
INSERT INTO public.parroquia VALUES (517, 'CAMACARO', 153);
INSERT INTO public.parroquia VALUES (518, 'CASTAÑEDA', 153);
INSERT INTO public.parroquia VALUES (519, 'CECILIO ZUBILLAGA', 153);
INSERT INTO public.parroquia VALUES (520, 'CHIQUINQUIRÁ', 153);
INSERT INTO public.parroquia VALUES (521, 'EL BLANCO', 153);
INSERT INTO public.parroquia VALUES (522, 'ESPINOZA DE LOS MONTEROS', 153);
INSERT INTO public.parroquia VALUES (523, 'LARA', 153);
INSERT INTO public.parroquia VALUES (524, 'LAS MERCEDES', 153);
INSERT INTO public.parroquia VALUES (525, 'MANUEL MORILLO', 153);
INSERT INTO public.parroquia VALUES (526, 'MONTAÑA VERDE', 153);
INSERT INTO public.parroquia VALUES (527, 'MONTES DE OCA', 153);
INSERT INTO public.parroquia VALUES (528, 'TORRES', 153);
INSERT INTO public.parroquia VALUES (529, 'HERIBERTO ARROYO', 153);
INSERT INTO public.parroquia VALUES (530, 'REYES VARGAS', 153);
INSERT INTO public.parroquia VALUES (531, 'ALTAGRACIA', 153);
INSERT INTO public.parroquia VALUES (532, 'SIQUISIQUE', 154);
INSERT INTO public.parroquia VALUES (533, 'MOROTURO', 154);
INSERT INTO public.parroquia VALUES (534, 'SAN MIGUEL', 154);
INSERT INTO public.parroquia VALUES (535, 'XAGUAS', 154);
INSERT INTO public.parroquia VALUES (536, 'PRESIDENTE BETANCOURT', 155);
INSERT INTO public.parroquia VALUES (537, 'PRESIDENTE PÁEZ', 155);
INSERT INTO public.parroquia VALUES (538, 'PRESIDENTE RÓMULO GALLEGOS', 155);
INSERT INTO public.parroquia VALUES (539, 'GABRIEL PICÓN GONZÁLEZ', 155);
INSERT INTO public.parroquia VALUES (540, 'HÉCTOR AMABLE MORA', 155);
INSERT INTO public.parroquia VALUES (541, 'JOSÉ NUCETE SARDI', 155);
INSERT INTO public.parroquia VALUES (542, 'PULIDO MÉNDEZ', 155);
INSERT INTO public.parroquia VALUES (543, 'LA AZULITA', 156);
INSERT INTO public.parroquia VALUES (544, 'SANTA CRUZ DE MORA', 157);
INSERT INTO public.parroquia VALUES (545, 'MESA BOLÍVAR', 157);
INSERT INTO public.parroquia VALUES (546, 'MESA DE LAS PALMAS', 157);
INSERT INTO public.parroquia VALUES (547, 'ARICAGUA', 158);
INSERT INTO public.parroquia VALUES (548, 'SAN ANTONIO', 158);
INSERT INTO public.parroquia VALUES (549, 'CANAGUÁ', 159);
INSERT INTO public.parroquia VALUES (550, 'CAPURÍ', 159);
INSERT INTO public.parroquia VALUES (551, 'CHACANTÁ', 159);
INSERT INTO public.parroquia VALUES (552, 'EL MOLINO', 159);
INSERT INTO public.parroquia VALUES (553, 'GUAIMARAL', 159);
INSERT INTO public.parroquia VALUES (554, 'MUCUTUY', 159);
INSERT INTO public.parroquia VALUES (555, 'MUCUCHACHÍ', 159);
INSERT INTO public.parroquia VALUES (556, 'FERNÁNDEZ PEÑA', 160);
INSERT INTO public.parroquia VALUES (557, 'MATRIZ', 160);
INSERT INTO public.parroquia VALUES (558, 'MONTALBÁN', 160);
INSERT INTO public.parroquia VALUES (559, 'ACEQUIAS', 160);
INSERT INTO public.parroquia VALUES (560, 'JAJÍ', 160);
INSERT INTO public.parroquia VALUES (561, 'LA MESA', 160);
INSERT INTO public.parroquia VALUES (562, 'SAN JOSÉ DEL SUR', 160);
INSERT INTO public.parroquia VALUES (563, 'TUCANÍ', 161);
INSERT INTO public.parroquia VALUES (564, 'FLORENCIO RAMÍREZ', 161);
INSERT INTO public.parroquia VALUES (565, 'SANTO DOMINGO', 162);
INSERT INTO public.parroquia VALUES (566, 'LAS PIEDRAS', 162);
INSERT INTO public.parroquia VALUES (567, 'GUARAQUE', 163);
INSERT INTO public.parroquia VALUES (568, 'MESA DE QUINTERO', 163);
INSERT INTO public.parroquia VALUES (569, 'RÍO NEGRO', 163);
INSERT INTO public.parroquia VALUES (570, 'ARAPUEY', 164);
INSERT INTO public.parroquia VALUES (571, 'PALMIRA', 164);
INSERT INTO public.parroquia VALUES (572, 'TORONDOY', 165);
INSERT INTO public.parroquia VALUES (573, 'SAN CRISTÓBAL DE TORONDOY', 165);
INSERT INTO public.parroquia VALUES (574, 'ANTONIO SPINETTI DINI', 166);
INSERT INTO public.parroquia VALUES (575, 'ARIAS', 166);
INSERT INTO public.parroquia VALUES (576, 'CARACCIOLO PARRA PÉREZ', 166);
INSERT INTO public.parroquia VALUES (577, 'DOMINGO PEÑA', 166);
INSERT INTO public.parroquia VALUES (578, 'EL LLANO', 166);
INSERT INTO public.parroquia VALUES (579, 'GONZALO PICÓN FEBRES', 166);
INSERT INTO public.parroquia VALUES (580, 'JACINTO PLAZA', 166);
INSERT INTO public.parroquia VALUES (581, 'JUAN RODRÍGUEZ SUÁREZ', 166);
INSERT INTO public.parroquia VALUES (582, 'LASSO DE LA VEGA', 166);
INSERT INTO public.parroquia VALUES (583, 'MARIANO PICÓN SALAS', 166);
INSERT INTO public.parroquia VALUES (584, 'MILLA', 166);
INSERT INTO public.parroquia VALUES (585, 'OSUNA RODRÍGUEZ', 166);
INSERT INTO public.parroquia VALUES (586, 'SAGRARIO', 166);
INSERT INTO public.parroquia VALUES (587, 'EL MORRO', 166);
INSERT INTO public.parroquia VALUES (588, 'LOS NEVADOS', 166);
INSERT INTO public.parroquia VALUES (589, 'TIMOTES', 167);
INSERT INTO public.parroquia VALUES (590, 'ANDRÉS ELOY BLANCO', 167);
INSERT INTO public.parroquia VALUES (591, 'LA VENTA', 167);
INSERT INTO public.parroquia VALUES (592, 'PIÑANGO', 167);
INSERT INTO public.parroquia VALUES (593, 'SANTA ELENA DE ARENALES', 168);
INSERT INTO public.parroquia VALUES (594, 'ELOY PAREDES', 168);
INSERT INTO public.parroquia VALUES (595, 'SAN RAFAEL DE ALCÁZAR', 168);
INSERT INTO public.parroquia VALUES (596, 'SANTA MARÍA DE CAPARO', 169);
INSERT INTO public.parroquia VALUES (597, 'PUEBLO LLANO', 170);
INSERT INTO public.parroquia VALUES (598, 'MUCUCHÍES', 171);
INSERT INTO public.parroquia VALUES (599, 'CACUTE', 171);
INSERT INTO public.parroquia VALUES (600, 'LA TOMA', 171);
INSERT INTO public.parroquia VALUES (601, 'MUCURUBÁ', 171);
INSERT INTO public.parroquia VALUES (602, 'SAN RAFAEL', 171);
INSERT INTO public.parroquia VALUES (603, 'BAILADORES', 172);
INSERT INTO public.parroquia VALUES (604, 'GERÓNIMO MALDONADO', 172);
INSERT INTO public.parroquia VALUES (605, 'TABAY', 173);
INSERT INTO public.parroquia VALUES (606, 'LAGUNILLAS', 174);
INSERT INTO public.parroquia VALUES (607, 'CHIGUARÁ', 174);
INSERT INTO public.parroquia VALUES (608, 'ESTÁNQUEZ', 174);
INSERT INTO public.parroquia VALUES (609, 'LA TRAMPA', 174);
INSERT INTO public.parroquia VALUES (610, 'PUEBLO NUEVO DEL SUR', 174);
INSERT INTO public.parroquia VALUES (611, 'SAN JUAN', 174);
INSERT INTO public.parroquia VALUES (612, 'EL AMPARO', 175);
INSERT INTO public.parroquia VALUES (613, 'EL LLANO', 175);
INSERT INTO public.parroquia VALUES (614, 'SAN FRANCISCO', 175);
INSERT INTO public.parroquia VALUES (615, 'TOVAR', 175);
INSERT INTO public.parroquia VALUES (616, 'NUEVA BOLIVIA', 176);
INSERT INTO public.parroquia VALUES (617, 'INDEPENDENCIA', 176);
INSERT INTO public.parroquia VALUES (618, 'MARÍA DE LA CONCEPCIÓN PALACIOS BLANCO', 176);
INSERT INTO public.parroquia VALUES (619, 'SANTA APOLONIA', 176);
INSERT INTO public.parroquia VALUES (620, 'ZEA', 177);
INSERT INTO public.parroquia VALUES (621, 'CAÑO EL TIGRE', 177);
INSERT INTO public.parroquia VALUES (622, 'CAUCAGUA', 178);
INSERT INTO public.parroquia VALUES (623, 'ARAGÜITA', 178);
INSERT INTO public.parroquia VALUES (624, 'ARÉVALO GONZÁLEZ', 178);
INSERT INTO public.parroquia VALUES (625, 'CAPAYA', 178);
INSERT INTO public.parroquia VALUES (626, 'EL CAFÉ', 178);
INSERT INTO public.parroquia VALUES (627, 'MARIZAPA', 178);
INSERT INTO public.parroquia VALUES (628, 'PANAQUIRE', 178);
INSERT INTO public.parroquia VALUES (629, 'RIBAS', 178);
INSERT INTO public.parroquia VALUES (630, 'SAN JOSÉ DE BARLOVENTO', 179);
INSERT INTO public.parroquia VALUES (631, 'CUMBO', 179);
INSERT INTO public.parroquia VALUES (632, 'BARUTA', 180);
INSERT INTO public.parroquia VALUES (633, 'EL CAFETAL', 180);
INSERT INTO public.parroquia VALUES (634, 'LAS MINAS DE BARUTA', 180);
INSERT INTO public.parroquia VALUES (635, 'HIGUEROTE', 181);
INSERT INTO public.parroquia VALUES (636, 'CURIEPE', 181);
INSERT INTO public.parroquia VALUES (637, 'TACARIGUA', 181);
INSERT INTO public.parroquia VALUES (638, 'MAMPORAL', 182);
INSERT INTO public.parroquia VALUES (639, 'CARRIZAL', 183);
INSERT INTO public.parroquia VALUES (640, 'CHACAO', 184);
INSERT INTO public.parroquia VALUES (641, 'CHARALLAVE', 185);
INSERT INTO public.parroquia VALUES (642, 'LAS BRISAS', 185);
INSERT INTO public.parroquia VALUES (643, 'EL HATILLO', 186);
INSERT INTO public.parroquia VALUES (644, 'LOS TEQUES', 187);
INSERT INTO public.parroquia VALUES (645, 'ALTAGRACIA DE LA MONTAÑA', 187);
INSERT INTO public.parroquia VALUES (646, 'CECILIO ACOSTA', 187);
INSERT INTO public.parroquia VALUES (647, 'EL JARILLO', 187);
INSERT INTO public.parroquia VALUES (648, 'PARACOTOS', 187);
INSERT INTO public.parroquia VALUES (649, 'SAN PEDRO', 187);
INSERT INTO public.parroquia VALUES (650, 'TÁCATA', 187);
INSERT INTO public.parroquia VALUES (651, 'SANTA TERESA DEL TUY', 188);
INSERT INTO public.parroquia VALUES (652, 'EL CARTANAL', 188);
INSERT INTO public.parroquia VALUES (653, 'OCUMARE DEL TUY', 189);
INSERT INTO public.parroquia VALUES (654, 'LA DEMOCRACIA', 189);
INSERT INTO public.parroquia VALUES (655, 'SANTA BÁRBARA', 189);
INSERT INTO public.parroquia VALUES (656, 'SAN ANTONIO DE LOS ALTOS', 190);
INSERT INTO public.parroquia VALUES (657, 'RÍO CHICO', 191);
INSERT INTO public.parroquia VALUES (658, 'EL GUAPO', 191);
INSERT INTO public.parroquia VALUES (659, 'TACARIGUA DE LA LAGUNA', 191);
INSERT INTO public.parroquia VALUES (660, 'PAPARO', 191);
INSERT INTO public.parroquia VALUES (661, 'SAN FERNANDO DEL GUAPO', 191);
INSERT INTO public.parroquia VALUES (662, 'SANTA LUCÍA', 192);
INSERT INTO public.parroquia VALUES (663, 'CÚPIRA', 193);
INSERT INTO public.parroquia VALUES (664, 'MACHURUCUTO', 193);
INSERT INTO public.parroquia VALUES (665, 'GUARENAS', 194);
INSERT INTO public.parroquia VALUES (666, 'SAN FRANCISCO DE YARE', 195);
INSERT INTO public.parroquia VALUES (667, 'SAN ANTONIO DE YARE', 195);
INSERT INTO public.parroquia VALUES (668, 'PETARE', 196);
INSERT INTO public.parroquia VALUES (669, 'CAUCAGÜITA', 196);
INSERT INTO public.parroquia VALUES (670, 'FILA DE MARICHES', 196);
INSERT INTO public.parroquia VALUES (671, 'LA DOLORITA', 196);
INSERT INTO public.parroquia VALUES (672, 'LEONCIO MARTÍNEZ', 196);
INSERT INTO public.parroquia VALUES (673, 'CÚA', 197);
INSERT INTO public.parroquia VALUES (674, 'NUEVA CÚA', 197);
INSERT INTO public.parroquia VALUES (675, 'GUATIRE', 198);
INSERT INTO public.parroquia VALUES (676, 'BOLÍVAR', 198);
INSERT INTO public.parroquia VALUES (677, 'SAN ANTONIO', 199);
INSERT INTO public.parroquia VALUES (678, 'SAN FRANCISCO', 199);
INSERT INTO public.parroquia VALUES (679, 'AGUASAY', 200);
INSERT INTO public.parroquia VALUES (680, 'CARIPITO', 201);
INSERT INTO public.parroquia VALUES (681, 'CARIPE', 202);
INSERT INTO public.parroquia VALUES (682, 'EL GUÁCHARO', 202);
INSERT INTO public.parroquia VALUES (683, 'LA GUANOTA', 202);
INSERT INTO public.parroquia VALUES (684, 'SABANA DE PIEDRA', 202);
INSERT INTO public.parroquia VALUES (685, 'SAN AGUSTÍN', 202);
INSERT INTO public.parroquia VALUES (686, 'TERESÉN', 202);
INSERT INTO public.parroquia VALUES (687, 'CAICARA', 203);
INSERT INTO public.parroquia VALUES (688, 'AREO', 203);
INSERT INTO public.parroquia VALUES (689, 'SAN FÉLIX', 203);
INSERT INTO public.parroquia VALUES (690, 'VIENTO FRESCO', 203);
INSERT INTO public.parroquia VALUES (691, 'PUNTA DE MATA', 204);
INSERT INTO public.parroquia VALUES (692, 'EL TEJERO', 204);
INSERT INTO public.parroquia VALUES (693, 'TEMBLADOR', 205);
INSERT INTO public.parroquia VALUES (694, 'CHAGUARAMAS', 205);
INSERT INTO public.parroquia VALUES (695, 'LAS ALHUACAS', 205);
INSERT INTO public.parroquia VALUES (696, 'TABASCA', 205);
INSERT INTO public.parroquia VALUES (697, 'MATURÍN', 206);
INSERT INTO public.parroquia VALUES (698, 'ALTO DE LOS GODOS', 206);
INSERT INTO public.parroquia VALUES (699, 'BOQUERÓN', 206);
INSERT INTO public.parroquia VALUES (700, 'LAS COCUIZAS', 206);
INSERT INTO public.parroquia VALUES (701, 'SAN SIMÓN', 206);
INSERT INTO public.parroquia VALUES (702, 'SANTA CRUZ', 206);
INSERT INTO public.parroquia VALUES (703, 'EL COROZO', 206);
INSERT INTO public.parroquia VALUES (704, 'EL FURRIAL', 206);
INSERT INTO public.parroquia VALUES (705, 'JUSEPÍN', 206);
INSERT INTO public.parroquia VALUES (706, 'LA PICA', 206);
INSERT INTO public.parroquia VALUES (707, 'SAN VICENTE', 206);
INSERT INTO public.parroquia VALUES (708, 'ARAGUA', 207);
INSERT INTO public.parroquia VALUES (709, 'APARICIO', 207);
INSERT INTO public.parroquia VALUES (710, 'CHAGUARAMAL', 207);
INSERT INTO public.parroquia VALUES (711, 'EL PINTO', 207);
INSERT INTO public.parroquia VALUES (712, 'GUANAGUANA', 207);
INSERT INTO public.parroquia VALUES (713, 'LA TOSCANA', 207);
INSERT INTO public.parroquia VALUES (714, 'TAGUAYA', 207);
INSERT INTO public.parroquia VALUES (715, 'QUIRIQUIRE', 208);
INSERT INTO public.parroquia VALUES (716, 'CACHIPO', 208);
INSERT INTO public.parroquia VALUES (717, 'SANTA BÁRBARA', 209);
INSERT INTO public.parroquia VALUES (718, 'BARRANCAS', 210);
INSERT INTO public.parroquia VALUES (719, 'LOS BARRANCOS DE FAJARDO', 210);
INSERT INTO public.parroquia VALUES (720, 'URACOA', 211);
INSERT INTO public.parroquia VALUES (721, 'LA PLAZA DE PARAGUACHÍ', 212);
INSERT INTO public.parroquia VALUES (722, 'LA ASUNCIÓN', 213);
INSERT INTO public.parroquia VALUES (723, 'SAN JUAN BAUTISTA', 214);
INSERT INTO public.parroquia VALUES (724, 'ZABALA', 214);
INSERT INTO public.parroquia VALUES (725, 'EL VALLE DEL ESPÍRITU SANTO', 215);
INSERT INTO public.parroquia VALUES (726, 'FRANCISCO FAJARDO', 215);
INSERT INTO public.parroquia VALUES (727, 'SANTA ANA', 216);
INSERT INTO public.parroquia VALUES (728, 'BOLÍVAR', 216);
INSERT INTO public.parroquia VALUES (729, 'GUEVARA', 216);
INSERT INTO public.parroquia VALUES (730, 'MATASIETE', 216);
INSERT INTO public.parroquia VALUES (731, 'SUCRE', 216);
INSERT INTO public.parroquia VALUES (732, 'PAMPATAR', 217);
INSERT INTO public.parroquia VALUES (733, 'AGUIRRE', 217);
INSERT INTO public.parroquia VALUES (734, 'JUANGRIEGO', 218);
INSERT INTO public.parroquia VALUES (735, 'ADRIÁN', 218);
INSERT INTO public.parroquia VALUES (736, 'PORLAMAR', 219);
INSERT INTO public.parroquia VALUES (737, 'BOCA DEL RÍO', 220);
INSERT INTO public.parroquia VALUES (738, 'SAN FRANCISCO', 220);
INSERT INTO public.parroquia VALUES (739, 'PUNTA DE PIEDRAS', 221);
INSERT INTO public.parroquia VALUES (740, 'LOS BARALES', 221);
INSERT INTO public.parroquia VALUES (741, 'SAN PEDRO DE COCHE', 222);
INSERT INTO public.parroquia VALUES (742, 'VICENTE FUENTES', 222);
INSERT INTO public.parroquia VALUES (743, 'AGUA BLANCA', 223);
INSERT INTO public.parroquia VALUES (744, 'ARAURE', 224);
INSERT INTO public.parroquia VALUES (745, 'RÍO ACARIGUA', 224);
INSERT INTO public.parroquia VALUES (746, 'PÍRITU', 225);
INSERT INTO public.parroquia VALUES (747, 'UVERAL', 225);
INSERT INTO public.parroquia VALUES (748, 'GUANARE', 226);
INSERT INTO public.parroquia VALUES (749, 'CÓRDOBA', 226);
INSERT INTO public.parroquia VALUES (750, 'SAN JOSÉ DE LA MONTAÑA', 226);
INSERT INTO public.parroquia VALUES (751, 'SAN JUAN DE GUANAGUANARE', 226);
INSERT INTO public.parroquia VALUES (752, 'VIRGEN DE LA COROMOTO', 226);
INSERT INTO public.parroquia VALUES (753, 'GUANARITO', 227);
INSERT INTO public.parroquia VALUES (754, 'TRINIDAD DE LA CAPILLA', 227);
INSERT INTO public.parroquia VALUES (755, 'DIVINA PASTORA', 227);
INSERT INTO public.parroquia VALUES (756, 'PARAÍSO DE CHABASQUÉN', 228);
INSERT INTO public.parroquia VALUES (757, 'PEÑA BLANCA', 228);
INSERT INTO public.parroquia VALUES (758, 'OSPINO', 229);
INSERT INTO public.parroquia VALUES (759, 'APARICIÓN', 229);
INSERT INTO public.parroquia VALUES (760, 'LA ESTACIÓN', 229);
INSERT INTO public.parroquia VALUES (761, 'ACARIGUA', 230);
INSERT INTO public.parroquia VALUES (762, 'PAYARA', 230);
INSERT INTO public.parroquia VALUES (763, 'PIMPINELA', 230);
INSERT INTO public.parroquia VALUES (764, 'RAMÓN PERAZA', 230);
INSERT INTO public.parroquia VALUES (765, 'PAPELÓN', 231);
INSERT INTO public.parroquia VALUES (766, 'CAÑO DELGADITO', 231);
INSERT INTO public.parroquia VALUES (767, 'BOCONOITO', 232);
INSERT INTO public.parroquia VALUES (768, 'ANTOLÍN TOVAR', 232);
INSERT INTO public.parroquia VALUES (769, 'SAN RAFAEL DE ONOTO', 233);
INSERT INTO public.parroquia VALUES (770, 'SANTA FE', 233);
INSERT INTO public.parroquia VALUES (771, 'THERMO MORLES', 233);
INSERT INTO public.parroquia VALUES (772, 'EL PLAYÓN', 234);
INSERT INTO public.parroquia VALUES (773, 'FLORIDA', 234);
INSERT INTO public.parroquia VALUES (774, 'BISCUCUY', 235);
INSERT INTO public.parroquia VALUES (775, 'CONCEPCIÓN', 235);
INSERT INTO public.parroquia VALUES (776, 'SAN RAFAEL DE PALO ALZADO', 235);
INSERT INTO public.parroquia VALUES (777, 'UVENCIO ANTONIO VELÁSQUEZ', 235);
INSERT INTO public.parroquia VALUES (778, 'SAN JOSÉ DE SAGUAZ', 235);
INSERT INTO public.parroquia VALUES (779, 'VILLA ROSA', 235);
INSERT INTO public.parroquia VALUES (780, 'VILLA BRUZUAL', 236);
INSERT INTO public.parroquia VALUES (781, 'CANELONES', 236);
INSERT INTO public.parroquia VALUES (782, 'SANTA CRUZ', 236);
INSERT INTO public.parroquia VALUES (783, 'SAN ISIDRO LABRADOR', 236);
INSERT INTO public.parroquia VALUES (784, 'MARIÑO', 237);
INSERT INTO public.parroquia VALUES (785, 'RÓMULO GALLEGOS', 237);
INSERT INTO public.parroquia VALUES (786, 'SAN JOSÉ DE AEROCUAR', 238);
INSERT INTO public.parroquia VALUES (787, 'TAVERA ACOSTA', 238);
INSERT INTO public.parroquia VALUES (788, 'RÍO CARIBE', 239);
INSERT INTO public.parroquia VALUES (789, 'ANTONIO JOSÉ DE SUCRE', 239);
INSERT INTO public.parroquia VALUES (790, 'EL MORRO DE PUERTO SANTO', 239);
INSERT INTO public.parroquia VALUES (791, 'PUERTO SANTO', 239);
INSERT INTO public.parroquia VALUES (792, 'SAN JUAN DE LAS GALDONAS', 239);
INSERT INTO public.parroquia VALUES (793, 'EL PILAR', 240);
INSERT INTO public.parroquia VALUES (794, 'EL RINCÓN', 240);
INSERT INTO public.parroquia VALUES (795, 'GENERAL FRANCISCO ANTONIO VÁSQUEZ', 240);
INSERT INTO public.parroquia VALUES (796, 'GUARAÚNOS', 240);
INSERT INTO public.parroquia VALUES (797, 'TUNAPUICITO', 240);
INSERT INTO public.parroquia VALUES (798, 'UNIÓN', 240);
INSERT INTO public.parroquia VALUES (799, 'BOLÍVAR', 241);
INSERT INTO public.parroquia VALUES (800, 'MACARAPANA', 241);
INSERT INTO public.parroquia VALUES (801, 'SANTA CATALINA', 241);
INSERT INTO public.parroquia VALUES (802, 'SANTA ROSA', 241);
INSERT INTO public.parroquia VALUES (803, 'SANTA TERESA', 241);
INSERT INTO public.parroquia VALUES (804, 'MARIGÜITAR', 242);
INSERT INTO public.parroquia VALUES (805, 'YAGUARAPARO', 243);
INSERT INTO public.parroquia VALUES (806, 'EL PAUJIL', 243);
INSERT INTO public.parroquia VALUES (807, 'LIBERTAD', 243);
INSERT INTO public.parroquia VALUES (808, 'ARAYA', 244);
INSERT INTO public.parroquia VALUES (809, 'CHACOPATA', 244);
INSERT INTO public.parroquia VALUES (810, 'MANICUARE', 244);
INSERT INTO public.parroquia VALUES (811, 'TUNAPUY', 245);
INSERT INTO public.parroquia VALUES (812, 'CAMPO ELÍAS', 245);
INSERT INTO public.parroquia VALUES (813, 'IRAPA', 246);
INSERT INTO public.parroquia VALUES (814, 'CAMPO CLARO', 246);
INSERT INTO public.parroquia VALUES (815, 'MARABAL', 246);
INSERT INTO public.parroquia VALUES (816, 'SAN ANTONIO DE IRAPA', 246);
INSERT INTO public.parroquia VALUES (817, 'SORO', 246);
INSERT INTO public.parroquia VALUES (818, 'SAN ANTONIO DEL GOLFO', 247);
INSERT INTO public.parroquia VALUES (819, 'CUMANACOA', 248);
INSERT INTO public.parroquia VALUES (820, 'ARENAS', 248);
INSERT INTO public.parroquia VALUES (821, 'ARICAGUA', 248);
INSERT INTO public.parroquia VALUES (822, 'COCOLLAR', 248);
INSERT INTO public.parroquia VALUES (823, 'SAN FERNANDO', 248);
INSERT INTO public.parroquia VALUES (824, 'SAN LORENZO', 248);
INSERT INTO public.parroquia VALUES (825, 'CARIACO', 249);
INSERT INTO public.parroquia VALUES (826, 'CATUARO', 249);
INSERT INTO public.parroquia VALUES (827, 'RENDÓN', 249);
INSERT INTO public.parroquia VALUES (828, 'SANTA CRUZ', 249);
INSERT INTO public.parroquia VALUES (829, 'SANTA MARÍA', 249);
INSERT INTO public.parroquia VALUES (830, 'ALTAGRACIA', 250);
INSERT INTO public.parroquia VALUES (831, 'AYACUCHO', 250);
INSERT INTO public.parroquia VALUES (832, 'SANTA INÉS', 250);
INSERT INTO public.parroquia VALUES (833, 'VALENTÍN VALIENTE', 250);
INSERT INTO public.parroquia VALUES (834, 'SAN JUAN', 250);
INSERT INTO public.parroquia VALUES (835, 'RAÚL LEONI', 250);
INSERT INTO public.parroquia VALUES (836, 'SANTA FE', 250);
INSERT INTO public.parroquia VALUES (837, 'GÜIRIA', 251);
INSERT INTO public.parroquia VALUES (838, 'BIDEAU', 251);
INSERT INTO public.parroquia VALUES (839, 'CRISTÓBAL COLÓN', 251);
INSERT INTO public.parroquia VALUES (840, 'PUNTA DE PIEDRAS', 251);
INSERT INTO public.parroquia VALUES (841, 'CORDERO', 252);
INSERT INTO public.parroquia VALUES (842, 'LAS MESAS', 253);
INSERT INTO public.parroquia VALUES (843, 'COLÓN', 254);
INSERT INTO public.parroquia VALUES (844, 'RIVAS BERTI', 254);
INSERT INTO public.parroquia VALUES (845, 'SAN PEDRO DEL RÍO', 254);
INSERT INTO public.parroquia VALUES (846, 'SAN ANTONIO DEL TÁCHIRA', 255);
INSERT INTO public.parroquia VALUES (847, 'PALOTAL', 255);
INSERT INTO public.parroquia VALUES (848, 'JUAN VICENTE GÓMEZ', 255);
INSERT INTO public.parroquia VALUES (849, 'ISAÍAS MEDINA ANGARITA', 255);
INSERT INTO public.parroquia VALUES (850, 'TÁRIBA', 256);
INSERT INTO public.parroquia VALUES (851, 'AMENODORO RANGEL LAMÚS', 256);
INSERT INTO public.parroquia VALUES (852, 'LA FLORIDA', 256);
INSERT INTO public.parroquia VALUES (853, 'SANTA ANA', 257);
INSERT INTO public.parroquia VALUES (854, 'SAN RAFAEL DEL PIÑAL', 258);
INSERT INTO public.parroquia VALUES (855, 'ALBERTO ADRIANI', 258);
INSERT INTO public.parroquia VALUES (856, 'SANTO DOMINGO', 258);
INSERT INTO public.parroquia VALUES (857, 'SAN JOSÉ DE BOLÍVAR', 259);
INSERT INTO public.parroquia VALUES (858, 'LA FRÍA', 260);
INSERT INTO public.parroquia VALUES (859, 'BOCA DE GRITA', 260);
INSERT INTO public.parroquia VALUES (860, 'JOSÉ ANTONIO PÁEZ', 260);
INSERT INTO public.parroquia VALUES (861, 'PALMIRA', 261);
INSERT INTO public.parroquia VALUES (862, 'CAPACHO NUEVO', 262);
INSERT INTO public.parroquia VALUES (863, 'JUAN GERMÁN ROSCIO', 262);
INSERT INTO public.parroquia VALUES (864, 'ROMÁN CÁRDENAS', 262);
INSERT INTO public.parroquia VALUES (865, 'LA GRITA', 263);
INSERT INTO public.parroquia VALUES (866, 'EMILIO CONSTANTINO GUERRERO', 263);
INSERT INTO public.parroquia VALUES (867, 'MONSEÑOR MIGUEL ANTONIO SALAS', 263);
INSERT INTO public.parroquia VALUES (868, 'EL COBRE', 264);
INSERT INTO public.parroquia VALUES (869, 'RUBIO', 265);
INSERT INTO public.parroquia VALUES (870, 'LA PETRÓLEA', 265);
INSERT INTO public.parroquia VALUES (871, 'QUINIMARÍ', 265);
INSERT INTO public.parroquia VALUES (872, 'BRAMÓN', 265);
INSERT INTO public.parroquia VALUES (873, 'CAPACHO VIEJO', 266);
INSERT INTO public.parroquia VALUES (874, 'CIPRIANO CASTRO', 266);
INSERT INTO public.parroquia VALUES (875, 'MANUEL FELIPE RUGELES', 266);
INSERT INTO public.parroquia VALUES (876, 'ABEJALES', 267);
INSERT INTO public.parroquia VALUES (877, 'EMETERIO OCHOA', 267);
INSERT INTO public.parroquia VALUES (878, 'DORADAS', 267);
INSERT INTO public.parroquia VALUES (879, 'SAN JOAQUÍN DE NAVAY', 267);
INSERT INTO public.parroquia VALUES (880, 'LOBATERA', 268);
INSERT INTO public.parroquia VALUES (881, 'CONSTITUCIÓN', 268);
INSERT INTO public.parroquia VALUES (882, 'MICHELENA', 269);
INSERT INTO public.parroquia VALUES (883, 'COLONCITO', 270);
INSERT INTO public.parroquia VALUES (884, 'LA PALMITA', 270);
INSERT INTO public.parroquia VALUES (885, 'UREÑA', 271);
INSERT INTO public.parroquia VALUES (886, 'NUEVA ARCADIA', 271);
INSERT INTO public.parroquia VALUES (887, 'DELICIAS', 272);
INSERT INTO public.parroquia VALUES (888, 'LA TENDIDA', 273);
INSERT INTO public.parroquia VALUES (889, 'BOCONÓ', 273);
INSERT INTO public.parroquia VALUES (890, 'HERNÁNDEZ', 273);
INSERT INTO public.parroquia VALUES (891, 'LA CONCORDIA', 274);
INSERT INTO public.parroquia VALUES (892, 'PEDRO MARÍA MORANTES', 274);
INSERT INTO public.parroquia VALUES (893, 'SAN JUAN BAUTISTA', 274);
INSERT INTO public.parroquia VALUES (894, 'SAN SEBASTIÁN', 274);
INSERT INTO public.parroquia VALUES (895, 'DR. FRANCISCO ROMERO LOBO', 274);
INSERT INTO public.parroquia VALUES (896, 'SEBORUCO', 275);
INSERT INTO public.parroquia VALUES (897, 'SAN SIMÓN', 276);
INSERT INTO public.parroquia VALUES (898, 'QUENIQUEA', 277);
INSERT INTO public.parroquia VALUES (899, 'ELEAZAR LÓPEZ CONTRERAS', 277);
INSERT INTO public.parroquia VALUES (900, 'SAN PABLO', 277);
INSERT INTO public.parroquia VALUES (901, 'SAN JOSECITO', 278);
INSERT INTO public.parroquia VALUES (902, 'PREGONERO', 279);
INSERT INTO public.parroquia VALUES (903, 'CÁRDENAS', 279);
INSERT INTO public.parroquia VALUES (904, 'JUAN PABLO PEÑALOZA', 279);
INSERT INTO public.parroquia VALUES (905, 'POTOSÍ', 279);
INSERT INTO public.parroquia VALUES (906, 'UMUQUENA', 280);
INSERT INTO public.parroquia VALUES (907, 'SANTA ISABEL', 281);
INSERT INTO public.parroquia VALUES (908, 'ARAGUANEY', 281);
INSERT INTO public.parroquia VALUES (909, 'EL JAGÜITO', 281);
INSERT INTO public.parroquia VALUES (910, 'LA ESPERANZA', 281);
INSERT INTO public.parroquia VALUES (911, 'BOCONÓ', 282);
INSERT INTO public.parroquia VALUES (912, 'EL CARMEN', 282);
INSERT INTO public.parroquia VALUES (913, 'MOSQUEY', 282);
INSERT INTO public.parroquia VALUES (914, 'AYACUCHO', 282);
INSERT INTO public.parroquia VALUES (915, 'BURBUSAY', 282);
INSERT INTO public.parroquia VALUES (916, 'GENERAL RIVAS', 282);
INSERT INTO public.parroquia VALUES (917, 'GUARAMACAL', 282);
INSERT INTO public.parroquia VALUES (918, 'VEGA DE GUARAMACAL', 282);
INSERT INTO public.parroquia VALUES (919, 'MONSEÑOR JÁUREGUI', 282);
INSERT INTO public.parroquia VALUES (920, 'RAFAEL RANGEL', 282);
INSERT INTO public.parroquia VALUES (921, 'SAN MIGUEL', 282);
INSERT INTO public.parroquia VALUES (922, 'SAN JOSÉ', 282);
INSERT INTO public.parroquia VALUES (923, 'SABANA GRANDE', 283);
INSERT INTO public.parroquia VALUES (924, 'CHEREGÜÉ', 283);
INSERT INTO public.parroquia VALUES (925, 'GRANADOS', 283);
INSERT INTO public.parroquia VALUES (926, 'CHEJENDÉ', 284);
INSERT INTO public.parroquia VALUES (927, 'ARNOLDO GABALDÓN', 284);
INSERT INTO public.parroquia VALUES (928, 'BOLIVIA', 284);
INSERT INTO public.parroquia VALUES (929, 'CARRILLO', 284);
INSERT INTO public.parroquia VALUES (930, 'CEGARRA', 284);
INSERT INTO public.parroquia VALUES (931, 'MANUEL SALVADOR ULLOA', 284);
INSERT INTO public.parroquia VALUES (932, 'SAN JOSÉ', 284);
INSERT INTO public.parroquia VALUES (933, 'CARACHE', 285);
INSERT INTO public.parroquia VALUES (934, 'CUICAS', 285);
INSERT INTO public.parroquia VALUES (935, 'LA CONCEPCIÓN', 285);
INSERT INTO public.parroquia VALUES (936, 'PANAMERICANA', 285);
INSERT INTO public.parroquia VALUES (937, 'SANTA CRUZ', 285);
INSERT INTO public.parroquia VALUES (938, 'ESCUQUE', 286);
INSERT INTO public.parroquia VALUES (939, 'LA UNIÓN', 286);
INSERT INTO public.parroquia VALUES (940, 'SABANA LIBRE', 286);
INSERT INTO public.parroquia VALUES (941, 'SANTA RITA', 286);
INSERT INTO public.parroquia VALUES (942, 'EL SOCORRO', 287);
INSERT INTO public.parroquia VALUES (943, 'ANTONIO JOSÉ DE SUCRE', 287);
INSERT INTO public.parroquia VALUES (944, 'LOS CAPRICHOS', 287);
INSERT INTO public.parroquia VALUES (945, 'CAMPO ELÍAS', 288);
INSERT INTO public.parroquia VALUES (946, 'ARNOLDO GABALDÓN', 288);
INSERT INTO public.parroquia VALUES (947, 'SANTA APOLONIA', 289);
INSERT INTO public.parroquia VALUES (948, 'EL PROGRESO', 289);
INSERT INTO public.parroquia VALUES (949, 'LA CEIBA', 289);
INSERT INTO public.parroquia VALUES (950, 'TRES DE FEBRERO', 289);
INSERT INTO public.parroquia VALUES (951, 'EL DIVIDIVE', 290);
INSERT INTO public.parroquia VALUES (952, 'AGUA SANTA', 290);
INSERT INTO public.parroquia VALUES (953, 'AGUA CALIENTE', 290);
INSERT INTO public.parroquia VALUES (954, 'EL CENIZO', 290);
INSERT INTO public.parroquia VALUES (955, 'VALERITA', 290);
INSERT INTO public.parroquia VALUES (956, 'MONTE CARMELO', 291);
INSERT INTO public.parroquia VALUES (957, 'BUENA VISTA', 291);
INSERT INTO public.parroquia VALUES (958, 'SANTA MARÍA DEL HORCÓN', 291);
INSERT INTO public.parroquia VALUES (959, 'MOTATÁN', 292);
INSERT INTO public.parroquia VALUES (960, 'EL BAÑO', 292);
INSERT INTO public.parroquia VALUES (961, 'JALISCO', 292);
INSERT INTO public.parroquia VALUES (962, 'PAMPÁN', 293);
INSERT INTO public.parroquia VALUES (963, 'FLOR DE PATRIA', 293);
INSERT INTO public.parroquia VALUES (964, 'LA PAZ', 293);
INSERT INTO public.parroquia VALUES (965, 'SANTA ANA', 293);
INSERT INTO public.parroquia VALUES (966, 'PAMPANITO', 294);
INSERT INTO public.parroquia VALUES (967, 'LA CONCEPCIÓN', 294);
INSERT INTO public.parroquia VALUES (968, 'PAMPANITO II', 294);
INSERT INTO public.parroquia VALUES (969, 'BETIJOQUE', 295);
INSERT INTO public.parroquia VALUES (970, 'LA PUEBLITA', 295);
INSERT INTO public.parroquia VALUES (971, 'LOS CEDROS', 295);
INSERT INTO public.parroquia VALUES (972, 'JOSÉ GREGORIO HERNÁNDEZ', 295);
INSERT INTO public.parroquia VALUES (973, 'CARVAJAL', 296);
INSERT INTO public.parroquia VALUES (974, 'ANTONIO NICOLÁS BRICEÑO', 296);
INSERT INTO public.parroquia VALUES (975, 'CAMPO ALEGRE', 296);
INSERT INTO public.parroquia VALUES (976, 'JOSÉ LEONARDO SUÁREZ', 296);
INSERT INTO public.parroquia VALUES (977, 'SABANA DE MENDOZA', 297);
INSERT INTO public.parroquia VALUES (978, 'EL PARAÍSO', 297);
INSERT INTO public.parroquia VALUES (979, 'JUNÍN', 297);
INSERT INTO public.parroquia VALUES (980, 'VALMORE RODRÍGUEZ', 297);
INSERT INTO public.parroquia VALUES (981, 'ANDRÉS LINARES', 298);
INSERT INTO public.parroquia VALUES (982, 'CHIQUINQUIRÁ', 298);
INSERT INTO public.parroquia VALUES (983, 'CRISTÓBAL MENDOZA', 298);
INSERT INTO public.parroquia VALUES (984, 'CRUZ CARRILLO', 298);
INSERT INTO public.parroquia VALUES (985, 'MATRIZ', 298);
INSERT INTO public.parroquia VALUES (986, 'MONSEÑOR CARRILLO', 298);
INSERT INTO public.parroquia VALUES (987, 'TRES ESQUINAS', 298);
INSERT INTO public.parroquia VALUES (988, 'LA QUEBRADA', 299);
INSERT INTO public.parroquia VALUES (989, 'CABIMBÚ', 299);
INSERT INTO public.parroquia VALUES (990, 'JAJÓ', 299);
INSERT INTO public.parroquia VALUES (991, 'LA MESA', 299);
INSERT INTO public.parroquia VALUES (992, 'SANTIAGO', 299);
INSERT INTO public.parroquia VALUES (993, 'TUÑAME', 299);
INSERT INTO public.parroquia VALUES (994, 'JUAN IGNACIO MONTILLA', 300);
INSERT INTO public.parroquia VALUES (995, 'LA BEATRIZ', 300);
INSERT INTO public.parroquia VALUES (996, 'MERCEDES DÍAZ', 300);
INSERT INTO public.parroquia VALUES (997, 'SAN LUIS', 300);
INSERT INTO public.parroquia VALUES (998, 'LA PUERTA', 300);
INSERT INTO public.parroquia VALUES (999, 'MENDOZA', 300);
INSERT INTO public.parroquia VALUES (1000, 'SAN PABLO', 301);
INSERT INTO public.parroquia VALUES (1001, 'AROA', 302);
INSERT INTO public.parroquia VALUES (1002, 'CHIVACOA', 303);
INSERT INTO public.parroquia VALUES (1003, 'CAMPO ELÍAS', 303);
INSERT INTO public.parroquia VALUES (1004, 'COCOROTE', 304);
INSERT INTO public.parroquia VALUES (1005, 'INDEPENDENCIA', 305);
INSERT INTO public.parroquia VALUES (1006, 'SABANA DE PARRA', 306);
INSERT INTO public.parroquia VALUES (1007, 'BORAURE', 307);
INSERT INTO public.parroquia VALUES (1008, 'YUMARE', 308);
INSERT INTO public.parroquia VALUES (1009, 'NIRGUA', 309);
INSERT INTO public.parroquia VALUES (1010, 'SALOM', 309);
INSERT INTO public.parroquia VALUES (1011, 'TEMERLA', 309);
INSERT INTO public.parroquia VALUES (1012, 'YARITAGUA', 310);
INSERT INTO public.parroquia VALUES (1013, 'SAN ANDRÉS', 310);
INSERT INTO public.parroquia VALUES (1014, 'SAN FELIPE', 311);
INSERT INTO public.parroquia VALUES (1015, 'ALBARICO', 311);
INSERT INTO public.parroquia VALUES (1016, 'SAN JAVIER', 311);
INSERT INTO public.parroquia VALUES (1017, 'GUAMA', 312);
INSERT INTO public.parroquia VALUES (1018, 'URACHICHE', 313);
INSERT INTO public.parroquia VALUES (1019, 'FARRIAR', 314);
INSERT INTO public.parroquia VALUES (1020, 'EL GUAYABO', 314);
INSERT INTO public.parroquia VALUES (1021, 'ISLA DE TOAS', 315);
INSERT INTO public.parroquia VALUES (1022, 'MONAGAS', 315);
INSERT INTO public.parroquia VALUES (1023, 'SAN TIMOTEO', 316);
INSERT INTO public.parroquia VALUES (1024, 'GENERAL URDANETA', 316);
INSERT INTO public.parroquia VALUES (1025, 'LIBERTADOR', 316);
INSERT INTO public.parroquia VALUES (1026, 'MANUEL GUANIPA MATOS', 316);
INSERT INTO public.parroquia VALUES (1027, 'MARCELINO BRICEÑO', 316);
INSERT INTO public.parroquia VALUES (1028, 'PUEBLO NUEVO', 316);
INSERT INTO public.parroquia VALUES (1029, 'AMBROSIO', 317);
INSERT INTO public.parroquia VALUES (1030, 'CARMEN HERRERA', 317);
INSERT INTO public.parroquia VALUES (1031, 'GERMÁN RÍOS LINARES', 317);
INSERT INTO public.parroquia VALUES (1032, 'LA ROSA', 317);
INSERT INTO public.parroquia VALUES (1033, 'JORGE HERNÁNDEZ', 317);
INSERT INTO public.parroquia VALUES (1034, 'RÓMULO BETANCOURT', 317);
INSERT INTO public.parroquia VALUES (1035, 'SAN BENITO', 317);
INSERT INTO public.parroquia VALUES (1036, 'ARÍSTIDES CALVANI', 317);
INSERT INTO public.parroquia VALUES (1037, 'PUNTA GORDA', 317);
INSERT INTO public.parroquia VALUES (1038, 'ENCONTRADOS', 318);
INSERT INTO public.parroquia VALUES (1039, 'UDÓN PÉREZ', 318);
INSERT INTO public.parroquia VALUES (1040, 'SAN CARLOS DEL ZULIA', 319);
INSERT INTO public.parroquia VALUES (1041, 'MORALITO', 319);
INSERT INTO public.parroquia VALUES (1042, 'SANTA BÁRBARA', 319);
INSERT INTO public.parroquia VALUES (1043, 'SANTA CRUZ DEL ZULIA', 319);
INSERT INTO public.parroquia VALUES (1044, 'URRIBARRI', 319);
INSERT INTO public.parroquia VALUES (1045, 'SIMÓN RODRÍGUEZ', 320);
INSERT INTO public.parroquia VALUES (1046, 'CARLOS QUEVEDO', 320);
INSERT INTO public.parroquia VALUES (1047, 'FRANCISCO JAVIER PULGAR', 320);
INSERT INTO public.parroquia VALUES (1048, 'LA CONCEPCIÓN', 321);
INSERT INTO public.parroquia VALUES (1049, 'JOSÉ RAMÓN YEPES', 321);
INSERT INTO public.parroquia VALUES (1050, 'MARIANO PARRA LEÓN', 321);
INSERT INTO public.parroquia VALUES (1051, 'SAN JOSÉ', 321);
INSERT INTO public.parroquia VALUES (1052, 'JESÚS MARÍA SEMPRÚN', 322);
INSERT INTO public.parroquia VALUES (1053, 'BARÍ', 322);
INSERT INTO public.parroquia VALUES (1054, 'CONCEPCIÓN', 323);
INSERT INTO public.parroquia VALUES (1055, 'ANDRÉS BELLO', 323);
INSERT INTO public.parroquia VALUES (1056, 'CHIQUINQUIRÁ', 323);
INSERT INTO public.parroquia VALUES (1057, 'EL CARMELO', 323);
INSERT INTO public.parroquia VALUES (1058, 'POTRERITOS', 323);
INSERT INTO public.parroquia VALUES (1059, 'ALONSO DE OJEDA', 324);
INSERT INTO public.parroquia VALUES (1060, 'LIBERTAD', 324);
INSERT INTO public.parroquia VALUES (1061, 'CAMPO LARA', 324);
INSERT INTO public.parroquia VALUES (1062, 'ELEAZAR LÓPEZ CONTRERAS', 324);
INSERT INTO public.parroquia VALUES (1063, 'VENEZUELA', 324);
INSERT INTO public.parroquia VALUES (1064, 'LIBERTAD', 325);
INSERT INTO public.parroquia VALUES (1065, 'BARTOLOMÉ DE LAS CASAS', 325);
INSERT INTO public.parroquia VALUES (1066, 'RÍO NEGRO', 325);
INSERT INTO public.parroquia VALUES (1067, 'SAN JOSÉ DE PERIJÁ', 325);
INSERT INTO public.parroquia VALUES (1068, 'SAN RAFAEL', 326);
INSERT INTO public.parroquia VALUES (1069, 'LA SIERRITA', 326);
INSERT INTO public.parroquia VALUES (1070, 'LAS PARCELAS', 326);
INSERT INTO public.parroquia VALUES (1071, 'LUIS DE VICENTE', 326);
INSERT INTO public.parroquia VALUES (1072, 'MONSEÑOR MARCOS SERGIO GODOY', 326);
INSERT INTO public.parroquia VALUES (1073, 'RICAURTE', 326);
INSERT INTO public.parroquia VALUES (1074, 'TAMARE', 326);
INSERT INTO public.parroquia VALUES (1075, 'ANTONIO BORJAS ROMERO', 327);
INSERT INTO public.parroquia VALUES (1076, 'BOLÍVAR', 327);
INSERT INTO public.parroquia VALUES (1077, 'CACIQUE MARA', 327);
INSERT INTO public.parroquia VALUES (1078, 'CARACCIOLO PARRA PÉREZ', 327);
INSERT INTO public.parroquia VALUES (1079, 'CECILIO ACOSTA', 327);
INSERT INTO public.parroquia VALUES (1080, 'CRISTO DE ARANZA', 327);
INSERT INTO public.parroquia VALUES (1081, 'COQUIVACOA', 327);
INSERT INTO public.parroquia VALUES (1082, 'CHIQUINQUIRÁ', 327);
INSERT INTO public.parroquia VALUES (1083, 'FRANCISCO EUGENIO BUSTAMANTE', 327);
INSERT INTO public.parroquia VALUES (1084, 'IDELFONSO VÁSQUEZ', 327);
INSERT INTO public.parroquia VALUES (1085, 'JUANA DE AVILA', 327);
INSERT INTO public.parroquia VALUES (1086, 'LUIS HURTADO HIGUERA', 327);
INSERT INTO public.parroquia VALUES (1087, 'MANUEL DAGNINO', 327);
INSERT INTO public.parroquia VALUES (1088, 'OLEGARIO VILLALOBOS', 327);
INSERT INTO public.parroquia VALUES (1089, 'RAÚL LEONI', 327);
INSERT INTO public.parroquia VALUES (1090, 'SANTA LUCÍA', 327);
INSERT INTO public.parroquia VALUES (1091, 'VENANCIO PULGAR', 327);
INSERT INTO public.parroquia VALUES (1092, 'SAN ISIDRO', 327);
INSERT INTO public.parroquia VALUES (1093, 'ALTAGRACIA', 328);
INSERT INTO public.parroquia VALUES (1094, 'ANA MARÍA CAMPOS', 328);
INSERT INTO public.parroquia VALUES (1095, 'FARÍA', 328);
INSERT INTO public.parroquia VALUES (1096, 'SAN ANTONIO', 328);
INSERT INTO public.parroquia VALUES (1097, 'SAN JOSÉ', 328);
INSERT INTO public.parroquia VALUES (1098, 'SINAMAICA', 329);
INSERT INTO public.parroquia VALUES (1099, 'ALTA GUAJIRA', 329);
INSERT INTO public.parroquia VALUES (1100, 'ELÍAS SÁNCHEZ RUBIO', 329);
INSERT INTO public.parroquia VALUES (1101, 'GUAJIRA', 329);
INSERT INTO public.parroquia VALUES (1102, 'EL ROSARIO', 330);
INSERT INTO public.parroquia VALUES (1103, 'DONALDO GARCÍA', 330);
INSERT INTO public.parroquia VALUES (1104, 'SIXTO ZAMBRANO', 330);
INSERT INTO public.parroquia VALUES (1105, 'SAN FRANCISCO', 331);
INSERT INTO public.parroquia VALUES (1106, 'EL BAJO', 331);
INSERT INTO public.parroquia VALUES (1107, 'DOMITILA FLORES', 331);
INSERT INTO public.parroquia VALUES (1108, 'FRANCISCO OCHOA', 331);
INSERT INTO public.parroquia VALUES (1109, 'LOS CORTIJOS', 331);
INSERT INTO public.parroquia VALUES (1110, 'MARCIAL HERNÁNDEZ', 331);
INSERT INTO public.parroquia VALUES (1111, 'SANTA RITA', 332);
INSERT INTO public.parroquia VALUES (1112, 'EL MENE', 332);
INSERT INTO public.parroquia VALUES (1113, 'JOSÉ CENOVIO URRIBARRI', 332);
INSERT INTO public.parroquia VALUES (1114, 'PEDRO LUCAS URRIBARRI', 332);
INSERT INTO public.parroquia VALUES (1115, 'MANUEL MANRIQUE', 333);
INSERT INTO public.parroquia VALUES (1116, 'RAFAEL MARÍA BARALT', 333);
INSERT INTO public.parroquia VALUES (1117, 'RAFAEL URDANETA', 333);
INSERT INTO public.parroquia VALUES (1118, 'BOBURES', 334);
INSERT INTO public.parroquia VALUES (1119, 'EL BATEY', 334);
INSERT INTO public.parroquia VALUES (1120, 'GIBRALTAR', 334);
INSERT INTO public.parroquia VALUES (1121, 'HERAS', 334);
INSERT INTO public.parroquia VALUES (1122, 'MONSEÑOR ARTURO CELESTINO ALVAREZ', 334);
INSERT INTO public.parroquia VALUES (1123, 'RÓMULO GALLEGOS', 334);
INSERT INTO public.parroquia VALUES (1124, 'LA VICTORIA', 335);
INSERT INTO public.parroquia VALUES (1125, 'RAFAEL URDANETA', 335);
INSERT INTO public.parroquia VALUES (1126, 'RAÚL CUENCA', 335);
INSERT INTO public.parroquia VALUES (1127, 'CARABALLEDA', 336);
INSERT INTO public.parroquia VALUES (1128, 'CARAYACA', 336);
INSERT INTO public.parroquia VALUES (1129, 'CARUAO', 336);
INSERT INTO public.parroquia VALUES (1130, 'CATIA LA MAR', 336);
INSERT INTO public.parroquia VALUES (1131, 'EL JUNKO', 336);
INSERT INTO public.parroquia VALUES (1132, 'LA GUAIRA', 336);
INSERT INTO public.parroquia VALUES (1133, 'MACUTO', 336);
INSERT INTO public.parroquia VALUES (1134, 'MAIQUETÍA', 336);
INSERT INTO public.parroquia VALUES (1135, 'NAIGUATÁ', 336);
INSERT INTO public.parroquia VALUES (1136, 'RAÚL LEONI', 336);
INSERT INTO public.parroquia VALUES (1137, 'CARLOS SOUBLETTE', 336);
INSERT INTO public.parroquia VALUES (1138, 'GRAN ROQUE', 338);
INSERT INTO public.parroquia VALUES (1139, 'MADRISQUI (MADRISQUE - CAYO RATA)', 338);
INSERT INTO public.parroquia VALUES (1140, 'CAYO PIRATA', 338);
INSERT INTO public.parroquia VALUES (1141, 'GENERAL EN JEFE JOSÉ LAURENCIO SILVA', 337);
INSERT INTO public.parroquia VALUES (1142, 'JUAN ANGEL BRAVO', 337);
INSERT INTO public.parroquia VALUES (1143, 'MANUEL MANRIQUE', 337);
INSERT INTO public.parroquia VALUES (1144, 'SAN CARLOS DE AUSTRIA', 337);
INSERT INTO public.parroquia VALUES (1145, 'TINACO', 337);
INSERT INTO public.parroquia VALUES (9999, 'Información no disponible', 999);


--
-- TOC entry 3448 (class 0 OID 16887)
-- Dependencies: 263
-- Data for Name: preguntas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3412 (class 0 OID 16497)
-- Dependencies: 227
-- Data for Name: rbac_auth_assignment; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rbac_auth_assignment VALUES ('administrator', '1', 1616883430);
INSERT INTO public.rbac_auth_assignment VALUES ('manager', '2', 1616883430);
INSERT INTO public.rbac_auth_assignment VALUES ('user', '3', 1616883430);
INSERT INTO public.rbac_auth_assignment VALUES ('user', '4', 1639432637);


--
-- TOC entry 3413 (class 0 OID 16500)
-- Dependencies: 228
-- Data for Name: rbac_auth_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rbac_auth_item VALUES ('user', 1, NULL, NULL, NULL, 1616883430, 1616883430);
INSERT INTO public.rbac_auth_item VALUES ('manager', 1, NULL, NULL, NULL, 1616883430, 1616883430);
INSERT INTO public.rbac_auth_item VALUES ('administrator', 1, NULL, NULL, NULL, 1616883430, 1616883430);
INSERT INTO public.rbac_auth_item VALUES ('loginToBackend', 2, NULL, NULL, NULL, 1616883430, 1616883430);
INSERT INTO public.rbac_auth_item VALUES ('editOwnModel', 2, NULL, 'ownModelRule', NULL, 1616883431, 1616883431);
INSERT INTO public.rbac_auth_item VALUES ('/user/*', 2, NULL, NULL, NULL, 1617920206, 1617920206);
INSERT INTO public.rbac_auth_item VALUES ('/content/*', 2, NULL, NULL, NULL, 1617920252, 1617920252);
INSERT INTO public.rbac_auth_item VALUES ('/widget/*', 2, NULL, NULL, NULL, 1617920262, 1617920262);
INSERT INTO public.rbac_auth_item VALUES ('/file/*', 2, NULL, NULL, NULL, 1617920266, 1617920266);
INSERT INTO public.rbac_auth_item VALUES ('/system/*', 2, NULL, NULL, NULL, 1617920272, 1617920272);
INSERT INTO public.rbac_auth_item VALUES ('/translation/*', 2, NULL, NULL, NULL, 1617920277, 1617920277);
INSERT INTO public.rbac_auth_item VALUES ('/admin/*', 2, NULL, NULL, NULL, 1617920298, 1617920298);
INSERT INTO public.rbac_auth_item VALUES ('/sign-in/*', 2, NULL, NULL, NULL, 1617920306, 1617920306);


--
-- TOC entry 3414 (class 0 OID 16506)
-- Dependencies: 229
-- Data for Name: rbac_auth_item_child; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rbac_auth_item_child VALUES ('manager', 'user');
INSERT INTO public.rbac_auth_item_child VALUES ('administrator', 'manager');
INSERT INTO public.rbac_auth_item_child VALUES ('administrator', 'user');
INSERT INTO public.rbac_auth_item_child VALUES ('manager', 'loginToBackend');
INSERT INTO public.rbac_auth_item_child VALUES ('administrator', 'loginToBackend');
INSERT INTO public.rbac_auth_item_child VALUES ('user', 'editOwnModel');


--
-- TOC entry 3415 (class 0 OID 16509)
-- Dependencies: 230
-- Data for Name: rbac_auth_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rbac_auth_rule VALUES ('ownModelRule', '\x4f3a32393a22636f6d6d6f6e5c726261635c72756c655c4f776e4d6f64656c52756c65223a333a7b733a343a226e616d65223b733a31323a226f776e4d6f64656c52756c65223b733a393a22637265617465644174223b693a313631363838333433303b733a393a22757064617465644174223b693a313631363838333433303b7d', 1616883430, 1616883430);


--
-- TOC entry 3451 (class 0 OID 16940)
-- Dependencies: 266
-- Data for Name: respuestas; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3416 (class 0 OID 16515)
-- Dependencies: 231
-- Data for Name: servicios; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.servicios VALUES ('internet', 1);
INSERT INTO public.servicios VALUES ('tv', 2);
INSERT INTO public.servicios VALUES ('radio', 3);


--
-- TOC entry 3418 (class 0 OID 16523)
-- Dependencies: 233
-- Data for Name: system_db_migration; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.system_db_migration VALUES ('m000000_000000_base', 1616883415);
INSERT INTO public.system_db_migration VALUES ('m140703_123000_user', 1616883421);
INSERT INTO public.system_db_migration VALUES ('m140703_123055_log', 1616883421);
INSERT INTO public.system_db_migration VALUES ('m140703_123104_page', 1616883421);
INSERT INTO public.system_db_migration VALUES ('m140703_123803_article', 1616883421);
INSERT INTO public.system_db_migration VALUES ('m140703_123813_rbac', 1616883422);
INSERT INTO public.system_db_migration VALUES ('m140709_173306_widget_menu', 1616883422);
INSERT INTO public.system_db_migration VALUES ('m140709_173333_widget_text', 1616883422);
INSERT INTO public.system_db_migration VALUES ('m140712_123329_widget_carousel', 1616883422);
INSERT INTO public.system_db_migration VALUES ('m140805_084745_key_storage_item', 1616883422);
INSERT INTO public.system_db_migration VALUES ('m141012_101932_i18n_tables', 1616883423);
INSERT INTO public.system_db_migration VALUES ('m150318_213934_file_storage_item', 1616883423);
INSERT INTO public.system_db_migration VALUES ('m150414_195800_timeline_event', 1616883423);
INSERT INTO public.system_db_migration VALUES ('m150725_192740_seed_data', 1616883425);
INSERT INTO public.system_db_migration VALUES ('m150929_074021_article_attachment_order', 1616883426);
INSERT INTO public.system_db_migration VALUES ('m160203_095604_user_token', 1616883426);
INSERT INTO public.system_db_migration VALUES ('m190130_155645_add_article_slug_index', 1616883426);


--
-- TOC entry 3419 (class 0 OID 16526)
-- Dependencies: 234
-- Data for Name: system_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.system_log VALUES (308, 1, 'yii\base\UnknownPropertyException', 1640879120.9702, '[frontend][/oouu/frontend/web/index.php/datos-organizacion/update?id=11]', 'yii\base\UnknownPropertyException: Getting unknown property: frontend\models\DatosOrganizacion::password in /var/www/html/oouu/vendor/yiisoft/yii2/base/Component.php:155
Stack trace:
#0 /var/www/html/oouu/vendor/yiisoft/yii2/db/BaseActiveRecord.php(298): yii\base\Component->__get()
#1 /var/www/html/oouu/vendor/yiisoft/yii2/validators/Validator.php(258): yii\db\BaseActiveRecord->__get()
#2 /var/www/html/oouu/vendor/yiisoft/yii2/base/Model.php(368): yii\validators\Validator->validateAttributes()
#3 /var/www/html/oouu/frontend/controllers/DatosOrganizacionController.php(193): yii\base\Model->validate()
#4 [internal function]: frontend\controllers\DatosOrganizacionController->actionUpdate()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#8 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#9 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#10 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#11 {main}');
INSERT INTO public.system_log VALUES (309, 1, 'Swift_TransportException', 1641501592.6728, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/request-password-reset]', 'Swift_TransportException: Connection could not be established with host smtp.gmail.com :stream_socket_client(): php_network_getaddresses: getaddrinfo failed: Temporary failure in name resolution in /var/www/html/oouu/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php:261
Stack trace:
#0 [internal function]: Swift_Transport_StreamBuffer->{closure}()
#1 /var/www/html/oouu/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(264): stream_socket_client()
#2 /var/www/html/oouu/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/StreamBuffer.php(58): Swift_Transport_StreamBuffer->establishSocketConnection()
#3 /var/www/html/oouu/vendor/swiftmailer/swiftmailer/lib/classes/Swift/Transport/AbstractSmtpTransport.php(143): Swift_Transport_StreamBuffer->initialize()
#4 /var/www/html/oouu/vendor/yiisoft/yii2-swiftmailer/src/Mailer.php(113): Swift_Transport_AbstractSmtpTransport->start()
#5 /var/www/html/oouu/vendor/yiisoft/yii2-swiftmailer/src/Mailer.php(156): yii\swiftmailer\Mailer->getSwiftMailer()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/mail/BaseMailer.php(263): yii\swiftmailer\Mailer->sendMessage()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/mail/BaseMessage.php(49): yii\mail\BaseMailer->send()
#8 /var/www/html/oouu/common/commands/SendEmailCommand.php(70): yii\mail\BaseMessage->send()
#9 /var/www/html/oouu/vendor/trntv/yii2-command-bus/src/CommandBus.php(93): common\commands\SendEmailCommand->handle()
#10 /var/www/html/oouu/vendor/trntv/yii2-command-bus/src/middlewares/BackgroundCommandMiddleware.php(70): trntv\bus\CommandBus->trntv\bus\{closure}()
#11 /var/www/html/oouu/vendor/trntv/yii2-command-bus/src/CommandBus.php(68): trntv\bus\middlewares\BackgroundCommandMiddleware->execute()
#12 /var/www/html/oouu/vendor/trntv/yii2-command-bus/src/CommandBus.php(49): trntv\bus\CommandBus->trntv\bus\{closure}()
#13 /var/www/html/oouu/frontend/modules/alumnos/models/PasswordResetRequestForm.php(61): trntv\bus\CommandBus->handle()
#14 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(209): frontend\modules\alumnos\models\PasswordResetRequestForm->sendEmail()
#15 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionRequestPasswordReset()
#16 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#17 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#18 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#19 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#20 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#21 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#22 {main}');
INSERT INTO public.system_log VALUES (310, 1, 'yii\base\UnknownMethodException', 1641503683.6009, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'yii\base\UnknownMethodException: Calling unknown method: frontend\models\DatosPersonales::validatePassword() in /var/www/html/oouu/vendor/yiisoft/yii2/base/Component.php:301
Stack trace:
#0 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(52): yii\base\Component->__call()
#1 /var/www/html/oouu/vendor/yiisoft/yii2/validators/InlineValidator.php(84): frontend\modules\alumnos\models\LoginForm->validatePassword()
#2 /var/www/html/oouu/vendor/yiisoft/yii2/validators/Validator.php(261): yii\validators\InlineValidator->validateAttribute()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/Model.php(368): yii\validators\Validator->validateAttributes()
#4 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(81): yii\base\Model->validate()
#5 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#6 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#8 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#9 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#10 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#11 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#12 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#13 {main}');
INSERT INTO public.system_log VALUES (311, 1, 'yii\base\UnknownPropertyException', 1641503755.8427, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'yii\base\UnknownPropertyException: Getting unknown property: frontend\models\DatosPersonales::password_hash in /var/www/html/oouu/vendor/yiisoft/yii2/base/Component.php:155
Stack trace:
#0 /var/www/html/oouu/vendor/yiisoft/yii2/db/BaseActiveRecord.php(298): yii\base\Component->__get()
#1 /var/www/html/oouu/frontend/models/DatosPersonales.php(92): yii\db\BaseActiveRecord->__get()
#2 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(52): frontend\models\DatosPersonales->validatePassword()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/validators/InlineValidator.php(84): frontend\modules\alumnos\models\LoginForm->validatePassword()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/validators/Validator.php(261): yii\validators\InlineValidator->validateAttribute()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Model.php(368): yii\validators\Validator->validateAttributes()
#6 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(81): yii\base\Model->validate()
#7 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#8 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#9 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#10 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#11 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#12 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#13 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#14 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#15 {main}');
INSERT INTO public.system_log VALUES (317, 1, 'TypeError', 1641504228.1107, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'TypeError: Argument 1 passed to yii\web\User::login() must be an instance of yii\web\IdentityInterface, instance of frontend\models\DatosPersonales given, called in /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php on line 82 and defined in /var/www/html/oouu/vendor/yiisoft/yii2/web/User.php:256
Stack trace:
#0 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(82): yii\web\User->login()
#1 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#2 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#8 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#9 {main}');
INSERT INTO public.system_log VALUES (312, 1, 'yii\base\UnknownPropertyException', 1641503817.6338, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'yii\base\UnknownPropertyException: Getting unknown property: frontend\models\DatosPersonales::password_hash in /var/www/html/oouu/vendor/yiisoft/yii2/base/Component.php:155
Stack trace:
#0 /var/www/html/oouu/vendor/yiisoft/yii2/db/BaseActiveRecord.php(298): yii\base\Component->__get()
#1 /var/www/html/oouu/frontend/models/DatosPersonales.php(93): yii\db\BaseActiveRecord->__get()
#2 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(52): frontend\models\DatosPersonales->validatePassword()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/validators/InlineValidator.php(84): frontend\modules\alumnos\models\LoginForm->validatePassword()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/validators/Validator.php(261): yii\validators\InlineValidator->validateAttribute()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Model.php(368): yii\validators\Validator->validateAttributes()
#6 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(81): yii\base\Model->validate()
#7 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#8 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#9 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#10 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#11 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#12 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#13 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#14 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#15 {main}');
INSERT INTO public.system_log VALUES (313, 1, 'yii\base\InvalidArgumentException', 1641503868.7125, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'yii\base\InvalidArgumentException: Hash is invalid. in /var/www/html/oouu/vendor/yiisoft/yii2/base/Security.php:670
Stack trace:
#0 /var/www/html/oouu/frontend/models/DatosPersonales.php(92): yii\base\Security->validatePassword()
#1 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(52): frontend\models\DatosPersonales->validatePassword()
#2 /var/www/html/oouu/vendor/yiisoft/yii2/validators/InlineValidator.php(84): frontend\modules\alumnos\models\LoginForm->validatePassword()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/validators/Validator.php(261): yii\validators\InlineValidator->validateAttribute()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Model.php(368): yii\validators\Validator->validateAttributes()
#5 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(81): yii\base\Model->validate()
#6 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#7 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#8 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#9 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#10 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#11 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#12 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#13 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#14 {main}');
INSERT INTO public.system_log VALUES (314, 1, 'TypeError', 1641503964.5555, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'TypeError: Argument 1 passed to yii\web\User::login() must be an instance of yii\web\IdentityInterface, instance of frontend\models\DatosPersonales given, called in /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php on line 82 and defined in /var/www/html/oouu/vendor/yiisoft/yii2/web/User.php:256
Stack trace:
#0 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(82): yii\web\User->login()
#1 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#2 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#8 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#9 {main}');
INSERT INTO public.system_log VALUES (315, 1, 'TypeError', 1641504060.5386, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'TypeError: Argument 1 passed to yii\web\User::login() must be an instance of yii\web\IdentityInterface, instance of frontend\models\DatosPersonales given, called in /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php on line 82 and defined in /var/www/html/oouu/vendor/yiisoft/yii2/web/User.php:256
Stack trace:
#0 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(82): yii\web\User->login()
#1 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#2 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#8 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#9 {main}');
INSERT INTO public.system_log VALUES (316, 1, 'TypeError', 1641504192.8991, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'TypeError: Argument 1 passed to yii\web\User::login() must be an instance of yii\web\IdentityInterface, instance of frontend\models\DatosPersonales given, called in /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php on line 82 and defined in /var/www/html/oouu/vendor/yiisoft/yii2/web/User.php:256
Stack trace:
#0 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(82): yii\web\User->login()
#1 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#2 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#8 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#9 {main}');
INSERT INTO public.system_log VALUES (318, 1, 'TypeError', 1641504473.6714, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'TypeError: Argument 1 passed to yii\web\User::login() must be an instance of yii\web\IdentityInterface, instance of frontend\models\DatosPersonales given, called in /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php on line 82 and defined in /var/www/html/oouu/vendor/yiisoft/yii2/web/User.php:256
Stack trace:
#0 /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php(82): yii\web\User->login()
#1 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(100): frontend\modules\alumnos\models\LoginForm->login()
#2 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#8 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#9 {main}');
INSERT INTO public.system_log VALUES (319, 1, 'ParseError', 1641510249.9328, '[frontend][/oouu/frontend/web/index.php/alumnos/sign-in/login]', 'ParseError: syntax error, unexpected ''}'', expecting '';'' in /var/www/html/oouu/frontend/modules/alumnos/models/LoginForm.php:54
Stack trace:
#0 [internal function]: yii\BaseYii::autoload()
#1 /var/www/html/oouu/frontend/modules/alumnos/controllers/SignInController.php(94): spl_autoload_call()
#2 [internal function]: frontend\modules\alumnos\controllers\SignInController->actionLogin()
#3 /var/www/html/oouu/vendor/yiisoft/yii2/base/InlineAction.php(57): call_user_func_array()
#4 /var/www/html/oouu/vendor/yiisoft/yii2/base/Controller.php(181): yii\base\InlineAction->runWithParams()
#5 /var/www/html/oouu/vendor/yiisoft/yii2/base/Module.php(534): yii\base\Controller->runAction()
#6 /var/www/html/oouu/vendor/yiisoft/yii2/web/Application.php(104): yii\base\Module->runAction()
#7 /var/www/html/oouu/vendor/yiisoft/yii2/base/Application.php(392): yii\web\Application->handleRequest()
#8 /var/www/html/oouu/frontend/web/index.php(22): yii\base\Application->run()
#9 {main}');


--
-- TOC entry 3421 (class 0 OID 16534)
-- Dependencies: 236
-- Data for Name: system_rbac_migration; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.system_rbac_migration VALUES ('m000000_000000_base', 1616883426);
INSERT INTO public.system_rbac_migration VALUES ('m150625_214101_roles', 1616883430);
INSERT INTO public.system_rbac_migration VALUES ('m150625_215624_init_permissions', 1616883430);
INSERT INTO public.system_rbac_migration VALUES ('m151223_074604_edit_own_model', 1616883431);


--
-- TOC entry 3440 (class 0 OID 16815)
-- Dependencies: 255
-- Data for Name: taller; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.taller VALUES (2, 'taller');


--
-- TOC entry 3422 (class 0 OID 16537)
-- Dependencies: 237
-- Data for Name: timeline_event; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timeline_event VALUES (1, 'frontend', 'user', 'signup', '{"public_identity":"webmaster","user_id":1,"created_at":1616883423}', 1616883423);
INSERT INTO public.timeline_event VALUES (2, 'frontend', 'user', 'signup', '{"public_identity":"manager","user_id":2,"created_at":1616883423}', 1616883423);
INSERT INTO public.timeline_event VALUES (3, 'frontend', 'user', 'signup', '{"public_identity":"user","user_id":3,"created_at":1616883423}', 1616883423);
INSERT INTO public.timeline_event VALUES (4, 'frontend', 'user', 'signup', '{"public_identity":"rommel","user_id":4,"created_at":1639432637}', 1639432637);


--
-- TOC entry 3424 (class 0 OID 16545)
-- Dependencies: 239
-- Data for Name: tipo_solicitud; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tipo_solicitud VALUES ('Registro', 1);
INSERT INTO public.tipo_solicitud VALUES ('Renovación', 2);


--
-- TOC entry 3426 (class 0 OID 16553)
-- Dependencies: 241
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."user" VALUES (3, 'user', 'w5xDyDcLF8v9cWxDxlm4KvBfBxrc51z7', '2srFu_PDlJ7WNboDxKlPI18ldUvw5AmF8tLoA2M7', '$2y$13$gW8l/l8pKOsJhgX3PFaEGuWBsFcCYN0LDVMGTB4Zhn4eaEDmZlNtW', NULL, NULL, 'user@example.com', 2, 1616883425, 1616883425, 1617922790);
INSERT INTO public."user" VALUES (2, 'manager', 'XSRgD9bGC6wUzTv9XCyF0QDodY444isB', 'IhX_g2WyQS3EJEoN3-Q2rNTB4hJNEm_txf8CviTe', '$2y$13$wse/pCCDtMK7Rrcb3vO7zeeDj2UmfyFRTWMKpzJeZLtnLuEBtSvLq', NULL, NULL, 'manager@example.com', 2, 1616883424, 1616883424, 1617922855);
INSERT INTO public."user" VALUES (4, 'rommel', 'y2XYRPOq4JI_fVUVENZah8DeCZAgY2nE', 's0j6WzyejRZYB52icSoW3PIpZ4alQPDAnmVemJOV', '$2y$13$irr8yoIBE.4F6W1yzLwZCuHa/.luCAN10b2fap8m13uXAdimkrAj2', NULL, NULL, 'rommelescorihuela@yopmail.com', 2, 1639432637, 1640878499, 1641501028);
INSERT INTO public."user" VALUES (1, 'webmaster', '2aKuivBjypSVLxM1MCZp-4Vad3HwNxPB', 'vZyeMSBSEcO_xOQ1yi3fHF0X2ueZnegp8YZMUpJp', '$2y$13$6n4exPsdsZ8sKTzIaZbTsOJemp.ZjKx7JJkohV.Kg//ktKPB.MGHC', NULL, NULL, 'webmaster@example.com', 2, 1616883424, 1616883424, 1641565818);


--
-- TOC entry 3428 (class 0 OID 16562)
-- Dependencies: 243
-- Data for Name: user_profile; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_profile VALUES (2, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL);
INSERT INTO public.user_profile VALUES (3, NULL, NULL, NULL, NULL, NULL, 'en-US', NULL);
INSERT INTO public.user_profile VALUES (1, 'John', 'blanco', 'Doe', '1/Pq4zQ2jt2h0V6YxziAOWKLggRHLixTQO.jpg', 'http://localhost/sitios_yii/oouu/storage/web/source', 'es', 1);
INSERT INTO public.user_profile VALUES (4, NULL, NULL, NULL, NULL, NULL, 'es', NULL);


--
-- TOC entry 3430 (class 0 OID 16570)
-- Dependencies: 245
-- Data for Name: user_token; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_token VALUES (1, 1, 'login_pass', '-YJn06suB_BbECgipAcej_CPsNwdEimrkIrMeOCr', 1616901328, 1616901268, 1616901268);
INSERT INTO public.user_token VALUES (3, 4, 'password_reset', 'ZTD_6mgkAbXqZFQ89GuNt-bIdgxgIAPDsNYvuAF_', 1641587972, 1641501572, 1641501572);


--
-- TOC entry 3447 (class 0 OID 16880)
-- Dependencies: 262
-- Data for Name: usuario_material; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3444 (class 0 OID 16848)
-- Dependencies: 259
-- Data for Name: usuario_taller; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3432 (class 0 OID 16575)
-- Dependencies: 247
-- Data for Name: widget_carousel; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.widget_carousel VALUES (1, 'index', 1);
INSERT INTO public.widget_carousel VALUES (2, '2', 1);


--
-- TOC entry 3434 (class 0 OID 16581)
-- Dependencies: 249
-- Data for Name: widget_carousel_item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.widget_carousel_item VALUES (1, 1, '', 'img/yii2-starter-kit.gif', '/img/yii2-starter-kit.gif', 'image/gif', '/', NULL, 1, 0, NULL, NULL);
INSERT INTO public.widget_carousel_item VALUES (2, 2, 'http://localhost/sitios_yii/oouu/storage/web/source', '1/g-jG17l6Rd0p61CwIEZzAnBJkgZKWibM.png', NULL, 'image/png', '', '', 1, 1, 1617496090, 1617496138);
INSERT INTO public.widget_carousel_item VALUES (3, 2, 'http://localhost/sitios_yii/oouu/storage/web/source', '1/wO5gB-xhIH8_rNgkgq_ErsVwB0iubxX9.png', NULL, 'image/png', '', '', 1, 2, 1617496120, 1617496158);


--
-- TOC entry 3436 (class 0 OID 16591)
-- Dependencies: 251
-- Data for Name: widget_menu; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.widget_menu VALUES (1, 'frontend-index', 'Frontend index menu', '[
    {
        "label": "Get started with Yii2",
        "url": "http://www.yiiframework.com",
        "options": {
            "tag": "span"
        },
        "template": "<a href=\"{url}\" class=\"btn btn-lg btn-success\">{label}</a>"
    },
    {
        "label": "Yii2 Starter Kit on GitHub",
        "url": "https://github.com/yii2-starter-kit/yii2-starter-kit",
        "options": {
            "tag": "span"
        },
        "template": "<a href=\"{url}\" class=\"btn btn-lg btn-primary\">{label}</a>"
    },
    {
        "label": "Find a bug?",
        "url": "https://github.com/yii2-starter-kit/yii2-starter-kit/issues",
        "options": {
            "tag": "span"
        },
        "template": "<a href=\"{url}\" class=\"btn btn-lg btn-danger\">{label}</a>"
    }
]', 1);


--
-- TOC entry 3438 (class 0 OID 16600)
-- Dependencies: 253
-- Data for Name: widget_text; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.widget_text VALUES (1, 'backend_welcome', 'Welcome to backend', '<p>Welcome to Yii2 Starter Kit Dashboard</p>', 1, 1616883425, 1616883425);
INSERT INTO public.widget_text VALUES (2, 'ads-example', 'Google Ads Example Block', '<div class="lead">
                <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                <ins class="adsbygoogle"
                     style="display:block"
                     data-ad-client="ca-pub-9505937224921657"
                     data-ad-slot="2264361777"
                     data-ad-format="auto"></ins>
                <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
            </div>', 0, 1616883425, 1616883425);


--
-- TOC entry 3485 (class 0 OID 0)
-- Dependencies: 204
-- Name: article_attachment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_attachment_id_seq', 1, true);


--
-- TOC entry 3486 (class 0 OID 0)
-- Dependencies: 206
-- Name: article_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_category_id_seq', 1, true);


--
-- TOC entry 3487 (class 0 OID 0)
-- Dependencies: 207
-- Name: article_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_id_seq', 1, true);


--
-- TOC entry 3488 (class 0 OID 0)
-- Dependencies: 209
-- Name: datos_juridicos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datos_juridicos_id_seq', 1, false);


--
-- TOC entry 3489 (class 0 OID 0)
-- Dependencies: 211
-- Name: datos_organizacion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datos_organizacion_id_seq', 11, true);


--
-- TOC entry 3490 (class 0 OID 0)
-- Dependencies: 213
-- Name: datos_personales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.datos_personales_id_seq', 17, true);


--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 215
-- Name: documentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.documentos_id_seq', 3, true);


--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 218
-- Name: file_storage_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.file_storage_item_id_seq', 13, true);


--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 221
-- Name: i18n_source_message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.i18n_source_message_id_seq', 1, false);


--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 258
-- Name: material_apoyo_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.material_apoyo_id_seq', 2, true);


--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 225
-- Name: page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.page_id_seq', 2, true);


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 264
-- Name: preguntas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.preguntas_id_seq', 1, false);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 265
-- Name: respuestas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.respuestas_id_seq', 1, false);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 232
-- Name: servicios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.servicios_id_seq', 3, true);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 235
-- Name: system_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.system_log_id_seq', 319, true);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 256
-- Name: taller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taller_id_seq', 2, true);


--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 238
-- Name: timeline_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timeline_event_id_seq', 4, true);


--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 240
-- Name: tipo_solicitud_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_solicitud_id_seq', 2, true);


--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 242
-- Name: user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_id_seq', 4, true);


--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 244
-- Name: user_profile_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_profile_user_id_seq', 1, false);


--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 246
-- Name: user_token_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_token_id_seq', 3, true);


--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 261
-- Name: usuario_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_material_id_seq', 1, false);


--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 260
-- Name: usuario_taller_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_taller_id_seq', 1, false);


--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 248
-- Name: widget_carousel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.widget_carousel_id_seq', 2, true);


--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 250
-- Name: widget_carousel_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.widget_carousel_item_id_seq', 3, true);


--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 252
-- Name: widget_menu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.widget_menu_id_seq', 1, true);


--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 254
-- Name: widget_text_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.widget_text_id_seq', 2, true);


--
-- TOC entry 3142 (class 2606 OID 16632)
-- Name: article_attachment article_attachment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_attachment
    ADD CONSTRAINT article_attachment_pkey PRIMARY KEY (id);


--
-- TOC entry 3144 (class 2606 OID 16634)
-- Name: article_category article_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_category
    ADD CONSTRAINT article_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3139 (class 2606 OID 16636)
-- Name: article article_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT article_pkey PRIMARY KEY (id);


--
-- TOC entry 3147 (class 2606 OID 16638)
-- Name: datos_juridicos datos_juridicos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_juridicos
    ADD CONSTRAINT datos_juridicos_pkey PRIMARY KEY (id);


--
-- TOC entry 3150 (class 2606 OID 16640)
-- Name: datos_organizacion datos_organizacion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_organizacion
    ADD CONSTRAINT datos_organizacion_pkey PRIMARY KEY (id);


--
-- TOC entry 3155 (class 2606 OID 16642)
-- Name: datos_personales datos_personales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_personales
    ADD CONSTRAINT datos_personales_pkey PRIMARY KEY (id);


--
-- TOC entry 3158 (class 2606 OID 16644)
-- Name: documentos documentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);


--
-- TOC entry 3161 (class 2606 OID 16646)
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id);


--
-- TOC entry 3163 (class 2606 OID 16648)
-- Name: file_storage_item file_storage_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.file_storage_item
    ADD CONSTRAINT file_storage_item_pkey PRIMARY KEY (id);


--
-- TOC entry 3165 (class 2606 OID 16650)
-- Name: i18n_message i18n_message_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_message
    ADD CONSTRAINT i18n_message_pk PRIMARY KEY (id, language);


--
-- TOC entry 3167 (class 2606 OID 16652)
-- Name: i18n_source_message i18n_source_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_source_message
    ADD CONSTRAINT i18n_source_message_pkey PRIMARY KEY (id);


--
-- TOC entry 3221 (class 2606 OID 16842)
-- Name: material_apoyo material_apoyo_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_apoyo
    ADD CONSTRAINT material_apoyo_pk PRIMARY KEY (id);


--
-- TOC entry 3173 (class 2606 OID 16654)
-- Name: municipio municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);


--
-- TOC entry 3175 (class 2606 OID 16656)
-- Name: page page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.page
    ADD CONSTRAINT page_pkey PRIMARY KEY (id);


--
-- TOC entry 3178 (class 2606 OID 16658)
-- Name: parroquia parroquia_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT parroquia_pkey PRIMARY KEY (id);


--
-- TOC entry 3170 (class 2606 OID 16660)
-- Name: key_storage_item pk_key_storage_item_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.key_storage_item
    ADD CONSTRAINT pk_key_storage_item_key PRIMARY KEY (key);


--
-- TOC entry 3227 (class 2606 OID 16900)
-- Name: preguntas preguntas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_pk PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 16662)
-- Name: rbac_auth_assignment rbac_auth_assignment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_assignment
    ADD CONSTRAINT rbac_auth_assignment_pkey PRIMARY KEY (item_name, user_id);


--
-- TOC entry 3185 (class 2606 OID 16664)
-- Name: rbac_auth_item_child rbac_auth_item_child_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_item_child
    ADD CONSTRAINT rbac_auth_item_child_pkey PRIMARY KEY (parent, child);


--
-- TOC entry 3183 (class 2606 OID 16666)
-- Name: rbac_auth_item rbac_auth_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_item
    ADD CONSTRAINT rbac_auth_item_pkey PRIMARY KEY (name);


--
-- TOC entry 3187 (class 2606 OID 16668)
-- Name: rbac_auth_rule rbac_auth_rule_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_rule
    ADD CONSTRAINT rbac_auth_rule_pkey PRIMARY KEY (name);


--
-- TOC entry 3229 (class 2606 OID 16948)
-- Name: respuestas respuestas_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_pk PRIMARY KEY (id);


--
-- TOC entry 3189 (class 2606 OID 16670)
-- Name: servicios servicios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id);


--
-- TOC entry 3191 (class 2606 OID 16672)
-- Name: system_db_migration system_db_migration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_db_migration
    ADD CONSTRAINT system_db_migration_pkey PRIMARY KEY (version);


--
-- TOC entry 3195 (class 2606 OID 16674)
-- Name: system_log system_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_log
    ADD CONSTRAINT system_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3197 (class 2606 OID 16676)
-- Name: system_rbac_migration system_rbac_migration_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.system_rbac_migration
    ADD CONSTRAINT system_rbac_migration_pkey PRIMARY KEY (version);


--
-- TOC entry 3219 (class 2606 OID 16828)
-- Name: taller taller_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taller
    ADD CONSTRAINT taller_pk PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 16678)
-- Name: timeline_event timeline_event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timeline_event
    ADD CONSTRAINT timeline_event_pkey PRIMARY KEY (id);


--
-- TOC entry 3202 (class 2606 OID 16680)
-- Name: tipo_solicitud tipo_solicitud_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo_solicitud
    ADD CONSTRAINT tipo_solicitud_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 16682)
-- Name: user user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (id);


--
-- TOC entry 3206 (class 2606 OID 16684)
-- Name: user_profile user_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT user_profile_pkey PRIMARY KEY (user_id);


--
-- TOC entry 3208 (class 2606 OID 16686)
-- Name: user_token user_token_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_token
    ADD CONSTRAINT user_token_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 16907)
-- Name: usuario_material usuario_material_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_material
    ADD CONSTRAINT usuario_material_pk PRIMARY KEY (id);


--
-- TOC entry 3223 (class 2606 OID 16867)
-- Name: usuario_taller usuario_taller_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_taller
    ADD CONSTRAINT usuario_taller_pk PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 16688)
-- Name: widget_carousel_item widget_carousel_item_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_carousel_item
    ADD CONSTRAINT widget_carousel_item_pkey PRIMARY KEY (id);


--
-- TOC entry 3210 (class 2606 OID 16690)
-- Name: widget_carousel widget_carousel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_carousel
    ADD CONSTRAINT widget_carousel_pkey PRIMARY KEY (id);


--
-- TOC entry 3214 (class 2606 OID 16692)
-- Name: widget_menu widget_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_menu
    ADD CONSTRAINT widget_menu_pkey PRIMARY KEY (id);


--
-- TOC entry 3217 (class 2606 OID 16694)
-- Name: widget_text widget_text_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_text
    ADD CONSTRAINT widget_text_pkey PRIMARY KEY (id);


--
-- TOC entry 3159 (class 1259 OID 16695)
-- Name: documetodato; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX documetodato ON public.documentos USING btree (id_organizacion);


--
-- TOC entry 3171 (class 1259 OID 16696)
-- Name: fki_estado; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_estado ON public.municipio USING btree (idestado);


--
-- TOC entry 3156 (class 1259 OID 16697)
-- Name: fki_iddatosorganizacionper; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_iddatosorganizacionper ON public.datos_personales USING btree (id_organizacion);


--
-- TOC entry 3176 (class 1259 OID 16698)
-- Name: fki_municipio; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_municipio ON public.parroquia USING btree (idmunicipio);


--
-- TOC entry 3148 (class 1259 OID 16699)
-- Name: fki_orgjuridico; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_orgjuridico ON public.datos_juridicos USING btree (iddatosorganizacion);


--
-- TOC entry 3151 (class 1259 OID 16700)
-- Name: fki_parroquiaorg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_parroquiaorg ON public.datos_organizacion USING btree (idparroquia);


--
-- TOC entry 3152 (class 1259 OID 16701)
-- Name: fki_serviciosorg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_serviciosorg ON public.datos_organizacion USING btree (idservicios);


--
-- TOC entry 3153 (class 1259 OID 16702)
-- Name: fki_tipodatosorg; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_tipodatosorg ON public.datos_organizacion USING btree (idtiposolicitud);


--
-- TOC entry 3181 (class 1259 OID 16703)
-- Name: idx-auth_item-type; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX "idx-auth_item-type" ON public.rbac_auth_item USING btree (type);


--
-- TOC entry 3145 (class 1259 OID 16704)
-- Name: idx_article_category_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_article_category_slug ON public.article_category USING btree (slug);


--
-- TOC entry 3140 (class 1259 OID 16705)
-- Name: idx_article_slug; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_article_slug ON public.article USING btree (slug);


--
-- TOC entry 3198 (class 1259 OID 16706)
-- Name: idx_created_at; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_created_at ON public.timeline_event USING btree (created_at);


--
-- TOC entry 3168 (class 1259 OID 16707)
-- Name: idx_key_storage_item_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX idx_key_storage_item_key ON public.key_storage_item USING btree (key);


--
-- TOC entry 3192 (class 1259 OID 16708)
-- Name: idx_log_category; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_log_category ON public.system_log USING btree (category);


--
-- TOC entry 3193 (class 1259 OID 16709)
-- Name: idx_log_level; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_log_level ON public.system_log USING btree (level);


--
-- TOC entry 3215 (class 1259 OID 16710)
-- Name: idx_widget_text_key; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX idx_widget_text_key ON public.widget_text USING btree (key);


--
-- TOC entry 3235 (class 2606 OID 16711)
-- Name: datos_juridicos datos_juridicos_iddatosorganizacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_juridicos
    ADD CONSTRAINT datos_juridicos_iddatosorganizacion_fkey FOREIGN KEY (iddatosorganizacion) REFERENCES public.datos_organizacion(id) NOT VALID;


--
-- TOC entry 3236 (class 2606 OID 16716)
-- Name: datos_organizacion datos_organizacion_idparroquia_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_organizacion
    ADD CONSTRAINT datos_organizacion_idparroquia_fkey FOREIGN KEY (idparroquia) REFERENCES public.parroquia(id) NOT VALID;


--
-- TOC entry 3237 (class 2606 OID 16721)
-- Name: datos_organizacion datos_organizacion_idservicios_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_organizacion
    ADD CONSTRAINT datos_organizacion_idservicios_fkey FOREIGN KEY (idservicios) REFERENCES public.servicios(id) NOT VALID;


--
-- TOC entry 3238 (class 2606 OID 16726)
-- Name: datos_organizacion datos_organizacion_idtiposolicitud_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_organizacion
    ADD CONSTRAINT datos_organizacion_idtiposolicitud_fkey FOREIGN KEY (idtiposolicitud) REFERENCES public.tipo_solicitud(id) NOT VALID;


--
-- TOC entry 3239 (class 2606 OID 16731)
-- Name: datos_personales datos_personales_id_organizacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.datos_personales
    ADD CONSTRAINT datos_personales_id_organizacion_fkey FOREIGN KEY (id_organizacion) REFERENCES public.datos_organizacion(id) NOT VALID;


--
-- TOC entry 3240 (class 2606 OID 16736)
-- Name: documentos documentos_id_organizacion_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_id_organizacion_fkey FOREIGN KEY (id_organizacion) REFERENCES public.datos_organizacion(id) NOT VALID;


--
-- TOC entry 3242 (class 2606 OID 16741)
-- Name: municipio estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT estado FOREIGN KEY (idestado) REFERENCES public.estado(id) NOT VALID;


--
-- TOC entry 3233 (class 2606 OID 16746)
-- Name: article_attachment fk_article_attachment_article; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_attachment
    ADD CONSTRAINT fk_article_attachment_article FOREIGN KEY (article_id) REFERENCES public.article(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3230 (class 2606 OID 16751)
-- Name: article fk_article_author; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk_article_author FOREIGN KEY (created_by) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3231 (class 2606 OID 16756)
-- Name: article fk_article_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk_article_category FOREIGN KEY (category_id) REFERENCES public.article_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3234 (class 2606 OID 16761)
-- Name: article_category fk_article_category_section; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_category
    ADD CONSTRAINT fk_article_category_section FOREIGN KEY (parent_id) REFERENCES public.article_category(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3232 (class 2606 OID 16766)
-- Name: article fk_article_updater; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article
    ADD CONSTRAINT fk_article_updater FOREIGN KEY (updated_by) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3241 (class 2606 OID 16771)
-- Name: i18n_message fk_i18n_message_source_message; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.i18n_message
    ADD CONSTRAINT fk_i18n_message_source_message FOREIGN KEY (id) REFERENCES public.i18n_source_message(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- TOC entry 3249 (class 2606 OID 16776)
-- Name: widget_carousel_item fk_item_carousel; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.widget_carousel_item
    ADD CONSTRAINT fk_item_carousel FOREIGN KEY (carousel_id) REFERENCES public.widget_carousel(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3248 (class 2606 OID 16781)
-- Name: user_profile fk_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_profile
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public."user"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3250 (class 2606 OID 16908)
-- Name: material_apoyo material_apoyo_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.material_apoyo
    ADD CONSTRAINT material_apoyo_fk FOREIGN KEY (id_taller) REFERENCES public.taller(id);


--
-- TOC entry 3243 (class 2606 OID 16786)
-- Name: parroquia municipio; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.parroquia
    ADD CONSTRAINT municipio FOREIGN KEY (idmunicipio) REFERENCES public.municipio(id) NOT VALID;


--
-- TOC entry 3257 (class 2606 OID 16933)
-- Name: preguntas preguntas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.preguntas
    ADD CONSTRAINT preguntas_fk FOREIGN KEY (id_taller) REFERENCES public.taller(id);


--
-- TOC entry 3244 (class 2606 OID 16791)
-- Name: rbac_auth_assignment rbac_auth_assignment_item_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_assignment
    ADD CONSTRAINT rbac_auth_assignment_item_name_fkey FOREIGN KEY (item_name) REFERENCES public.rbac_auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3246 (class 2606 OID 16796)
-- Name: rbac_auth_item_child rbac_auth_item_child_child_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_item_child
    ADD CONSTRAINT rbac_auth_item_child_child_fkey FOREIGN KEY (child) REFERENCES public.rbac_auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3247 (class 2606 OID 16801)
-- Name: rbac_auth_item_child rbac_auth_item_child_parent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_item_child
    ADD CONSTRAINT rbac_auth_item_child_parent_fkey FOREIGN KEY (parent) REFERENCES public.rbac_auth_item(name) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3245 (class 2606 OID 16806)
-- Name: rbac_auth_item rbac_auth_item_rule_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rbac_auth_item
    ADD CONSTRAINT rbac_auth_item_rule_name_fkey FOREIGN KEY (rule_name) REFERENCES public.rbac_auth_rule(name) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3259 (class 2606 OID 16978)
-- Name: respuestas respuestas_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_fk FOREIGN KEY (id_alumno) REFERENCES public.datos_personales(id);


--
-- TOC entry 3258 (class 2606 OID 16973)
-- Name: respuestas respuestas_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_fk1 FOREIGN KEY (id_pregunta) REFERENCES public.preguntas(id);


--
-- TOC entry 3260 (class 2606 OID 16998)
-- Name: respuestas respuestas_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.respuestas
    ADD CONSTRAINT respuestas_fk2 FOREIGN KEY (id_alumno_juridico) REFERENCES public.datos_juridicos(id);


--
-- TOC entry 3254 (class 2606 OID 16923)
-- Name: usuario_material usuario_material_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_material
    ADD CONSTRAINT usuario_material_fk FOREIGN KEY (id_alumno) REFERENCES public.datos_personales(id);


--
-- TOC entry 3256 (class 2606 OID 16993)
-- Name: usuario_material usuario_material_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_material
    ADD CONSTRAINT usuario_material_fk1 FOREIGN KEY (id_alumno_juridico) REFERENCES public.datos_juridicos(id);


--
-- TOC entry 3255 (class 2606 OID 16928)
-- Name: usuario_material usuario_material_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_material
    ADD CONSTRAINT usuario_material_fk_1 FOREIGN KEY (id_material_apoyo) REFERENCES public.material_apoyo(id);


--
-- TOC entry 3252 (class 2606 OID 16983)
-- Name: usuario_taller usuario_taller_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_taller
    ADD CONSTRAINT usuario_taller_fk FOREIGN KEY (id_alumno) REFERENCES public.datos_personales(id);


--
-- TOC entry 3253 (class 2606 OID 16988)
-- Name: usuario_taller usuario_taller_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_taller
    ADD CONSTRAINT usuario_taller_fk1 FOREIGN KEY (id_alumno_juridico) REFERENCES public.datos_juridicos(id);


--
-- TOC entry 3251 (class 2606 OID 16918)
-- Name: usuario_taller usuario_taller_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario_taller
    ADD CONSTRAINT usuario_taller_fk_1 FOREIGN KEY (id_taller) REFERENCES public.taller(id);


-- Completed on 2022-01-10 22:59:59 -04

--
-- PostgreSQL database dump complete
--


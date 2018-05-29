--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.groups (
    id integer NOT NULL,
    course integer NOT NULL,
    gname character varying(200)
);


ALTER TABLE public.groups OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.groups_id_seq OWNER TO postgres;

--
-- Name: groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;


--
-- Name: homeworks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.homeworks (
    id integer NOT NULL,
    decision character varying(1000),
    file character varying(100),
    student_id integer NOT NULL,
    timetable_id integer NOT NULL
);


ALTER TABLE public.homeworks OWNER TO postgres;

--
-- Name: homeworks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.homeworks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.homeworks_id_seq OWNER TO postgres;

--
-- Name: homeworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.homeworks_id_seq OWNED BY public.homeworks.id;


--
-- Name: marks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.marks (
    id integer NOT NULL,
    attendance character varying(50),
    mark integer,
    student_id integer NOT NULL,
    timetable_id integer NOT NULL
);


ALTER TABLE public.marks OWNER TO postgres;

--
-- Name: marks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.marks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marks_id_seq OWNER TO postgres;

--
-- Name: marks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.marks_id_seq OWNED BY public.marks.id;


--
-- Name: materials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.materials (
    id integer NOT NULL,
    mname character varying(200) NOT NULL,
    author character varying(200) NOT NULL
);


ALTER TABLE public.materials OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.materials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.materials_id_seq OWNER TO postgres;

--
-- Name: materials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.materials_id_seq OWNED BY public.materials.id;


--
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(200) NOT NULL
);


ALTER TABLE public.roles OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.roles_id_seq OWNER TO postgres;

--
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.students (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    age integer NOT NULL,
    adres character varying(200),
    phone character varying(20) NOT NULL,
    email character varying(50),
    users_id integer NOT NULL,
    groups_id integer NOT NULL
);


ALTER TABLE public.students OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO postgres;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: subject; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.subject (
    id integer NOT NULL,
    sname character varying(200) NOT NULL,
    duration integer,
    materials_id integer NOT NULL,
    teacher_id integer
);


ALTER TABLE public.subject OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.subject_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subject_id_seq OWNER TO postgres;

--
-- Name: subject_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.subject_id_seq OWNED BY public.subject.id;


--
-- Name: teachers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teachers (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    adres character varying(200),
    phone character varying(20) NOT NULL,
    email character varying(50),
    users_id integer NOT NULL
);


ALTER TABLE public.teachers OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teachers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teachers_id_seq OWNER TO postgres;

--
-- Name: teachers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teachers_id_seq OWNED BY public.teachers.id;


--
-- Name: timetable; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timetable (
    id integer NOT NULL,
    subject_id integer NOT NULL,
    date date,
    "time" character varying(20),
    groups_id integer NOT NULL,
    homework character varying(500)
);


ALTER TABLE public.timetable OWNER TO postgres;

--
-- Name: timetable_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.timetable_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.timetable_id_seq OWNER TO postgres;

--
-- Name: timetable_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.timetable_id_seq OWNED BY public.timetable.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    login character varying(200) NOT NULL,
    passwordhash character varying(50) NOT NULL,
    roles_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);


--
-- Name: homeworks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homeworks ALTER COLUMN id SET DEFAULT nextval('public.homeworks_id_seq'::regclass);


--
-- Name: marks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks ALTER COLUMN id SET DEFAULT nextval('public.marks_id_seq'::regclass);


--
-- Name: materials id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials ALTER COLUMN id SET DEFAULT nextval('public.materials_id_seq'::regclass);


--
-- Name: roles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Name: subject id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject ALTER COLUMN id SET DEFAULT nextval('public.subject_id_seq'::regclass);


--
-- Name: teachers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers ALTER COLUMN id SET DEFAULT nextval('public.teachers_id_seq'::regclass);


--
-- Name: timetable id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable ALTER COLUMN id SET DEFAULT nextval('public.timetable_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.groups VALUES (2, 1, 'seo111');
INSERT INTO public.groups VALUES (3, 1, 'design121');
INSERT INTO public.groups VALUES (1, 1, 'dev101');


--
-- Data for Name: homeworks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.homeworks VALUES (2, 'decision for hw1 of st 11', NULL, 11, 1);
INSERT INTO public.homeworks VALUES (3, 'decision for hw1 of st 12', NULL, 12, 1);
INSERT INTO public.homeworks VALUES (4, 'decision for hw1 of st 13', NULL, 13, 1);
INSERT INTO public.homeworks VALUES (5, 'decision for hw1 of st 14', NULL, 14, 1);
INSERT INTO public.homeworks VALUES (7, 'decision for hw2 of st 11', NULL, 11, 2);
INSERT INTO public.homeworks VALUES (8, 'decision for hw2 of st 12', NULL, 12, 2);
INSERT INTO public.homeworks VALUES (9, 'decision for hw2 of st 13', NULL, 13, 2);
INSERT INTO public.homeworks VALUES (10, 'decision for hw2 of st 14', NULL, 14, 2);
INSERT INTO public.homeworks VALUES (1, 'decision 123', 'file', 10, 1);
INSERT INTO public.homeworks VALUES (33, 'decision 123', 'file', 10, 1);
INSERT INTO public.homeworks VALUES (34, 'decision 123', 'file', 10, 4);
INSERT INTO public.homeworks VALUES (35, 'qwerty', 'asdas', 10, 2);


--
-- Data for Name: marks; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.marks VALUES (1, NULL, 5, 10, 1);
INSERT INTO public.marks VALUES (2, NULL, 5, 10, 2);
INSERT INTO public.marks VALUES (3, NULL, 4, 10, 3);
INSERT INTO public.marks VALUES (4, NULL, 5, 10, 4);
INSERT INTO public.marks VALUES (5, NULL, 5, 10, 5);
INSERT INTO public.marks VALUES (6, NULL, 4, 10, 6);
INSERT INTO public.marks VALUES (7, NULL, 5, 10, 7);
INSERT INTO public.marks VALUES (8, NULL, 5, 10, 8);
INSERT INTO public.marks VALUES (9, NULL, 4, 10, 9);
INSERT INTO public.marks VALUES (10, NULL, 5, 10, 10);
INSERT INTO public.marks VALUES (11, NULL, 4, 10, 11);


--
-- Data for Name: materials; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.materials VALUES (1, 'dev-book1', 'Author 1');
INSERT INTO public.materials VALUES (2, 'dev-book2', 'Author 1');
INSERT INTO public.materials VALUES (3, 'dev-book3', 'Author 1');
INSERT INTO public.materials VALUES (4, 'dev-book4', 'Author 1');
INSERT INTO public.materials VALUES (5, 'seo-book1', 'Author 2');
INSERT INTO public.materials VALUES (6, 'seo-book2', 'Author 2');
INSERT INTO public.materials VALUES (7, 'seo-book3', 'Author 2');
INSERT INTO public.materials VALUES (8, 'dev-manual1', 'Author 3');
INSERT INTO public.materials VALUES (9, 'dev-manual2', 'Author 4');
INSERT INTO public.materials VALUES (10, 'dev-manual3', 'Author 3');


--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.roles VALUES (1, 'admin');
INSERT INTO public.roles VALUES (2, 'teacher');
INSERT INTO public.roles VALUES (3, 'student');
INSERT INTO public.roles VALUES (4, 'headteacher');


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.students VALUES (10, 'Ildar Baev', 21, 'kazan -1', '123-00-01', 'e@s.t', 13, 1);
INSERT INTO public.students VALUES (11, 'Ilmir Minbaev', 22, 'kazan -2', '123-00-02', 'f@s.t', 14, 1);
INSERT INTO public.students VALUES (12, 'Ilnur Minnebaev', 19, 'kazan -3', '123-00-03', 'j@s.t', 15, 1);
INSERT INTO public.students VALUES (13, 'Gulnar Hanova', 27, 'kazan -4', '123-00-04', 'h@s.t', 16, 1);
INSERT INTO public.students VALUES (14, 'Gulnyr Hananova', 31, 'kazan -5', '123-00-05', 'j@s.t', 17, 1);


--
-- Data for Name: subject; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.subject VALUES (1, 'java syntax theory', 50, 1, NULL);
INSERT INTO public.subject VALUES (2, 'java syntax practice', 150, 8, NULL);
INSERT INTO public.subject VALUES (3, 'sql', 50, 2, NULL);
INSERT INTO public.subject VALUES (4, 'java core theory', 100, 3, NULL);
INSERT INTO public.subject VALUES (5, 'java core practice', 200, 9, NULL);


--
-- Data for Name: teachers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.teachers VALUES (1, 'Ivan Ivanov', 'innopolis, 1', '123-45-67', 'a@b.c', 10);
INSERT INTO public.teachers VALUES (2, 'Petr Petrov', 'innopolis, 1', '123-45-89', 'b@b.c', 11);
INSERT INTO public.teachers VALUES (3, 'Olga Olgova', 'kazan, pushkina, 2', '123-45-90', 'c@b.c', 12);


--
-- Data for Name: timetable; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.timetable VALUES (1, 1, '2018-01-11', '16.00-18.00', 1, 'дз 1 предмет 1');
INSERT INTO public.timetable VALUES (11, 5, '2018-01-13', '16.00-18.00', 1, 'дз1 предмет 5');
INSERT INTO public.timetable VALUES (5, 2, '2018-01-17', '16.00-18.00', 1, 'дз2 пердмет 2');
INSERT INTO public.timetable VALUES (2, 2, '2018-01-11', '18.10-20.10', 1, 'дз 1 предмет 2');
INSERT INTO public.timetable VALUES (4, 1, '2018-01-13', '18.10-20.10', 1, 'дз2 предмет 1');
INSERT INTO public.timetable VALUES (3, 3, '2018-01-13', '16.00-18.00', 1, 'дз1 предмет 3');
INSERT INTO public.timetable VALUES (9, 3, '2018-02-07', '16.00-18.00', 1, 'дз3 предмет 3');
INSERT INTO public.timetable VALUES (10, 4, '2018-02-07', '18.10-20.10', 1, 'дз1 предмет 4');
INSERT INTO public.timetable VALUES (7, 1, '2018-02-05', '16.00-18.00', 1, 'дз3 предмет 1');
INSERT INTO public.timetable VALUES (8, 2, '2018-02-05', '18.10-20.10', 1, 'дз3 предмет 2');
INSERT INTO public.timetable VALUES (6, 3, '2018-01-17', '18.10-20.10', 1, 'дз2 предмет 3');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users VALUES (10, 'teacher1', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 2);
INSERT INTO public.users VALUES (11, 'teacher2', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 2);
INSERT INTO public.users VALUES (14, 'student2', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 3);
INSERT INTO public.users VALUES (15, 'student3', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 3);
INSERT INTO public.users VALUES (12, 'headteacher', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 4);
INSERT INTO public.users VALUES (16, 'student4', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 3);
INSERT INTO public.users VALUES (17, 'student5', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 3);
INSERT INTO public.users VALUES (13, 'student1', 'f9c1c6eb5f78f0f8ea06cd74d158abe2', 3);


--
-- Name: groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.groups_id_seq', 3, true);


--
-- Name: homeworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.homeworks_id_seq', 35, true);


--
-- Name: marks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.marks_id_seq', 11, true);


--
-- Name: materials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.materials_id_seq', 10, true);


--
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roles_id_seq', 4, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.students_id_seq', 14, true);


--
-- Name: subject_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.subject_id_seq', 7, true);


--
-- Name: teachers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teachers_id_seq', 3, true);


--
-- Name: timetable_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.timetable_id_seq', 11, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 17, true);


--
-- Name: groups groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);


--
-- Name: homeworks homeworks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homeworks
    ADD CONSTRAINT homeworks_pkey PRIMARY KEY (id);


--
-- Name: marks marks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT marks_pkey PRIMARY KEY (id);


--
-- Name: materials materials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.materials
    ADD CONSTRAINT materials_pkey PRIMARY KEY (id);


--
-- Name: roles roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- Name: subject subject_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT subject_pkey PRIMARY KEY (id);


--
-- Name: teachers teachers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT teachers_pkey PRIMARY KEY (id);


--
-- Name: timetable timetable_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT timetable_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: students groups_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT groups_id FOREIGN KEY (groups_id) REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: timetable groups_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT groups_id FOREIGN KEY (groups_id) REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: subject materials_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT materials_id FOREIGN KEY (materials_id) REFERENCES public.materials(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: users roles_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT roles_id FOREIGN KEY (roles_id) REFERENCES public.roles(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: homeworks student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homeworks
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: marks student_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT student_id FOREIGN KEY (student_id) REFERENCES public.students(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: timetable subject_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timetable
    ADD CONSTRAINT subject_id FOREIGN KEY (subject_id) REFERENCES public.subject(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: subject teacher_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.subject
    ADD CONSTRAINT teacher_id FOREIGN KEY (teacher_id) REFERENCES public.teachers(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: marks timetable_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.marks
    ADD CONSTRAINT timetable_id FOREIGN KEY (timetable_id) REFERENCES public.timetable(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: homeworks timetable_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.homeworks
    ADD CONSTRAINT timetable_id FOREIGN KEY (timetable_id) REFERENCES public.timetable(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: students users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT users_id FOREIGN KEY (users_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: teachers users_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teachers
    ADD CONSTRAINT users_id FOREIGN KEY (users_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--


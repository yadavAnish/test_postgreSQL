PGDMP                         z            postgres    14.2    14.2     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    13754    postgres    DATABASE     l   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE postgres;
                postgres    false            ?           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3318                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ?           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16407    account    TABLE       CREATE TABLE public.account (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(255) NOT NULL,
    created_on timestamp without time zone,
    last_login timestamp without time zone
);
    DROP TABLE public.account;
       public         heap    postgres    false            ?            1259    16406    account_user_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.account_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.account_user_id_seq;
       public          postgres    false    211            ?           0    0    account_user_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.account_user_id_seq OWNED BY public.account.user_id;
          public          postgres    false    210            ]           2604    16410    account user_id    DEFAULT     r   ALTER TABLE ONLY public.account ALTER COLUMN user_id SET DEFAULT nextval('public.account_user_id_seq'::regclass);
 >   ALTER TABLE public.account ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    210    211    211            ?          0    16407    account 
   TABLE DATA           ]   COPY public.account (user_id, username, password, email, created_on, last_login) FROM stdin;
    public          postgres    false    211   R       ?           0    0    account_user_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.account_user_id_seq', 1, true);
          public          postgres    false    210            _           2606    16416    account account_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.account DROP CONSTRAINT account_email_key;
       public            postgres    false    211            a           2606    16412    account account_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_pkey PRIMARY KEY (user_id);
 >   ALTER TABLE ONLY public.account DROP CONSTRAINT account_pkey;
       public            postgres    false    211            c           2606    16414    account account_username_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.account
    ADD CONSTRAINT account_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.account DROP CONSTRAINT account_username_key;
       public            postgres    false    211            ?   /   x?3?L??,??L4Si?&f?鹉?9z????1~@????? 2??     
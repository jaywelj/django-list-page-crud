PGDMP                          w            pokemonweb_db    11.2    11.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16958    pokemonweb_db    DATABASE     �   CREATE DATABASE pokemonweb_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Philippines.1252' LC_CTYPE = 'English_Philippines.1252';
    DROP DATABASE pokemonweb_db;
             jaywelj    false            �            1259    16990 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         jaywelj    false            �            1259    16988    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       jaywelj    false    203            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       jaywelj    false    202            �            1259    17000    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         jaywelj    false            �            1259    16998    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       jaywelj    false    205            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       jaywelj    false    204            �            1259    16982    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         jaywelj    false            �            1259    16980    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       jaywelj    false    201            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       jaywelj    false    200            �            1259    17008 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         jaywelj    false            �            1259    17018    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         jaywelj    false            �            1259    17016    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       jaywelj    false    209            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       jaywelj    false    208            �            1259    17006    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       jaywelj    false    207            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       jaywelj    false    206            �            1259    17026    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         jaywelj    false            �            1259    17024 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       jaywelj    false    211            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       jaywelj    false    210            �            1259    17086    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         jaywelj    false            �            1259    17084    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       jaywelj    false    213            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       jaywelj    false    212            �            1259    16972    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         jaywelj    false            �            1259    16970    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       jaywelj    false    199            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       jaywelj    false    198            �            1259    16961    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         jaywelj    false            �            1259    16959    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       jaywelj    false    197            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       jaywelj    false    196            �            1259    17117    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         jaywelj    false            �            1259    17129    trainers_pokemon    TABLE     :  CREATE TABLE public.trainers_pokemon (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    type1 character varying(10) NOT NULL,
    type2 character varying(10) NOT NULL,
    description text,
    pokedex_no integer NOT NULL,
    photo character varying(100),
    is_verified boolean NOT NULL
);
 $   DROP TABLE public.trainers_pokemon;
       public         jaywelj    false            �            1259    17127    trainers_pokemon_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainers_pokemon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.trainers_pokemon_id_seq;
       public       jaywelj    false    216            �           0    0    trainers_pokemon_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.trainers_pokemon_id_seq OWNED BY public.trainers_pokemon.id;
            public       jaywelj    false    215            �            1259    17137    trainers_pokemonownership    TABLE       CREATE TABLE public.trainers_pokemonownership (
    id integer NOT NULL,
    nickname character varying(32) NOT NULL,
    level integer NOT NULL,
    sex character varying(1) NOT NULL,
    shiny boolean NOT NULL,
    pokemon_id integer NOT NULL,
    trainer_id integer NOT NULL
);
 -   DROP TABLE public.trainers_pokemonownership;
       public         jaywelj    false            �            1259    17135     trainers_pokemonownership_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainers_pokemonownership_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.trainers_pokemonownership_id_seq;
       public       jaywelj    false    218            �           0    0     trainers_pokemonownership_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.trainers_pokemonownership_id_seq OWNED BY public.trainers_pokemonownership.id;
            public       jaywelj    false    217            �            1259    17145    trainers_trainer    TABLE     �   CREATE TABLE public.trainers_trainer (
    id integer NOT NULL,
    name character varying(32) NOT NULL,
    sex character varying(1) NOT NULL,
    user_id integer NOT NULL,
    photo character varying(100) NOT NULL
);
 $   DROP TABLE public.trainers_trainer;
       public         jaywelj    false            �            1259    17143    trainers_trainer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trainers_trainer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.trainers_trainer_id_seq;
       public       jaywelj    false    220            �           0    0    trainers_trainer_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.trainers_trainer_id_seq OWNED BY public.trainers_trainer.id;
            public       jaywelj    false    219            �
           2604    16993    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    202    203    203            �
           2604    17003    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    205    204    205            �
           2604    16985    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    201    200    201            �
           2604    17011    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    206    207    207            �
           2604    17021    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    208    209    209            �
           2604    17029    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    211    210    211            �
           2604    17089    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    212    213    213            �
           2604    16975    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    198    199    199            �
           2604    16964    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    196    197    197            �
           2604    17132    trainers_pokemon id    DEFAULT     z   ALTER TABLE ONLY public.trainers_pokemon ALTER COLUMN id SET DEFAULT nextval('public.trainers_pokemon_id_seq'::regclass);
 B   ALTER TABLE public.trainers_pokemon ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    215    216    216            �
           2604    17140    trainers_pokemonownership id    DEFAULT     �   ALTER TABLE ONLY public.trainers_pokemonownership ALTER COLUMN id SET DEFAULT nextval('public.trainers_pokemonownership_id_seq'::regclass);
 K   ALTER TABLE public.trainers_pokemonownership ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    217    218    218            �
           2604    17148    trainers_trainer id    DEFAULT     z   ALTER TABLE ONLY public.trainers_trainer ALTER COLUMN id SET DEFAULT nextval('public.trainers_trainer_id_seq'::regclass);
 B   ALTER TABLE public.trainers_trainer ALTER COLUMN id DROP DEFAULT;
       public       jaywelj    false    220    219    220            �          0    16990 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       jaywelj    false    203   �       �          0    17000    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       jaywelj    false    205   .�       �          0    16982    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       jaywelj    false    201   K�       �          0    17008 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       jaywelj    false    207   ר       �          0    17018    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       jaywelj    false    209   ܩ       �          0    17026    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       jaywelj    false    211   ��       �          0    17086    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       jaywelj    false    213   �       �          0    16972    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       jaywelj    false    199   9�       �          0    16961    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       jaywelj    false    197   ��       �          0    17117    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       jaywelj    false    214   5�       �          0    17129    trainers_pokemon 
   TABLE DATA               o   COPY public.trainers_pokemon (id, name, type1, type2, description, pokedex_no, photo, is_verified) FROM stdin;
    public       jaywelj    false    216   ��       �          0    17137    trainers_pokemonownership 
   TABLE DATA               l   COPY public.trainers_pokemonownership (id, nickname, level, sex, shiny, pokemon_id, trainer_id) FROM stdin;
    public       jaywelj    false    218   ��       �          0    17145    trainers_trainer 
   TABLE DATA               I   COPY public.trainers_trainer (id, name, sex, user_id, photo) FROM stdin;
    public       jaywelj    false    220   u�       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       jaywelj    false    202            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       jaywelj    false    204            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
            public       jaywelj    false    200            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       jaywelj    false    208            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 12, true);
            public       jaywelj    false    206            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       jaywelj    false    210            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 55, true);
            public       jaywelj    false    212            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
            public       jaywelj    false    198            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 42, true);
            public       jaywelj    false    196            �           0    0    trainers_pokemon_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.trainers_pokemon_id_seq', 20, true);
            public       jaywelj    false    215            �           0    0     trainers_pokemonownership_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.trainers_pokemonownership_id_seq', 29, true);
            public       jaywelj    false    217            �           0    0    trainers_trainer_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.trainers_trainer_id_seq', 27, true);
            public       jaywelj    false    219            �
           2606    17115    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         jaywelj    false    203            �
           2606    17052 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         jaywelj    false    205    205            �
           2606    17005 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         jaywelj    false    205            �
           2606    16995    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         jaywelj    false    203            �
           2606    17038 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         jaywelj    false    201    201            �
           2606    16987 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         jaywelj    false    201            �
           2606    17023 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         jaywelj    false    209            �
           2606    17067 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         jaywelj    false    209    209            �
           2606    17013    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         jaywelj    false    207            �
           2606    17031 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         jaywelj    false    211            �
           2606    17081 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         jaywelj    false    211    211            �
           2606    17109     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         jaywelj    false    207            �
           2606    17095 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         jaywelj    false    213            �
           2606    16979 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         jaywelj    false    199    199            �
           2606    16977 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         jaywelj    false    199            �
           2606    16969 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         jaywelj    false    197                       2606    17124 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         jaywelj    false    214                       2606    17134 &   trainers_pokemon trainers_pokemon_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.trainers_pokemon
    ADD CONSTRAINT trainers_pokemon_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.trainers_pokemon DROP CONSTRAINT trainers_pokemon_pkey;
       public         jaywelj    false    216                       2606    17204 0   trainers_pokemon trainers_pokemon_pokedex_no_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.trainers_pokemon
    ADD CONSTRAINT trainers_pokemon_pokedex_no_key UNIQUE (pokedex_no);
 Z   ALTER TABLE ONLY public.trainers_pokemon DROP CONSTRAINT trainers_pokemon_pokedex_no_key;
       public         jaywelj    false    216            	           2606    17142 8   trainers_pokemonownership trainers_pokemonownership_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.trainers_pokemonownership
    ADD CONSTRAINT trainers_pokemonownership_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.trainers_pokemonownership DROP CONSTRAINT trainers_pokemonownership_pkey;
       public         jaywelj    false    218                       2606    17150 &   trainers_trainer trainers_trainer_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.trainers_trainer
    ADD CONSTRAINT trainers_trainer_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.trainers_trainer DROP CONSTRAINT trainers_trainer_pkey;
       public         jaywelj    false    220            �
           1259    17116    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         jaywelj    false    203            �
           1259    17053 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         jaywelj    false    205            �
           1259    17054 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         jaywelj    false    205            �
           1259    17039 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         jaywelj    false    201            �
           1259    17069 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         jaywelj    false    209            �
           1259    17068 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         jaywelj    false    209            �
           1259    17083 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         jaywelj    false    211            �
           1259    17082 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         jaywelj    false    211            �
           1259    17110     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         jaywelj    false    207            �
           1259    17106 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         jaywelj    false    213            �
           1259    17107 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         jaywelj    false    213                        1259    17126 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         jaywelj    false    214                       1259    17125 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         jaywelj    false    214            
           1259    17156 -   trainers_pokemonownership_pokemon_id_de701411    INDEX     y   CREATE INDEX trainers_pokemonownership_pokemon_id_de701411 ON public.trainers_pokemonownership USING btree (pokemon_id);
 A   DROP INDEX public.trainers_pokemonownership_pokemon_id_de701411;
       public         jaywelj    false    218                       1259    17157 -   trainers_pokemonownership_trainer_id_3ccc2bcd    INDEX     y   CREATE INDEX trainers_pokemonownership_trainer_id_3ccc2bcd ON public.trainers_pokemonownership USING btree (trainer_id);
 A   DROP INDEX public.trainers_pokemonownership_trainer_id_3ccc2bcd;
       public         jaywelj    false    218                       1259    17193 !   trainers_trainer_user_id_cb9b2550    INDEX     a   CREATE INDEX trainers_trainer_user_id_cb9b2550 ON public.trainers_trainer USING btree (user_id);
 5   DROP INDEX public.trainers_trainer_user_id_cb9b2550;
       public         jaywelj    false    220                       2606    17046 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       jaywelj    false    205    201    2783                       2606    17041 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       jaywelj    false    203    2788    205                       2606    17032 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       jaywelj    false    201    199    2778                       2606    17061 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       jaywelj    false    2788    203    209                       2606    17056 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       jaywelj    false    207    2796    209                       2606    17075 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       jaywelj    false    2783    201    211                       2606    17070 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       jaywelj    false    207    2796    211                       2606    17096 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       jaywelj    false    2778    199    213                       2606    17101 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       jaywelj    false    207    213    2796                       2606    17151 O   trainers_pokemonownership trainers_pokemonowne_pokemon_id_de701411_fk_trainers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainers_pokemonownership
    ADD CONSTRAINT trainers_pokemonowne_pokemon_id_de701411_fk_trainers_ FOREIGN KEY (pokemon_id) REFERENCES public.trainers_pokemon(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.trainers_pokemonownership DROP CONSTRAINT trainers_pokemonowne_pokemon_id_de701411_fk_trainers_;
       public       jaywelj    false    216    2821    218                       2606    17158 O   trainers_pokemonownership trainers_pokemonowne_trainer_id_3ccc2bcd_fk_trainers_    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainers_pokemonownership
    ADD CONSTRAINT trainers_pokemonowne_trainer_id_3ccc2bcd_fk_trainers_ FOREIGN KEY (trainer_id) REFERENCES public.trainers_trainer(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.trainers_pokemonownership DROP CONSTRAINT trainers_pokemonowne_trainer_id_3ccc2bcd_fk_trainers_;
       public       jaywelj    false    2829    218    220                       2606    17194 B   trainers_trainer trainers_trainer_user_id_cb9b2550_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.trainers_trainer
    ADD CONSTRAINT trainers_trainer_user_id_cb9b2550_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.trainers_trainer DROP CONSTRAINT trainers_trainer_user_id_cb9b2550_fk_auth_user_id;
       public       jaywelj    false    2796    207    220            �      x������ � �      �      x������ � �      �   |  x�m�K��0@��)8��I�c=ר4BmԢi	:Uo?�1���,�ۚ�)�˥��k��{k��g�1���V5נ��b�#x	�0h0��"�W���>	�v٬ݣ��:6ơ'`/�Hv�=H?Œ�`���Ht\�-�]|�ƣ ~��H��N^�X�4!�C�c�	@*�l��Cg�(�����J����	��	��l*��T<�����_+�w�(�ɀ=J�LB�/�׌'?ɻk�h�U���}Hu���S��yfLm;c��1���UFĦ����M_M��[ݚCZ���ipz�Wڦ�_t�+X霎a�)ob�/�Ƣ������oV�22�����i[�n!9BR<_��U�(jJ4���f�(c�z#���b�&�� ��W�-      �   �   x�m�Kk�@���+�pW�{GPhl�T[lS�PL�X_��H~}t���p�CJ���.��}�R��h�UT����m��\ͅ&w�&p�n=�!�����^���L� /�9+�{B],pF�2�q�;pHF���#���J��*���T� ���F���T�� �6v˚�GOE������o�9;�v5M��a<U�I�#_��٥�]�0t����(I/�,���WHt=j\�_��(1Zm      �      x������ � �      �      x������ � �      �     x���Mo�@���W �-����>��K��Ҩrc��&5 5���;�:����!��3�k�J�s��h��)H�8�E��ge�av�8�����e1���mU.�������}��6������5K &(�`0B�G�Z0��|U6��Ƞ��E�{�(��ZYx_m�M��	�t -,���n��������z�>$SJ6��ʐ��q?�W{��J�
@B[��9�?�����=�H��Z2B�x�A#��y��g�MU6H- =�����ya���~���\-��>�8�$M��p�Y�+C�b�+3�zXe)
0�@@]�y�^�^�%��PX�Qu��T*��B;�c�]�N�WA*a���g�����~;�ZiR,Z�]��Iʰ����@ �K��'��� �p<{�c��O�v[O��$M,"[얿�M�k^��(77Mu���u,�u�DɄ����4�)��F.$\�t�-e]W6fgwy���l�d}�� l����"o{+�Ū���ڪ���6��m����l�w������z.a
��>()�56&)_;g�c��=`�T�Q�lxѤ�QCc�N5|{9a��͑>ҘT÷�IŰ�il�q��ơ�n���4���ڬ�~d�vU�]������lG�	����s���o������E�v����2*����P�!r@�B���<�O� �nt@~��
�;r̕����#��\ͻ	 eW�}N��狲,�j�|�<�n�&�"p�s�X톼���7�q����[z�Pǅ�[�S�?�d2��&�4      �   r   x�e��
�@E׹#��q3��:ɐd����Zܝs.wM�+Y�=K؈�U��ݳ
�s�M[�n��l��U%^�+���@������R6��7.*�xې+N���\V �~*=�      �   j  x����n�:Fӧ���F��/y�#YQɦ��IB���g�@�	ݴ��*���56�yo�C}��S�o�1�c34�~��7�Wp%KIX����/����ǳ
*�+hSm��Y�l��J0�۝6�}Ů>��u���Xm��x�`dȍA7����}h�c���v���m�5��,p��Ȳ������8��ա~��`Ɏ(7燱�uOuwh�~li����O��ǝ~�!ʲEQ~F�u���>T��)ű�4R�L�{����iO�7�x�33䞱��a��ѝ����(S� 3�j����n�7��о��0%��Owi��7�jh�>=����.꾯v�<xoX(�4���t���m�x�UD?"1�J�(0Ԯkϧ�a�7a쌁x>iBu<uퟯ;!��?������'���-�Ʉ)U���9��_�B�TJ(D����CV���_J�V�^��t��hdS-����Sd�1�.��� �4I��x^������T�-0x3�,�@`O@����
�A��D��`�Te�	8� �1zv)}���Y��؉Y�,$#�5�?$p sy6#���� *):��O�p��q��$��P844Y���:������1%�R� �ָDȄ\�>%����1 �$)�r-���S:��ؒMa&B�%p<���f:.uLŚ��$өD�� ��u�BP�>�^`��>~�]󫩷�hP�ӟ4���>�� xMQ�����Q/�)��G�+���H����2!�	�$�t:o�\R�#�5��.�>���aJ��k�[�n�`a�4U����"�YD���NFs�#ҏ
�������&,s.A�$�ؔgR������/4!i�o����? ���      �   G  x���o�@���_�{U��Eʡ	�K�%%Ơ^x�v��&<��ڎ�C��-��f�O��7C�������4.RI�I���}�ƙݸ�+�&�
��+p��6b��-�&lo-]_@��1	/��& a�g����:��w]�ՙI��p�8��UOQ|�cCG����%M��xҗL��'�	� %�v\:�c�����}��5i����M}BS�M4�j\�ْe�ʤ-�*����+x����Pן��& Չ����Mc�Q�LM��4�Q-�iT���`S�2~a�O]��Ҧ����#���q��7��@a������_��"�G��aԏKh5���S�JXO�k�ka�-y��^��.��)���ʭ�I���{�Z���Mm��>i��1$ Q����z�)�s?����	��!�C�Ʈ�j/se���H�;���r�GZbr�G�@�;^���U�=����K���Kw#F�ر�R<<��΅�0��qd��0F��� rD�>�A�ˋ��ݻ;t���g�|��̧I��;����n!Cb����!�rwuGn!2u�DH#3|���j����      �     x�}WQ�7��O�?g��"ٞ������fÞd �AuW�iu��$[r�+��K�9r��$��l����$v��z�ޫ�f��;�����w����nM�G�(�8�1E�Z��|
cM�	��˱��[����~��
�6U5<�w&]�=�'����o�ΣM�&��][vU�N^��4�C��1�ntmc2�"�q��\�uC�V���z�>�O>~�^�^n�ғ�F��y�%u��[u�%9}�8��߇����%�xM?ݑ9P�[���P ����'�En�x 0��4Q\�73`�%r�\`�������_\SB�H|�&��V��&N޻���+�Y/�ڬ����mM4cPo?|��z�����=.K
[ґ�i��,[,�;��u�E
��[�ޭ�/��j��׸�7{�;H�x�Ө���E��{v�#�e(F{ �ҙ ��Ʋ8�9�g�_����\�PLW\a>�+ܞ���5rA ���ٮt	�kx��#T&g?V�TD�@�dqҖ*3B6q�!�`�`��o����4����wc����`�Yj��v3g�L���޸��zs��6'�t��,���w|��Lu�G2�����\�+��8��,���H�E���>���G]89�DM��{���Q������5�B��ԋee_|��~s{u�<W�9���&P��~�{��l�1�*���v6e/ �V����Y��wp1���G�yR,�o�_���%A�����F 	��3�la���������mG���E�h�(��suw���<�v�-�-z����C�����%&^�h%8�ۋ�8T����RT+4��@dճK%�JvSq���.c�S)�ݹ
?��E)�6�0&�� �x�RKT�3*��gr���嫀�g��M{z��ؚ)��^?�*�y�J�;�7CGd�V܈�"��������Qi�� �(����y�[���L�τ���]&{I3�d�;!%�l��;����b/��N��2��v�Ν�mlggj���5�r�Ҧ�����Ѱ�C7���a/0sg���H���;����{�c���q���|��fN�x��֗�����
H-	�#��i���q�<�&cތ�� �C��������ؐa�m��X�-	)�C-�SbXV�{ăn��*+8�a	^�@����X�$zl�l��jY⫒�+��ߣ�;R��eB��I��Qf��ZL�*��N�v�2wS����������\�Ґ���{������P�8�E WF+؞u�S�h{n0-���@u\���\_�\_�x�?O��!eъ��eR�ye0U�E1�f9]�5��*T#�@�&X�.+����\�6T�[�0[V�&�6[7A�T�ÿ[k�!�-S�$��d�j���Y�W���޹��5�'���Z����֏]�����7U{j!�����S�m�yG��4�&�o�v���)0�'d��*�0�ݡ�˥V/�\.�?�~t�<������3�QFP���+�b1�<��[������'��2@=���T�䩊r�B���i���f<rS����d��R��a�gFy��f9�l^�S�Z���n����pw��&#��{+�tk��#�}=���ZG�l��$�B�ϾK�5��JeK��'@b͡o��8���1��.{�k��:��h��]���6�0��e͡�.+�l��U�4q7�ʤ����T�XEx<2L�$yd�i�Ŗ0�8O�1�*��d�?+�%e�5��/ ��)�� ��{:(�Ǥ��L�����ƇY�۝��J-s__~z�pS�o�~]=y��/�tC�      �   �   x�=��
�0�ϓ��$m��P�"�%����i��ŧw7-.������=�a����`�+
h)`Ӧ4��[3�[L�:ᰎ�ʢd���BK#��'��y�P��e:BV��INf�B�\g�(���I$iBd���n�Y����I3L���MY����\�%�c�M�G��[�i�+!��7
      �   �   x�m���0���a��m�	7�ѓ�	���'�B
y{�/�:�e&���'0:�YrM��nX�y����^ϡpdڠ�v��P�e�ѝ��3E����\,(Q?�C�yu��<�a�a��s��S~��HJ��Jf
Ir��b}���e�1�ގW     
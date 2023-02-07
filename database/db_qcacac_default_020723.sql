PGDMP     :    (                {         	   db_qcacac    15.1    15.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    27203 	   db_qcacac    DATABASE     �   CREATE DATABASE db_qcacac WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Philippines.1252';
    DROP DATABASE db_qcacac;
                postgres    false            �            1259    27204    tbl_adopt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_adopt_id_seq;
       public          postgres    false            �            1259    27205 	   tbl_adopt    TABLE     T  CREATE TABLE public.tbl_adopt (
    id integer DEFAULT nextval('public.tbl_adopt_id_seq'::regclass) NOT NULL,
    series_no character varying(20),
    adopter_id integer,
    pet_id integer,
    docu_id integer,
    payment_id integer,
    schedule_id integer,
    status character varying(50),
    date_created timestamp with time zone
);
    DROP TABLE public.tbl_adopt;
       public         heap    postgres    false    214            �            1259    27209    tbl_adopter    TABLE     �  CREATE TABLE public.tbl_adopter (
    id integer NOT NULL,
    series_no character varying(20),
    email character varying(100),
    code character varying(20),
    fname character varying(100),
    mname character varying(100),
    lname character varying(100),
    gender character varying(20),
    address text,
    contact_no character varying(20),
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
    DROP TABLE public.tbl_adopter;
       public         heap    postgres    false            �            1259    27214    tbl_adopter_documents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_adopter_documents_id_seq;
       public          postgres    false            �            1259    27215    tbl_adopter_documents    TABLE     u  CREATE TABLE public.tbl_adopter_documents (
    id integer DEFAULT nextval('public.tbl_adopter_documents_id_seq'::regclass) NOT NULL,
    series_no character varying(20),
    adopter_id integer,
    valid_id text,
    picture text,
    pet_cage text,
    status character varying(30),
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
 )   DROP TABLE public.tbl_adopter_documents;
       public         heap    postgres    false    217            �            1259    27221    tbl_adopter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_adopter_id_seq;
       public          postgres    false    216            �           0    0    tbl_adopter_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_adopter_id_seq OWNED BY public.tbl_adopter.id;
          public          postgres    false    219            �            1259    27222    tbl_adopter_payment    TABLE     >  CREATE TABLE public.tbl_adopter_payment (
    id integer NOT NULL,
    series_no character varying(20),
    adopter_id integer,
    method character varying(30),
    amount character varying(20),
    transaction_no character varying(100),
    status character varying(20),
    date_created timestamp with time zone
);
 '   DROP TABLE public.tbl_adopter_payment;
       public         heap    postgres    false            �            1259    27225    tbl_adopter_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_adopter_payment_id_seq;
       public          postgres    false    220            �           0    0    tbl_adopter_payment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_adopter_payment_id_seq OWNED BY public.tbl_adopter_payment.id;
          public          postgres    false    221            �            1259    27226    tbl_adopter_schedule    TABLE     �   CREATE TABLE public.tbl_adopter_schedule (
    id integer NOT NULL,
    series_no character varying(20),
    adopter_id integer,
    appointment_id integer,
    status character varying(50),
    date_created timestamp with time zone
);
 (   DROP TABLE public.tbl_adopter_schedule;
       public         heap    postgres    false            �            1259    27229    tbl_adopter_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_adopter_schedule_id_seq;
       public          postgres    false    222            �           0    0    tbl_adopter_schedule_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_adopter_schedule_id_seq OWNED BY public.tbl_adopter_schedule.id;
          public          postgres    false    223            �            1259    27230    tbl_appointments    TABLE     �  CREATE TABLE public.tbl_appointments (
    id integer NOT NULL,
    series_no character varying(20),
    month integer,
    day integer,
    year integer,
    slot integer,
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
 $   DROP TABLE public.tbl_appointments;
       public         heap    postgres    false            �            1259    27233    tbl_appointments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_appointments_id_seq;
       public          postgres    false    224            �           0    0    tbl_appointments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_appointments_id_seq OWNED BY public.tbl_appointments.id;
          public          postgres    false    225            �            1259    27234 	   tbl_breed    TABLE     v  CREATE TABLE public.tbl_breed (
    id integer NOT NULL,
    series_no character varying(20),
    category_id integer,
    name character varying(50),
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
    DROP TABLE public.tbl_breed;
       public         heap    postgres    false            �            1259    27237    tbl_breed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_breed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_breed_id_seq;
       public          postgres    false    226            �           0    0    tbl_breed_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_breed_id_seq OWNED BY public.tbl_breed.id;
          public          postgres    false    227            �            1259    27238    tbl_category    TABLE     `  CREATE TABLE public.tbl_category (
    id integer NOT NULL,
    series_no character varying(20),
    name character varying(50),
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
     DROP TABLE public.tbl_category;
       public         heap    postgres    false            �            1259    27241    tbl_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_category_id_seq;
       public          postgres    false    228            �           0    0    tbl_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_category_id_seq OWNED BY public.tbl_category.id;
          public          postgres    false    229            �            1259    27242    tbl_coat    TABLE     u  CREATE TABLE public.tbl_coat (
    id integer NOT NULL,
    series_no character varying(20),
    category_id integer,
    name character varying(50),
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
    DROP TABLE public.tbl_coat;
       public         heap    postgres    false            �            1259    27245    tbl_coat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_coat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_coat_id_seq;
       public          postgres    false    230            �           0    0    tbl_coat_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_coat_id_seq OWNED BY public.tbl_coat.id;
          public          postgres    false    231            �            1259    27246    tbl_life_stages    TABLE     |  CREATE TABLE public.tbl_life_stages (
    id integer NOT NULL,
    series_no character varying(20),
    category_id integer,
    name character varying(50),
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
 #   DROP TABLE public.tbl_life_stages;
       public         heap    postgres    false            �            1259    27249    tbl_life_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_life_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_life_stages_id_seq;
       public          postgres    false    232            �           0    0    tbl_life_stages_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_life_stages_id_seq OWNED BY public.tbl_life_stages.id;
          public          postgres    false    233            �            1259    27250    tbl_pets    TABLE     �  CREATE TABLE public.tbl_pets (
    id integer NOT NULL,
    series_no character varying(20),
    category_id integer,
    breed_id integer,
    coat_id integer,
    life_stages_id integer,
    gender character varying(10),
    sterilization character varying(10),
    energy_level character varying(10),
    weight character varying(20),
    color character varying(150),
    tags text,
    photo text,
    is_adopt integer,
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
    DROP TABLE public.tbl_pets;
       public         heap    postgres    false            �            1259    27255    tbl_pets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_pets_id_seq;
       public          postgres    false    234            �           0    0    tbl_pets_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_pets_id_seq OWNED BY public.tbl_pets.id;
          public          postgres    false    235            �            1259    27256    tbl_tags    TABLE     \  CREATE TABLE public.tbl_tags (
    id integer NOT NULL,
    series_no character varying(20),
    name character varying(20),
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
    DROP TABLE public.tbl_tags;
       public         heap    postgres    false            �            1259    27259    tbl_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_tags_id_seq;
       public          postgres    false    236            �           0    0    tbl_tags_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_tags_id_seq OWNED BY public.tbl_tags.id;
          public          postgres    false    237            �            1259    27260 	   tbl_users    TABLE     J  CREATE TABLE public.tbl_users (
    id integer NOT NULL,
    series_no character varying(20),
    email character varying(100),
    password character varying(250),
    contact_no character varying(20),
    is_email_verified integer,
    is_contact_no_verified integer,
    user_level character varying(10),
    is_logged integer,
    code character varying(10),
    status integer,
    created_by integer,
    updated_by integer,
    deleted_by integer,
    date_created timestamp with time zone,
    date_updated timestamp with time zone,
    date_deleted timestamp with time zone
);
    DROP TABLE public.tbl_users;
       public         heap    postgres    false            �            1259    27263    tbl_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_users_id_seq;
       public          postgres    false    238            �           0    0    tbl_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_users_id_seq OWNED BY public.tbl_users.id;
          public          postgres    false    239            �            1259    27264    tbl_users_info    TABLE       CREATE TABLE public.tbl_users_info (
    id integer NOT NULL,
    user_id integer,
    fname character varying(100),
    mname character varying(100),
    lname character varying(100),
    gender character varying(20),
    address character varying(1000),
    avatar text
);
 "   DROP TABLE public.tbl_users_info;
       public         heap    postgres    false            �            1259    27269    tbl_users_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_users_info_id_seq;
       public          postgres    false    240            �           0    0    tbl_users_info_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_users_info_id_seq OWNED BY public.tbl_users_info.id;
          public          postgres    false    241            �           2604    27270    tbl_adopter id    DEFAULT     p   ALTER TABLE ONLY public.tbl_adopter ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_id_seq'::regclass);
 =   ALTER TABLE public.tbl_adopter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    216            �           2604    27271    tbl_adopter_payment id    DEFAULT     �   ALTER TABLE ONLY public.tbl_adopter_payment ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_payment_id_seq'::regclass);
 E   ALTER TABLE public.tbl_adopter_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    27272    tbl_adopter_schedule id    DEFAULT     �   ALTER TABLE ONLY public.tbl_adopter_schedule ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_schedule_id_seq'::regclass);
 F   ALTER TABLE public.tbl_adopter_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    27273    tbl_appointments id    DEFAULT     z   ALTER TABLE ONLY public.tbl_appointments ALTER COLUMN id SET DEFAULT nextval('public.tbl_appointments_id_seq'::regclass);
 B   ALTER TABLE public.tbl_appointments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    27274    tbl_breed id    DEFAULT     l   ALTER TABLE ONLY public.tbl_breed ALTER COLUMN id SET DEFAULT nextval('public.tbl_breed_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_breed ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    27275    tbl_category id    DEFAULT     r   ALTER TABLE ONLY public.tbl_category ALTER COLUMN id SET DEFAULT nextval('public.tbl_category_id_seq'::regclass);
 >   ALTER TABLE public.tbl_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    27276    tbl_coat id    DEFAULT     j   ALTER TABLE ONLY public.tbl_coat ALTER COLUMN id SET DEFAULT nextval('public.tbl_coat_id_seq'::regclass);
 :   ALTER TABLE public.tbl_coat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    27277    tbl_life_stages id    DEFAULT     x   ALTER TABLE ONLY public.tbl_life_stages ALTER COLUMN id SET DEFAULT nextval('public.tbl_life_stages_id_seq'::regclass);
 A   ALTER TABLE public.tbl_life_stages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    27278    tbl_pets id    DEFAULT     j   ALTER TABLE ONLY public.tbl_pets ALTER COLUMN id SET DEFAULT nextval('public.tbl_pets_id_seq'::regclass);
 :   ALTER TABLE public.tbl_pets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    27279    tbl_tags id    DEFAULT     j   ALTER TABLE ONLY public.tbl_tags ALTER COLUMN id SET DEFAULT nextval('public.tbl_tags_id_seq'::regclass);
 :   ALTER TABLE public.tbl_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    27280    tbl_users id    DEFAULT     l   ALTER TABLE ONLY public.tbl_users ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    27281    tbl_users_info id    DEFAULT     v   ALTER TABLE ONLY public.tbl_users_info ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_info_id_seq'::regclass);
 @   ALTER TABLE public.tbl_users_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �          0    27205 	   tbl_adopt 
   TABLE DATA           ~   COPY public.tbl_adopt (id, series_no, adopter_id, pet_id, docu_id, payment_id, schedule_id, status, date_created) FROM stdin;
    public          postgres    false    215   g�       �          0    27209    tbl_adopter 
   TABLE DATA           �   COPY public.tbl_adopter (id, series_no, email, code, fname, mname, lname, gender, address, contact_no, date_created, date_updated) FROM stdin;
    public          postgres    false    216   ��       �          0    27215    tbl_adopter_documents 
   TABLE DATA           �   COPY public.tbl_adopter_documents (id, series_no, adopter_id, valid_id, picture, pet_cage, status, date_created, date_updated) FROM stdin;
    public          postgres    false    218   ��       �          0    27222    tbl_adopter_payment 
   TABLE DATA           ~   COPY public.tbl_adopter_payment (id, series_no, adopter_id, method, amount, transaction_no, status, date_created) FROM stdin;
    public          postgres    false    220   ��       �          0    27226    tbl_adopter_schedule 
   TABLE DATA           o   COPY public.tbl_adopter_schedule (id, series_no, adopter_id, appointment_id, status, date_created) FROM stdin;
    public          postgres    false    222   ��       �          0    27230    tbl_appointments 
   TABLE DATA           �   COPY public.tbl_appointments (id, series_no, month, day, year, slot, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    224   ��       �          0    27234 	   tbl_breed 
   TABLE DATA           �   COPY public.tbl_breed (id, series_no, category_id, name, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    226   �       �          0    27238    tbl_category 
   TABLE DATA           �   COPY public.tbl_category (id, series_no, name, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    228   ��       �          0    27242    tbl_coat 
   TABLE DATA           �   COPY public.tbl_coat (id, series_no, category_id, name, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    230   ��       �          0    27246    tbl_life_stages 
   TABLE DATA           �   COPY public.tbl_life_stages (id, series_no, category_id, name, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    232   ��       �          0    27250    tbl_pets 
   TABLE DATA             COPY public.tbl_pets (id, series_no, category_id, breed_id, coat_id, life_stages_id, gender, sterilization, energy_level, weight, color, tags, photo, is_adopt, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    234   ��       �          0    27256    tbl_tags 
   TABLE DATA           �   COPY public.tbl_tags (id, series_no, name, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    236   �       �          0    27260 	   tbl_users 
   TABLE DATA           �   COPY public.tbl_users (id, series_no, email, password, contact_no, is_email_verified, is_contact_no_verified, user_level, is_logged, code, status, created_by, updated_by, deleted_by, date_created, date_updated, date_deleted) FROM stdin;
    public          postgres    false    238   z�       �          0    27264    tbl_users_info 
   TABLE DATA           c   COPY public.tbl_users_info (id, user_id, fname, mname, lname, gender, address, avatar) FROM stdin;
    public          postgres    false    240   ��       �           0    0    tbl_adopt_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.tbl_adopt_id_seq', 1, false);
          public          postgres    false    214            �           0    0    tbl_adopter_documents_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.tbl_adopter_documents_id_seq', 1, false);
          public          postgres    false    217            �           0    0    tbl_adopter_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_adopter_id_seq', 1, false);
          public          postgres    false    219            �           0    0    tbl_adopter_payment_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.tbl_adopter_payment_id_seq', 1, false);
          public          postgres    false    221            �           0    0    tbl_adopter_schedule_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.tbl_adopter_schedule_id_seq', 1, false);
          public          postgres    false    223            �           0    0    tbl_appointments_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.tbl_appointments_id_seq', 1, false);
          public          postgres    false    225            �           0    0    tbl_breed_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbl_breed_id_seq', 2, true);
          public          postgres    false    227            �           0    0    tbl_category_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.tbl_category_id_seq', 2, true);
          public          postgres    false    229            �           0    0    tbl_coat_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbl_coat_id_seq', 6, true);
          public          postgres    false    231            �           0    0    tbl_life_stages_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.tbl_life_stages_id_seq', 7, true);
          public          postgres    false    233            �           0    0    tbl_pets_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbl_pets_id_seq', 1, false);
          public          postgres    false    235            �           0    0    tbl_tags_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tbl_tags_id_seq', 2, true);
          public          postgres    false    237            �           0    0    tbl_users_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.tbl_users_id_seq', 1, true);
          public          postgres    false    239            �           0    0    tbl_users_info_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tbl_users_info_id_seq', 1, true);
          public          postgres    false    241            �           2606    27284    tbl_adopt tbl_adopt_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_pkey;
       public            postgres    false    215            �           2606    27286 0   tbl_adopter_documents tbl_adopter_documents_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_adopter_documents
    ADD CONSTRAINT tbl_adopter_documents_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tbl_adopter_documents DROP CONSTRAINT tbl_adopter_documents_pkey;
       public            postgres    false    218            �           2606    27288 ,   tbl_adopter_payment tbl_adopter_payment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_adopter_payment
    ADD CONSTRAINT tbl_adopter_payment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tbl_adopter_payment DROP CONSTRAINT tbl_adopter_payment_pkey;
       public            postgres    false    220            �           2606    27290    tbl_adopter tbl_adopter_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_adopter
    ADD CONSTRAINT tbl_adopter_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_adopter DROP CONSTRAINT tbl_adopter_pkey;
       public            postgres    false    216            �           2606    27292 .   tbl_adopter_schedule tbl_adopter_schedule_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_pkey;
       public            postgres    false    222            �           2606    27294 &   tbl_appointments tbl_appointments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_pkey;
       public            postgres    false    224            �           2606    27296    tbl_breed tbl_breed_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_pkey;
       public            postgres    false    226            �           2606    27298    tbl_category tbl_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_pkey;
       public            postgres    false    228            �           2606    27300    tbl_coat tbl_coat_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_pkey;
       public            postgres    false    230            �           2606    27302 $   tbl_life_stages tbl_life_stages_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_pkey;
       public            postgres    false    232            �           2606    27304    tbl_pets tbl_pets_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_pkey;
       public            postgres    false    234            �           2606    27306    tbl_tags tbl_tags_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_pkey;
       public            postgres    false    236            �           2606    27308 "   tbl_users_info tbl_users_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_users_info
    ADD CONSTRAINT tbl_users_info_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbl_users_info DROP CONSTRAINT tbl_users_info_pkey;
       public            postgres    false    240            �           2606    27310    tbl_users tbl_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_pkey;
       public            postgres    false    238            �           2606    27311 #   tbl_adopt tbl_adopt_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 M   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_adopter_id_fkey;
       public          postgres    false    3255    215    216            �           2606    27316     tbl_adopt tbl_adopt_docu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_docu_id_fkey FOREIGN KEY (docu_id) REFERENCES public.tbl_adopter_documents(id);
 J   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_docu_id_fkey;
       public          postgres    false    215    218    3257            �           2606    27321 #   tbl_adopt tbl_adopt_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.tbl_adopter_payment(id);
 M   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_payment_id_fkey;
       public          postgres    false    215    220    3259            �           2606    27326    tbl_adopt tbl_adopt_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.tbl_pets(id);
 I   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_pet_id_fkey;
       public          postgres    false    3273    215    234            �           2606    27331 $   tbl_adopt tbl_adopt_schedule_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_schedule_id_fkey FOREIGN KEY (schedule_id) REFERENCES public.tbl_adopter_schedule(id);
 N   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_schedule_id_fkey;
       public          postgres    false    215    222    3261            �           2606    27336 ;   tbl_adopter_documents tbl_adopter_documents_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_documents
    ADD CONSTRAINT tbl_adopter_documents_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 e   ALTER TABLE ONLY public.tbl_adopter_documents DROP CONSTRAINT tbl_adopter_documents_adopter_id_fkey;
       public          postgres    false    216    3255    218            �           2606    27341 7   tbl_adopter_payment tbl_adopter_payment_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_payment
    ADD CONSTRAINT tbl_adopter_payment_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 a   ALTER TABLE ONLY public.tbl_adopter_payment DROP CONSTRAINT tbl_adopter_payment_adopter_id_fkey;
       public          postgres    false    220    216    3255            �           2606    27512 9   tbl_adopter_schedule tbl_adopter_schedule_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 c   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_adopter_id_fkey;
       public          postgres    false    216    222    3255            �           2606    27346 =   tbl_adopter_schedule tbl_adopter_schedule_appointment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_appointment_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_appointments(id);
 g   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_appointment_id_fkey;
       public          postgres    false    224    222    3263            �           2606    27507 >   tbl_adopter_schedule tbl_adopter_schedule_appointment_id_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_appointment_id_fkey1 FOREIGN KEY (appointment_id) REFERENCES public.tbl_appointments(id);
 h   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_appointment_id_fkey1;
       public          postgres    false    222    3263    224            �           2606    27351 1   tbl_appointments tbl_appointments_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_created_by_fkey;
       public          postgres    false    3277    224    238            �           2606    27356 1   tbl_appointments tbl_appointments_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_deleted_by_fkey;
       public          postgres    false    238    224    3277            �           2606    27361 1   tbl_appointments tbl_appointments_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_updated_by_fkey;
       public          postgres    false    224    3277    238            �           2606    27366 #   tbl_breed tbl_breed_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_created_by_fkey;
       public          postgres    false    226    238    3277            �           2606    27371 #   tbl_breed tbl_breed_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_deleted_by_fkey;
       public          postgres    false    3277    226    238            �           2606    27376 #   tbl_breed tbl_breed_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_updated_by_fkey;
       public          postgres    false    226    238    3277            �           2606    27381 )   tbl_category tbl_category_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_created_by_fkey;
       public          postgres    false    238    228    3277            �           2606    27386 )   tbl_category tbl_category_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_deleted_by_fkey;
       public          postgres    false    3277    228    238            �           2606    27391 )   tbl_category tbl_category_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_updated_by_fkey;
       public          postgres    false    238    228    3277            �           2606    27396 "   tbl_coat tbl_coat_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 L   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_category_id_fkey;
       public          postgres    false    230    228    3267            �           2606    27401 !   tbl_coat tbl_coat_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_created_by_fkey;
       public          postgres    false    3277    230    238            �           2606    27406 !   tbl_coat tbl_coat_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_deleted_by_fkey;
       public          postgres    false    3277    230    238            �           2606    27411 !   tbl_coat tbl_coat_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_updated_by_fkey;
       public          postgres    false    230    3277    238            �           2606    27416 0   tbl_life_stages tbl_life_stages_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 Z   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_category_id_fkey;
       public          postgres    false    3267    232    228            �           2606    27421 /   tbl_life_stages tbl_life_stages_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_created_by_fkey;
       public          postgres    false    3277    232    238            �           2606    27426 /   tbl_life_stages tbl_life_stages_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_deleted_by_fkey;
       public          postgres    false    3277    238    232            �           2606    27431 /   tbl_life_stages tbl_life_stages_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_updated_by_fkey;
       public          postgres    false    238    232    3277            �           2606    27436    tbl_pets tbl_pets_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.tbl_breed(id);
 I   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_breed_id_fkey;
       public          postgres    false    3265    226    234            �           2606    27441 "   tbl_pets tbl_pets_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 L   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_category_id_fkey;
       public          postgres    false    3267    234    228            �           2606    27446    tbl_pets tbl_pets_coat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_coat_id_fkey FOREIGN KEY (coat_id) REFERENCES public.tbl_coat(id);
 H   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_coat_id_fkey;
       public          postgres    false    234    3269    230            �           2606    27451 !   tbl_pets tbl_pets_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_created_by_fkey;
       public          postgres    false    238    234    3277            �           2606    27456 !   tbl_pets tbl_pets_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_deleted_by_fkey;
       public          postgres    false    234    238    3277            �           2606    27461 %   tbl_pets tbl_pets_life_stages_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_life_stages_id_fkey FOREIGN KEY (life_stages_id) REFERENCES public.tbl_life_stages(id);
 O   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_life_stages_id_fkey;
       public          postgres    false    232    3271    234            �           2606    27466 !   tbl_pets tbl_pets_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_updated_by_fkey;
       public          postgres    false    3277    238    234            �           2606    27471 !   tbl_tags tbl_tags_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_created_by_fkey;
       public          postgres    false    236    3277    238            �           2606    27476 !   tbl_tags tbl_tags_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_deleted_by_fkey;
       public          postgres    false    236    238    3277            �           2606    27481 !   tbl_tags tbl_tags_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_updated_by_fkey;
       public          postgres    false    3277    236    238            �           2606    27486 #   tbl_users tbl_users_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_created_by_fkey;
       public          postgres    false    238    3277    238            �           2606    27491 #   tbl_users tbl_users_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_deleted_by_fkey;
       public          postgres    false    238    238    3277            �           2606    27496 *   tbl_users_info tbl_users_info_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users_info
    ADD CONSTRAINT tbl_users_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tbl_users(id);
 T   ALTER TABLE ONLY public.tbl_users_info DROP CONSTRAINT tbl_users_info_user_id_fkey;
       public          postgres    false    240    3277    238            �           2606    27501 #   tbl_users tbl_users_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_updated_by_fkey;
       public          postgres    false    3277    238    238            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   ^   x�3�t6s3�4����4�?2202�50�50W02�21�22�35�014�6����2�t7r�
� �r$��R�������?F��� A��      �   Z   x�3�0��4t��t�w�4�?2202�50�50W02�21�24Գ42652�6����2�4p��6r2�tv���D�������7F��� K      �   �   x�����0�sy
�ƥk7ظ�_Cݦ8���9�O����/m%x{~�n ���}Z���A�z��	�WH+���R5���,�%�O� �w}{�:#~��n~VQ(,�&��^mX�0�b��V�W��B?<���ul�v�ѥ`f[������qHnd|���:�FLh���.�Ԇc�S߿�;R
]jF���(��MsX�      �   #  x����n�0E��WxIUa�g�Jv�IIy�q�R�����(����F���d ����lW�P�_mj*>�<t\�C��'&�gj�p�#d
3 A��gp?�H"�V�t�Nm�
�契�C7�[��>��":Y��2<��:򾖔��@�IK�cS|U�����˳�.��s��������[�3_��wUm?#(ۺ�|ս��/@�(�j������/!����7߂���P=�j# H]��}��f�obji��7��_WV8�ic/h�t	�u1��T&�P�Ss��$�$�M�
      �      x������ � �      �   \   x�3���w5���wu�4�?2202�50�50W02�21�22����kX@�pq�9�ZF9q�:��m�gnddjh������ �      �   N   x�3�4� ��҂ԢĔ��<���D �K���+��t�3Lv��*I7)�uq,���4B�&N��@E\1z\\\ a]      �      x��ǒ�Zw���5<�U�d�$r�	9��ӛ�����tW�K5眽������������ax�����~�[o��}\��4����kN`�^{�n��,�#�n��V�|+���qL���
���L���e�K��]�1�����I�7��sc��IuJj0:p�����yD��Ջ�p�M�Zo�9.�$�ҋ�&!�� &ybg�gѣ�G�SZ�ͳm���y�9�4!�q��	�N���ŏ0VB�̇c��q���g�m���|���4Ͳ�*��8N����������&0A������.���L�6x*M��J3�	9�4쳾 4LiU-���`��0���F��=I����kv��冶w��3�iz��0����|��-��5����
�
0�$	��t�8_��/7H��$ì�f�	��ç�a���-�J|�u��o�}%�1�:�'�(h����^�a�0lx�e��,d��_#nT�r� s�2.zS }�9Nj?�����qa�Ő$#h��4M�PX)�^Ҟ���v4��HXrk�����K��"�C"�	*�����L]��*O��G�yd\��-ۋ'��V�~����d��CA�.@���w�-I�+�U1Q�!]S�/�#���O�5����nu�W=�%/�l.�K�5c��M�j `D��J��X�c�����ۈ��	j���/�����'ds�J�0�����9�p�GF�����	�t~��Fx��>w�l-�J�.{
oi-���� �Ώ����	�G��$Ƚ$\��A�O�Y�-d&/vˢ@7I����_�xV\o���,+�>�0�P��>������<'Eq��$���Ո{#.gP��L�R�]�1��A�+ݚ>l������Z��P^uXԥ�M|���R�h
���� ϳ,Ïa����I�0��.r�țb���G)z�)��{���r�����Z�4Bw������Sc[=��)�z U��T$Q��LE�)�$}�G���/�s鷽����/�6������2�z`@�g�Ȯ���Ě���:ɯ3�m��ݵ�-_��F�`A���S��ڷ�A�5Xd��i�]��?S�qU���Y��;�8��U+Bŷ���c�qVy�.�����VdUZU|k	)+��i ��8r�Է���qb- u$c�?AR�!(��D��͕��vb�(|W���x��H����o#hm���©_�{]�#���ju���7^ԄE�VE�6>e���6�j��|�����}�pi�f��&b?�������9�6q T����4P��	�Pzb��z3�I�Q�JG�s�3^o�fG)T��?'p�=���*Bt"v������u"8�1���y�/�-1�gT��l�]���sǜ��:�T>cp��l���0�@j�;qX��w݁����7�涶)����T�ڿ�Nz�X�xئ{�Cjo�+6yw[�;C+�!Gy�{��� �vz��8�-9�3B59:� ��<�D   ��S<]�8@�6
T��@��оVj���<�76CS�B�5EKB~����Rd���|�8�i��ǐ7.����(�����\����k$[7��:ɝ'w�C��=�w�o�C���etz]��n�j�>t^�$9+��!5�� 胷(����)�1� �O�*"���(���/�5�\�;g�av�ܸ������1 i^`#|����_ea?<��ǺLu��<��|N�+��mq� /�&�ћ7(��5AP~��Y�%8�y�c�{��b�K"�tOg�<��}z�<ݒc�\"��铈�]�Z���a�(U���x�ի��x�󲙜<�\��Ƚ$�c���-I5���V~�d���y�������/]���$ (��6�t�E����ݢyK��{����,�IcT�����jo��j��((��9�����\'|�u}gٗz�鈨.�WKDD��P��܈�|6��8/5vs��� �;�c@���鍰��Īy�l��*?"%)�n��fl���96���?�HG&��\q��x7}}��D)�iYD{v�d�����R�I��@^#~g'E����*,[K�1_��5a���I�:�a򅟽:>ߊ�'����Оqp���JJvYu�:�ơ���m;�{z�u~T��m�_u�x�F ��mE�����%��y<Y֮�E���s#�s$�ޗ��lە��\^;�v�̫o��#	��{\vG�/� ��ŧ�rD�2�A������X 62��=
��4޿��x���.{-�̐M�+��$-����y��I��ʫ����"ˍ"����W~(M��Kr�KQM)�,�2�i�������LO]���,[{7���E�����yȼ��������7�x�4.�����⩼��
�ȥ�ٝj"t.��F��@W�;�%ݩF�-g��l�aUV��@s����A2_ۃ	�췲F7X����:[$?��hz��K�}X$61��^	SR�>L�E$��;?�]�1�S�n�����rk�#I�O0�T,ٟo�-b�
]���G$�Fw�etP�ᘼ2*o� ��]�B3+|k��3�L�[�s�������j�����O��UA�S=(�-:<["!����$ �}W'��lV��14`�7�<�}fl+���M��_���&~�f_�0����e��2P��op��G�D%�;U`�����9J"	�r�Q�f��M)��54-�v$2bf������� p�K�f���"��3�����<�*�DH-��rCV�ƒ���//a8T������ѵ��u�;d��Q/=���`��?Ks����D*�5�'�p����{�,_E�e�<�Hr#-K�����,�������W�ۻ����tH'��?c�p�'Ρ�������e	�$��� b�ň4�](h���\�[�H��"ĞEL��)";I�N�LK.u�PՍ=O6�/�{򒱽�|��t�)����&Аv�����1zts�����&y�"x�RVIp��ɕۂ��sϣ�*�d�K�9���� >��Z�����;N�ܑ(ˠ���.-w�^i����7C��	HDtr	t!��=G$��A�{@woZ^	t��ݏ��'�s����x�̙�W��&$ƍ%w8�'��e�lH�Z �z�
Y��T�^V_}�1��*Qxx���Qe34B���K�,U��p�v�* (���bi��t�Ĕ�E�8�f�/�5A��[}s2`xF$�J.A��W-%7l2J���\���e�Ż%q�*n��Nxm%��2�b�4İ�dP���������6����a�Z+O1/
ם-�o08��U��S|4^;��%a�6I��慐����F>��+����	iw�4#4a�����p4ۊ�?�烉S���'�@bP�?��Jf���d�؏�L��㤛��m8RX��tr�a.� ��ٯp;v�d+ޘ�f�A껁���1�3
�q0�abL7{��a,�}��5��e� �3��0�I
=��-�3��[o���A��u��E�������f?
6:M��A��L��U=ɵ|׳a8�U5�zIJ�� $l�цt_"��%s?Q���b��8@��"�Xс_\���~�2�!���A����������HQ��ce����p5�'�3 -��V�	t��z$1�&w��_.^��7�v�0�{1�t��D�U���jIa� ���2�OE���^�64��Z�e�������x�����h�4����2��"������~��VY͢������!�!���ߊ�,K�7���I{
��Rf�:��R�.Dt(�B�m|W|]/ǟ|�3��;�(�h��(�;�w�,]��8�5�z�rU��Ə����/��"F3��L������wn�E�� �~��A�Q)L��|Ȃ���Fռ���ev/�Ff�ie�O�Rp�G\��Q_�����]J���m5�,�^z(��ㆢ�J'�������2��P �L����N�N�X }I����J�H6_�f��    R�Ne2���\<�'�$m� Y@ɐ<���*�n'sچ��w�/&M�UA2$���!��WJ2����wU��핔�����-k��`��{cq`1;�����I��aԫ)`�wPqҲ�w��~��6�NP��-[�Ýɛ<�#��Kį�e��##!����C���g]������¶�� �����7���Lz�����cc���o&��|Οy����u��x/���2ҿ�f}�,�'�O@J�Dmț��N>�_�o�w�C���+�������D����5�U�[���hq�D럒D�Y�A�W(H
C�<@2� K��������	�mՠ�G&ITb���j2��D����F��0�EO�U>��q�ѻ�qO�M9�0�h�ݔ���_��xV����d)�:p��\���e9�ۺ����mDm�I10�G�1DzF���E,�� d+���о9]��+� b\�f��F�P��4a&@9�i�/�I����*�F�1���o)k"f�3O�M�캨/��E]��u�U�Z6��c|ߪ���e�d&(��P���,�(�7⻾�	E��N���-W��ɆT0����L�Gt�� ���cu������0�t��ڴ�eYyY^T&M�[��}e��@<I��� 
��u�5~�o��uK����Aݾ�e�?8yS��®�2�,>�U|��5�N�ޜ�j:@棶6I��
��c14���5~���/�y ��~�Y+BiwmT�zԠ�ҸP3��)���&}vS����Q��m�灃[" -��Sr���+qzA(c�1^Q�M�b��o�&_��c\�i�}Eއ�[ �1J����[�K<]!x!sV�1e��:tQ���)���,Zw:�r�Txi�{z'Kz%��׃U�����tڊF��<b8�ågF��i� ��2�� �ءQ@����_	�����d,�Nez�*<��z��^��*��H��g���g Յʍki�.��]�R�U-c-�<��cO��L ��¦��['š�@�!*����e�x39�D������� 7�|&&c�(�ճ.�lg��+������>)�S.V�x�'9��4 ��"I׉����P
�<=��\�*HꯛS>AV����Ev=��i�R4![
ݲ����M������B�Zߑ��	/Ϛ�)Ϫ#��{pc���r��v�Ѷ��z���q]Q�3bx#��uk.9��T�0�
7��K�_�qUֻ�Ú�8��z������NFvo�>i��6�����@Q��s:�\C���W�r6]+��j���t
d(�����ō��:���y2�B��(E����mBzEK��m���7r�>�ٕ�<s,@�>3\�7|IpԠO�aݗ\@`/:��ըb��bP`L�u�?��T�������h��n%��J�v��li]�wM��4U���D�U;�E��Q{���#��	�h�QB�'�Jx.��������}%ִH�;����'��E_{sőq�֍�J�f�|>b�u�SF�~5��,�y�/S����zںθ/�/g���vވ�/Η/
�<�E�gБ=ld[�� ��@(��%V���!�0͜�3e�v��-��} l��`�#����)�;Tҫf��`]�t3H��(�;����c\A0�_�i���+&>r{�ZF>!�.D�h�^V�<���u'��K�q��%�{'b���y��p6;�?iM��rCJ�LI3�g9{Y�7cG�\�ʿ���`�l��`O����h�p-�������W�-Ԥ���8
�*��4�^�D��S�A��ᘎ��o����х:�8q3��O�ݎ �_�A�s
����RB�<���EP>��K�uĝU3�c{b��Ю=��<v;�U٫}������g|4T6!���c�k��gq���G�|V¿ �Y����g�	�������2R��c2PU/n��AtO�����D�t���A��[�B�D��Ă9�*>�]�@	�|��Z���o�87qW����f��g	���8�qª�'B����Vc(-�Dl������!�i8���S�]�TZ5 {$���9���iJ���Q�*�=�G�����&2E�w�綠97��(bkCIJ%�f�vm|�  �z*3|N�&�߽ٱ�����i���N���-�_*Q��^���tz\3t�V#@�N���ހ	��9t���#�I!�aد�U�|K��#b����#���/b&�	��*7�}�i�ݻ���?	
�T$Ĭ���0�9���8~�%�ZjG��>�Í�|�騭��)�A���-�T��v5�o�NB�w�8Fi��B��(G!֊W���A�Y�$�R��z5¶��L��k�nȯ�D���b��s���h%C]��,��D���gQ`���R�i�`� �G&�}.j�{�����;��M�q}�ϖ@D�J !����jG���g����"ъ��:�@�^�%�nZ8�ʻ��|Z�h|�{6���\�*�ɱ����tI���
0<%�~�ds[�N�@㛗���*��ս�n!X�R��4��75)�������]�3 ��o%L���ɱ+7�(��_�]�:��h���8�W�(�����x�7��5�'�/~h�����n�s&�Ó+��l3��A�gM�8��,.`�m*�Co���u��6.9o��Jf �{+����>M��
�ɢ`>uѽ	���V�ds����G��!��-��VK��&2�z57��|�1k�ĝ�to.�A����$D���RZ��ᴢ(�$23��S�B'0�B�͜O5��,m~�yg��6+��c��k*�/�M�Ѩ�[�<����F�q�@���yH��{k��H��oAۥ��ȩ#_����1�|�D�,�x[=Y�����w��"�*��"�߼�"4��0�?.���w1����7c�B�4��opF]> �������apغǣ��+������^�i�p�-�"�䛚h�qÇ�EMߍh����[s���;C^�lO����Lѐ����E���}�G�7�Y���A0�]��La��3����\C_��m�����JnҲ�k������Z��>�
d��$��_��'�H�ڟ�B��Y��Y�Y�k�D"�_��U9�U��$���]�SQ�r���~�R:1?�e!����W!�0���ƌ�AAp���F�c���&B�c�����fy��>eo�Q����"�r|�i�l���ο9Y��*�&�fg����R?�������OV>�I͘߇S�J�޶�������E��vh�I5C�n�6��ܬ��V ���i�*�)�^���
�hIH�u�7��/o��'�2�lm��%rn�RӦ4�+�R)}uЦ��9�/�C��DB����9|��������DU-x1�bݮ��<Ɍ�5�z��c�!M��6���wm���M���)���O���N�����	D���y��(v�r�,~N74���x6�B�G�0�	w��&ږ���M /ۨ]j�$��]ff� 0~ǱA�L����?��"➿�QD�^@��M?�i,Ոf���c�o��ҎS��:����뚦6L��e����|9�è߯�q�PI�<����F��y
�YA�03�hp~�5[��܏q�DQa���[���j��O"���AzB�Td{����z���}���ٮ� j �ݕ���q�:@R��<�^��z�A� ���_o����(�����'9�L[�K�*�K��'\�O�wO�g���5�O����(G&;Ⳳ�S�v䃞�������qŻ��se�y��j96��P���&���k[�s�O0]�A6���\X#�I��9�t�l�B�K	�����A�f%sMMЕ���w3V7].i�?
5����^���\d�|8ޠnmlsG��E�Q�0�hݲ*�05�0+P��ӿţ�O�R[S;ɍ%#[�R�N�!@jQ]�[��Ȅ�,/I�g6�m�m1]�wd�~�(�    >�jV��]q������Ö��"H�(D��FJ�_Ke��G�TQ� �ٖ�pb����-/�c5�	��R�TQ����.>���Ո�aM�[J�5�� �L��G7
�� ���^�L��D��Q��Ȏ�Lb����H�iF���IĪ��s�q_=����@�j��"XHm�ro� �[lt.O����pC�<�n�kY�6��8���ٻZ<]��ۺtk9�={���}Fq}	d�x�����~V��Dc�g�s^3����v=�~�ZO���on����Y��ڢ%��d�>3�⳱a���;nɤ.ů�ʔ�"}�_zԆGH�q'S�;g���8O�j�:B&:PKEB�	����M5u��j��&�]�~����N��$<~����*�Y Vlgs#�@3��U'P�C�
N�V��Q	�}2� < ��k�~1pHC�In^!A�|�����>aپ�� ��ٲ���oJ�˪����.��˂�6R`f;��a��q�>oJ�zΐq���!a�k{����#TMIl�skaI������s;s<ιC���XBW���������0�;]'Z��S�e]���#j�_�9|į�9���ʄ:��2ujӢc�U��$�ߵ(���o7_|�����s�ԭ+k�I��X��7Ҧ@�s�;M�R:�A�R��Hj��Q�¦�� ��Px�;�=LR쑤0r��  i)л$?�[��Q���<�������}��~�bS@$�Nl�g�z
��I��f�K�u��
|:ktP�@@n�o�.o��Z���,�V�v\8Cc�e���]����ޅ�� �֟p�{�]d�wK�Źk>��9c��B|�EG�(�,��r��'U�4G��3Í ˁ11�.�b�U"w٣UP��0�Z�͖�yI3`�C�at�/����rXM$@�7��V�n�w�"C��Ԟ��1�D� +I&�F�CՠEvF��&��ӝ�GQ�Nϋ<?��8�������3{su-�wN���jY
���O���##�����k�����}��-����֣�������v&I�w��H�Z
�~��c�|�盡��_k�m��/�ņ-T�e��S� ��P{�y;]�;�TX�ˑ+Ձ�9��Ȝ�P:�%�Y�2-3�'�l�f'�SF[��x+a}3������7� �zP���c�@"^R��[�����)0��K�-�<'�OJ����/Y��/��.9��cd ��=
`�����-N��,Kj�/��8��Ҁ�����B�����Z�	�+���͂�p���K |sU��'._-����=1�>��u0�y�0��Ft�!��W讙o �_x��"0�w�ލ�yG?Qz+oQ����,%�r(K�+@��W?U!���޺��ʹsT̃�L�& J�`��b[�sm�ȏ{|��Æ��Ȁ�'���lR-�(��,�'%U\�`��P�Nc�q�hc$��i��x��L���j`]�4����W{�4RP�Tq$���p�r�r��J�MI:Æ��d�^��(G�z�0���i(e�i�V��n���@�Xdlv�Ӯ�uѼ���4V�<�p�C�����o/2�"�/-O��Ƙ&���UΏ�ˮZU��NE���"��;/>�S��(�x��֐�ӛJ�E%�������\��H��s;A(>��$��><��;�47�����M�� }�L8SR-4��Y���{������F�DMH"?��g�N���{��"϶��W��X�,׎>�H��E���4c��A�hr�}����w3�U���_�<0�ݴ���xܕ�\���.ͫ
�d���q�E�W���Ro��V�۴�`k��2�����;�����w�Q��{-�?+��sK����r-n(��I��'k.J��|�t���V%�;���Pǡp����Ⱥ��_izHU�I`Ea�z0�/c���}.ԃߤ-;����6O�V]��}�|�2~�a�ҩ����f��dT�����,�#���Y,��>]B�!w<���	ug�m�J;Tb^�4lQ��#
�ʩ�S)dۧ�'HgU��x�U�w��Ɇm��0��w}��@��J�H���ta(��y(�0�+�~���0XA(�^�7������\Ԅ�a�'�#o+�T���h�4����M��6�O�:�S�2�lֵ˯Loe|����.��]10 M�x��u�� zYU`���G���0ai���U�Ƨ�#^;�Hg<�.M�f��(��� w�>.'����$���åɉ��ބ���,툨fx ���G
;��')@<�	rY���9��q$^O��� ��ҷ�#�e�� ��_v�8 ��(K�N�hF�d�0�֑ze�"�ճ��GV!O�t7Qmq��ya���r�7�X��y@��s�����?����Ε���&NK̹P��\y�n۔���7�����%�(��"�iUv?KH@<�/��9;�$�DN��"Ã�1"�I�چ��6�@��c��b�["�Nsd�fm����q�K��kw��K�V�^2ڼ'u~9�{������H�c̖Enx-��9A��$y��B��g)��aM4�h8�>%Ё ѥ��svU�n��s�2�I1��&���� �9�S�" �B�����c����|�H�~5�Bw˿>{���4���j�=/�b��^k| 
1��[4mv�6�OA��|˫VEMom*������k$���#U��΃�oW�`�.D�X��QHd��I��d���T�(������eG�h��b
Td5j�Ѿ8k�[�@p��%��8#*%�Nǆ5^�q�I�͡���S��4�8��+�!����x�
����m?s���"j�f�J�c]�*��� ۫�8���4 }��m�T/�Ҕ�N�1F�(J�=Z�<}m�^]QC��L���_��,+D��j��b���^t����:\0w�"y]#���~<S�~����C��.�!p�֣��K�& �y���+�z�b�ƂA��A�C$n�\Pq�ʛ%�Yv�t��P�7K��ޕ�"��m.����4� U��i�G�V���c�^�g��\r?:jز�f �7�]��y�����0�$���{?d����s��g��Xg=y��K�N칤������
��>
yb4���k��>z?�-w��@��Pɧ���������͊��B5}�y��ԓu���b.�8���\������z@��i��7�t~4��i���SU��=�yǛ�a�a58�
m���ĝ��"ɻEwW;��D�5\SK�������Z�X01E	�U!�Aݬ��;�z֔��l*5�fQ����y��wV7"�n�����%T6�gط���.���,txc��z
T���C�[D\Wע��gj�!� \d�\#�C�H�>/�+�߱>F{լʌ����8Z����<��R�m�.h�x��{�#�U���&��U׊�m�����c���N�r��O~冨�_<y��ČZ��96~��1v�G	ߔ��g4��(�O��o�{�]	C�
�T)�çIt �?�u�|C���/]qkv۰9���i!R�d�3�¿5��@#?j:K����m�>��;v˂(���nZ?��?}48���I�>_���*�}a��le-�P�j��혠U�d�������=�D����B��7&!��<H�줜��o���$]Mkq/R[�v��,3C���l��u���&}(d��n��n����b�JZ��<$��Z<�����ޘ��[��.,���mS&r�'��U �I�h��$5�~���O�&D#�>%*����R6Į��ml���`=��ӱ���Fب���>�g+��MhC%A��H�׍V/���$(J�A��H�|,����H������L���&=�U*2��&;<��Z⭬	w}W�]&xx���^İ��NP�R�Њ��x�I�H8����:R��ߩx'_澒�x}vU2�X��G�
o��q1T�    3T��D^�c���󟏫��H��S�Y� NW��I�0"#�V�J�42�t��~��%��M����5� ��qd�}�^�L��m��҈����N����5,�#�սRHS�EZ��$���տ⽎�<�՗II��3"���H�Nހ#s#�hD���3��pO��̆�k�jI�}��7tm�}z�p�H��t��oT�\�W��j��]�)Ft5-|��T�4/�ll����Ho�E>�Nݿ��b��=Q`;k�Pn>|�
�?{*��u��� �U�M�W�8�'��	g�C;V�ז�d�--�^=�~���H9�9����VM�qT����eyv5ȭ�h�����M�I�ى��]����"�����
��_�^+���kj!�x��'f�����B�)����o��)L�O����r���F?0?���>�@Z^I��D�|�Q��(���ٿ�o����F�e��|}8^�ה�?
Kذ�) Ͻw�ɰ;qPG�ݏQ�#�	�?�����HR��F@U�&�*>��j�o�l����J�HS��n��#�@U��&�+Siv��`�}K��@����i�� �+���p\��-���!�FgX�X�\��`Ŗ�J6lK���  _U�ݰ�=�Y��,��8 �oN<v�A&�H���L����۟�LM�ϊ�S��7Ig����BLK[̌;���_�����n[U�f���ʀ����{;������0 V0���a:r�6&���H�u���l�� ��(�>1���0���X�'pO��m�
��Z{����L��?�����p���A�J��� +�ah���1�4�Z0o�ؕ�y��xj�ĉJ���*�J�-o`�_��{Ÿ=8���')M<�`D�u��4��ΙZqX�]o��+�wr`�B�����cd�~ۇ�o�]�7-����<\����)����aё��>X$~���AJ� �������Nҿ���r�,��@Έ�^�fbY��4Ns�^Iܷ�F�}b?��_UK���W%57Mv�4$o�I�o��C&��gC,�"��i[шtǝk��ȑ�+0O~��UE��j��oKx&����N��� @u��K�C�2}��ܲe�*���Z��M{���,l4b@���;�ZTy/H0B)���P��Rx����!�H�A=�ߦX�k����܋_�%zi�R��ڠ���w�/PK��:���#�`��yv	�n|��Ճ٥��(ғ��]FQ�㠪�y�hNn�|ѝv'�G@m��#��?�dwc�gٟf��J�9�s�<�5������ZG��so �vU�W���~�},f��!��]at�U�;��:<B^E�:B��Oě���P"�Z��~�(ǈ.I�-� Jg�!ZPҮǦ
���W�<��>)�/�Lԭ��l���;͵M�CDƋeG,_Å/��!����<P������`�m��֔(|�a�G21
F�uӈ9�0G&=^��_Zx뗬����Nr)P��ǧ4��;֡��^��<��;mv�|(��;U�$�@�9�����'������x{c����,���e����т�U|#7�y��
N�$����n^�p����y��ĬN��+�E��AȦ���,��ejM�-��~�{�N����O����E��o���&�H�<��"�W����f�8y�њ�@�}�ߓXqbC�]K8����/oז����_U;�u¨{��r��*`�<�ǰ���ɘV���En]{�����FUM!z�ď�y\U����R���RV���N�&�OR���8q՛=�F��Ա�-ܺ~�Am�o��Py3�P�)L&�#���.�����>U��Y�/�h�kRg�٦��UPg��AU��
H.����_C&�Ed�Ч)����R���8�6 ���>��.&�R�g�	�Zu��6Y�����r9S��N���^��m�������F�����x���h�I��a)�b���Y��Fcc�D�����U���}@C̸#ہ��ii�%���{T��(�ji��^��B� f|[�#��+��Byt�.��>���.	�Ҳ@~q4��ٵ|n�?f�h�|]�^@���5�tW:x�����=����ת���|x����~	�˒��ڑ�����jc�-zy��.�EK`�^�7A�peS��ִ���q̥%���͐�y�d���Y�T&����/���߭T9� +�, *��h�R{w��Z�Ȗ�� X�G��8�	�}%`����x����C􃟎��������7����K��~f
���V䎌wdsD$�Y]�]����1jj�[-��|��ܧN�v~j���?U�v$ش����w(�寿S�^�݃Y��T����1I�%|�u����O��ja�l���c9�'��o���$����g��Lf[n���cbr �?-3�+�^+�mO��-���64�X�<�ͫq�i�}�P=�#W��sѡ�Z��dN���ħվ���?]�vV��X%����0�y�D5��߸������M}s�}n(�R�ҏ��/#��9�ٳ;�����}4�'�[�RݐS,;0F����J"F���,\��ф+uC�P���k���c�Q����Ơ%����A��8�Ū}2=ܑ��W��[�o���8�	 b�,}o��l%�o�h|Z�Z�yHY��x�C
�9-�ǳz�����tϽ芪����Mn�@�)�Fr�o�q�^���)[�h*RE}�?9��1��̙����x��K���1f���3��E�QN��ܫ&�7���'%a�r�Y�T��d����#ҧ��)�i�G�]"��5�>	�<��+i:gl62,'��w�0�l2�e�����Hۦ���7����^�d.3�y��}�]�co�C��=n�"l~�	C�ẪC�";�&hQh�mrS/�0��/I�b�tʴ��nY���d	�� LkH�k�"��&^����;Q�#+&`�lՑb���U�b��Ng]����5<�lQl{Ϩ��<i�@��z�'��Cpo��^�~�􇽥�-1�!��8�8��}�p��x�F������(a�Ik�߮,]k<U]����0�T^〉�]�0�
B7؃v��� mN�7��%tй���j{s{n/�5�Κ����1����i�f���~e�L�����\��[1�+F����豷~B�W�C�&EA��7d�ݲ�H�G�}��1�#}䶸�fհ�*8�
�o$�؝�FqH�ǮJ��ݜ�.\[��R "{6�V��u�9G#ဟpx��I�r����=�s�S酊 �q���Ho]'�\-�F�kν)� ٜ�.ݷ >A�LJ�	��^Q�� �ػq��F�S�y0gm��)��a�"�V�`�op���`��
��E�}zӓ7gBb�P4�b�_�/k��}� �tJ���/
�������>�dxҦz򔫪���̂ `}��έ�kN�~/�X�F@���/���"}E<ۂc(ڔP�&���e��s4�7�qE� �F� �ʸ�J)�����0q�2}D\�"\�[��℆�����}�y��2����?%V�����K]��ܫA��ˈ�d�Q�h|x!�{���=wy�CZMFa�_�3�AȊ����࢘���l���0�!ms0	��Y`���y6�,<�O�<��u������/��<��;��N��6t]�'D&[0#�BUH�,)�>�+��f�zq��;��,��(ʳ��Ј���$Mv8�g	=6�8�H�t^b�B�����|�#�/o��b��1�Yt�K�ZW7�M����;�gVU\� �t�}t�E��5�^�u$���c��䂈~5��#$;���",�&��g���S�<������n�F]L6�ˈW��U��=*���U{' ������}���|��W��R���qVM�ݢl���0�Q��{�jȔH)�+��;HuD�Rq&�ة���X~�t?in�(��mn�L���2�B�EEP
���~W��ݥ����}�AX)���    ���׎�cטBy4����4�B4��<8�@����޽@i���ս���[�D��_~q{��D\C���ve�ͽJ�M@zD��ܭ�㔏x!�����ݩ����;ONX*߫	��e*���:��WI��"�����ű{xԠ�3�[�S��Q3� �K��Y�ֱ�B��JsKX���-���1�n�����O��؇�:Bh�Q�ٷX姱<��"��$��q�#�LDAT3
y��ݼ����[�,p!�c	_�M�tr��T����<9�4��0�<*���4F{8�݃��>�_��3�3;��LӶ-�ԣ�9���?���X��y�o�A�Ü�9utb�Z�<ui��GE�SǪa���:>��� �����$�c��ؽ�(u<����u���&�9�Wu&}O\�aH�4��UQĨ��R�<-�`�H1���B\�$���3�L�F���j�mX"�1�,Q�K$����kQz����+��L-<F�Q^N!(�ۏ� �K�G�b���5]T��x}S�>�U�W���э��BY��S�3�cE_bG��Az��g$f� @�#��� �m[�y�s,��>6��2S:b�2�����y���{$�;_N��adn8�Xב��8S�֐�M��B2Y׷8��� ���>�o�@��A6��ߓK ]�YQ�uQ������u��<3��4����=��΂�����A9�=$i�7G�M�^h�%��X)�����L������?��;�C����Hޙ���Ky~h�#��%IV�z?��sѭԿ��E��)��� w����ƣ�I�u�����|�$�UQ��3���x��������1�D�n�^<�%���ɝ�@&��UƂ���8��@T߶�S��	�rʥ���+Y���PK�8��_��(���r	0�Fʓ=\���P,B��<�D�vi#����)�}�{27nn�5�o}yӑ��B<C[�n��B�y��B#�}��\ ����DT����,A$���$��-����\H0ȓԤ��Y)�8��籆�ip-�=����l�Pl8F�m�c��YR^�X��~;��a(�hp���貳}���^`�z���ZF_lo�SU���|��^��mT���ǱzS���ߩ����ɮM�p3m�	��op6	���]��E����?C�h�,v��-.;��"��W�3�i�!E�x�}}��1���7g��( �D�6�0Mҁo�MF�~6��V9�X<���Ǭ��bu��T5Ҙ�
��3����7�h�#����k\G�%b��Կu�U��Z��狘� WPR�,�kH	�*����9��q�k��:���n�>��<�r�\�e�mCfo9!w�8���{��49�RwRJ_��؂j�����͝d�^2̖ʯX?<���n����aY Bm�)5�Xp�g��I�-.���$ϵը���b���jͱ
9MZH1y�5��#��罯�B��w4���{��c5�2*3���ِng#�8�Ԣ�t��܇����_��8�g:��+9���h60(�,�?n�Y5��o��OC����uCB�ᾶg�U���Q]{��Irw��*U������W	��Z�OP�����m�L����C1c�đ��Y+�?�n,�DѰT9��Z�W��>�O�|
è(�_�MЋډ��J��#9��B�7֕�%׉E!���gsP퍥���[IC�1�MJ�����ox+�'H�5�@iܔ�;S��"i�eK�;^"y�{h��Q�Ƣ����vכB������Ya��m	��'zz�rxee�[t����to�sf�>F�S�Gd��Ѣ)�P��e�H6���
�8����37��cD³���|�$�o�8k��o�rB��RD�D���{L#��;��aטi9�S��W�q�r�_��PuT�N�\��>�zww
YDH�{�+;��ܛ�*�9{��Z5�(|D�g���1�����
C����N4�Ns����@Ӻ�S>���f8���~=o):�ٍ�4�� ɣ�����Wci���{��Վ����dɨ�~���_�Cqѕ����:�rJϕZ��K�Ʋl����̾{{et�Q(�lK�C|�#oY�5N F������3�pH`ᴌ~Q�묲�;� 5�|~M�F��L8BM�����ҭ,B[��h�R��{��B��աNM�i&�׶�9l�<���lV�dȮ��md�6��DFp��Ć��1**��NU�jp�R��%�<p�(l!Fǐyg��}���8�ɟa��ܮi���L�q���G���=(�h7 ��ٙ���󶛨!Y�^��DK_�WW ��qdp�B��!2c�sLg�VRu�@-6�ݍ��v? �w���'3.�\��!Æ�Ai��Y�w������J�ƒU�X\���4Ix6-�b�')���2����C#19F5�~�#�b�.�� 1}Nhf��	d��ͣ:'M���kK��1=옫����b��0�݃7�~���D���Y����w��- "�-��l�t^���ױ�����A7B�Z�" �QvXPl[ȁPz��(��~=qal=� 5��K�����O��/��� �7�q�=ؤe/\]��%����
�HN�p�����>'�e�g/W��T�x,l��)spY��)q3�7�3p�m.���}��l��;���$���������pJʒq��y_^����?��ͬȶ\ŕ7���|����$,�̰�y�@`�i"y�~��;��2���_ �Z�$I��J��Zz�A��̾,IՒ��<�g����+�R� M_)K �2s���ۯ�[��i�|z[���i]�m��@���
�U�H�~_A1M��Y�c�, 3 z�+�d9�*�H3��9+AF��/�q+���B��Um�$�^I�t�Y��*�e���#�����s�w�P4i�jһ;��e�k�1]��Db�~x~7��-�!9��WT�v��f<U9��0N;d��ɛ��U�׺����ڝ�lh�.F�����0!�n��(:Z�..�k=�$8�Ș*��C��p�Z�1R�3O!�_��f<�0��+YY҃>���qH��[nzG�@�]<܇���K�ei�m^�ƅ�A���[qš1F���|�a9h?�K�[|��Ƣ��{�|��q��5L3ဩ�Ϟ�f�7#ue���p���}�ucB)+��3Dj�U��!Bg�ށj����1��"M	 D0m�J?�o�+Ze
<+�����F���i��qѾ)�N��f�d��É�qL22_qg�7w���<��瑝!+���,�G�n7��,�
O�IS'E��*j�U�6#D6��ý>�5e�s����՛�f[�3=�=i㷽����6<�a�:�6IvN�y$ߘ޿:�}���|wMq�>��LM
 "�4Kl����� #�;9_�^0x�N�T��W��$he5xv~�*�o���g�L%P���i����_l/Ȃ��K�'�[*d��Ɖ��
&�]�H�P�K�?
s���t..�$�_����hr"�z��mG�I�<�~�g��6Ǧ�$M������^ϲ��.���E��p���@{�N��q��Ē��D�N�H�e���ͳ>�����+=�O��_���Ы��w:�u+�w�~f ��N�ɇ�q�X�|1�Y��%޼���L���@�0GH�l���󆬜��4T|�K��� E��P[9�"M���!�E��R:��u��9]��C��� }J�,6� �Ӫ��?[�w�q7��x�<WmRl�QI��>k�o��eH��h�F�0�*�m"_%�
%��n&�Q�ԪDؖ<��\F+80R5yK���]��ģL��y+�<�:�4�ڶ^�   �x	/n���e� ��P�p	��$��R���#�A�GSU�]�P���h7�܏\Hp7v��8.xbX���o9��ߪ�Z����h➵���e$�[nsۑ1�|�g�5����T��t;i�w\�_�C�D8�W7IN���0G�c$T���SK�"��m=�:�[�B��T�
gf���Řkl�6��k����    !r)�G��~�ֳ B�+е���0G��A���߯ �ޯ������Te�_��C�ڊ�#���n_�~���W�m5��6A�c��T�$��}P��@�,�ܥ?4]5�Zi�ۆ�V'5�#�,z=m�E����0ڱ�e������^�E��w#[uID�H� ��Yf٠���(�q�I���@"ud̵���i4�fH|_��9B~�K�>�/�Ig�=��~�٫����ۓej���bs������0��~�^~K�^��7 ����ty"��j'rf<�n^X�F �/*�����iZ��rd+��u���cB���ML_�4P��˷�\}OY�8�Q��(@�(��.fQ��@�,�<�������%����.�Bo�9꥖�C�LYYd>3*u���[�C��0���胠�kCFa8������*MN��N�g20�lR�|���Rw$P����z�j�۪=�܋��IaՁ���i{�� � v�1��]&M��!43�����3��[�l����n���k������L��,Ə�'-�؝�נ;�8«OXf_�e�b8��ĉ_D󺚝��}|��{�u���|��W#�����x�x@�~ye�w����y��F��{�+�+�z�ˍ�����.!���?��x	8��t�t�Ҷ�_�A<=<�.�?h~�.����||$b��C��e_0@�����i��<��"S�S�o�H&�+�m̤UA�T��§π���\���zgȎ�$��:���o�����N#�?�r"'/��n�C�ONy� ���[<8}�)�&�r+s��xT%	��
��B͚�+�
��x��:gFh�y�S�+������#��H��:֭����A md~��
����;hvFU�<3��O�QD��|��4%��#�uI�1�A�hEil�b%���<�2�ěq,i\eF��,� ��s>w�f�%xm�����Y����a����3���MȖ����s���9k�#Wr&�����c�D�ET� e�>)��C�76jJVl�x�~��ɓ��1F��@��u0*������=�sXò�����_��p*����_"\�'4ہf����W��]Nbw�����^�`L�q�,��0���t9^��"�J�m�����zl�0�Y���"tk��^>$�c�o��{��4�����V���z61�a�_+��c���l�׿�A��o�
��8���{����X!�mb��x7%I��
�&S�Q�Vo�g�jQ7����,�p�=��Y�W-��@`���>�Ԡ��Z´���ڎ#d�n�i�(�V�<|��0��a���}״&hq�����n� �f��`���螣f�?�׸�Աޯ��z��U�.�C�t�GE�7���i][.5��4�`��_��8k>�qhg��CIU�'�wI�֫��NBԳ�=�r��rl�h�;�x��P���r��_d���ryg۽�P������z4�e"�c�����c^��=���:�kr����Xr���⚬Y[�O����@6��'74#w0^��l�%��z��|ơI�Λ��}��8C^zUo\k!��;�w�3+�����|��4���2ɾ�ݕk�YM�Ӳ\]$�l�G:���/ ��1W�T�*���9M�Ֆh¿�50y2:�4��Q�?�Z�5>������j�]�s�����rD��[鸾�w�{�]��[��S��Y�}f_�Qcdj�b\��Hn��h��}���T��]v���:rV�DYj���<�����J?bL�p���� =���LCI�L+����"c�_o�V1�M��Hr�
$�ުf�}O4�|q#70�^��bY�#��6�9�����(���1	pj޿�)�#��[�R�x	������21T����V�\O}���9�oT�<������r��].x�{��J�>��61�9���/�8B����}K�Өm��R
�Q4X�$������'t�\%޼�Kn`ؖ�τ�~[$c+�S��X��L���Dѣ W�#R�$����ą��if���cT.T����[5҄G�u��/�K+�W�]\��8~S���8�����%�1*�f��-6�a����L�6��&R-��o�<;���u�:�jV��]+��� \wNP�~@ɇ�e6V��R�P8ARj@�AS�����8�E�k�~�D�ɹ4��Ֆ�e-#cظt��nD��-\�:j��)'E����.�Masʫ�ӴcQ�&S�!����XEve@�A��Г�R��GdyM�	A����jF�72o�T����M�M�� ���x�dT��u�(��yO�Sn�	�h�X�!����wdM������_X��2QKl�$~�L � M"�T�F"���0�����{d��<���l��z�iu�؉�~ծ�� Q<�1�>�Iv������������5���4�:b`�4�&�� �,�h�r)z��.7�Dȷw�qT]p�	y�b�cU՚�/�ta���0�f������fE�Xa�i/�����߈&H�D�2ڑS��5&����'�����=IX���f2�$3
n��J�%Ashi)>=��0>�������I�z��0]����|��k56m� s�"Z�A=:>1�7%��S���zCW�r���vPdm/cc������ ~�u_����3�0̼��"v�n��&�C�=4�lO� ���D�X3�U���3_�i�s����,Y�(��:�`K�@&�`����wj�K���T���g�ohQ
���k��4=Q�Y&V�ǰ�$�C�?O*}u[��j9e\# �o���y3W5�ۛh��ԋ���[WD���q��\�ɶH�U���ͫ�� �P�kN{:?���#� ����ğ� ��/�(@��v�+�-)�p�'�SS�<�50"���ر+������TBz���)�a�}��;�Sw�����n��l]���������������1���M�Ot�����>?fȈ/-ݧ��AZ.��u��T����)��G�boڜ�( ��e��y�'�:�-�qL�/F�$B�`�Fǔ���G��:�))f�=�H���?ooX��+]^&@���  YE�f�:�6ϩ�xBE�u��U;��&�qc�@� W:��(�W)f�2(��Q������+J�KO�掿c��㲬u��:��J�lb�����fY}��5S���H�o�}&S����a8����Tx���tR����m�����w3.�x��{�p���4N�(4�������G)s�r!�V�e�0�m���<�<��P��?�h�rH��~<??n�(���T����ϗ�d�W��Ax��e�<��E�������?��Ϧ!��u��4�Dvv��\��x`��@0?J�H4�6qԸ��W�NrycW/�US�N��o�w���.#��T��}����݀}ڶ�"˭���W�!?�&H��1h�=�$x�;��,s��rs#ݵ��Y� ?u������)ueM���¶���Sح��ݿ5z��e!Q~��7$H�`뤩�7x�ca�{bo>�jX�����Zqs�o0Whj(�Ґb_�lCNK���K%6�;�h��� Ek�FX����F�W���ߚ��o'���~��ц yw���O���f�p��J{�I0г9�����?�Iv��C����uӾ�t�TO2'I��wO�[��8)u�>�o3xϣ��B���)�,��l�^�W(K�(�7���6o�I�~����,-���y�k>����i�?YE���H�c�g��
�S�m��;|k}�#Q%EA��,�`���r�h������*IS����d� �dٺn�!��Y�$�!��<B�S���x�׀���.�#������뿃�*�`)t8�̒�)�ln�5<֯�<�l�A ��,wc��~����+��Q�x�B�D���5@����DC���}��dD2�0^|��.�J?�-���2�xBf� �$��!p�i6�vf���-����|�����/��:����E1�7����qAϫ�_��;��	{�ƜZ����q,�    ��\�%�*�Ҫ�:��J"�S���81������/���cIS��ʽ�A3����  1x)u�tɑd�&�/�/}�e� ��e���>~����[��N�Ż���j?�l��
/Q?�<*�i9s~�H�&�IÁg�ʽN/K�ÛQ^��Q@��|s���h!��ƕ��E7E�O[����<�yQ$�s�ɞ���t�jۦ�ųL��^[�C�BN��2�xHz3xZ����e|���«�^�,g�]B��/ڙ9άj����� O�WZ4�?]��tZ�w����� q�%��n�f�o�)��#�3��Q���$IB���o[��)���g��&p�y53���~��v��p��r�2'}��]����r��>���z���o\@�5Iq�~�e��n��
�V-��$f�L0��*��Iv`���I$�����D�#W-(��z:��j=�n���ۼ��~L�3�>��[�����lه���o�!(�C?˟�]�J�i9h[���e�(pO�X@�W|�ʄX���8���q)��(#�y����=�a�M�r�# L�p0녞W^��=>�<F�y����{5��|#�����^]A~´|��}!�o���=1�R��q�@Û����������fr���~?� ��nI$�	������_]�m��Yõ 2� B]PZ��#���o}Hsp�uT �c�P՟��q��w Aҝҿߗ�o��m4�^	K �W�:#��\�8�6��(f��ܙ�8����?~~A"YYͽ�R�9���(��Q����`�l;�;UVda��δ0��s��0L������7,�IZ%u�e�#MS��a���9O�5����1#���,�������}g�M��b�a7%���ԥ�g?�7nh�����i��Iƶ�� ޢ4<��&fQ�h8;�~�Q�x����:���,�I�3v�T����g��m�]PZ�I�v�y���_ݩ���3�6'�����t�u^�]V��O�,�ۋ޶��`N���3A�����<v!4�[;�(P��ݕ�߽Pr3�7j�"#rvf�-�A��t��ݜ�$����>��1�w~[W9�� 9#�T��Mq^K�e�S��]�F!��!;Y��N���G�0��T�u������3��"����͝�{���J4-�S��sl��s Ƭ�
d�V�B�o��p ���
�mT^��{�^.ܦ�ړ4p��G���@�Y����N�A��8����;^�����ʋ:xZ#6䛋��i��F{��-Fĸ%��f!���ɓ��ڳM�\�4wݿ�{w���R4�f��I?
R��o�|i�r�ž����3[8	�QN��y�r�Cq�:�� ��9;�T��i��<l��0�á�n�"
É�<�ot����}��N`
��ɀ���7]ۺ)���qV�Hώ`;�,^2�a�?ٖ���A�O��<i6Ȓx_v��h0ͻK��r1�$��#�M���>)��ʁ1K�7e�K
��gV�e�}��9�ˇi����$I�����o|?�������Uw{G�Ϗ�� �D���F7��\�50������g8�c�Qe�=@Z�B�rg�!{���h����c�,�$�(�@p&��3\���/���tET$��{�o�dj�j�1]fh�/͘]���$)azE�q3���鮐W���.��2a����և���v�;��r��i�� }낡SNv���'sM�8Q������ؠ7$I�.|��Vk yd��N�]_�8�eȍ��f8.	��[N]�`Rm�u��`�`���"��A/X�_&��6\j߹sO|��-�����ܞ�ޞ���4�Eҗ#�F�78��C��<V�d�iK�6����=�9C��P]����4TSc�.9���8��	P���� ���]�Ӱ�ڃ��Ea�/�������DQ��Pߞ�v8�I��[�u(��ViJ���x$ �zY����ٱ��/_FZEe����R��@�K�\��X!�g���S}ɘF'��ӾWK�Tَ@ʈjְ����io���=�	��&G*%𯆞_����R���C2@W1�o�Me�R�j�ϛ��I,K��$���k���M�-e	wɆ@t���Ф��o����<�����j�r�r+�~#��E���A�w��o�c^Y�A[6�2�+H:�RL����ey�xf5j���(�d�ߧ���!������Չ UW�Q9�ķ�٣�C~����C8@C������W������T��9o�� w��7����{���^� X��x�mTK��y�"]}��r�|m�MB���l�{�a���h2)��a'�}9n�)EAX{��P��i�}�֑5o�9��G$U*8 �R���w�T��S�K2r����,����jhق[���2<)�g���-�4fE`1<���p��m�.��'���{F��,G$���`��
��[��wχ%�j���~��57�k���^����6H�.|����'���_QAN�Ơ7�h���1 ���ע[����_a�c�l����b@��9�9����T��.L��Wd�yB0��$Q�8��{���*KS����"��G�\9> ��z�&��+�?k_{b�4a��\.�ە:(gF��C��1��cYۜ��.�%����K������[܇C�*������K՛��U@cx$�7S��J~�����*7����~�����\�!O�>׵�Hz�BGh�m+�}�����k@P4NK-xA�F hû(� �IW̷�XcE���;s�H�[gd�(�`�V{�/���}$^+znyc3l�?��E���rS����<���*k����ju<R��chN��_�É��N��oԢ�����-�~��"Y�X#��{�r�����Y�ڱ9�8Fe����DSD�\cb(�u�f��"iEܷ��C~��j�O�N(�|v6�.�v�����w
�+{�����4��^L�ú�H���B���m�'������x�C�C��u�Ǚ�֟��[��$��(�4��aNmHh�V��9��~RM˚�"^P$c���,n��D��Y-��O�����?'�'��X�W�Q=��g�hY$�]U�r��n�ǆ^f˓y��&����m�,�_� �j���t���FYb�%4��jui�{W��>ۦ*˒��Cf ��xnkS���	#���>*vw�B=�C��p��˓�
H��5<�e� �S^���2b�@�Wz�����l�y.�>;9��WL��@�K�A��įs �ǖ�[�cE�y�۲e(4/;+`�vQ0|X<����mY��
�y����s�/݌��kur<��Z[�^q�bP������Į�&���v?h�ݎ�J��N7���&��M��[&f�9�1e\�i��IeVF�S|�c��z���伅�M��|�g�f����t�^�4Ψ�ϵAй�S@��?���쵮�Ů��	���}��i�d������J�VLN��C�9"-2E�z���w*M��o�����0��(���!e��-���錌��Y�ӆ�u�Jj��,0K'�M;�GC��x ���jT�@#!���1��tA��;�,�xlsG�0���/�\x閶��3rN����Խ]Ibj��k�ƭ5�HPC��i��K�Y��O�Y�gZ�'���c��϶�
aϼ���4�w�F�'I��yˠ}�B���ؕx�fU��J�NO!㬢��;e�c�+;�p$f3�&H1x~LŘ��j�5y϶�0+�W]���� �A.��q��tZ����TU%�M��,:�Z+jkc#�2��a����7��x���q	�� UO���~>��qӦ�i���َo�ޚ񁞟q�PnT����"yx_V�UN��G�-�E��=��8��Ή:��S(���}3��.�0g���iU ���uy1�FUhr�<u�_�(�����a�������EO��:N��@����[��7.�h�w�6����I��KG�wX��:������fi���-)�����\��9��gӋ=��    �iF���|��hy�E����?�w:dY���C��G�ӽ�ʲo��ZU��YRb��~��B��Ue�C[�'��m,�*K�*�}�+js`�gT�8��]w>���ॆ��4+�\W��}��=�!ƕ�0��WMá�b������j�8���������\�b,�� ��q��ķ�$�*�j��{UL%�I �!f�cb)��ۆ�eHC�]%��Z�iŉ�k5Y>��;�֒��W�$��W����'��!p���;��3���.q��Y�CEuB�rě���Ȭ;@Ir����^�U��{Q�
	Qϒ�����aC-g��{2��%L�@�uN����e���h<;/��,t<�7m�SʔJ#���h�4�
����	/�Q6�����"ǖl��9_�"�c.�����<_��a�.Wn����R����h��p�WXt��O���%�Vв�8U�*�s-b)T���z#E��^db�0N˪�����)[��Ȅ]a�1�l����!`ܵ7�+T�B���9�찼~�ZǴ��uh)�[v���^Y�F$�D͡
@�f�w��Ǡ�I_�-2|W��v������� <@���' ����9�n�	lY �x��^��>�½I<�,�p�Ͻ��� �=� �8�2������F��]X��*��"����̤l/� ��[�oD
?-��C� ̷��L?ȯ����!�q�iD��/ P��辥)��8j��X���s�|�c��P]��!Z|� ����͎XS��K��]?��΍Pa��"��+s�����Z�A�}ܵD2cGfXw6���죥�|�LkmGE.e��-@��]�n}�4C�D�］�:/� ��h�A�>�����oK�DB��%h:E��?V��,nWO��-��g��}���;CA�T�$EiK��J��x��L��Fټ���H��(@U�)ߐ$�w�$uR1��^�pp��̭%K����F��a�)�j�`+Vc�N�U���p܏Mh~���KW�
*��f,�Ο�xIu~>�I��@�����t;l�z=���dz?�K=��G*�
ZyF���pJk���c��I��N�f�탤S�����>gU��p������$�7Fa�י\Z.4��W[m!���FMI�v�g-FH��Ƭ墵������׷�ͫ̟���f�@�����N�XK�&��qX�Y����aX1?��}��."��J�!�_C��(�0;:d���^�h~cY�]_x��4�xxO�NI�n"%O͏<�M?9��*s���%��
�~�yL��R 1E��9�đ
-�y�L���������䊄��o���U�� Ӵ>rb�E��Oc�á�514v`E�(����G�/S�oB��ѐ�as�x��:�|���u^~D~9�G���0�<5�,��<߫pz���*�_��/(�$Z���b;��xd��I���]c�$~��6\���5i���H��U��A�p���R�9���o�k�	Y���~������#ʱlئ��w�(ZY��:�(9��7ď��)��$�!��.yh���|֋���8�Ry謊7���8��w�����He�I�l�����J1�pQ��e�l�n��[�:1~���/���G�B$�@kH��z�ʨm��G�+B��q��yE'�	2e; oY��S^Gyo�G�=�An[n&FHKy .{���7P`��nw����7]֖�}7$�q��\��
�a?�"��0E5V�O �D���Q*�4ّ�#/�g瞚3-�}�,���33���5�%��A�� ��޵+��������0죱XĞ�(� ���b�R��������s8�_� "k��W��"�r��;%�97� aY8ُ�<3����ʔu�lO/��g1��d��/��K���W��io����}Q'�����/"\T7Q>I&vi��Kd��F��]�rX���v�v�H�"\��1w*"�ؔ�	���r��7�1M�\����f�OB�C�U�(\��$t�v�?O׉��I���^�8NKG�
c6k��S�V.�67L�*~"�2���*�Ⱥ��ɇ`�i�`�$s�x���Z�u����̐�DRp�Ҷ�B �qY0��3�ޥ��z͏�N�5X���]�''�}ԡ��Q�ф�
v�Ӭ�ϙi`�p ��'��v��{�%�Ci_�����$5����wR����~X�g"m2o�Ҁa����`~]��i"r�YQ�at>3����OJ>����U���/ÿ��cn����@��T�p�����7�74�����o��-��6�5d� �U.�iF���-o �[x�� wY�߃7/S�"IFZ�2M���Ǜ�tL�~!J�eb�z��u�=@�u�[�$��F�l"�-�9��"��"�)
��� ��4hjH/�KTLbQ��+�z��7��^h/�D�����X��?S=��Fg�q�ABO-�i\*��.�������X+k2kxҲ�m&1Ю�|���Vy����@�ax�ɬ Oȥ�!�t�)Q�J�U�;�t��;?�L��	<��N�܌��K���٨��Ն�����j�LV�&������| �<<�����=ţU����G{�ڷ�fE�_i�����o\a�R:ɥ��o��������#��	'T*�N�t���mՠѵ�B��r�X���͢�tO�q�d:"<;no�%x0�:sj��Kć��\�{N|����E���8\ѳ��oȗm68��s^�&O���N��_>8�S$��-]�r���OU[���R<��Mn�s@��;�Z�l�7��[���,��& 8~_L�Έ�C�1�4D�x�jJ���;J��xz��'
�Ct(;6�u>)J��^~�۫�L�Q'v6�˛������H.H��kdn��)9F��	 0
Ói`�T�b�Ȧ��8���C��+��GV8!t���������u=����Mq�y���S��HɈk�/���d�I٧9'Q��ޝ���a��F���������A�w����/����	XQ�y�n�ΨU�M/����|���.��n�[���\��R`$Q��>Hk���2����gHk��o-�IV(���y����͟�e��<�������p�ht�Ж��7���E�5u&����CӀZ���`/r�3����3w��χ@-��of;1W��Ϸ�x��A[�{O�������s�#�j��E]٧�I��j�����n�I�Iݥ6�.K�oL0�iJb����ao.>\y�}���P�7U���LҮ��7��oF�� �t�~�ћ�����7�����O2_E��ߙ�"��gO~���a�e���Ǯ�%��C�u�Iz��?�>�<O��}�(m�ⳗ��c��7=n�iI_��B��5ޗ��@è�� �eo��Y�~;��C��1V�z�q�>�3u#��;��x�g��h͇Ë8��My���⍟�%E����6C�MC���}�F���A�䉷g�_���F��_�b቉�;�@ތ�	�"�����E����&y��Z���O�kR�p���P�I䄭��,�-�X�=����;��3?����E���i�6d�҅Ӱf�,5��G�&�0�-��e�J�+�P��Ay�U��h�����e��OP[���#�'8M%�S��.��y�IAّE���V��0b��ރ���y�bp!Z��ő�~)�f[�|�#&��1���~����	�l�]vq$x����b*.���G��W����=2B.+fJ,j��
�WqV�C㇐��u��V˼��ﵼU3 ���~�d!I��<�ף~��&8M���+��Ԙ�-.�1P�onw7�u���	�bۣ�o���¥$uK�  ���xA��˵أC��(���q�v x7Z���9��?�1Q|-�⓷�VºΠ��e�o?R�x���B�[SP��M&����7�;Ұ�!�u���N�W��_xMe~����q����K�1Zq?�U�/��.��I�VU��n%d��Ѽ���    �Lϙ؂�w��sS�&0�}�WSC�J���p���#�5_�����򞙭�?��(/�� A�ѯ��(R��X�v�CZ/�~�6��p+Mᬬh�"��aA�h����_�j~o�`f
I�_�H5�@��X�p�3���P&1�3���v)s� _��R���'{��u��"����v���:
]+�����</��B�,�I
��x�p0�t����F�$��|�a�|�Ǡ���/1$��WA�M�
���W?nᰈ��
�e�0���R��S��W �������gg�/�4�-��M�^�K��(��U��[��c�b V`ܗ����cnX��" �}=9�"���;1���L�H��a��Ju1Һ{��5���|�U���(�ϛ�,�-�[V����T ���Ok�l��m衠�EU$v� �o!�rj]�lSl���:f5�Y��YD=�z��w,\|%�p�4�}����7~h����$��~�xo��U �V%�#��
�ψ�nh�WW�\���6u��a����&��U!g1��Ͳ_#�����������I�n5O������M�2�[���^q� �eAV?9u� ��4T���z��q��[?I�x�ߘ�27�9�Z`T�̈�t���T��s�8Ul���i�ؑ �Q!_�W�%x�3s�]�wZh�أ��M.7 �2g��ێXO�B���� �B�l��f1��O��Q�����?^`9]���(�ѭ��xH\w8V�����S�W� �hv��Sx>l��yf�/A1�Q@�[�U���7/�mů,+�_l}2�Հ�~��X��	]L�<�-�x�+t�=��I��M�
�[��Xp-*Ŕ&oĊNX{����6�OW��!���8W������Ń��o��#��9��h���}	��;i���I��LS(ք�����%�GM�I����0��֎�X�4�K�(ww-$�j�j���T�BO@	LT�=Gl��H�)q\kr���P�er�L�(�qo���~8p����U�����M�꩛�΂a�Y����~Nc��e�~�b��������ǝ��7���Bܨ���*p�?�d��̪$6+�@���^�\lH?fŐU�oJ��T��'�%���?����=�dQ�?M|�T�6u���i!����"����t�k4F���<D���Bg
<>��oهQ/�\�I0>���e��@�z��w�M�������x�G��%]bx�{��A7a�&�}=��c��8Ǒϥ�X@�B��t�����L��\jsJl7��+�-����-q�듺�8@*/��O�D+����@�>�\��+�q���>n�^G'.fpi&�}s�����=��K��Z�vz���YH�{1JK�B���1x}c�u ��Uo ��{c!*��oG�cX7�;#�*Ջ�ڍ�S�xyø�NQ��8��2-����m	ts�"	�`)֞47ED6�?Qe���o��&z�7�b�J�M&I0h��PH�����k���=-�hW�jl����l���y$@�</KL�DM�p�.�X�RSÍԁ�A�yD�?����W��7�Y�^�N���B�[T�2���ػ�P�� ��{�y���l�WԮ���DQ��=i�i| L�I	������
>QL,fq�)*4;9G��ON��i�͚�yoz�^���n�PӑZ4�)Ɲ;W�,�0���Gk�9\��AS�@��<��Oe@��~�D�!��!Q����&7`GQF�<K��f:�c���޾n3jƒHB������pǪN���ݸͦ~=�����>u�xUfp��c�`K܂JQYZy�)$������]�/S�<1^T&�ۅ�!JADa��6�{�?��� ���$�-ZH� X͎=j�����	J@�' �8FC8�i�s�S�N%!Emwe7RE_���s�Β�O[��+.�@�ߨ��t��te�.���2�	�m�!�����&�PO��jb��:�|�4p	�ә�X��tN��z�/oZVףV���*����~M�Hʽ����^��M�^F�6��)H7�D2C�ȹ�)�(܂ϲ��������)�v$g��
���o��kn^XQAp'�蒄J�$l9��	�o�LU;��2���!��� �����5꼪.FPRs9�^q�%��;�Q��,6vꆱ�8zWb8��������M�F��꘹�צ�t��p=m����2��~s�ܵ�8��}4�K�À�Ke��k;�S����Ub�q�vw�����42��Pr�L� ���=�|��np���V'��XRo����s�Q�ٲNH�;���r����i��@�JDʚ_���a���xs�3�9����5LY���I�M�tK�ߕ�F���%��9 z���K���j�� �_�0�J�/_��b�t��� X��rVKa�l�Q@��٧��w���!��@�	_�\�f�.�`ޞu&�W��cY�LJ��=��E����C�#_�F;S翺7���ǒ]�`��F���~��ʤ�K�H�W��� ��`F�e4pS����!��$���2��Q�\���>���;��4�]�sg�N$����F�9��YSf��Hv;����,s)\���%n��S
k�B�4�JE��+CWo 	H8���`Q���܏���k\�9b�h�k��كW��0�P����2"�>�Y��z���o(z�^?;�#[6K�6�s�8�@7r��93� P�g͏ ���9���l�|T<��t��ډ3_�e�Y�'PggX�uc�J��8 I��* ���tҵ�|�ƭJ�:��g�m�e����M��I����߀b2��n4�1�QfƐ4<6ɢ�L��=X ��j� V��;rƋ�݋|�R�Ү���b��=���Vާv�'V��#�������T�^t�1F�׽f�������_��[X��C�r��t�O�Zǈ�Z�|!��~L�sȝܝ��a�=j�XOa��0b�Ry3Rc��eg�2�w��q�'�p��(߈�u~�2zUA�c�u����}I4��|��9�h%=���9ZYvt,��]_��������U��W(Ϳw5���ۯe��J^�2YYw��b�&����P�5���-;P��=����:2 �E��%U�����+��X��#�Б Vw!��*� X��C|�!�Pf��㾸.o�k�"rF���������.wc����G�8C��W� _z=
���ad��ƏVV`��(3xE�Ox�u��B�;C5V���o��j辨��&�P��&E��M��.��RRC�s�$[,`�B�8�8��8�B��i�-����5�wI�(X��܏T���a�Ns�"��Mm��xA،sYF"*H��M�/$�`�L[����FO������8�hH�����ݒH%��39�����B{�c�Y)��q�1J�?�.F�`��V�I��l�
1jAv���T��aI���"��pT����Kԑ��L�WW����Ed��ʿ�"�A[�W����a��N�=
~Q{�k�	��)�L;G���A�e-i�b�om�ͯ��~Kp�PL�P��¹)J��?���δ��B�s��vC*+/��p��I��YX�i�8���� ����̻1�D)4I�վ$tnG����}]��j��Ĳq�#�L$�`�T:���$ձT��}�������� ^Z�i4[A���j�0����g�<�w��77�Nc�DcEy�v���̲[�r)��+���ňr�W0��� g��`iL�q�)Y�KZQ��cwm�5%=
���~����85�xp�4�s���vGm�3��K�P���@$_]�����^�K%(�����mb��
�'��ŝ����Ȱ���,|E��Ȩ��qT�jaq[o�_�4R�_L% �44&�ci��:D�5��:��Få��6ā�u��2R���+�z*���ԛ��w�z��ї�ԩ0F���0d���X�M���!������j���ț�t�0NYި��Eu�_��T�:��b��.��=�3e����*�ܵ!"k���x**,��ˇc?/�G�=+.�o�K�    {#5N`�䄋�H�S"yy6ͷ�Y�iJKG����]��c���(ԝh�V�o;�w���32Q���^Y��s����T�k���A�&����89_#m������1����
@p��ώ�>�mE�����6*����%�0��������T����$�>��wg^{m��YAE7�bnt#���Ң�1ё' ß��h�IV�1m���G_?��WE^#,�1�TJ���)�0:jW߸�ο?���@��6���)L��c�q�h��,�M�	�
43�`�.G22�	n�$sO�<t�	o ��X@���紀}��3��4	��u.>wȔ~ꮜ�\Xׅ�y{�UV�G�?8�q��Q�GV���ر� ���c�YY�s=���k6
�k��+�_[���#��2�o�Gｺ�ug=[�c����"�'�� "B���	�guo*0�3A��(���={'�}�]8�`�UU��А<u�?7Q�0/R�G�b�|��%���_b����XTu�`Q(���y�� ���E�4�ک�{㣣3ub���&n����,��/a�Y��/�����tRG��G	�pL1X��M��╃UӾWv"f�YʼF���=�c?�W:|��)�w��D5�m�O2j��'h�Z�L�c!�(�5}��S�������5��Ot���L���:N�P���hI�<��+����l��b=� ��]�!Ϛ#|p��� =���FO,�PT/г��R7#+`�Ҽ���w�����~T����#��\H�Vi�74$$�G�
�R��
�� �����z��:)k|?�Fh���X ��Y�K�� �I���m��Rq���������z�Le!��H�<>_��O�_�#%��e�5����LĤ2����cT��W��2t��9�����9���g]���U;"����n�~����L1Ɂ�ܣ�wS�+;�����yuۙ덋�bT`����8t����]�B�z��QiYU�
�[��'��NҔ~��t�M�Q�v&A`���w ����T[��q��1�벼����nT6�Jc���q�[T�dg��>W]�/�	s����K+����Hp1B�=��}����	J��{>V�	ZB��D�Ʈq���z�㿇|v����H�xXJM #XGp�?���&�s2��/�ag�����p������'Er����c:�k#\*R�I:�e$$!��U�I0/�� m�:#l�g��r���6U�y��&Ү���[���C� �e�]��B�@��jh	���/]���j�ON�E?�_fߖ@��#�/�2i�f���h����
��n�D��q!W�zDJ�O_	�ᷨ:��;��ݴWX��Iߘ��<!vm�d��6:|����_���"}瘣V��s�ۙX�O�C�3�����8AC�"�t��=_�q]x�b���*8g�YPA�����nׄ�|i�la�fM��WeS���5�?#�O�٣�g��]�eh���4+��KC~�rM=��E^����f^jf�>��Qm��\�?�-\��n �cu���beh5nG�=��J"���� ���{[I�z(�oo��-hv[U�$���_I�W����(���t�l��4i4 �I�
���~H�A��r��e��B!�>v�q�>k�b!K�f��~�����m�m��6�a)o�{��PP����p����ߖ3�Q�� }�o�F�$H,�N#~%�� `(�}�&O�yb���o�D�&�]���%m�C��w���On�*��S��"�	�g@�����b4�ؑ�Fd��	�[��[�D��5,�GJ�a/4�s�-x�pz������E$p�T����ǐ��3��0�FK!�n�0�������@?�,g�A	������5\�j�~Ce�V%��=i����9��I���T�?����'E����4h2V�m������K�圜�)K6�Epñ��x
���r$�T�|i�fE!������-��>NP>�݋��|�:C
V��Ir= �Fk���kSv9���jx�4>�B͒�H��7v5��?\ƌ�3����f���z1��ШyA�XoQ��)Tg�uQ���C�٦��(�(s��fx���S�s��S[@�� ˸���juBʿ��V��/z*�I&JUؐ$}x�Yl�w�\��x�v�O�}��,�����J�Q����妎�@�c�c�@-E4Ĕ]wm�W%���36�|e�����Ip�*8���t)�	�&~	~��ھ/#�:<�z3Ly� Ԥ��pp죵E�}ԯ
����\��J]��^�M��U��P���AQ}���N��h`��f��O+� J 	:����Xr�!�n�I�O�����:��߶�����J*�c7{&��Y��^*%1�9��N �[��bF$;�c)��7���T�Z�sR-"�����j�%i���5P��1��ƹI���H����P�� fk�8\�T�@8�� ��	�ia��ҷ�^�I��u��kQ���iXefƙ������~�E� q�ֲ}�A�T�����aV�v�/x���NS.���V���DaK/r��ڼf��2Kw�% �/�H�kv:ٸ�5���ov��n�f��'�l��WT���Q�h�x�]h���8�cxd�!�l=�Q�>k�@)�jU3İ���W��g���Pd�〿� �(3�_(n,$ ��NZ��(_X^�3��������'��G�c	K���j4/[0�Ձ���I˶�7�z^#� =�'�?�ˈ/_�y7��:��}a��ದ�у�8���ݿ��AD&D���*��+�YhZ"�^���g�$T�> ���9�����"*Pf������:˖��e3����Ea����?���������R�� ���/�+nB<�W����7�U�ʙ#�n�0�����cϊH�Lt����+uʝ����s��x<M��!����4�a�|�7~$SVU}ĥ����7���?���*�,5g�w�i-���8)�_���|������*�����TjQk_�(T�nH���,p��v��x%�D���S
�
�?O:�ߒ@3/�X�p7��k��L{I�ˢ��/Y��E����G�[�ƛ71��8�C� )���O ٧j~�V7^%�F��ӣ
_�ʳ�.�WX"w�cΰ��a��%)��L
����vl��U��k[dzH3b�r_}4���V4���u1C��K�I���_w�Q�.B�c�B0x��3��#2. i�y�G0�p�ܜO�h�ݲ�V��� gK2�̟ň��?��`�B����7�ޒ�A g��z��䂙0��\���:���e�C}���o�x~���>�]�H�-v}� �D
O}�%��o4�������{��M���+��b��G2XE��w�>(�;A�	�}m`Y��{L�i$���f������3:���E��#��b&�!~��	�q���l��,��
,ٲV�^=����+3Y��o��Pt��.�M�Zr�=[�t�F����*�����0u�ה������U�1Lʛ��P3���ˠ8W���'�b^d��M�nn�l����`9����,s�ۨ}6Al��à���͟	#m~l�ʸ���±F�{��QxTs�#@IƋ$|��*O�F�^l��w�8���~_�ܦ{H?��Zֆ����%j�FZ՝F �`!_l:�哴���i�.��������J&�c�Q+��� kR��jo��1dvb�yg� ����5V�R}��cTR�,���0�R����_, 4�
�	��}���_i�e]�x��e���~(�'\��
/j��D�
"���=��m՝|�v�}����hoC���t�|�2/�E���4:7�a���mly�W�Mk<�hl�@@. N��1���J>�f%꽽g��y����i�,���| U�� �*H�q�[r*�D���ܿ�샳Ķ�{�8�^�b�#�H�꿦�*Vkx��hI�Aİ��x��t����    @�kM(����?���tQ�h]G7^�C�j��3&+͈�n����f�$�z���V��חu nl�i�[A�p|/SF�Iv�)��������&�X��i?0C�Cf�O�dbH9v%�KG���f�d�f�Ѿf ���D��ʄ��-��o�e;��	�� ��n��J� <��a��S��=&uӰJ���w����+�j�d�Sv,p:�}����4J�u4����7?y/�*��بj��g��j�׻"B9������r��.g�~{yKd#��q����b*����c��x�KFk/#����3}s'�u�_�����	`���ABg�h�=n�C��:���B��ly���*Խ��ʷ�OO����-dE��"������tU�ML�Xu0Ԛ�8�����dʋ����ig~��1n���6[���������P)J���Z�r�@��,���xα��]]�ٗ�l����QZJ�0$�-�qC�\�Xz�6Eؒ�
��&�/6�՗Z>xe/ؠ�{A?kr^��m������/�m����9����~z-����IpBݺO�
��bà-���NC�v�͑���Z�"�#�d�4������2�]q�h��V?gD��| ����g�op��={s���n�q�B���1Ǟ%f�[K(�C���2q[ğu�:֓�D���m�	;���(U|֝K0���3�&N�M��>^ٝC��5۾l&R��++�v�@���7�,Ws�5�Mñe�dљ��2J�2A��ln��y=��>r(���#��k]�����o�.�'6#��6���	���#0�ϲL�a�F�i�*�F��GP6�n�����I�itE����Y$��G�NZ��_/��q����_꜋x�4�Ue�̀v?ȴ�%L����m�'+f�u����)i?	�]	��v{me!|Mp')z�%������������!�����d�a	���eE�wj�MOǂ�Wq�|�a��: ����`�S�t��G#�lGf����� �L踂�jc��6��k�`�����Ʈ�K]��Ն_ث�\�R�N#�Zst�]�nib��+R�){���(��!�K�x��p�13ئ��pt��M%��ǅ�b���8K�@�������5���ʢѠ�d���㣻�f�9J� ��!�Z�k���dYA":"�E�b�"�%�Ũ���Rk9%�,�g�/f�ܗ��`�^/��H��UB,�aEmV�W���ϴ	�X@��>(|
� �6~�DO�����(xChEVe��z{�c~����3Fw�>���%�����粇��rN�P?�74�_	��%$QthPºhOP��V�F�db`X�\�w�}�%*r�X����9�ݛD~�b?����D�i�Zi�|�ۥ�X��E�;� Z�I}�h"�LG������LEJ�UP���s�Mf(o��`���a0��������Y|M�_��/?+2��[N0�4I�d\2O*~gfPo%�L��������5T�H��`!a�v��vЊѕ�X ����t��ƴ]��I�a"�'Zd�p�߱r �X��!ˋ����, p��\���g�(hՔ�����o�rqm�[���+r�{��s)�Xt��0�:�6��g�|j]
?��l��x��%�}]���=���:��#�to�UGU�^�o0c�Ҵ���yh�bJ�͝�H�^�ñS�} ��yV.�g�uӰR/ª�~����5l~�D�/K>����FV�I�3�n���ޚ�ߦ��zW��uY�����)��A��CB|��M,�����]=ކKHBg2wA����{i�ҥ�%Y�*&���<A]��\\��h���$ؤ�Rw-H�6��i�4�.�
:v� >�S`�祃����F���_8��%C��Y�G%�n�8Gt��Ѓ@��z���\
�a�y]\θqI̤�f�
��Y������ߋ��q
o�c�4�X/p=����k��2W����=�\
��8Q�@ٺ��S.���$ܮ�mEb�OĨ�%xVi5�}>�^�Ź5g�U�y�6�m�����Gz@�9A�s�o{jb�ls��ڌ".��`�]�j���@~���e��6��M�x:�TMt�6A�\}�*uph]m�T�fJ�%�xB/�f#�;F/� �f����PtxD�v�O��ת�hd�x���J-��8H' 0�xnJ�by�ójXm;L�RɁ��������B?�U"��L������^G!hlM���v�5�σ�N3e-n�@��������%=c��Ly�5��dh���J��ׇ鄨��*�x�r˹u�#���х�"����N�*��^��%��(��4x��C�+P͕j�^+ۋ�c-Kvl_��w�u�Z������-K�9��]����D�LP�f���+#P(Y���,�g�Ȝ}�A�B��R����F���WH��*���?��U��V�����a}����V�&B�t&�t����?�Q�(H�qM��^�5LXU�oJ�
��Oy&Ӳfʿ40-�o&TiĲr{����|�$�lv􈱯���� P�Fb�Z`� �o�R��f�O���W8����]�bw�_s�io�������'7T�������
eK��o}��T'���,�r��{1�^t�����-d��ٿ��ܲ!�Vo��Á��A1�J����Eހp��;���y�;����iF0�ִ�?���r��n�$.%��O�\���b�A�=�����FD��^<������N�����4�97ǖ��.����"d�gH�k��-�j�P��>��fu[(���|��@����ş�4Q�p�g�N�@F�z.�.�ΐD���B��,�o�
=�n�.�j��96|��ݤ��>T,�0�}��k2���-ғ��I@�穉��2ݾ0Ƣ�i0-���O��Юn�tO�cfPʙ�e�ڕ\�2��Z�!���:<Jn�Vh��u�Z_��1"go��]/ Ѷ�A�'�u�/�|��08	o�Y�K�(΁ς>���!�
y�ϕ�A&�_�h�js@ҙޠ���6r)Jh+yf�ό��h��=��3S^b���	���ړs��Qz�lE�������ce��&�_� Z����X�#k�ޞ[�L<�1���t\X�-?����#@f9>,;S�5fڋZ����)�Z��.��S/{M�� <)[�L9d�k�<�Q^�`�b'w�h]5�� .]a�7!,H��o]���.֊��ZΧ��t�!�+8_}�	��l���?k��Z�d^�^S2��
?5�8��31�!�����S�n��d���ӈ鄿�!G��μ����<���\{/���b�@�Ia��{rP
-�]����M��8�ێ��Jv�[t�P�HY��>���_���6 /��I���`f,QGߢ��C��g�h���Ԥ����4S�����������&j8�Q�l��9��g��%`�~��n�?Ha���&�E�������o�8��~�)<����TIx��	q5����1��q�����&���$��D��*Jn��~J'��t���)��BW�6�ʎ]"�V	z�Ə����gÍ�y��U�<��:�u[���|�>�V�nx��AI4���{}�*��}��(�ʘ�йpҗԀ܄������~�=�{�C�٫7�T��/�21hA�F�P|c���bv��f�7�F"`��=��A:�`�d(~S_Rn���>��@�&�V�$�+��˕ȵ���$�0��SOo�A_���H��۷�wjk��&���y�+#���6<^��<rǨ���>BD�K�����|v2J]� �U�zH�(��A�/e̢l;�
挤�֧D��yN���y2w���;Z�S�Ѥ'%��1����a�H)Ϊ<������ ٫��'5z�?-��{b��jܿsHs�!��w<W��:���̚[��V��yD*(��q�g~�^U��ɞ)",tr��޷�؍:��ba�n�l�,0o�]��A<�c
��a2p��شbm<�B�m�u��vY���    ̝6$xD�}G18S|ami��V��;�J��q��n��3�[Z�+O߿�XGc��FJ.�t�o��OS6ѳMw�5�rU�ȶu����>Vʀ���y{7�LB@9-
���XZ!���u϶�gt��o4�n]��W��T&�"S��qF,��u�i��U�$x����e�����ba|��y7!�h�(��#�H���B�+X���.,"��I�9;��lo'�2>��=�iҥv\*�|v,	�D�-�C�ݙ&��t�<�;�Ձ`���m�k{����S2��'��O�h��l�����lȐ
�k%�g�4���gg9��=��g�9��)�o�RQx�g��$���Kv�(\͎ASR��3t'>�F��U�$ݯ�'}+�?��E��	ӷ�)W���>3)�����#;����0ޯ��%jԱ>^���υت���y��&-a,�-�F1�  nB��2��?�_�	����|�j!����-��*�9�H���rq�%���&�W����|/��C����އpt3Z�Æ�l�<��߈�pat����V���U�ςR� R�NQ�	�+2:��%��Y{�h��Ӫg���~����R��X"B�e�0�|�^$�fY��e���L�O���͚�x���L����w�,ٍ����y�'�l�5dG� ��[ ��$����W����V5��ܤ���ꫝ��"A�	�	ѹ����V÷ ���eܣ��
?q������%��GcL�C����� 	;~[m�~6����G��[g�`��s��H#�W*��2m�s*�c�����^	��T�`̑�����Sd���ϺQ��'s�]�M��Ik���j�C�כ�$F!�Ĺٝ�v��E�)���o��.�#�z�_�\[��jmҿ6W<��0:D���Yg�xrX ���s��o�n��v��@���{���Ь��d���L`�WV�qcqk��a�W�b+o5�[�c^��]���)��{���Ϧ��-�v�Dz
tzu��?����!����;�D��?ªA>��K��0o��Ҳ��0��!	�yS��Cx��r��Lb�Ml���]s�|KS���3��|�^�6���w�X�l\�J�~�ĸ3bf�r��'��vHR���@L�qQl��7Op��RB�y�B����M3�@��Pj��9X
����4wlo�d�=����`ŷV��v��f�[6�xp�s��K��~Y�����ɰ��_�X]%)�W-��j�ں����B7���mp�|�˴�����\`��R���,�Wy*�G#�8���������\RcHm)��-��gJg��^�ͺ��BI�o��\��>��*z�)R�@h�/�U�𐤋5�(�ɇ|`�oM��?���ח�QԒ�CR�|�ȏs�[)�
����^���̙�������L�I���Xd!� Q,��
�5h�v�!�'�;U�w����9Ӝ�5�5`_='����|���7Հe'�'������ }B�#���!i��k�-��@�
�&ԇ(W��T�+�����)t^ע����wxI�=���G��l�J�ǔPeH߉c��]�J��Gk�hH,�1��C�t7,�i�ɮ|mJ y�@���c�XSbl�Mv.�T�'CK���!�૝��A��+�C)/d� ��������&����	wہ���� s8���st<�Psʗ�DV��J�ڊ���`v�h4���,!i!�A\b�O
�&�QAJI�kUD����;��/+�90W����{�+�7���"�:r,C���'��M�'v�7CB�?���j%
3�u��'!�����Q�d�m�0�%�+%&�دb��G�kq2������;
Lb��"p=Z�����!�k�Pe<��ew�"NxY�֚o�)=hIl����E�h�E��;�=kY ��ۖZl؂�Kg�N����g�[��'=��Wļ�'j�N ۯ�ǳ��$��} �+\�	��t��d�����m7T���-�q�vǥ����Y��A!�Q?�;�`b��	�y��1��e�����Ul�z��=z��;8�Ͼ�At^T!�>�&E$�R97xJ���c,.���\�z�U��f����*���䩳��,�ݯ�� �jq��e4���Z~�Za7��k5/b��wI8T�p �t�"F����&�&~�P��f��Z:*�ǨE����������[��@��\m�'Ue��v��ȫ�z����`Ʌ{�V�~=G{��=/@�i)��$`7R�'�-~��!�fg\	#NM.�ǹ"���t���%��:El�`j�!�S����v��I4�>�x�^�M>��ׂ��飦ة���xv���A����N4Ɯt^PЏ�Ը��G,5��h��P�۫LV$^6E2<��}G��x���S�%_Fqz(���}fg*{%#�:>\K�a1�#����|V����G���˖�K1���Odg���<��ǲl�V-��_�7�� ք@�ɉ`^
x:��ϭ�H��6����~5i��I�!�,��`�5b�U����Ű���[!�|Ӭ<jZͱJeK����T��q���4�G���&g���.BHE܅�ֿ6k�� ���� �S���+����	����j���ov��@�q�c�d��/fܚ�gvX=���쑊��`��'F����B���ҢݤhW�R��8�g��o���ٷO��֍ŉ__��5�E<K��9�e��T	B���0�i11ϟlo�'I^5�,�Rʐ[�*����v0)꣯�cD�1���}L����P(�-�F�����<��)���6t`�\i��ݓs/�,�巆���3t���}AQqNM��H������1΅Ȼ!B��d���!?����%��U�Vg�f���d�n~?Y]ǩ�=�3�Gˇچ��$I���?�E����D�h�`�@�>?w�N=�h��O$# 7V�'��R�A����o�:N�u�u�קJ��IK�b6jƳt���j�zeє讟]��+�����~
��t��G�Qs���$&|f������-�-�&T��x�����#>�:~ձ)�q^��������R��6�"�p�)�|Erc�$$�mPh_U���>JP(ć�[*@A�_�DwGj���M<A��Ѧ�8$yV�Lk$��^�$U*.	*��S���h����C˓k�M~� �ZTL�/1u�1�*:�� '�Y�T�V�8lͥ��¦e��t���g�I�����I�LKDg"���Ga�,� ͫ��)�ϋ���[	&L���	Y�Wg�%�E�M�t;��f��cw�b�Ѭ҅;z���l'�/���/җx��`e"���.�P~ ���-+y�)jUX��B����0��}^����$��> d �	�)�M�h�w��"kk〉����C�M�
Ab�/�0��|5gk\g�WU"�+���4���S_94�S�37ռ���p��ۖ�3퍈���Th[���I@2P/KV���t�-�����(@uF��?_������9{�����w�ֻ(��Q0������%UD{=c�����g�.�W����p��Z+
�f\J���:��'���9_A�O�,��א������L�$��6e��u�LP����<�z��$h��NK�.	5j�wrLJ
��'��{�N*{u0xo��v6e
V�R*C��BjT,�M]!|�`CO���YV�V�����F}>#��ǹK�Q3Nم���7�4��a�Z����7v�#]��;m�)���6;��n�w��<q��Xǘ������#o�/��)ѱO�۪}�U�k5R�2{��g&�_�]�=�G/ A]�)�VD~;������<]�݌�}}{�9�z���Irh�[ObQ�O�	�t�?Zgŗ.9Z�#�1�Ԫ,K��`_�B�i�~{���O�x�Ũ8��^�{�87�,�~��͆8��ЉXM��kAY�^}e������,��bE��������	ʮ����X��-5�ba����TӋ��.Θ�)�[��Y;_    �IG���>�{B$�8�u:���Ь�m�ߝFV��
M�:N�r�w�[O���ʓF���}�1�q�<��h:x���q�cC2�\�L|	�vQc�;:���`��8Y��W3?�D�@U� ��{mry0
;�{^L��@̰��eVl]M���������mzӥtX��Thm[2��Q�l�� �3g��L��f������͈��b��/��ڮ��|����D�3�3@��.$�)�4`�}pd|L9�΢Q9���	��,I�����Z�0O�^����:
0�F`���<vU-��քf�	|����$�`^���~0���9Q@B����;�_��U4�8��y7���۔��Ч��''<�b?i�6R�g췪Y��jK)�mR���Aѯ�N)Qk!ك� �"t�P�g��6����˙3���mPW��)A�)��ҵ�3�e`�'��f�si��=�C�Bd�t��A�*�z�A��'�����'y|�M�+���:MV�[��Z��E1�^@D;��[�;@���d#b]������S����:�״�1	�I��3[���������wKKj7" [A@y{�Ԣ���E���'h�3��Gŀ��5!""j��M63^�	Nj��z}�f�����7��|���Ij�^���lZ�-��.��<����7;�bi��ɴ������\����Ű{+'�Q+wvd�-9B��-MY����%V��������� BhH�����Z�n�8QNZ�ц��Ŋ�|̌�7�B&��BT{pۜ"�P�tmi�m���.9�S�~^����j��7�>̌�x�W���$-���)<�vkjܗ��ʻ�@~�����TՂ�܎��y����6�`�y�+΁�N�1t���)W�.�7;���]�W]ˡ-OK�P�ڞ�PJdN��IZ���ǒ�z�^��>�<�K&�c�0C��8�1\��K���4=���z�,��EԐ�c[�*�;p7^&D�����{�8f�[�q4?�@\���](Gx4��,
��[��[2�ſ�
�[�SX�Cb&IN>�N��$�^��*^�=��%	!�	���y�J]�#R6����.֤�9����F�E�)k]�`/��e��W���g���&�D�zC37̢�4Yq�J��F�������S����䶶�~�!q�F"[��@
D�-�՗��ؘ�o���t�O@w�h#xn��g�
����eK]8"�>��<��$��L�=c�9!����ˊ!In�A���GI�����J��k_ҧ�cj�:ƾp��~)�XA�b
E�a�)��?�*���f?�&V��2��@>��u�жm��x"����c@� ~�G��g��~�a%"T���~\��ʿ�/B��;���|���Z���p�=��q�����yj_�ԟ�,���иfU4q�Ҿ��Z��`W,r(�J�e���"<2��"��Ë��@�W�t��j�����\x�=�8Y4�ug��^vH�q����QǒX���@���Xu���RA~��3�W[�xz�		��M�CTu���O0�U��|5˸P}���J��]���<�(荂��ŝ��_�SD�׺��@��E�T��'���v�w,��?��ԟb��F)���@���<�<�	ѱ-N7l�gt�xO����\2'&E�G��0P�W��Ȇ`lI�I;N��"y"��b��|詗��ޑdQ�h��{�z�h�3�$��p�$e����j�$�**�(���� j�W2�;��K�X�o[��4���C����A��+>5]��[C 4��;�0bƉ�	�yc���y�ƍTܺ�a&o6kЈ��;בh�'��t8u}��aĈqxe��1M��~(e�~��Eb���v�>�wʆ���V���֓�Q;8�V�.���}��8��D���cwz��ӦD��X�V@II�L	�������G�m�����<jt�E�\=����	��Taz{��ck��T��B�.��b1����VM�T�CAZF��Ѧ՗�V�r�,�a;Nh��]��9K�9�����"�h"��V֗Az� N��|���|�A�Y�F5�q��P`��m�/˦���6m���'���]KJ�Z]�3s��(�����c�F���#rY{�j<k�t�
&���iv�HY�~�1fHn�'Gx^!n����,�����q�7�]m����ۏB-uB<W�4vh��f���k�'o,�a�V�������Ǿ�|ݸAKs?����P�'�o<fRU4i�&o�Ū���NOS�oNt�֒�\�����^�a����}�m*��lV:P�PҼV�>�n�����1G��D�"��"��_'�p�(X)P�	���[�j:�̾��VË�%�|���j���1�lO+svoZ���;���b��ߑ�[zF�8��Dp���Х���B���siM�����T7��7AתV�F<$<�X�#�����Ѥ���I�n'�u����T�$˚�<<���֚�$�3E1���.������/���(wZj��hA%����9wl�0@��?:FU����{��;��Q���Y�ϒ�@��<G��`��&iέ��]̨dҜ����a��
�!�����)��9c�gl���;)O�U?����w��`��6�?����D�؊�������0i/z`>^�
��Z+f�� ��� �?�<�d �c�rC��7�K5�<���p���FԶ�GJz��Rن��Yv�q�Z�26}�R&����3�W6�w5G�!�8Ю�j<�K��|2([�N�����}���"�mkb{�4��\��vp���_laٱֿ��%��G�KYt;e���g�nXL ��w������If�ed�� *��F������ފ�|cs\�W�l[�.�F�v�L����F�E���f�ֺ6F�{49΅M���[���	R��+z:��ޓȖi�C�9��1Tt`e�J6B4$�ӻ�x��G��Z����;Ӏ7���{�w��0R��V%#�h���}��s�/ˬ��`�#���!��]��E����I�b*��m�H�����I]��ZnC��	<2['��Yqh��Z �0IdW�8"�xYB~���Z�5&h�����$���TKͥ�TMzr�+�~?�|���B�R-�>|�賻(^�K�W��犁�f��ـ�4k7F�.v �����Qr���-izDŗ��ngzIQ�E�e����A������h��aꚸ��9l�{$�Ť���%��r\1I� �^��ݵ֞�8�Ep�mM�/τ)��Y�X:�%W�-�~��#��a����}�S�":z S�w�JTE��I�EfCz�7<o�>�=��ީ��+^(��aA�el3�%���!M��hS�C���-|��-�o��.���>��/ҕ��wW�u�2��|Z[��~;����F4�����=T$ u��5z�����~xD':�N�4h�V����o]�
�.�5�b����X\�Jhg�@!�]!8՗���'�T\>7��YU0��y�p����bؿ�o/b����}���ؕ�CnW����j��e�?q L�7�� ��k�kF��|x\���5�U/���|$��Zљ$�����U�3O��f#f:e�y-2#ΰ���m�������a�~��ٖ�9���:S	Q�^�<`z�Z�1�4�7g����6Uy���hRڞ�'�l�Iv�'�|1TV%".`����q���o�%>�.��1T������c�%:�N���a�C~Cf�A�E�� /&t93H�J�d�r蓷��񐔄�8W�	�QT�t���aN@��S�!
2�Ox�Q�0sP��j�fbpD�E���g�'�yJ�\8�҉m�M�8ݠ�<vm8��ƿ��%kn̮�pF�S�N�Î!0�c�#0O`S/���Ѭ��49Q��p����Gy��{+�q�C��{���!C��1Z�/	J�����O�|���qs��D� ~�#o��\RE�L�ʱ��� M��j�9vԾ~�)(�zѣ`Mj���"�Q o��.�T4�hKv��)U��0��    h�9_�h)�rfsbG��������Xzk ����B&E!3?V_s ����#3Q�X��L�a��<
�'�S��{�����a�@4��ᰡ�)+S�i��{� ���)��x�x�=�||��dWe ��5bg��%I#��2j���|�V7%��E.B��3NO����/�߰P�5´��5%C��{ԍT��Iiz���p�Aᑫ|
J2Ǯ�::�k�T��pԊ���'I��Q}er*����A�z�?���:�%.?�^;���W�u�Jt.�@ջ�v���Y�E�Ԝz��]�r/�_Q:�ҵ�W�`�Ou�ʵ�O��
�cInu&�Lg&��v�Z���{�1p.s�x%��D�nv �"҄��!:�D�9�s&��?�P fj��<��/�y���I?���N���aO��vW�ʇR���ަù��L���t��R�*C.JiV2�G�]����|5�o�i��O�E���R�x_�VEn��R���*e���i1kg0H��Y��C�[���W�[����WIkH��)���[s�6���xC�dW�s-I�0�����9C��Y���XSw��@S�N"$��_�֊Ń�S%��qD:E�z�0t�� >������in���g/�藝��=�fX�Y�~B�:�~ީIS��'���%U-'��/�J1s/�i2�}ʈd���gf�C�2(?�̐i�)���A@�Ǔ4���&����ڽ��P �A ��Ը�m'��k��{<�)��$��ʥ�"��VK�L���i��La���u۞)ώ��B�~�o|U�V\D�%�$�e:�����	m0�b�%����?�j���j��vs��Mؒ��bH��Rz�^���Tԯڡ:�NN��T^�QaD�"����ʘV�8�*;��i��	�*±��z`A�'2��A�_2��fyA���'�@}�[6�$�p���]�*I>�K�8�f�kX)Ն3�����}�e&O�r�x�5��L\_L^V�)bAz����MEN���a7�4�ҫ6�o}2!�A��x^���G�!6m��Oq|�,w����(��7�Yl�;Aĵ/3A��� ��q��v���O�z�-�o���Ӟ�u�QT��7���B�Id|��4�j��{|�zӚ�v;�=�u��ţ���W������r/��wn���bZ@B=�=h�p��e�?�U+h��J��P��Q`�n�N�;�P��D�%%
��D�e	ǖ$ ���Z��r���s��f��g[h#�t�Cq��L4Z?Fw|��R� B,���U���jo|�����S�@\�/�@��lN�hL2"�]*Q�����r�n�3=�<U_S���y'P	꘩���$� �y-���C�h�_��W���:'���>ʊb�������5�:}&7��f7��+���!*|>X���j�o%y��:š�Q�f���X�#�n�ݧ�C����9�L~�����ԶD�C��;j#��#=>؊%"o�G�]��$�+I�J�b.\�Ì<4���p�]Qq	���M*Ү�h��*�!���1�Bb
|��v�̥06��͜&����?�)&�WA���1���|#�T���V�'�闌� *D
��O9���{Fe�Xf���j&� �;���
�nQ�Wq���w��YnX�}��yunƢ$A3%Q�~b ~�@�`�?(�?$�����ǉ�4N�w���ɧT�?��[[5h�H�w����=�!�^��]��x��s���R�8:Ϩ����;����Z�gIʄ���ɂ<z�U���L��Ҝ�&�d��1̓���z O@'�p�VH�b���v������r<�L���6�~| ��݈K�M%���<@�Ҏ�p�i���u�iP�K'��	��$T��ߧL���'�VP#}}����$9�|n���M�:���-٘���������?�����~�z��Q�Ξ��K�CГ�OH#�gU��}��9g/�sA���~z� ���(H��^�Cy1���H^V� /�0L���,��̗�Wj�9�/�%��C>��P�RQ3���'�6BDF�_���uJ�ܒ�"�9�|!2�+=- �t�[�+o�_���ӔNI/�	���]}�p �.�ts���#��ӭ0O��~�ψR�z76X�4����ԇ�*>��!(%G���M�	������[W訄��J5U*�S�b� ��ߔ��5��*�"A3���o��w`B�p<��h���3�F�ߖ�������o��HES�`@�����p�������A���擗R٭� �
�<�o�Ю�`�Kw��f��Lk�����yJ����L�+���Zij9�����"dE|H�͘r�eGglhcDbl�ϗ�'zkהIC�._����(uJ���v��@�o��0�I�}�OG��i}Q]p �=ݏ��[Ѧ!������[xG��w�}��Y�'���9�l3�h#�r����0����u6 ���D�>���#'@W~�"���A7btD�P��I@w�o��Ed<��˘_���x�"q���Z:���I늛�QE�Pz�[݋r�c[\Û���H���Ͻ��A������z�\�%�����78��T��~ءl[c�������`J�V$/�ϕ�d[,�i7(	�kV���~�� �'CX�aLPA�c5�J`<W�/�1�<�)�q{5Zڃ�0���j�6c�9����ǎ7��j�qA�w��y��Mq�v���ﶨ�G�p��h�����s���^'��=�zK�\�.�����d{�M�M��s+���J�IM�+=IUj[��h,G��?�=�kb�p�H��2\ι�m;�}s�N4����mA	:�m�MF#��I]�p��o�Fu���7���nt-Z���)�l/6F�&�gBRz�p���T�E�b���z��� �P�@�f=�&
�8l�عC0���خ���q�4�Z���* 6̇V��$�/��+��ɟ��-�>���X|�A��T�1�B�7�����N��e57ޯ��;�}B���?64�D�C�w�\yl�Y���G��J7"?N��Cc�����袔�<�7�=5A�0�A�'[/���ir��g@a��H]S�x�Q��u �]�e��啓\�?�"�b��_�O..?�+��L�g�=w#�����qp�M����rm�fxJ<����pn�l�	��x��Ϣp~� �%M$����ÝȻ��7;��%V^�۽�f�Ϻ�M.Cr�#ᝧ�o@�y�(��ŉ�,�t2���0��#������Rg|�Hm>a��T�D��,zz-)�����]ɀ�^���K��"LD�B�p7��7��c��!���ᤈsq��#�$GcK~-�z�3�����^�o�v�'�<<�6��;�7ֺ��WԸN�Yv���Vh�t��?n�B�(IWBQ]�'	����ou>�0�m7�������d/楹5p��z��3�Qq����� 15-�v�Y���	�=�JZ��$/3��n���;�r����	�R���*�`l�u}@H+���5qa�FH�̦�����&G�FsC&����N*b�q�O���n�EO���ȉ��,c�̟���啰�#��ʧ�O���H�~:���",Of_�Sԗ��kPh{�p��(��tׇ-�L85]�F�Z�7���:��ԈO{����*7A��-s��p�Ae��L���Y�KQ��:=f����"�6���R�{z�1����8����!:L��)�͡@�m~��";�e��1]n��6<����8}��'�7TG�LB�E�e��RzM����_���^Y$��o0g��R�JOoXp�{3�c�Х�3](�H�\��~�n:p��Q�w0�\I���#,ur��0DYQ���z��Ǝ��w�UI���xo�~%,��Sq�" �
x���`	:ʟ����j1 ��~Q���oǁ�q�.pM��N@��!1�!gT�+�U��< ?3k�`P9�=�cHKp;zJ.����.2�e�%� ۴����j\���    �A�:��͒J3�g�]Ygr�:UpL��g���_*(��u:|\%�[%��]iz���iQ}�1�F�4c~�����QP�G���*�ÜױǹY2����k�m���+�R�t��k�J���A��:�_W���ڛ-��-���i_���q�U��.�z�����`�/4�w��xl�o�i����BB!�j�|�vo�NiB����y�I1#$�=�R̺o|���WJ�Gq�B����ցBS���EW*��J�_��h���[��,��[�U	\�8��B�_��o�a�}��c��0=����K�̰���>���k�n���̎G�
���Y�(�uA0*����_ֈ[ՙw���:�9���aW�z��?/;\?�,���NQiJfQP2��8\��מ)��"H�.ŋQ����1�PC���/ًاC�۟c.�ְdm_����\2��Nd�?�jÝq+Q���*J��..[�Ui�����"�4A���^�s�D�2T��]w
�g��G[�!��7���o��7���Q�����Q~��[�I~Ų��q�=��|�G^$�Q;l��f_�|//VR*~�DN)'��Vuw+�O�
@�����G�M�>,tqds�<A��=�����<�C�B3���5G]Ui�	�*Li9��Y��t�Z�Ե���}�3 +:��,��P��+:��l�>E����t�P#~�ǰey�H���vM�g���F����O�鉘�]����㩞�B#��G4��DX��ܑ���PS����M%h~�:�	=����Cɮ����/.�1�rIaڀE�䪅��X�< K�*]�ϳ��ј:F�΂V @����~B�w�&�w-�D�ͺ��8V�߶ �{�C��N<����	Xe�������<0Cm�г5ݻ0`H&�*��SGL�� a�Y�6�~OB�RI_�O�X��VP�ф�m� �QXɗq@����_��?VJzE�S���͵Gh���y`��c�L<4�� ����!^A��i>¾�0.��f%]j��^��se�r�G��|���y�6]P[M�j�����Č/�˅���TW�\O�Q0��Q��m�W^�nj�ݙ(�6�w_c�'�!OE*�@�Z_lQ�G���_�Y�>��Z���>�W�����r�}�F�p���>6�]���7k�6&��D��>ۭ	��8F'�p/����qKP����� �;�77��1��t��]>��P;U(��Dl�v�5��֬��r�$ǐ.(�`�rg,�>ou^ �:��r����D@�ű6IV#(�~������u�طc�3i�蓢DF�T�R�1�"@�>	��s�;�e�
:�M�ߪ}'�M�8ʌ��\���'a���Ȑ���ğj[�|ӠJ�a��ed�ׅ��ԫ���G&��M���1�f|�3��w�OKG��ښ�83�t&�+N�.$R���;�����}\޶S�j��i��6=�����L�N���Y����$�b�A��)	����[wwV���J� ��З���?$���R~�U���r�G�	��	0��i�"T��w�����B��|�f��v�)�x �a��Q����t|T���E��REAp'� ^x)@���WK�JϿ��]=���8~��k}[�܅/).>ؙ)G����aS����$HIo��_2�p�[V���J���eoK`o�����zyQڻ��A�&L�ۭ��/ygnF$�"�%�y�#-kg
��xP�O�����m�58)��Ex��qUbe�EE�zOi���)��+FH�z �u^�x���+FF��l|�sŰ/-��iz��[��8u�����Y.u�4O��7y��FIe	��,_˴�%���8C�47�I�u��:�[[E�$}�-�����-����{mz?JY����G!���0��bMW`*&S��p,�X:� �[�0��bQ��f�l�*Ɗߗ!׌z-��Ubw�#��:I!F;R͹�fs�E��<�w���a������ ̳�j�5 �Ҽ�^� Z�`��q����r��"�L�=� O�8z�;�/w1���t�ĘS���p���X��=Tq��2g�E�շQ[U��,>S��H5� ~mEm��l<Y~�f�g�H�
^ZUZ��~����W���)t3�U���n�lN�~�v�u��άs������J� ��!��9���[^u�����l��AQ�1�A�*b�(�^cQ�Zt>3�#S��bL��u�� ~��.��u���� �C���.�!B�T��@F@�!���'~�J��XM�=�?#�2�I��&�ս���f���t�]�O�Y���b��~_Ye�����j�Cl�&�kFN��y�r.��w[(z����;;�ܲ���W�.��qˁ��c���l��1��K�4�ɞl�aؙ��|W��P����'�[��Kp4.�uA��|ȝ)�%㭙�m�; ^��T���~Fg�����_�DBoK�T�ņ}�Ϡ��q=P�r�<D�`ڳ� F2���]f|��\�%~�@<��4�wv�ѽH�X�����ȱYU��.����1s��@�f��c;���y	�-���Э�IJ-��$�:M�&��`�aM��-�>̊,-�Ipn���;��0GQV��3������f,��z�Xw�EL}f��xV�_��Q-�;vᷨ�b���N�9���
�y}�yH�K�lCD��ʲPH�+0�H����G�`��x��@���-��_��ӂ�s�.1�ٳ+H������"�T^�&�ϫ�7܁�
sb|?��7.��'�����	�Er}�+��|��Y+��	A�y�/#������92ǁ:5�� �i*�`��\�v�GH�(�)�k��zb�zM}1CƦU���`�m���L��}�:P�ܿ�-?zM�$���d��ߤV�kL��(DC�y�Wx�	D���b���?�_E ��DVh@�A�Nh�YP�\W��4���=ȧ�ϊb�ayX�i���oZ*�S�p+�[@���ܥ$˥;Sg����9Vf9-�\kDtt ��M{��N��c7�}�ʝ�6�?�<J��@�|8���W�n��غ=.�9�f>��h;'��A� /]��y~��5�~xw��' �C}�6�e⧰�A�%����XS��+����;�@&�'`;Ww<p�	i��exH�<�\y�;ϱ��CG?h���<n[��/;k,奟��N^��{�!��N�y���5-���� dQQ;��)���Y?_�u6� D���T<��{���+]P$3H�5�-��|�\'�~��j��ד��o�G�#X�պ�8[�c�ڭ4dD��z�L���u.���NF���pQ{s�ڸ,AU��������NR ���J�7Z�"��>�pfe�z�|>y/��5]��Dm�a#�uZJ�O����&f�8o�'Y�4s1�/�wv�^��S���5���G�a @�>�o@�����|�]�T��L�;R���ɵ1y�����!8㵜_fsJ���M��#���@�0���b�F�D�4-l��.�h�_�a�@�4)'���5B�w)@�n-7s�FtW�����[do�,�=4 ��Dy��5&�ཚe���ĺ ����T�';�\���v�:�H+��e�^G�x����,�f���/��r͸w�m������AZ[(�&Ǿs�
�,��	{+$�~�LeN��]��ɟ��	lY���8r�@�v���Ӡ���/Ֆ��2��1y�_5���	��p�����_#0������ݢ�vٱњw{���\���P���?4���uP���|c?�����M�W�1*\R�HK�LH�?�0�E=�O�N�̪�&�~[�~���(�Q(b>�;�(��%Fu6$kY����*E|��Bi��q�W�;��IZ�\��/��jHz�l�����^�f�R0n%TeϪT�	�Q�w>�𤵆����9���#5,�0}��k����-�Kt�M�1�{ksR��H�UG&�K�-����><��x� 8����v�ZƷV�4(�J%~�)ш    �6�Ϊ_�|:F*�]����������h��SC��u�}�N�Q�@Ѽz�&�'�8�	N�K�U5�>
ʁ,�|\�yD�$5���k��f#��_�'3a�#�Db�P��F�sNB��Ϊ�.�Y�T�ཐ5V��ܼSLJn�Y�X[���n�Vbʐ�z��0�����Q�3R�ϸ���0����!w/Q& ���Gc����e��=�Z���ۖ ����ӣ?G��y���.����B]�x�f�5�	Ʃ��ϿCLa[�i��Yb�\NJF?�t�mض|�w���Rr�i$�\@.	�4����R@�<���xʉ�uKl���g���x��2�w�8˷�J[��Ha���]P��S�B���Cӊ#ҙH'f�'�$o��-��}@tKG62���7RI��~׾�q����<�����5�]m����2��֍�Q��ߠ�se��X���!���M_6�&uiptA�fʋ�D�<p���7A���K+��W�&�J����Q~~"2f�24���z(�#w�'X�kD�����f9X|�׵���>�x��ڱ_��v�Ti���T6��
*��X몌�f��v����X�"�<��嚙�3vh*P��+5O��$H�tm�Um���;U���/��h?O�����,�(�KN+��ڪ�h�/���T{����7)}����۝/yt�(��T�q��y�� �@s-�;l�qg�%��d�ds����ǰ��y�@��DΏ�l_̵/3�±�k��j�x�mh/d��h��k�������p�4�$�ľf�d�|o��H��>�Y��+�� �ڪt�0�i����}{D��g��!k�x��ۢ*@o�� %���u�=dR��}-��cU�Eb��?5p�H�:4�gSSh"��O�w��B�&�����l�������
����^�.��ѳ�����G�s����2H���0tW}�z(�gľxWx	��ذ7EI1�ɧ���mB��~꫋���o.���pų�>�u'�=��p�4VvvL#�Jx�6'ul�k�[����׻Q޴Z��ugME0��M��P/�;���1�XΨ��Ҽ�'J�9+���>'{S��X���Y�� �o׉c����Έ&+&�K�¾��#�'�9 Y�kGIP}��6Z��OK�g-W^��� �!����eȍ³����7�rx��H�Q��<�t���RG����@a'�����f��Cl/�@�-�&ֽ���A�ϝ�`pt=X���#f��O�)��E�C�@k�|����D��oⵚ��qʈF��Cz�����������tia�YYV:$h��}ty1�����02��xW�,���?�����/�M���������S-��c&[�#�=���c����V?)}gZwo�qI�m�Ǎ�*/��!z�m{���܇��,X���+\kߨ� �w�f����>W`$��ܿ����s����"��-����`�wT��v�d}o��抈c"tv'Gǒ������/.��
��J��h�_�'��O����Q�S��G8�(㈝�EO���s�G)��ei������~t�@@�q	��������Bg��V�M3����q`˷�ԉ��W{Gw�7k��g;�?>8j ��W5�x	ӿ=��Z��7���nUݻ�����@*��ה꜑�T=��O[y�GAᄝ��1�(�����Z{��~
V����p3� ~��_����4�߭]X��oz�{Y�W
�؝;��vk���q�^m>�Iv���ۀ���u�SQ"����|կ;�^�7��9&ƌ�h~��>�e��d'#���K�v+��E�u�t�G�v��� ��\vc����i���m1�cc��|$�016�!�T��thJ*D<�u��t0x`��J�W*>²�6����B-i�t�Tax0�-�Ry�)(4H���g�	�����:	����}1�yBY����a��a%[љ:7���@�ae����P+e�nW%�^��o&W�"����:�(��H�����d;��U��?��;�D���Z'�!x�(p����Ǻb̖���!�ED�B�.b"���볰!FD������7I�ڕY�p�@���ůC#	o�'�*���T��H��͸~r�h��D�	B'L�\�)���H�$��?�@k>R|��lyK���<��$CwH7�R} �׿ݚ�P�H���/�~�ǣ��,B�U|�W;�@�5������̬G6��dz�9W-�n|d}���~�	O�v1�o�,8Ս�7��ɳ ݂�QT�۵��d�Z$0��5so��+C�Po!�Ԏ�������2�%���E�%
Y�<҄>ҽ�	zD�?S��e%N�����g��T��mF��R�3чfA��6(I�-X�;��dR.A�}�vR=u�2���_`�K�h.�6���E{d��'�;
�$6��[��D�[C;O�����S��v�X�8���iJ��YM[�xo�L�%4Lۍ�y����2�+����d�p��_G>���κ��R��S�g �_��Q��U_�]�B�~��@0>5�����w݊9J���8��c����%�K4��V������ �V�}pmտP�����ߤӱ��.R���n���2�(�4jm� Ui���^���\�`�sI{��8^� �z ��ݑz��1Y< ᲂ)���A����÷T?S��
�e�8�}q�G&�s�z�s^[�� ����hD�^8��ct�-���9`tn/��lnp���
}X�C�A�Q����K�%���p�}�wʾ���t��X�l�p>�?�.&Ea���!��??�'��O��zCWIL�oϙ�4�	� U����f�caH�ل�{�M��n]���O��X�����l�f��A��[��f�������Č~ng�@�B����ߌ� Å��jا��>��B��8�!7.�����;#V7kB:��]w=��۴���X������%���gv1�D��Qs�ķ�'���{oX�L�Z��RZ�m�{&�ܫ���"��y��	C���X�ĵ�;Gg��1��?PV�x@E�G�ǉ�������{ÿS%�\�~P(��n4s[cE^*�q��=�@���t�k�<(�i��A �$��d�ߵu�ە�j�&��H�Hz��:�����<𓧓�X�7�`�ba�(+�]�U�p�b錕z��8�U�D�����#D�k�>�|+V�ڱ:��w[�,WIfSj i�Ӽ$�W*�t����})��O�z�����4�}�LY�H���5.�g����+J���}��o�n���=����zqz$�|܄��ⴎ���#���f���Š���c�� ���i��h*�A���~�0����{��	�]rpi�Y%�hk�"o�O�"}�\�|%M;������{QNu��[bD)Λ��J�W�E�k��9�"���*�J�2��;�t�5fݿ�v����,�����7�ΐ�����?��E���eY�7�(-a#?/S�S��|O�l��o�U]@� �=<Շ��u�	7�,���6�^jܿ#��Oє���;�I?dŋ���uf��]q��5�L6�d��KmF�c�������|0�d,f7�lJB�;g����)�}��n��<l`>Q}\�����T��iG�����bܛ�G"tХ[EmET�A�5	|>ҋ��Gm���͐�*�i,��7YZKL͑,�r� Q.hڼ/�=�����?���%�`#V@F\�D�R�7��tX�ן=)�Z��L�w >�4
�R1j�$��aKӅ<��L܊�^�ű$�%�TUIwe~��/������7�g��]��zg"�>�b�(��K���I���tU��$E�2g(�^��:�O��*���MrH+  ]۽Ck��fj�y��ڭ��*ֱpN�q��N�Gz@�9׉5���� �!N8^#{�To00�4Z���EI�oُ^&�k�d���� ңuxһ�y�������ld�,��cD�C���(�i���P#?9N`� ��Ĝ��>uq�W���*�.e�_ Ƌ~1�J��T
    �9�S�媲�b�wC�{3����?���[=��F*2#v�"����g�f:������q��,i�����rn=�����[y|�z-c�q)89��a��e�DF-)k����6��o)ז�]��\Ī�ă|l�$,����l�,]= �d;��,߷M�
�	��Y=����$��l+�Q���r(�%؋��h;?�Ϻ�ݗ�� � �bU����9�ycg���N�g�,��\L��b�����(4�u���_���]��
�{ǿ*��A�.�j��|��F����&H��m��1�����ő <A&����˞�lo���.�en�.9�B�BB�L�(@��|��#�vc����� �bs7'�9�&6��v: ���E-2��T̷�Z�C��3!W��1�GBL_�	<�6\zM���l�^��,��S`W����u���D�~�7>�|*��I�"l_�eA��)جZ��3���'�tqg�N�h4g��7�ZCT�����j@������8�oW{�:��ᛚua,bP=t��������0��U�Y��h�a@�yf�	i���붜����mC�"s�gg�.�7����YP�q�Ӫ��N�:�`f��E��C9�͐�Vh�$���eY� a;��KžE��~���0�C"a� sJ��p�O�$_�&/��]��xq�O������S"��\������d�����z��
�ћV��s�h�`�A�3���G� �~���R� @�o���՘��#y���)w��҂]5�mC���6� j������K�Ʃ�ԛb�Ä���;�Y�WSG!^-� �e��L&�Ĵʮ�ɏ����G��ֺl�ս�ڵp�r1� �)���[��7�~X?�	X�1b`˺�����2����$����"��x.�x@Yª�t��DŉN6N�ZK�B�Z	�z�	�oEQ��WBvB0K��*ys�W��d��`to�9)E�k���a>��n��uziOo�F�ja$��`g��2���0Hr)���+����X����k����|H�f���i��ƈ��N��c<x�����Ԟڳ}p���tGG�I�pl��R��I���0���Di� ?h��#a{0
����:��L ���u���H��cjQ����0Մw�y�n���mT�7��N}�J�Т'���E�k��PRʅ �^���b'��ojq,d��~�]u��R(-*�6�l%�N ��`Y��Dw��Z�M� X(u}��,�Y�"$��a�/q��ND�T��0-Df�u��a	��йQ�]��s���$A~+ǐ��J����#KO�5��K�9s��������{��r��ÁV3GI��'/�t�)�� ��¸lٓ�9g�oe������g��̏����7s��[*��L���EM� ؎�&#L8�Wp�$n�$Z2|Q���lӜ�t����WЦ�,jȒ`3"��.�Z �Xf��N��C�����.3r�q�A/���;#�7����E���%�{�`�Ou�%�ݗ�Xe��Ð�����7��_K���������@�����ܮ�z�*�vy��Jg����6p�ɡ�h�M��Wc�l�M�u�,&W[�zhc�B����Xݫ���S ������׷0�o΁EV����.���m�i�Iw.���4K?��ǘ�R��g���y0,n^�պcۀ/�+."tKO���v�u�6�����7)>v�C�zQ߱�U��u�1���cr�'ܠ���@U͐�a�ԟ�w �F�K#�Z����g�5[v�y}�<�t���y���	u7d�v]����C��Ϸ`Zka���=	c)��W8�鲴/6����Ym�q_x�����[@��o��%�w� ����rq(r�^T&33�=� ��Aх�!�B�hkv}ED���4��]���d����⃂���ѦS�Q�E:7Z�u�a�k�-�+���B����C:��']ٺ:A��I���B�9O�0Ǵ5#o�	{�	7
�����#$��i�}�=�+?�'�7�-
��4�uۤ�7���6��P��ꯕ0����w4���Ӕ^u��8WFH=�<��OU�[����a%EvQ���2��Ǟ��<�(!p��o�I����&����xᣦߪ$e_�����?S��p��gCS%Kc�!��?x������}N�����e�����l/��� ���H�`~#~F�A�UdoZ���� ��pY��Q��7�tt���� [�	����� G��Y4m-����/�
�dv���*'|2�OtP��@���x�h_�
UD4��{N�}\&�t�`$�(��?���D� S�������A��k�+p0�M�>[�\�|%Z�������Loȍ�d��#3|�;%E<�I��K��:����w��i��NK�.&��C�_��$4�M ��cD)A:��}��q������'�ݝd�D�rs��X�5�-���x
5�z��+ ]����4ٶ��H.�`��΃/���5����KnB�f��y�MR�;C�����6�������XARR�u$E/��!�`��Wq�ӥ����у:�p�G���֞�U����j-T>��3J�ry�.�^}�����!ז?���f���on���\H�rƶ��ؓ�M�j�sZ�G��Se4%"���8�MjbJ��2/�c�+񌄌i���hB8�y8ɵF���?����!�E��+uk.ʮ�-�(H������dZ�o+J���"|#��O��㾋�I�K��J-}k��D)A��ؿ=��ۛh�PD�CL��H^/��d"��!�u  n�)�F�x�%�is����G��P����9�DN��d�r��k�6u�Nd���h��������!��">Q>�}�VnM���h�>/ԕ{�w6�o��Ւܞf��o���qX���쓭*z�7後]�޹߃�g]�1UX�x��ٯ6o�y��.�"�zDW5A�H����1��i��3�a/B�]�+��ok-W:�tD��	pm���S��r-�6���p[V�4���m��g��aP��Q�͐��|AIDRMd�_��b�[�~*��\�|�銡���ޔ(�����-쨎 �a�1�����?�[l럞��.c`�ȣɧ�s�x@px|ak�L�%�+-\��U�[�	�EҪ�PVC�:��K�T���f�9��=F�s��`c�4�A���z݂�7
r��4�N��@v[/�Fl�u%�+�<��P1h�jk!��~lp&)��ͷ�A�B�b���O8+�T���~�����~g.E��ރ�%Pg�A	k?�9�o��m��m�B�?�+}�!z�L�ޅ�T����P*=���nO�c����r�̱�S�L��KV��c���6��i�j<̻X�&���A��y�T�M��鲙r��h��J��Pk�5"�j�_�7�x$��7�~5�tjU��\�򔎏�����>�@礘>�c�!�P�$u��5�����mf>�o�NhN�we	�-�����ܨj�Gw��{h���R�&mRa��[?q�k]�J{\��@� I nE��>�%R����-r�NHI �<��|� �7D<��_�Ȏ�;�n`����J���9<BsFYpp��r�����K��U`[E,
7�$��r����	�S^��!h��oj�$t Nx;א�~˾3Y���Y�|bSm��N��t�&��[��\���b��Z��� !J9���tIɻ��хJM5�s��܇�}s��y|<W�.��*��tbq��>.i������0�_�JG ��Cϫls�0��[R�(���\|7N_��u���Ȗo����)�,�G.hj�h��7��R�}����X5�Xclo��1Sţ��5��p���
iyH��"�O���N�q -��<�i�"QW�U�Vjϗ�U$'�<A�K'���i���z"��\2*H���oa���u;�E�*�N�@�#�����XUlM=		F�l_0{�xըu��uٸ�ء�Խ�f�Ò��j�Q<�I�. l*�U1    $V=�pl�_מ�"��;���#�}�l_�란`���_�~������A���Á]�Y�c����7�
�c�H��.8z���r� �x�_�`����(0��Y��.�����}���HR�@�T��4��3E���U�1b�%�:x�o���%�걌���!���l��u��Wi4��u�Ej���- ��Q��1t�d��<xB~~&�̳~��P����CX��j0��:+�dX�$�WߟC���qr���(U���ng�!]V@��+H�">��˵�k3�B��.f
�9h����[�S�O	���-��|FQ)S��8�	ʑ_��]~s����БM_.�ᙏG��t2����r�Rp�d�"u6��:i�K
^� Zx:c�)�D���v o����~��O�p�f	�@�Ņ�Ɵ	�+1i5<q�t����o6 ��y��Z��b�:ƴ�j���n޻�;��<au�]�%�v0w�(� ������P$s�!T�������QH���K�U&'��s��Q@k�.��3���x��O���a8y�_� ~:�����ig��G����IOP�I�׫l(��ԯ}��ٷ�v��ɝ0[��H@����Q�n�F����9f8j��+�=��$�^�=r�d������ ���9��$n@,Ь����(Pe��r
\gy���?)�|��\.;�le�\+�r�O��!�z5����W�<Π�S���ȥ��J�F��+KU�o�\���qD�d�J�?�}~�{4D�,beT7�~��Bl�A�Գ��цy��c��}�h՛���%v�6N~����憋
�8s��b[�*i�5�e��Ϲ �9;�pn�N���n�����8+�)H�p?���GxǥY��;����LB�Q��!�ɴ
/���M��c�*D)�7�GoIx�hYcK���{�>�A�ya�������s�H�I��1(A�����;Ui���sO�-�X���5B��%�/��g���#��:���r�ΰa���t�X\��1`����3�7����#(�?�k(/g��g��Aݤ`+�7�K�I�c::1�?7�w[A �O%����r��~-@�I8���*x���$w��>��iǷ1R��rh��;�R~^��r�p���PG�6��e���i�"M�޻DwE��xjğ�2W����7��3n���G)��������o�Ή���X�O�W�dĴ��,rЯ��U�h���dm�O�ׅ%d��G\��a��Uj�x�W5,fA-I>�۞GP����*I���i�}(_Ң:z �y~:H7��GN�~a���Z�s��G�N��8�����	���x�(q�(;JP��4k�Ρ�}������\Z"[�YG C���z�1F�y��4GwRv[�%�Ǻ��9(;¬��ʘ��zd�{�>�$���$Ǘ��Ձ$1H���G�]�~y�{~�t��킦�-w7�h�
��c�������Q�k��d��.S���!R����F�8���D�B�L���@ݯϦ5 ~��3�f�q��k�&D�
2������w�o �
z��ߑۤQ=ø�-[�w�s����Ev�M�D�����1��c��wFd������Ji�{�q$Q�(p �q��+y�4�3z�K"�������)���ks<ܫg�[�и�yRL��AY7���W	�����LpOw���Sz�C3B�>sZ�K�SQ�b������w�4>
h B��'l�l����D!���~�U���3L��*R����^z��p�2�x�}i>�G܊�3$�����b	T`_�_>�!��F�6�B��WC��3$��^��OamC�{�KU֎.�6���1�X�)h0�Ǭ�F��Í\�2��Q�'���H�ˆ���`Y��6���N� #��6��4(ǲ������/��� ����$v����ٛ�~Uc��;^�o)J�������d�s���d�����\�v����~L��m��8����N��$�Ϣ�Њݎ�4���D� W�}2�?��R�ȍ	b0�(����h�gy˃'�]�o0�{:r�P�䦟I��z����<�Hůx|:R�A����4��fI����-W׮�!�hc(��rU[����1"x���e���A�#�]�f�̸&ڈV�9��W���U:�$2�[��_r�����i!���ah��rV-
����7x�
ա)r�X�O����5���%r$�g�uZ4��hgm�oW��|���p���EpX���;"��qg���A�K���3�h��"��a/ќHh������0y_�v�N�<�wO�5VsT�Y��.&��\r��^	/�j>�=�n��?�B�ΉP5�v��A�Z�+LSw��-*��������2h	y�ֳ6qqp���M����F�	�͍�K���~�n2���n�v:răO�Z�!g:H�A���{�ڇ�4CXWk��A]D�Q Dbt1M]�����!���̕?���$�_� �8Y�+`
Z�`�(��f��r�]��;�v�v����#g6�,0��Ee�+N$$7����f�@���F��|���Os�I�rϡHe'2&P�����o0�Gw��'5Mh�9��bO�W�>��ֻ���D���왇q�;13�-A��ބ��_/����]qX�t;��s��2,�I�V�r��$�����<��;�h�Y�Lߡ"�c�������Md2ʼ9����*���̘ߟB�kZ,� �"��X�w#�?�ڑ���;A�����,}$ҙa�����O���j��Gp���L�����Nē&����*.��d�t9T���U��̛x��	��,���>�zA���}�8�$��y݅ r�@d�Y}{�o�
j��K���˼gk�H�or2��rZӝC4}W��2R/g1*���S*8B)0���t�~G"X\�A����}�V�2�E�(Y�ZT'o�l�VW����\_�����ϧF��ז�֟�I�?Ik!ʀ��Њ!E�1<�,|����#[����W/$�6=�׏�������ᔄ	b !3���.�����V$\Q��p����p�4X^2ѧ��J�JX���bFy��w��!ߟB��n���<Ah�A�m?s���)�ߠ���zќGT��#��tB�aN��A�K�P:���U� �VQ�V|�hm[�!~i{6	�7h����O��Lq�/{��cd����,U�Q�>ۓ�w�=�qDO���3�®�]�(�^m6��N'ǖ!v����2_��z�j.\z�礂������	2�q�T�J��	���Y{r-w96{2$�Fo=h�P� �U�HwaY��l�%�qe4r'����٩�Y�RL�j�{G�g��;�� �IU9��Z �@G5��*�e��������y���[��n�_���XׅX��y
��Iu�L���}��o%N��g������1S��&~:OT+G����'
`B9�U `L2��X�&J����#8x4k�f��n@Mn#�5p�j���Q�#��3��)�m���6>�$����k��s�2V����P%�f�;�_�Cڊ��ܐŪ �+��a����0`b;����!�N�"UKl��P��F��Q�O޻䋀Ǟ�R�e'+Dl��OD����Wt9�b9\ ��e�<���i�ѿ�������7�o/B&
ēSC��<�3�	�f1�.�S����#h���5Hn�����C��`��п�pZ������kԴ��E>Y��*\��zP��j�������2�����h�ٽ24�s��$߰ɼ�4�Q��h����o[V�?��A(�?P�_���(��m�N��eA�D>jj3��I3���E��ۢ,0�
t���״$�����;�h�J�:������z�~�����%�$��.�ug&�ԧ���vO�'�� �Ap��D��x�L�,�Q�+�g��,�goz�ih�Y�)n�=�J3�`�4��a�Ѱ�V"��a�2ׇ�D�����9@��qG�	zD    I�xz���/�!uԛZE�� �K��}$	f���Wa�_��e�c��'�^�B�H�$���e_ۀ�� ���}�Νӣ,��' �tĕ� ~���B���o��"���>�����{)aIp���f�-w瑉sO�Q�����?b+.��>�w����/��bȍ_��M?���JH���.��*x�]"�9=�X����P �+f����:m�+I&�=$~�䦰�~\��!��\�HLE2�[ѵ�%���M\��^�C}Z7G�2�_ء�)��~җ�$7WеCIH73xu��c���HV���9x�r��L�af����d��������/k�r�v��ۣ=�eE�n�/(�c� c�[Ҕ�ϛ��Y�Z�V`�����9|�u���\ӳ<��1Q+�W������:�B��z��=\ў�pq��R�՚�����ıI�.���%SǳY�o<��IQ��L�s�j�������R �$��r���~p�"�R{E<fND~����O�	���-������4�H'����H,��8�R9޵���1F�������Y#xy�T�7���1�2�P��(d?u�`���3p�	�|���ŏ"�A���Vð�k)+�a=���Va$^G�)�ﰂ	�7��9���ѨLoۗ�D�ѓx������6�zi_�.�h���?YyW� ?d���Q
0���eH-����GJ�v\�)c�d�71�QL	�b��w(�ا�Y{$���vP�������'��K�xm���fZ���f�ҁq 8~�����$c ���JA_010EYL�6���S+�Րq�+/����Tbݙ7�ӕ
������K�G�v�u�N͆����0=���������f��� D��yP[5^1a��D��{T5>�ݯ-��} "nOԱH}>/�����W�i,	�"�J�NB�����#+RZ~VmA���9Z��
�ϫ�.�#�g��(p���r�N����뇿�PM@��A�ri��G����5�i>i���8��>����FM��ʧEI6I��"h�y�'"r���L�A�x-�z�[�o$|z�Eҡ�R�!�����U�����zCܛNft״���[�Ӡp�+�AՓ�������5�GJ�R[4�{����%2N�ةA3�]�S��E�+Cu��M)�<�w��R�.��)�DG�)�]`:�A#bR�.!���3B���x�!�Q\f���c� ���7z��Բ��<rJ0�f��aB�D��*�Pg9���E�m�Ϙ���!���?@����9�^�������� �..�.f��D��H�[�4X&;�э!��(�R����C.&d��[
ȉF�'_jw��pgE���"��OP�;�f�ڡ��.�[�Q$��Nt: ݮ�V
y?np����
��g��h�N��h��B�˱����s�ˉ�rԾ@㸇~&S��nZz�r�|M��95��[#�����C�i�/��ߥ廄�q9��{Q��P�y��)���ȩ�h��s�}s���.�:ٺ�C��2�	�FQ���fCc�#��LS�A�Wы���*ۇ:C�~QҶ/��i�� 
C���}��F�pe�8�����Η�^\Y�@�)���g�b����e�/�l?��A��ݰ1l����O �B��)��+2�����B]g�c�`��5u�P~z	ª{5Q��ͥ/sߟ�gLWmt�,����%8v%x�6D��Mc7�������`�0Dϩ�҇L6}T/BeA��O�zU!Z@����^�V�k��Q�Y��c�tG TgN�K���n�jlHB̮q\Y�17���߫�o����V���>��d��ZHa����C��]}�"���mI"������G[�
w�KӶ�A���P�O�&T �@���7~�O#�Ed.6X�錤��2]]�:����ޛ۠�A���x bq�ΧE�ʃ~�@? 4S�_��A%CB�I!�$ٵ�ao�3���Ah_ӧ2�|U��7�ک��	�2�Fp�AY�Sj�^32=��@��3���]s+Di�%(#���v�A'A�)�����:S�S��T\�[��j��~����?'B�� ����[�=-y�l@�����w<�`�գ��qW
/E�]�;���{{��[�"mb�+-�g�$Q i�;� ���ټ�7���{i	P���4��sJ�&�9������b�<��Zt��p�K̚�~-�Q/���ƪ`��9��}�z`�=��ɛ�0R&�!$�vT���ܳ��s������0ݱ�x��!���ú��v5R}do�e_��U[�A��$*-�;9��YV��Y]���J��b&����O# ��V���3�����h�3C��� ��vsqB��&OZ.&��'���<��B�no����*��g��9��n�C1A�5��,���ꍕF������Vt�n���/&�z/\��|v�D�/��g�E�j"<߰���~!���G^Gc��vN��U�>b��-��]}������t�� � �@Y^e;Ė�X���[gOcz�%x�^�RK[�v��}	*F^��=���\Q���p!2]�V��'�VlS�|)��ϼ�\FS��@l��6���#f�۪h��a!G���{�rN1z������Ձ���p�����պr ��q��^7�do�{4��(BAm�A��Dy��Kp# 1E�1E��hF�R�	����.f�|G;#�9��V�	����d�q߉u�Mh� 'n܃�M��.�y!���i���3�,����n.��\�(�r�ߔCķ�w�5<��Gl1�|Du"l�;���� ��1�.蠲���k�A�⿆dm�\~C�fv�����Ed2�"ߛ�����������-��IE#:܋���}���q䄄�F��eE��6}�u�4�0�y��0!>o Ux�L������^N�>\�%�����ych���+�����4�j��|ɖ������>ќj��^f�}E���e&��N������Q����%}I��Ox�~�7�`�q�==ж%�Uh^����Dp�s�j�#v�k�_��F�"vʤ��桻h��M��*�"`�h����tn��X���H� x�L�Q�*;m}29�������<=�M��_?�?��D���Z�T�=5\�p�i��ysk��������k�'k+��j��hݲ�U�&�m��THN��~G����Z���U������)��ɚ��I�[�$�����b��9���矖���]����M�����Eۨ�Aa�7X�,���v�cOG�~!\����=!N��X5��<f�$j.�ɏ7���C��)�*���\q�(7�2jɦ��煰��G�bx�/a�-*��R�����OR���|;Jӥf���Y�з�I#��S�3,�sy�,��h�M�+�� �i F�>h�wA���������~{�{?}rY�c�[T�Z0x#-�l��ך���'5@�t��-]��ԋd}��,k��M~��0�B�#�J���lCH�R�h�T����o���hr��}�m�D��d�ϕ(�t�P#���~`��0��Na��̈�ިş:|ȅ��Tfm�w��o	����X��L�#�3�Ƕ/�s;ͳ�\�~B�	ED�Op�c��N��D�S�5=|���px�>������.�y+�Υ�~T��w�?;A��vj�2(�<Vť��.����Awp' ������]�:D������f�c �鉊<�̺!*�7����C��&�F�2��;����yhx�"g�89*4�����O�	��&�5aijF	D����c�y7o�;�p\�uZ�o¢L����,�w�9y��Vݳ��)�� =`s�Yq�9����גR0h(D,tbY}�9D���!PtT����0��0m���$pY��+�H;�#(vMlz�211��IA�R�ݻ���~�8�{��ߨ%��w��O�}fi�E]`M����];�s|u�	�MH7��FX�-��Ǫ^>����ӵJ �  �v9����^d���X�y�)zH���e (|e�]�R�B{�.��$�b�h�o��O�Ꜽ��D2�s�O�E�FN:zZ�yb�I�H�s%v�!���'����!iu {������uq

}\���PT���	�V35�GY?.�����0�/'ͽӴK5#��=T��/M� }��J�A �K�K����b�x>�1jT���N����~�W@r_X?��F��<��nz?�I��>�%�����B��9�w�Sf$	����[c�.W�(ޫ�j��mT-[��QL�́;lK0o�A /"��h%�^yy�k��m��_cR����cs�?g���Rk���9��q���m{�V��	fB��kv��]��)��b�;���1�IU���k�"��n�A����X�C\�o����L�#�;o��C}xwH�E��>��K�	��\L(D���뭜ਲͼȁRT3��Ns7���
cM�]�4�5�pG)��3��n�P�bA�fߙoM��j��O"}i����,�eWx��)���k,u�F0:㦀��e�z�d����ծFp��E�����Aߠ��/��U:Y�Z1=@���Q̩x��Z���쇴HQ�i��MnP ���j�tP_3�չCw55����ď��`d�Ō�uJi��m_k:��M��u$� z��k�L��Qv�NE��_pZ�5Е��/�X*����M 'V�Y�?��c+]
�V���y$=��Yx~��S�Z�0����TO���V�|w�e�1���$�#��ͱFB��<�PT�a��ȶ%�C����x���1�g�Iu!�~	i��"�90��hŊ{عO���"��-z���Wr��,���I�Y�L걱	��A���K4�N	�I��tE���Н�#N�X���/��G/+"`E��cU<I�(�B�K���
Dm'l��`,�$7|⡕�TC'�Ү��l}�C(��ʻ}�o>A����
*�E~�a�~��I#sí�kJ��\EUE����,�ڄ�Ҝ���6��<{A����%X�[-�.�
?���s7�t��i2�$-ؿ7�u�X�SU�nF%�N��0�!�*
�!jpV.ѓ4�����.ga�z�*��/r�'>@��az�W�Z�(�!f�O����S�5��
(��>��r��7��Oj�]&�44�n� �@��A��
��;0��Yߒ��E���o����t�|dΣ���M*U>Q�V�ܫ��c�Q� ���Va5T�7Ԓ�,ɔ�)�|U�)��D]CVU��5���H��oY.�&%�a���#��x�M�
�4^r���۶��1���۲Z^�lk0��ұy�/d��z�N���d�
RXel�1���Э0bB�/s��7ա��[+x�Z�%���;�;" c��� y2@�4u~C&�u����{�]m37g�L�$?g�T���]&����*���^%Y��W�#LgMpr;p�z#�te��������Z��e�+BRy��=	����B�	�".��?�,������[�MЈo�^��1����-ɞV��H���*�����	�'�
e�yq.�[�7��9�� +��g�7��%�F=efe��S�X�m�?X`M1���Kc��a���e����MS>"��7��T�(V>'��'��q	�1�����#�/���#�Vs��8��I@�cX@Lì�#�'���r��:��R[��\�X���վ�'%�]n��c?��}jj���� ��)(��5�7q�r�Mn	�~�����qi��0΄��K9'�k6�p��=�S~�ې�}��!��5E<�g�9h���c�e��<Ql(J���+��g2����s2M��|{�mAt�����Oζ�H���z�l��ȍ�Z�Ò�Ǥ��� �㳄؎|����⌵��Nc�O&A�[�n;3�r�n6���S(ō�e&P�g\�Doђ��{��60��9P3�r�TW6�,�ʯ[̞�NeR�D�m)RHܪ�BP5ɍ߶�,��t)��X;�I�XIj�r��� R ���.�ɐt�l�ѝ1|��o����V��x�����-�7���8�ؚ5�����H83�<�H�?�/���H��f��^![>�療\��2�*Z�ܬ@*���'�)�Xm�/�.��֯?�	�1����t�`�Ϊ^�: ̸xv$�J��'^S�O��Z���,CE�?��Z/�E�� k�܃�*�Ҧ>��G܆6�.X�؍L֐���P@�\A���}�~;ؔ��x�øBd��=r�/��}�M��L02����~L��<��O�F�e_��+�:�}Uߤ~[�b$�!}����y|e�
?a�j�	�(��w؏b�{N�tw½�6���G�8� α|h�ߥE$8��uU���w�/~��r)�p�q�c�/-��W���&:�ʐS�ο�E���&*�J �D�$4EOOM��,-�U �h���#R/G��3|��L�ŏo��Y����f|}�v��Դ1�r���CP�z<?�~�!�Ŝs��nK�����qk&*�ΔZ7R"+鷹8|��m9�]м��`����JO=��ވ;Nf7mr�Tm�G�Ӳr��$e2����ů,q"%��~���'<�[������,�Ǒ��E�ԑ�?��e�A�\{Q�ko�	>{�ɔ���{U-b�]%�<S�����7�1���E�$��|D����o����s�.�a�d�P�o���#����T�@!��]��I:�������[|f�q?��B~�Y�S�8���س����i��RI4�|��ӈ��K��J��0P��>�p��	O�̛��#�����| �Q����(�����ZO���"T��ψ@��ͤ۬��K�G��c���y~-9�a��]���dF�dw^Ja0�:Đ*O]ڃ���5u�u_G��+)�/�H����^�)&؅<g��Ɛ�>��:s��F�"]1�tɆJl=����8�"(l�\���Zn7,�*�������wyRnVr���L35��@Q}�w�I;�(B��5��13�^��']Ma�{�Ɋ�o�f�s~0�S���W6SDѥ�=�� ���d溉�b�����-�3H(g�p(���;��z�f��N/6W<���2	("�.��:�gʻ�++�ʢ|�2��ˢ��?U�Vɗ���@��!}�C��"n���^l���o�%���Ƒn�|��yq����lZk ��Ծ���@�ME!�}���A8%�*����QAa8 k�K�_Q�����y4��+d-���.&Z��*�bi�)�����Q'ģw�zM�ykZ	��J�Y�CO�A�������9�!�Rn���b����j��~���]�b�2���a;w���]���f�+Je��rW�� ��~ż�
�~ܳT��
��b�N4E0��C>�?MP�6������͊�Y]���N#� �6?�'TUG��X���p���|(����a�Cn l��\���̋a�%G䕷�_�����Bi��L"[E��Q4|;y�(|���h�f�Ze��_M����yU��l;b�����9��H;���U�@��(�q�č"��Z �P)�,c*�=���q�w���Y�D��PĪ��$`0h��i�v�/m�s�xc4|��!+�J��)��M@�-	+4���)��C�N,����e+e�Ln��h�F�WFM��#�P��������L�1�����R+��`�>�;��\V��e���,����-�G��'��N�AP�se�\R�4}+��[��g�dAݿ��՜���Œ��H�b@
���d50�߮.�FDZEv��naGIԑ=RO�&K��5l0k��v^��[�&�␍�1���~$�ƽ�|~���c�%Y�[<�緒��y>$��P2EY��Ia�
�%v��k��y^z����o����7�Kg!�p�C�F����[#�XQ��_������?�?~     
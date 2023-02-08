PGDMP                         {         	   db_qcacac    14.3    14.3 n    |           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            }           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ~           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    86579 	   db_qcacac    DATABASE     k   CREATE DATABASE db_qcacac WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_Philippines.1252';
    DROP DATABASE db_qcacac;
                pijay    false            �            1259    86580    tbl_adopt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_adopt_id_seq;
       public          pijay    false            �            1259    86581 	   tbl_adopt    TABLE     T  CREATE TABLE public.tbl_adopt (
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
       public         heap    pijay    false    209            �            1259    86585    tbl_adopter    TABLE     �  CREATE TABLE public.tbl_adopter (
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
       public         heap    pijay    false            �            1259    86590    tbl_adopter_documents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_adopter_documents_id_seq;
       public          pijay    false            �            1259    86591    tbl_adopter_documents    TABLE     u  CREATE TABLE public.tbl_adopter_documents (
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
       public         heap    pijay    false    212            �            1259    86597    tbl_adopter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_adopter_id_seq;
       public          pijay    false    211            �           0    0    tbl_adopter_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_adopter_id_seq OWNED BY public.tbl_adopter.id;
          public          pijay    false    214            �            1259    86598    tbl_adopter_payment    TABLE     >  CREATE TABLE public.tbl_adopter_payment (
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
       public         heap    pijay    false            �            1259    86601    tbl_adopter_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_adopter_payment_id_seq;
       public          pijay    false    215            �           0    0    tbl_adopter_payment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_adopter_payment_id_seq OWNED BY public.tbl_adopter_payment.id;
          public          pijay    false    216            �            1259    86602    tbl_adopter_schedule    TABLE     �   CREATE TABLE public.tbl_adopter_schedule (
    id integer NOT NULL,
    series_no character varying(20),
    adopter_id integer,
    appointment_id integer,
    status character varying(50),
    date_created timestamp with time zone
);
 (   DROP TABLE public.tbl_adopter_schedule;
       public         heap    pijay    false            �            1259    86605    tbl_adopter_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_adopter_schedule_id_seq;
       public          pijay    false    217            �           0    0    tbl_adopter_schedule_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_adopter_schedule_id_seq OWNED BY public.tbl_adopter_schedule.id;
          public          pijay    false    218            �            1259    86606    tbl_appointments    TABLE     �  CREATE TABLE public.tbl_appointments (
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
       public         heap    pijay    false            �            1259    86609    tbl_appointments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_appointments_id_seq;
       public          pijay    false    219            �           0    0    tbl_appointments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_appointments_id_seq OWNED BY public.tbl_appointments.id;
          public          pijay    false    220            �            1259    86610 	   tbl_breed    TABLE     v  CREATE TABLE public.tbl_breed (
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
       public         heap    pijay    false            �            1259    86613    tbl_breed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_breed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_breed_id_seq;
       public          pijay    false    221            �           0    0    tbl_breed_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_breed_id_seq OWNED BY public.tbl_breed.id;
          public          pijay    false    222            �            1259    86614    tbl_category    TABLE     `  CREATE TABLE public.tbl_category (
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
       public         heap    pijay    false            �            1259    86617    tbl_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_category_id_seq;
       public          pijay    false    223            �           0    0    tbl_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_category_id_seq OWNED BY public.tbl_category.id;
          public          pijay    false    224            �            1259    86618    tbl_coat    TABLE     u  CREATE TABLE public.tbl_coat (
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
       public         heap    pijay    false            �            1259    86621    tbl_coat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_coat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_coat_id_seq;
       public          pijay    false    225            �           0    0    tbl_coat_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_coat_id_seq OWNED BY public.tbl_coat.id;
          public          pijay    false    226            �            1259    86622    tbl_life_stages    TABLE     |  CREATE TABLE public.tbl_life_stages (
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
       public         heap    pijay    false            �            1259    86625    tbl_life_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_life_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_life_stages_id_seq;
       public          pijay    false    227            �           0    0    tbl_life_stages_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_life_stages_id_seq OWNED BY public.tbl_life_stages.id;
          public          pijay    false    228            �            1259    86626    tbl_pets    TABLE     �  CREATE TABLE public.tbl_pets (
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
       public         heap    pijay    false            �            1259    86631    tbl_pets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_pets_id_seq;
       public          pijay    false    229            �           0    0    tbl_pets_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_pets_id_seq OWNED BY public.tbl_pets.id;
          public          pijay    false    230            �            1259    86632    tbl_tags    TABLE     \  CREATE TABLE public.tbl_tags (
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
       public         heap    pijay    false            �            1259    86635    tbl_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_tags_id_seq;
       public          pijay    false    231            �           0    0    tbl_tags_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_tags_id_seq OWNED BY public.tbl_tags.id;
          public          pijay    false    232            �            1259    86636 	   tbl_users    TABLE     J  CREATE TABLE public.tbl_users (
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
       public         heap    pijay    false            �            1259    86639    tbl_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_users_id_seq;
       public          pijay    false    233            �           0    0    tbl_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_users_id_seq OWNED BY public.tbl_users.id;
          public          pijay    false    234            �            1259    86640    tbl_users_info    TABLE       CREATE TABLE public.tbl_users_info (
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
       public         heap    pijay    false            �            1259    86645    tbl_users_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_users_info_id_seq;
       public          pijay    false    235            �           0    0    tbl_users_info_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_users_info_id_seq OWNED BY public.tbl_users_info.id;
          public          pijay    false    236            �           2604    86646    tbl_adopter id    DEFAULT     p   ALTER TABLE ONLY public.tbl_adopter ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_id_seq'::regclass);
 =   ALTER TABLE public.tbl_adopter ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    214    211            �           2604    86647    tbl_adopter_payment id    DEFAULT     �   ALTER TABLE ONLY public.tbl_adopter_payment ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_payment_id_seq'::regclass);
 E   ALTER TABLE public.tbl_adopter_payment ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    216    215            �           2604    86648    tbl_adopter_schedule id    DEFAULT     �   ALTER TABLE ONLY public.tbl_adopter_schedule ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_schedule_id_seq'::regclass);
 F   ALTER TABLE public.tbl_adopter_schedule ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    218    217            �           2604    86649    tbl_appointments id    DEFAULT     z   ALTER TABLE ONLY public.tbl_appointments ALTER COLUMN id SET DEFAULT nextval('public.tbl_appointments_id_seq'::regclass);
 B   ALTER TABLE public.tbl_appointments ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    220    219            �           2604    86650    tbl_breed id    DEFAULT     l   ALTER TABLE ONLY public.tbl_breed ALTER COLUMN id SET DEFAULT nextval('public.tbl_breed_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_breed ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    222    221            �           2604    86651    tbl_category id    DEFAULT     r   ALTER TABLE ONLY public.tbl_category ALTER COLUMN id SET DEFAULT nextval('public.tbl_category_id_seq'::regclass);
 >   ALTER TABLE public.tbl_category ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    224    223            �           2604    86652    tbl_coat id    DEFAULT     j   ALTER TABLE ONLY public.tbl_coat ALTER COLUMN id SET DEFAULT nextval('public.tbl_coat_id_seq'::regclass);
 :   ALTER TABLE public.tbl_coat ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    226    225            �           2604    86653    tbl_life_stages id    DEFAULT     x   ALTER TABLE ONLY public.tbl_life_stages ALTER COLUMN id SET DEFAULT nextval('public.tbl_life_stages_id_seq'::regclass);
 A   ALTER TABLE public.tbl_life_stages ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    228    227            �           2604    86654    tbl_pets id    DEFAULT     j   ALTER TABLE ONLY public.tbl_pets ALTER COLUMN id SET DEFAULT nextval('public.tbl_pets_id_seq'::regclass);
 :   ALTER TABLE public.tbl_pets ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    230    229            �           2604    86655    tbl_tags id    DEFAULT     j   ALTER TABLE ONLY public.tbl_tags ALTER COLUMN id SET DEFAULT nextval('public.tbl_tags_id_seq'::regclass);
 :   ALTER TABLE public.tbl_tags ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    232    231            �           2604    86656    tbl_users id    DEFAULT     l   ALTER TABLE ONLY public.tbl_users ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_users ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    234    233            �           2604    86657    tbl_users_info id    DEFAULT     v   ALTER TABLE ONLY public.tbl_users_info ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_info_id_seq'::regclass);
 @   ALTER TABLE public.tbl_users_info ALTER COLUMN id DROP DEFAULT;
       public          pijay    false    236    235            �           2606    86660    tbl_adopt tbl_adopt_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_pkey;
       public            pijay    false    210            �           2606    86662 0   tbl_adopter_documents tbl_adopter_documents_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_adopter_documents
    ADD CONSTRAINT tbl_adopter_documents_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tbl_adopter_documents DROP CONSTRAINT tbl_adopter_documents_pkey;
       public            pijay    false    213            �           2606    86664 ,   tbl_adopter_payment tbl_adopter_payment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_adopter_payment
    ADD CONSTRAINT tbl_adopter_payment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tbl_adopter_payment DROP CONSTRAINT tbl_adopter_payment_pkey;
       public            pijay    false    215            �           2606    86666    tbl_adopter tbl_adopter_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_adopter
    ADD CONSTRAINT tbl_adopter_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_adopter DROP CONSTRAINT tbl_adopter_pkey;
       public            pijay    false    211            �           2606    86668 .   tbl_adopter_schedule tbl_adopter_schedule_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_pkey;
       public            pijay    false    217            �           2606    86670 &   tbl_appointments tbl_appointments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_pkey;
       public            pijay    false    219            �           2606    86672    tbl_breed tbl_breed_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_pkey;
       public            pijay    false    221            �           2606    86674    tbl_category tbl_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_pkey;
       public            pijay    false    223            �           2606    86676    tbl_coat tbl_coat_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_pkey;
       public            pijay    false    225            �           2606    86678 $   tbl_life_stages tbl_life_stages_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_pkey;
       public            pijay    false    227            �           2606    86680    tbl_pets tbl_pets_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_pkey;
       public            pijay    false    229            �           2606    86682    tbl_tags tbl_tags_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_pkey;
       public            pijay    false    231            �           2606    86684 "   tbl_users_info tbl_users_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_users_info
    ADD CONSTRAINT tbl_users_info_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbl_users_info DROP CONSTRAINT tbl_users_info_pkey;
       public            pijay    false    235            �           2606    86686    tbl_users tbl_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_pkey;
       public            pijay    false    233            �           2606    86687 #   tbl_adopt tbl_adopt_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 M   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_adopter_id_fkey;
       public          pijay    false    210    211    3246            �           2606    86692     tbl_adopt tbl_adopt_docu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_docu_id_fkey FOREIGN KEY (docu_id) REFERENCES public.tbl_adopter_documents(id);
 J   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_docu_id_fkey;
       public          pijay    false    213    210    3248            �           2606    86697 #   tbl_adopt tbl_adopt_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.tbl_adopter_payment(id);
 M   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_payment_id_fkey;
       public          pijay    false    210    215    3250            �           2606    86702    tbl_adopt tbl_adopt_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.tbl_pets(id);
 I   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_pet_id_fkey;
       public          pijay    false    3264    210    229            �           2606    86707 $   tbl_adopt tbl_adopt_schedule_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_schedule_id_fkey FOREIGN KEY (schedule_id) REFERENCES public.tbl_adopter_schedule(id);
 N   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_schedule_id_fkey;
       public          pijay    false    3252    210    217            �           2606    86712 ;   tbl_adopter_documents tbl_adopter_documents_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_documents
    ADD CONSTRAINT tbl_adopter_documents_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 e   ALTER TABLE ONLY public.tbl_adopter_documents DROP CONSTRAINT tbl_adopter_documents_adopter_id_fkey;
       public          pijay    false    213    3246    211            �           2606    86717 7   tbl_adopter_payment tbl_adopter_payment_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_payment
    ADD CONSTRAINT tbl_adopter_payment_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 a   ALTER TABLE ONLY public.tbl_adopter_payment DROP CONSTRAINT tbl_adopter_payment_adopter_id_fkey;
       public          pijay    false    3246    215    211            �           2606    86722 9   tbl_adopter_schedule tbl_adopter_schedule_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 c   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_adopter_id_fkey;
       public          pijay    false    217    3246    211            �           2606    86906 =   tbl_adopter_schedule tbl_adopter_schedule_appointment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.tbl_appointments(id);
 g   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_appointment_id_fkey;
       public          pijay    false    3254    217    219            �           2606    86737 1   tbl_appointments tbl_appointments_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_created_by_fkey;
       public          pijay    false    233    3268    219            �           2606    86742 1   tbl_appointments tbl_appointments_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_deleted_by_fkey;
       public          pijay    false    219    3268    233            �           2606    86747 1   tbl_appointments tbl_appointments_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_updated_by_fkey;
       public          pijay    false    3268    219    233            �           2606    86752 #   tbl_breed tbl_breed_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_created_by_fkey;
       public          pijay    false    3268    221    233            �           2606    86757 #   tbl_breed tbl_breed_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_deleted_by_fkey;
       public          pijay    false    233    3268    221            �           2606    86762 #   tbl_breed tbl_breed_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_updated_by_fkey;
       public          pijay    false    233    221    3268            �           2606    86767 )   tbl_category tbl_category_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_created_by_fkey;
       public          pijay    false    3268    223    233            �           2606    86772 )   tbl_category tbl_category_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_deleted_by_fkey;
       public          pijay    false    233    223    3268            �           2606    86777 )   tbl_category tbl_category_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_updated_by_fkey;
       public          pijay    false    223    233    3268            �           2606    86782 "   tbl_coat tbl_coat_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 L   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_category_id_fkey;
       public          pijay    false    3258    225    223            �           2606    86787 !   tbl_coat tbl_coat_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_created_by_fkey;
       public          pijay    false    225    3268    233            �           2606    86792 !   tbl_coat tbl_coat_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_deleted_by_fkey;
       public          pijay    false    3268    233    225            �           2606    86797 !   tbl_coat tbl_coat_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_updated_by_fkey;
       public          pijay    false    3268    225    233            �           2606    86802 0   tbl_life_stages tbl_life_stages_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 Z   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_category_id_fkey;
       public          pijay    false    227    3258    223            �           2606    86807 /   tbl_life_stages tbl_life_stages_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_created_by_fkey;
       public          pijay    false    3268    233    227            �           2606    86812 /   tbl_life_stages tbl_life_stages_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_deleted_by_fkey;
       public          pijay    false    233    3268    227            �           2606    86817 /   tbl_life_stages tbl_life_stages_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_updated_by_fkey;
       public          pijay    false    227    3268    233            �           2606    86822    tbl_pets tbl_pets_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.tbl_breed(id);
 I   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_breed_id_fkey;
       public          pijay    false    3256    229    221            �           2606    86827 "   tbl_pets tbl_pets_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 L   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_category_id_fkey;
       public          pijay    false    229    3258    223            �           2606    86832    tbl_pets tbl_pets_coat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_coat_id_fkey FOREIGN KEY (coat_id) REFERENCES public.tbl_coat(id);
 H   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_coat_id_fkey;
       public          pijay    false    229    3260    225            �           2606    86837 !   tbl_pets tbl_pets_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_created_by_fkey;
       public          pijay    false    3268    229    233            �           2606    86842 !   tbl_pets tbl_pets_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_deleted_by_fkey;
       public          pijay    false    229    233    3268            �           2606    86847 %   tbl_pets tbl_pets_life_stages_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_life_stages_id_fkey FOREIGN KEY (life_stages_id) REFERENCES public.tbl_life_stages(id);
 O   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_life_stages_id_fkey;
       public          pijay    false    227    229    3262            �           2606    86852 !   tbl_pets tbl_pets_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_updated_by_fkey;
       public          pijay    false    229    233    3268            �           2606    86857 !   tbl_tags tbl_tags_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_created_by_fkey;
       public          pijay    false    231    3268    233            �           2606    86862 !   tbl_tags tbl_tags_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_deleted_by_fkey;
       public          pijay    false    3268    231    233            �           2606    86867 !   tbl_tags tbl_tags_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_updated_by_fkey;
       public          pijay    false    3268    233    231            �           2606    86872 #   tbl_users tbl_users_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_created_by_fkey;
       public          pijay    false    233    233    3268            �           2606    86877 #   tbl_users tbl_users_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_deleted_by_fkey;
       public          pijay    false    3268    233    233            �           2606    86882 *   tbl_users_info tbl_users_info_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users_info
    ADD CONSTRAINT tbl_users_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tbl_users(id);
 T   ALTER TABLE ONLY public.tbl_users_info DROP CONSTRAINT tbl_users_info_user_id_fkey;
       public          pijay    false    235    3268    233            �           2606    86887 #   tbl_users tbl_users_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_updated_by_fkey;
       public          pijay    false    3268    233    233           
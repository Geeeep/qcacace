PGDMP         #                {         	   db_qcacac    15.1    15.1 m    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    26257 	   db_qcacac    DATABASE     �   CREATE DATABASE db_qcacac WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Philippines.1252';
    DROP DATABASE db_qcacac;
                postgres    false            �            1259    26258    tbl_adopt_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_adopt_id_seq;
       public          postgres    false            �            1259    26259 	   tbl_adopt    TABLE     T  CREATE TABLE public.tbl_adopt (
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
       public         heap    postgres    false    214            �            1259    26263    tbl_adopter    TABLE     �  CREATE TABLE public.tbl_adopter (
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
       public         heap    postgres    false            �            1259    26268    tbl_adopter_documents_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_documents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.tbl_adopter_documents_id_seq;
       public          postgres    false            �            1259    26269    tbl_adopter_documents    TABLE     u  CREATE TABLE public.tbl_adopter_documents (
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
       public         heap    postgres    false    217            �            1259    26275    tbl_adopter_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.tbl_adopter_id_seq;
       public          postgres    false    216            �           0    0    tbl_adopter_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.tbl_adopter_id_seq OWNED BY public.tbl_adopter.id;
          public          postgres    false    219            �            1259    26276    tbl_adopter_payment    TABLE     >  CREATE TABLE public.tbl_adopter_payment (
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
       public         heap    postgres    false            �            1259    26279    tbl_adopter_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.tbl_adopter_payment_id_seq;
       public          postgres    false    220            �           0    0    tbl_adopter_payment_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.tbl_adopter_payment_id_seq OWNED BY public.tbl_adopter_payment.id;
          public          postgres    false    221            �            1259    26280    tbl_adopter_schedule    TABLE     �   CREATE TABLE public.tbl_adopter_schedule (
    id integer NOT NULL,
    series_no character varying(20),
    appointment_id integer,
    status character varying(30),
    date_created timestamp with time zone,
    date_updated timestamp with time zone
);
 (   DROP TABLE public.tbl_adopter_schedule;
       public         heap    postgres    false            �            1259    26283    tbl_adopter_schedule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_adopter_schedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.tbl_adopter_schedule_id_seq;
       public          postgres    false    222            �           0    0    tbl_adopter_schedule_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.tbl_adopter_schedule_id_seq OWNED BY public.tbl_adopter_schedule.id;
          public          postgres    false    223            �            1259    26284    tbl_appointments    TABLE     �  CREATE TABLE public.tbl_appointments (
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
       public         heap    postgres    false            �            1259    26287    tbl_appointments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_appointments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.tbl_appointments_id_seq;
       public          postgres    false    224            �           0    0    tbl_appointments_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.tbl_appointments_id_seq OWNED BY public.tbl_appointments.id;
          public          postgres    false    225            �            1259    26288 	   tbl_breed    TABLE     v  CREATE TABLE public.tbl_breed (
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
       public         heap    postgres    false            �            1259    26291    tbl_breed_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_breed_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_breed_id_seq;
       public          postgres    false    226            �           0    0    tbl_breed_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_breed_id_seq OWNED BY public.tbl_breed.id;
          public          postgres    false    227            �            1259    26292    tbl_category    TABLE     `  CREATE TABLE public.tbl_category (
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
       public         heap    postgres    false            �            1259    26295    tbl_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tbl_category_id_seq;
       public          postgres    false    228            �           0    0    tbl_category_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tbl_category_id_seq OWNED BY public.tbl_category.id;
          public          postgres    false    229            �            1259    26296    tbl_coat    TABLE     u  CREATE TABLE public.tbl_coat (
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
       public         heap    postgres    false            �            1259    26299    tbl_coat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_coat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_coat_id_seq;
       public          postgres    false    230            �           0    0    tbl_coat_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_coat_id_seq OWNED BY public.tbl_coat.id;
          public          postgres    false    231            �            1259    26300    tbl_life_stages    TABLE     |  CREATE TABLE public.tbl_life_stages (
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
       public         heap    postgres    false            �            1259    26303    tbl_life_stages_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_life_stages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tbl_life_stages_id_seq;
       public          postgres    false    232            �           0    0    tbl_life_stages_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tbl_life_stages_id_seq OWNED BY public.tbl_life_stages.id;
          public          postgres    false    233            �            1259    26304    tbl_pets    TABLE     �  CREATE TABLE public.tbl_pets (
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
       public         heap    postgres    false            �            1259    26309    tbl_pets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_pets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_pets_id_seq;
       public          postgres    false    234            �           0    0    tbl_pets_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_pets_id_seq OWNED BY public.tbl_pets.id;
          public          postgres    false    235            �            1259    26310    tbl_tags    TABLE     \  CREATE TABLE public.tbl_tags (
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
       public         heap    postgres    false            �            1259    26313    tbl_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tbl_tags_id_seq;
       public          postgres    false    236            �           0    0    tbl_tags_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tbl_tags_id_seq OWNED BY public.tbl_tags.id;
          public          postgres    false    237            �            1259    26314 	   tbl_users    TABLE     J  CREATE TABLE public.tbl_users (
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
       public         heap    postgres    false            �            1259    26317    tbl_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.tbl_users_id_seq;
       public          postgres    false    238            �           0    0    tbl_users_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.tbl_users_id_seq OWNED BY public.tbl_users.id;
          public          postgres    false    239            �            1259    26318    tbl_users_info    TABLE       CREATE TABLE public.tbl_users_info (
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
       public         heap    postgres    false            �            1259    26323    tbl_users_info_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tbl_users_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tbl_users_info_id_seq;
       public          postgres    false    240            �           0    0    tbl_users_info_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tbl_users_info_id_seq OWNED BY public.tbl_users_info.id;
          public          postgres    false    241            �           2604    26324    tbl_adopter id    DEFAULT     p   ALTER TABLE ONLY public.tbl_adopter ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_id_seq'::regclass);
 =   ALTER TABLE public.tbl_adopter ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    216            �           2604    26325    tbl_adopter_payment id    DEFAULT     �   ALTER TABLE ONLY public.tbl_adopter_payment ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_payment_id_seq'::regclass);
 E   ALTER TABLE public.tbl_adopter_payment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    220            �           2604    26326    tbl_adopter_schedule id    DEFAULT     �   ALTER TABLE ONLY public.tbl_adopter_schedule ALTER COLUMN id SET DEFAULT nextval('public.tbl_adopter_schedule_id_seq'::regclass);
 F   ALTER TABLE public.tbl_adopter_schedule ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222            �           2604    26327    tbl_appointments id    DEFAULT     z   ALTER TABLE ONLY public.tbl_appointments ALTER COLUMN id SET DEFAULT nextval('public.tbl_appointments_id_seq'::regclass);
 B   ALTER TABLE public.tbl_appointments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    224            �           2604    26328    tbl_breed id    DEFAULT     l   ALTER TABLE ONLY public.tbl_breed ALTER COLUMN id SET DEFAULT nextval('public.tbl_breed_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_breed ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    227    226            �           2604    26329    tbl_category id    DEFAULT     r   ALTER TABLE ONLY public.tbl_category ALTER COLUMN id SET DEFAULT nextval('public.tbl_category_id_seq'::regclass);
 >   ALTER TABLE public.tbl_category ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    228            �           2604    26330    tbl_coat id    DEFAULT     j   ALTER TABLE ONLY public.tbl_coat ALTER COLUMN id SET DEFAULT nextval('public.tbl_coat_id_seq'::regclass);
 :   ALTER TABLE public.tbl_coat ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    231    230            �           2604    26331    tbl_life_stages id    DEFAULT     x   ALTER TABLE ONLY public.tbl_life_stages ALTER COLUMN id SET DEFAULT nextval('public.tbl_life_stages_id_seq'::regclass);
 A   ALTER TABLE public.tbl_life_stages ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    233    232            �           2604    26332    tbl_pets id    DEFAULT     j   ALTER TABLE ONLY public.tbl_pets ALTER COLUMN id SET DEFAULT nextval('public.tbl_pets_id_seq'::regclass);
 :   ALTER TABLE public.tbl_pets ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234            �           2604    26333    tbl_tags id    DEFAULT     j   ALTER TABLE ONLY public.tbl_tags ALTER COLUMN id SET DEFAULT nextval('public.tbl_tags_id_seq'::regclass);
 :   ALTER TABLE public.tbl_tags ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236            �           2604    26334    tbl_users id    DEFAULT     l   ALTER TABLE ONLY public.tbl_users ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_id_seq'::regclass);
 ;   ALTER TABLE public.tbl_users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238            �           2604    26335    tbl_users_info id    DEFAULT     v   ALTER TABLE ONLY public.tbl_users_info ALTER COLUMN id SET DEFAULT nextval('public.tbl_users_info_id_seq'::regclass);
 @   ALTER TABLE public.tbl_users_info ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240            �           2606    26346    tbl_adopt tbl_adopt_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_pkey;
       public            postgres    false    215            �           2606    26348 0   tbl_adopter_documents tbl_adopter_documents_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.tbl_adopter_documents
    ADD CONSTRAINT tbl_adopter_documents_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.tbl_adopter_documents DROP CONSTRAINT tbl_adopter_documents_pkey;
       public            postgres    false    218            �           2606    26350 ,   tbl_adopter_payment tbl_adopter_payment_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.tbl_adopter_payment
    ADD CONSTRAINT tbl_adopter_payment_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.tbl_adopter_payment DROP CONSTRAINT tbl_adopter_payment_pkey;
       public            postgres    false    220            �           2606    26352    tbl_adopter tbl_adopter_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.tbl_adopter
    ADD CONSTRAINT tbl_adopter_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.tbl_adopter DROP CONSTRAINT tbl_adopter_pkey;
       public            postgres    false    216            �           2606    26354 .   tbl_adopter_schedule tbl_adopter_schedule_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_pkey;
       public            postgres    false    222            �           2606    26356 &   tbl_appointments tbl_appointments_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_pkey;
       public            postgres    false    224            �           2606    26358    tbl_breed tbl_breed_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_pkey;
       public            postgres    false    226            �           2606    26360    tbl_category tbl_category_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_pkey;
       public            postgres    false    228            �           2606    26362    tbl_coat tbl_coat_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_pkey;
       public            postgres    false    230            �           2606    26364 $   tbl_life_stages tbl_life_stages_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_pkey;
       public            postgres    false    232            �           2606    26366    tbl_pets tbl_pets_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_pkey;
       public            postgres    false    234            �           2606    26368    tbl_tags tbl_tags_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_pkey;
       public            postgres    false    236            �           2606    26370 "   tbl_users_info tbl_users_info_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tbl_users_info
    ADD CONSTRAINT tbl_users_info_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tbl_users_info DROP CONSTRAINT tbl_users_info_pkey;
       public            postgres    false    240            �           2606    26372    tbl_users tbl_users_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_pkey;
       public            postgres    false    238            �           2606    26373 #   tbl_adopt tbl_adopt_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 M   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_adopter_id_fkey;
       public          postgres    false    216    3255    215            �           2606    26378     tbl_adopt tbl_adopt_docu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_docu_id_fkey FOREIGN KEY (docu_id) REFERENCES public.tbl_adopter_documents(id);
 J   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_docu_id_fkey;
       public          postgres    false    3257    218    215            �           2606    26383 #   tbl_adopt tbl_adopt_payment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_payment_id_fkey FOREIGN KEY (payment_id) REFERENCES public.tbl_adopter_payment(id);
 M   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_payment_id_fkey;
       public          postgres    false    3259    215    220            �           2606    26388    tbl_adopt tbl_adopt_pet_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_pet_id_fkey FOREIGN KEY (pet_id) REFERENCES public.tbl_pets(id);
 I   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_pet_id_fkey;
       public          postgres    false    234    215    3273            �           2606    26393 $   tbl_adopt tbl_adopt_schedule_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopt
    ADD CONSTRAINT tbl_adopt_schedule_id_fkey FOREIGN KEY (schedule_id) REFERENCES public.tbl_adopter_schedule(id);
 N   ALTER TABLE ONLY public.tbl_adopt DROP CONSTRAINT tbl_adopt_schedule_id_fkey;
       public          postgres    false    215    3261    222            �           2606    26398 ;   tbl_adopter_documents tbl_adopter_documents_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_documents
    ADD CONSTRAINT tbl_adopter_documents_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 e   ALTER TABLE ONLY public.tbl_adopter_documents DROP CONSTRAINT tbl_adopter_documents_adopter_id_fkey;
       public          postgres    false    218    3255    216            �           2606    26403 7   tbl_adopter_payment tbl_adopter_payment_adopter_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_payment
    ADD CONSTRAINT tbl_adopter_payment_adopter_id_fkey FOREIGN KEY (adopter_id) REFERENCES public.tbl_adopter(id);
 a   ALTER TABLE ONLY public.tbl_adopter_payment DROP CONSTRAINT tbl_adopter_payment_adopter_id_fkey;
       public          postgres    false    220    3255    216            �           2606    26408 =   tbl_adopter_schedule tbl_adopter_schedule_appointment_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_adopter_schedule
    ADD CONSTRAINT tbl_adopter_schedule_appointment_id_fkey FOREIGN KEY (appointment_id) REFERENCES public.tbl_appointments(id);
 g   ALTER TABLE ONLY public.tbl_adopter_schedule DROP CONSTRAINT tbl_adopter_schedule_appointment_id_fkey;
       public          postgres    false    222    3263    224            �           2606    26413 1   tbl_appointments tbl_appointments_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_created_by_fkey;
       public          postgres    false    224    3277    238            �           2606    26418 1   tbl_appointments tbl_appointments_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_deleted_by_fkey;
       public          postgres    false    224    3277    238            �           2606    26423 1   tbl_appointments tbl_appointments_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_appointments
    ADD CONSTRAINT tbl_appointments_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 [   ALTER TABLE ONLY public.tbl_appointments DROP CONSTRAINT tbl_appointments_updated_by_fkey;
       public          postgres    false    224    3277    238            �           2606    26428 #   tbl_breed tbl_breed_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_created_by_fkey;
       public          postgres    false    226    3277    238            �           2606    26433 #   tbl_breed tbl_breed_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_deleted_by_fkey;
       public          postgres    false    226    3277    238            �           2606    26438 #   tbl_breed tbl_breed_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_breed
    ADD CONSTRAINT tbl_breed_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_breed DROP CONSTRAINT tbl_breed_updated_by_fkey;
       public          postgres    false    226    3277    238            �           2606    26443 )   tbl_category tbl_category_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_created_by_fkey;
       public          postgres    false    228    3277    238            �           2606    26448 )   tbl_category tbl_category_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_deleted_by_fkey;
       public          postgres    false    3277    228    238            �           2606    26453 )   tbl_category tbl_category_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_category
    ADD CONSTRAINT tbl_category_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 S   ALTER TABLE ONLY public.tbl_category DROP CONSTRAINT tbl_category_updated_by_fkey;
       public          postgres    false    228    3277    238            �           2606    26458 "   tbl_coat tbl_coat_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 L   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_category_id_fkey;
       public          postgres    false    230    3267    228            �           2606    26463 !   tbl_coat tbl_coat_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_created_by_fkey;
       public          postgres    false    230    3277    238            �           2606    26468 !   tbl_coat tbl_coat_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_deleted_by_fkey;
       public          postgres    false    230    3277    238            �           2606    26473 !   tbl_coat tbl_coat_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_coat
    ADD CONSTRAINT tbl_coat_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_coat DROP CONSTRAINT tbl_coat_updated_by_fkey;
       public          postgres    false    230    238    3277            �           2606    26478 0   tbl_life_stages tbl_life_stages_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 Z   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_category_id_fkey;
       public          postgres    false    228    232    3267            �           2606    26483 /   tbl_life_stages tbl_life_stages_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_created_by_fkey;
       public          postgres    false    3277    232    238            �           2606    26488 /   tbl_life_stages tbl_life_stages_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_deleted_by_fkey;
       public          postgres    false    3277    232    238            �           2606    26493 /   tbl_life_stages tbl_life_stages_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_life_stages
    ADD CONSTRAINT tbl_life_stages_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 Y   ALTER TABLE ONLY public.tbl_life_stages DROP CONSTRAINT tbl_life_stages_updated_by_fkey;
       public          postgres    false    232    238    3277            �           2606    26498    tbl_pets tbl_pets_breed_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_breed_id_fkey FOREIGN KEY (breed_id) REFERENCES public.tbl_breed(id);
 I   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_breed_id_fkey;
       public          postgres    false    226    234    3265            �           2606    26503 "   tbl_pets tbl_pets_category_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.tbl_category(id);
 L   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_category_id_fkey;
       public          postgres    false    228    234    3267            �           2606    26508    tbl_pets tbl_pets_coat_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_coat_id_fkey FOREIGN KEY (coat_id) REFERENCES public.tbl_coat(id);
 H   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_coat_id_fkey;
       public          postgres    false    230    3269    234            �           2606    26513 !   tbl_pets tbl_pets_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_created_by_fkey;
       public          postgres    false    3277    234    238            �           2606    26518 !   tbl_pets tbl_pets_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_deleted_by_fkey;
       public          postgres    false    234    238    3277            �           2606    26523 %   tbl_pets tbl_pets_life_stages_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_life_stages_id_fkey FOREIGN KEY (life_stages_id) REFERENCES public.tbl_life_stages(id);
 O   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_life_stages_id_fkey;
       public          postgres    false    3271    234    232            �           2606    26528 !   tbl_pets tbl_pets_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_pets
    ADD CONSTRAINT tbl_pets_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_pets DROP CONSTRAINT tbl_pets_updated_by_fkey;
       public          postgres    false    238    3277    234            �           2606    26533 !   tbl_tags tbl_tags_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_created_by_fkey;
       public          postgres    false    238    3277    236            �           2606    26538 !   tbl_tags tbl_tags_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_deleted_by_fkey;
       public          postgres    false    3277    236    238            �           2606    26543 !   tbl_tags tbl_tags_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_tags
    ADD CONSTRAINT tbl_tags_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 K   ALTER TABLE ONLY public.tbl_tags DROP CONSTRAINT tbl_tags_updated_by_fkey;
       public          postgres    false    3277    236    238            �           2606    26548 #   tbl_users tbl_users_created_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_created_by_fkey FOREIGN KEY (created_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_created_by_fkey;
       public          postgres    false    238    238    3277            �           2606    26553 #   tbl_users tbl_users_deleted_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_deleted_by_fkey FOREIGN KEY (deleted_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_deleted_by_fkey;
       public          postgres    false    3277    238    238            �           2606    26558 *   tbl_users_info tbl_users_info_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users_info
    ADD CONSTRAINT tbl_users_info_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.tbl_users(id);
 T   ALTER TABLE ONLY public.tbl_users_info DROP CONSTRAINT tbl_users_info_user_id_fkey;
       public          postgres    false    240    3277    238            �           2606    26563 #   tbl_users tbl_users_updated_by_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tbl_users
    ADD CONSTRAINT tbl_users_updated_by_fkey FOREIGN KEY (updated_by) REFERENCES public.tbl_users(id);
 M   ALTER TABLE ONLY public.tbl_users DROP CONSTRAINT tbl_users_updated_by_fkey;
       public          postgres    false    238    3277    238           
PGDMP     ;                	    z           kharbouchaHotel    14.5    14.5 0    8           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            9           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            :           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ;           1262    16394    kharbouchaHotel    DATABASE     u   CREATE DATABASE "kharbouchaHotel" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
 !   DROP DATABASE "kharbouchaHotel";
                postgres    false            ?            1259    16407    client    TABLE     !  CREATE TABLE public.client (
    id bigint NOT NULL,
    nom character varying(255) NOT NULL,
    prenom character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    tel bigint NOT NULL,
    adress character varying NOT NULL,
    code character varying(255) NOT NULL
);
    DROP TABLE public.client;
       public         heap    postgres    false            ?            1259    16445    extras    TABLE     ?   CREATE TABLE public.extras (
    id bigint NOT NULL,
    libelle character varying(255) NOT NULL,
    prix double precision NOT NULL
);
    DROP TABLE public.extras;
       public         heap    postgres    false            ?            1259    16433    image    TABLE     [   CREATE TABLE public.image (
    id bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.image;
       public         heap    postgres    false            ?            1259    16400    manager    TABLE     ?   CREATE TABLE public.manager (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);
    DROP TABLE public.manager;
       public         heap    postgres    false            ?            1259    16440    payment    TABLE     ?   CREATE TABLE public.payment (
    id bigint NOT NULL,
    prix_total double precision NOT NULL,
    date date NOT NULL,
    days bigint NOT NULL,
    "idCl" bigint NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            ?            1259    16501 	   promotion    TABLE     ?   CREATE TABLE public.promotion (
    id bigint NOT NULL,
    date_debut date NOT NULL,
    date_fin date NOT NULL,
    pourcentage double precision NOT NULL,
    "idRoom" bigint NOT NULL
);
    DROP TABLE public.promotion;
       public         heap    postgres    false            ?            1259    16421    reservation    TABLE     ?   CREATE TABLE public.reservation (
    id bigint NOT NULL,
    date_debut date NOT NULL,
    date_fin date NOT NULL,
    "idCl" bigint NOT NULL,
    "idEx" bigint NOT NULL,
    "idRoom" bigint NOT NULL
);
    DROP TABLE public.reservation;
       public         heap    postgres    false            ?            1259    16414    room    TABLE     ?   CREATE TABLE public.room (
    id bigint NOT NULL,
    num bigint NOT NULL,
    status bit varying NOT NULL,
    "idType" bigint NOT NULL,
    description character varying
);
    DROP TABLE public.room;
       public         heap    postgres    false            ?            1259    16450    tarif    TABLE     ?   CREATE TABLE public.tarif (
    id bigint NOT NULL,
    date date NOT NULL,
    tarif double precision,
    "idRoom" bigint NOT NULL
);
    DROP TABLE public.tarif;
       public         heap    postgres    false            ?            1259    16426    type    TABLE     ]   CREATE TABLE public.type (
    id bigint NOT NULL,
    libelle character varying NOT NULL
);
    DROP TABLE public.type;
       public         heap    postgres    false            -          0    16407    client 
   TABLE DATA           K   COPY public.client (id, nom, prenom, email, tel, adress, code) FROM stdin;
    public          postgres    false    210   ?3       3          0    16445    extras 
   TABLE DATA           3   COPY public.extras (id, libelle, prix) FROM stdin;
    public          postgres    false    216   ?3       1          0    16433    image 
   TABLE DATA           )   COPY public.image (id, name) FROM stdin;
    public          postgres    false    214   ?3       ,          0    16400    manager 
   TABLE DATA           9   COPY public.manager (id, username, password) FROM stdin;
    public          postgres    false    209   ?3       2          0    16440    payment 
   TABLE DATA           E   COPY public.payment (id, prix_total, date, days, "idCl") FROM stdin;
    public          postgres    false    215   4       5          0    16501 	   promotion 
   TABLE DATA           T   COPY public.promotion (id, date_debut, date_fin, pourcentage, "idRoom") FROM stdin;
    public          postgres    false    218   64       /          0    16421    reservation 
   TABLE DATA           Y   COPY public.reservation (id, date_debut, date_fin, "idCl", "idEx", "idRoom") FROM stdin;
    public          postgres    false    212   S4       .          0    16414    room 
   TABLE DATA           F   COPY public.room (id, num, status, "idType", description) FROM stdin;
    public          postgres    false    211   p4       4          0    16450    tarif 
   TABLE DATA           :   COPY public.tarif (id, date, tarif, "idRoom") FROM stdin;
    public          postgres    false    217   ?4       0          0    16426    type 
   TABLE DATA           +   COPY public.type (id, libelle) FROM stdin;
    public          postgres    false    213   ?4       ?           2606    16413    client client_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.client
    ADD CONSTRAINT client_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.client DROP CONSTRAINT client_pkey;
       public            postgres    false    210            ?           2606    16449    extras extras_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.extras
    ADD CONSTRAINT extras_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.extras DROP CONSTRAINT extras_pkey;
       public            postgres    false    216            ?           2606    16439    image image_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.image
    ADD CONSTRAINT image_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.image DROP CONSTRAINT image_pkey;
       public            postgres    false    214            ?           2606    16406    manager manager_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.manager
    ADD CONSTRAINT manager_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.manager DROP CONSTRAINT manager_pkey;
       public            postgres    false    209            ?           2606    16444    payment payment_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    215            ?           2606    16505    promotion promotion_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT promotion_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.promotion DROP CONSTRAINT promotion_pkey;
       public            postgres    false    218            ?           2606    16425    reservation reservation_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    212            ?           2606    16420    room room_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    211            ?           2606    16454    tarif tarif_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.tarif
    ADD CONSTRAINT tarif_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.tarif DROP CONSTRAINT tarif_pkey;
       public            postgres    false    217            ?           2606    16432    type type_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.type DROP CONSTRAINT type_pkey;
       public            postgres    false    213            ?           1259    16460    fki_idCl    INDEX     @   CREATE INDEX "fki_idCl" ON public.reservation USING btree (id);
    DROP INDEX public."fki_idCl";
       public            postgres    false    212            ?           1259    16471    fki_idEx    INDEX     D   CREATE INDEX "fki_idEx" ON public.reservation USING btree ("idEx");
    DROP INDEX public."fki_idEx";
       public            postgres    false    212            ?           1259    16500    fki_idR    INDEX     ?   CREATE INDEX "fki_idR" ON public.tarif USING btree ("idRoom");
    DROP INDEX public."fki_idR";
       public            postgres    false    217            ?           1259    16477 
   fki_idRoom    INDEX     H   CREATE INDEX "fki_idRoom" ON public.reservation USING btree ("idRoom");
     DROP INDEX public."fki_idRoom";
       public            postgres    false    212            ?           1259    16494    fki_idT    INDEX     >   CREATE INDEX "fki_idT" ON public.room USING btree ("idType");
    DROP INDEX public."fki_idT";
       public            postgres    false    211            ?           1259    16488 
   fki_idType    INDEX     A   CREATE INDEX "fki_idType" ON public.room USING btree ("idType");
     DROP INDEX public."fki_idType";
       public            postgres    false    211            ?           2606    16461    reservation idCl    FK CONSTRAINT     {   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT "idCl" FOREIGN KEY ("idCl") REFERENCES public.client(id) NOT VALID;
 <   ALTER TABLE ONLY public.reservation DROP CONSTRAINT "idCl";
       public          postgres    false    210    3202    212            ?           2606    16478    payment idCl    FK CONSTRAINT     w   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "idCl" FOREIGN KEY ("idCl") REFERENCES public.client(id) NOT VALID;
 8   ALTER TABLE ONLY public.payment DROP CONSTRAINT "idCl";
       public          postgres    false    210    215    3202            ?           2606    16466    reservation idEx    FK CONSTRAINT     {   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT "idEx" FOREIGN KEY ("idEx") REFERENCES public.extras(id) NOT VALID;
 <   ALTER TABLE ONLY public.reservation DROP CONSTRAINT "idEx";
       public          postgres    false    216    3219    212            ?           2606    16495 	   tarif idR    FK CONSTRAINT     t   ALTER TABLE ONLY public.tarif
    ADD CONSTRAINT "idR" FOREIGN KEY ("idRoom") REFERENCES public.room(id) NOT VALID;
 5   ALTER TABLE ONLY public.tarif DROP CONSTRAINT "idR";
       public          postgres    false    211    217    3206            ?           2606    16472    reservation idRoom    FK CONSTRAINT     }   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT "idRoom" FOREIGN KEY ("idRoom") REFERENCES public.room(id) NOT VALID;
 >   ALTER TABLE ONLY public.reservation DROP CONSTRAINT "idRoom";
       public          postgres    false    212    211    3206            ?           2606    16506    promotion idRoom    FK CONSTRAINT     {   ALTER TABLE ONLY public.promotion
    ADD CONSTRAINT "idRoom" FOREIGN KEY ("idRoom") REFERENCES public.room(id) NOT VALID;
 <   ALTER TABLE ONLY public.promotion DROP CONSTRAINT "idRoom";
       public          postgres    false    211    3206    218            ?           2606    16489    room idT    FK CONSTRAINT     s   ALTER TABLE ONLY public.room
    ADD CONSTRAINT "idT" FOREIGN KEY ("idType") REFERENCES public.type(id) NOT VALID;
 4   ALTER TABLE ONLY public.room DROP CONSTRAINT "idT";
       public          postgres    false    211    3213    213            ?           2606    16483    room idType    FK CONSTRAINT     v   ALTER TABLE ONLY public.room
    ADD CONSTRAINT "idType" FOREIGN KEY ("idType") REFERENCES public.type(id) NOT VALID;
 7   ALTER TABLE ONLY public.room DROP CONSTRAINT "idType";
       public          postgres    false    213    3213    211            -      x?????? ? ?      3      x?????? ? ?      1      x?????? ? ?      ,      x?????? ? ?      2      x?????? ? ?      5      x?????? ? ?      /      x?????? ? ?      .      x?????? ? ?      4      x?????? ? ?      0      x?????? ? ?     
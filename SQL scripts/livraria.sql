PGDMP     '        
            {            livraria    11.4    11.3     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    24576    livraria    DATABASE     �   CREATE DATABASE livraria WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE livraria;
             postgres    false            �            1259    24579    tb_autor    TABLE     �   CREATE TABLE public.tb_autor (
    id integer NOT NULL,
    nome character varying(120) NOT NULL,
    email character varying(100)
);
    DROP TABLE public.tb_autor;
       public         postgres    false            �            1259    24577    tb_autor_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_autor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tb_autor_id_seq;
       public       postgres    false    197                       0    0    tb_autor_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tb_autor_id_seq OWNED BY public.tb_autor.id;
            public       postgres    false    196            �            1259    24589    tb_livro    TABLE     |   CREATE TABLE public.tb_livro (
    id integer NOT NULL,
    titulo character varying(180) NOT NULL,
    id_autor integer
);
    DROP TABLE public.tb_livro;
       public         postgres    false            �            1259    24587    tb_livro_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_livro_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.tb_livro_id_seq;
       public       postgres    false    199                       0    0    tb_livro_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.tb_livro_id_seq OWNED BY public.tb_livro.id;
            public       postgres    false    198            �
           2604    24582    tb_autor id    DEFAULT     j   ALTER TABLE ONLY public.tb_autor ALTER COLUMN id SET DEFAULT nextval('public.tb_autor_id_seq'::regclass);
 :   ALTER TABLE public.tb_autor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    24592    tb_livro id    DEFAULT     j   ALTER TABLE ONLY public.tb_livro ALTER COLUMN id SET DEFAULT nextval('public.tb_livro_id_seq'::regclass);
 :   ALTER TABLE public.tb_livro ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199                      0    24579    tb_autor 
   TABLE DATA               3   COPY public.tb_autor (id, nome, email) FROM stdin;
    public       postgres    false    197   �                 0    24589    tb_livro 
   TABLE DATA               8   COPY public.tb_livro (id, titulo, id_autor) FROM stdin;
    public       postgres    false    199   O                  0    0    tb_autor_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tb_autor_id_seq', 6, true);
            public       postgres    false    196                       0    0    tb_livro_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tb_livro_id_seq', 3, true);
            public       postgres    false    198            �
           2606    24584    tb_autor pk_autor_id 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_autor
    ADD CONSTRAINT pk_autor_id PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tb_autor DROP CONSTRAINT pk_autor_id;
       public         postgres    false    197            �
           2606    24594    tb_livro pk_livro_id 
   CONSTRAINT     R   ALTER TABLE ONLY public.tb_livro
    ADD CONSTRAINT pk_livro_id PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tb_livro DROP CONSTRAINT pk_livro_id;
       public         postgres    false    199            �
           2606    24595    tb_livro fk_autor    FK CONSTRAINT     t   ALTER TABLE ONLY public.tb_livro
    ADD CONSTRAINT fk_autor FOREIGN KEY (id_autor) REFERENCES public.tb_autor(id);
 ;   ALTER TABLE ONLY public.tb_livro DROP CONSTRAINT fk_autor;
       public       postgres    false    199    197    2694               �   x�3�t�KT�M,�L�L�KtH�M���K���2���?�8_!%Q!83�,�3+?1Iޘ�9'��7�F�5�.>�R�9�('���8I֔�K��4�*�3�F�5����<���ļ�v���&F��� �6@s         <   x�3��J,KTH���W(�O/J�M,�4�2�tVp��-�I-�WHU�/I��4����� ��     
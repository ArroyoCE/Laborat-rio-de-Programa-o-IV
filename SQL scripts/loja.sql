PGDMP             
            {            loja    11.4    11.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    24600    loja    DATABASE     �   CREATE DATABASE loja WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Portuguese_Brazil.1252' LC_CTYPE = 'Portuguese_Brazil.1252';
    DROP DATABASE loja;
             postgres    false            �            1259    24603    tb_categoria    TABLE     ~   CREATE TABLE public.tb_categoria (
    id integer NOT NULL,
    nome character varying(120) NOT NULL,
    fg_ativo integer
);
     DROP TABLE public.tb_categoria;
       public         postgres    false            �            1259    24601    tb_categoria_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tb_categoria_id_seq;
       public       postgres    false    197                       0    0    tb_categoria_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tb_categoria_id_seq OWNED BY public.tb_categoria.id;
            public       postgres    false    196            �            1259    24609 
   tb_produto    TABLE     �   CREATE TABLE public.tb_produto (
    id integer NOT NULL,
    categoria_id integer,
    nome character varying(120) NOT NULL,
    quantidade integer,
    valor_unitario double precision,
    fg_ativo integer
);
    DROP TABLE public.tb_produto;
       public         postgres    false            �            1259    24607    tb_produto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tb_produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.tb_produto_id_seq;
       public       postgres    false    199            	           0    0    tb_produto_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.tb_produto_id_seq OWNED BY public.tb_produto.id;
            public       postgres    false    198            �
           2604    24606    tb_categoria id    DEFAULT     r   ALTER TABLE ONLY public.tb_categoria ALTER COLUMN id SET DEFAULT nextval('public.tb_categoria_id_seq'::regclass);
 >   ALTER TABLE public.tb_categoria ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            �
           2604    24612    tb_produto id    DEFAULT     n   ALTER TABLE ONLY public.tb_produto ALTER COLUMN id SET DEFAULT nextval('public.tb_produto_id_seq'::regclass);
 <   ALTER TABLE public.tb_produto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
          0    24603    tb_categoria 
   TABLE DATA               :   COPY public.tb_categoria (id, nome, fg_ativo) FROM stdin;
    public       postgres    false    197   �                 0    24609 
   tb_produto 
   TABLE DATA               b   COPY public.tb_produto (id, categoria_id, nome, quantidade, valor_unitario, fg_ativo) FROM stdin;
    public       postgres    false    199   w       
           0    0    tb_categoria_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tb_categoria_id_seq', 11, true);
            public       postgres    false    196                       0    0    tb_produto_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.tb_produto_id_seq', 10, true);
            public       postgres    false    198            �
   �   x��;�0D��a˟�
:**�%^$K�6v�m8�v7O�f�8�2+�EmV���ɻQB������lkv%{�p�{t��;�m����Y���y������:���uK�ORlWq��U��ca��Ѭ*�         �   x�U���0���S�	*�m���	T��%��P����8L�������cɃ�c�#P���%��Q�����k���Qa��<��j�j�O|
(>k����ī�`+�؍��h�XH��v=O|���ؙ6e�I�nW������9,��S�����R�^�|�ߔ��������-�Cf�� ��8�     
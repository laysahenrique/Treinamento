PGDMP     0        	        	    z            postgres    15.0    15.0 +    $           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            %           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            &           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            '           1262    5    postgres    DATABASE        CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE postgres;
                postgres    false            (           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3367                        2615    16396    cadastro    SCHEMA        CREATE SCHEMA cadastro;
    DROP SCHEMA cadastro;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            )           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    16398    cliente    TABLE     ?  CREATE TABLE cadastro.cliente (
    codigo integer NOT NULL,
    nome character varying(50),
    cpf character varying(15),
    email character varying(50),
    telefone character varying(15),
    rua character varying(50),
    cidade character varying(50),
    bairro character varying(20),
    numero character varying(10),
    referencia character varying(20),
    sexo character varying(10)
);
    DROP TABLE cadastro.cliente;
       cadastro         heap    postgres    false    7            ?            1259    16397    cliente_codigo_seq    SEQUENCE     ?   CREATE SEQUENCE cadastro.cliente_codigo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE cadastro.cliente_codigo_seq;
       cadastro          postgres    false    7    217            *           0    0    cliente_codigo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE cadastro.cliente_codigo_seq OWNED BY cadastro.cliente.codigo;
          cadastro          postgres    false    216            ?            1259    16427 	   crediario    TABLE     ?   CREATE TABLE cadastro.crediario (
    codigocrediario integer NOT NULL,
    nomecliente character varying(50),
    valordivida double precision,
    datacompra date,
    datavencimento date,
    anotacao character varying(50)
);
    DROP TABLE cadastro.crediario;
       cadastro         heap    postgres    false    7            ?            1259    16426    crediario_codigocrediario_seq    SEQUENCE     ?   CREATE SEQUENCE cadastro.crediario_codigocrediario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE cadastro.crediario_codigocrediario_seq;
       cadastro          postgres    false    7    225            +           0    0    crediario_codigocrediario_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE cadastro.crediario_codigocrediario_seq OWNED BY cadastro.crediario.codigocrediario;
          cadastro          postgres    false    224            ?            1259    16412 
   fornecedor    TABLE     ?  CREATE TABLE cadastro.fornecedor (
    id integer NOT NULL,
    nome character varying(50),
    rg character varying(15),
    cnpj character varying(25),
    email character varying(50),
    telefone character varying(15),
    datanascimento date,
    rua character varying(50),
    cidade character varying(50),
    bairro character varying(20),
    numero character varying(10),
    referencia character varying(20),
    sexo character varying(10)
);
     DROP TABLE cadastro.fornecedor;
       cadastro         heap    postgres    false    7            ?            1259    16411    fornecedor_id_seq    SEQUENCE     ?   CREATE SEQUENCE cadastro.fornecedor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE cadastro.fornecedor_id_seq;
       cadastro          postgres    false    221    7            ,           0    0    fornecedor_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE cadastro.fornecedor_id_seq OWNED BY cadastro.fornecedor.id;
          cadastro          postgres    false    220            ?            1259    16405    funcionario    TABLE     ?  CREATE TABLE cadastro.funcionario (
    id integer NOT NULL,
    nome character varying(50),
    rg character varying(15),
    cpf character varying(15),
    email character varying(50),
    telefone character varying(15),
    carteiratrabalho character varying(20),
    datanascimento date,
    rua character varying(50),
    cidade character varying(50),
    bairro character varying(20),
    numero character varying(10),
    referencia character varying(20),
    sexo character varying(10)
);
 !   DROP TABLE cadastro.funcionario;
       cadastro         heap    postgres    false    7            ?            1259    16404    funcionario_id_seq    SEQUENCE     ?   CREATE SEQUENCE cadastro.funcionario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE cadastro.funcionario_id_seq;
       cadastro          postgres    false    219    7            -           0    0    funcionario_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE cadastro.funcionario_id_seq OWNED BY cadastro.funcionario.id;
          cadastro          postgres    false    218            ?            1259    16420    produto    TABLE     ?   CREATE TABLE cadastro.produto (
    codigoproduto integer NOT NULL,
    nome character varying(50),
    fornecedor character varying(50),
    preco double precision,
    estoque integer,
    datacomta date,
    datavencimento date
);
    DROP TABLE cadastro.produto;
       cadastro         heap    postgres    false    7            ?            1259    16419    produto_codigoproduto_seq    SEQUENCE     ?   CREATE SEQUENCE cadastro.produto_codigoproduto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE cadastro.produto_codigoproduto_seq;
       cadastro          postgres    false    223    7            .           0    0    produto_codigoproduto_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE cadastro.produto_codigoproduto_seq OWNED BY cadastro.produto.codigoproduto;
          cadastro          postgres    false    222            {           2604    16401    cliente codigo    DEFAULT     t   ALTER TABLE ONLY cadastro.cliente ALTER COLUMN codigo SET DEFAULT nextval('cadastro.cliente_codigo_seq'::regclass);
 ?   ALTER TABLE cadastro.cliente ALTER COLUMN codigo DROP DEFAULT;
       cadastro          postgres    false    217    216    217                       2604    16430    crediario codigocrediario    DEFAULT     ?   ALTER TABLE ONLY cadastro.crediario ALTER COLUMN codigocrediario SET DEFAULT nextval('cadastro.crediario_codigocrediario_seq'::regclass);
 J   ALTER TABLE cadastro.crediario ALTER COLUMN codigocrediario DROP DEFAULT;
       cadastro          postgres    false    224    225    225            }           2604    16415    fornecedor id    DEFAULT     r   ALTER TABLE ONLY cadastro.fornecedor ALTER COLUMN id SET DEFAULT nextval('cadastro.fornecedor_id_seq'::regclass);
 >   ALTER TABLE cadastro.fornecedor ALTER COLUMN id DROP DEFAULT;
       cadastro          postgres    false    221    220    221            |           2604    16408    funcionario id    DEFAULT     t   ALTER TABLE ONLY cadastro.funcionario ALTER COLUMN id SET DEFAULT nextval('cadastro.funcionario_id_seq'::regclass);
 ?   ALTER TABLE cadastro.funcionario ALTER COLUMN id DROP DEFAULT;
       cadastro          postgres    false    219    218    219            ~           2604    16423    produto codigoproduto    DEFAULT     ?   ALTER TABLE ONLY cadastro.produto ALTER COLUMN codigoproduto SET DEFAULT nextval('cadastro.produto_codigoproduto_seq'::regclass);
 F   ALTER TABLE cadastro.produto ALTER COLUMN codigoproduto DROP DEFAULT;
       cadastro          postgres    false    223    222    223                      0    16398    cliente 
   TABLE DATA           v   COPY cadastro.cliente (codigo, nome, cpf, email, telefone, rua, cidade, bairro, numero, referencia, sexo) FROM stdin;
    cadastro          postgres    false    217   \3       !          0    16427 	   crediario 
   TABLE DATA           v   COPY cadastro.crediario (codigocrediario, nomecliente, valordivida, datacompra, datavencimento, anotacao) FROM stdin;
    cadastro          postgres    false    225   y3                 0    16412 
   fornecedor 
   TABLE DATA           ?   COPY cadastro.fornecedor (id, nome, rg, cnpj, email, telefone, datanascimento, rua, cidade, bairro, numero, referencia, sexo) FROM stdin;
    cadastro          postgres    false    221   ?3                 0    16405    funcionario 
   TABLE DATA           ?   COPY cadastro.funcionario (id, nome, rg, cpf, email, telefone, carteiratrabalho, datanascimento, rua, cidade, bairro, numero, referencia, sexo) FROM stdin;
    cadastro          postgres    false    219   ?3                 0    16420    produto 
   TABLE DATA           o   COPY cadastro.produto (codigoproduto, nome, fornecedor, preco, estoque, datacomta, datavencimento) FROM stdin;
    cadastro          postgres    false    223   ?3       /           0    0    cliente_codigo_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('cadastro.cliente_codigo_seq', 1, false);
          cadastro          postgres    false    216            0           0    0    crediario_codigocrediario_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('cadastro.crediario_codigocrediario_seq', 1, false);
          cadastro          postgres    false    224            1           0    0    fornecedor_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('cadastro.fornecedor_id_seq', 3, true);
          cadastro          postgres    false    220            2           0    0    funcionario_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('cadastro.funcionario_id_seq', 1, false);
          cadastro          postgres    false    218            3           0    0    produto_codigoproduto_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('cadastro.produto_codigoproduto_seq', 1, false);
          cadastro          postgres    false    222            ?           2606    16403    cliente cliente_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY cadastro.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (codigo);
 @   ALTER TABLE ONLY cadastro.cliente DROP CONSTRAINT cliente_pkey;
       cadastro            postgres    false    217            ?           2606    16432    crediario crediario_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY cadastro.crediario
    ADD CONSTRAINT crediario_pkey PRIMARY KEY (codigocrediario);
 D   ALTER TABLE ONLY cadastro.crediario DROP CONSTRAINT crediario_pkey;
       cadastro            postgres    false    225            ?           2606    16417    fornecedor fornecedor_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY cadastro.fornecedor
    ADD CONSTRAINT fornecedor_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY cadastro.fornecedor DROP CONSTRAINT fornecedor_pkey;
       cadastro            postgres    false    221            ?           2606    16410    funcionario funcionario_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY cadastro.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY cadastro.funcionario DROP CONSTRAINT funcionario_pkey;
       cadastro            postgres    false    219            ?           2606    16425    produto produto_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY cadastro.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (codigoproduto);
 @   ALTER TABLE ONLY cadastro.produto DROP CONSTRAINT produto_pkey;
       cadastro            postgres    false    223                  x?????? ? ?      !      x?????? ? ?         2   x?3??I??46212???Ã??8SSS??Bc??Ĕ?b?Ɓ??qqq ??j            x?????? ? ?         /   x?32?L,NI?aC#cN#Cc#CN###]C]C8?Ȝ+F??? Y	?     
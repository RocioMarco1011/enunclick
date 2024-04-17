PGDMP     :                     z           TraduccionSentencias    14.3    14.1                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    41339    TraduccionSentencias    DATABASE     s   CREATE DATABASE "TraduccionSentencias" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Mexico.1252';
 &   DROP DATABASE "TraduccionSentencias";
                postgres    false                        2615    41348    Entregas    SCHEMA        CREATE SCHEMA "Entregas";
    DROP SCHEMA "Entregas";
                postgres    false                        2615    41356 
   PagosTabla    SCHEMA        CREATE SCHEMA "PagosTabla";
    DROP SCHEMA "PagosTabla";
                postgres    false                        2615    41340    ProductosTabla    SCHEMA         CREATE SCHEMA "ProductosTabla";
    DROP SCHEMA "ProductosTabla";
                postgres    false                        2615    41364 
   ZonasTabla    SCHEMA        CREATE SCHEMA "ZonasTabla";
    DROP SCHEMA "ZonasTabla";
                postgres    false            �            1259    41349    EntregasRepartidor    TABLE     �   CREATE TABLE "Entregas"."EntregasRepartidor" (
    repartidor_id integer NOT NULL,
    nombres_del_repartidor "char",
    horarios_del_repartidor text,
    dias_del_repartidor text
);
 ,   DROP TABLE "Entregas"."EntregasRepartidor";
       Entregas         heap    postgres    false    6            �            1259    41357    PagosRepartidor    TABLE     }   CREATE TABLE "PagosTabla"."PagosRepartidor" (
    pago_id integer NOT NULL,
    metodos_pago "char",
    recibo_pago text
);
 +   DROP TABLE "PagosTabla"."PagosRepartidor";
    
   PagosTabla         heap    postgres    false    4            �            1259    41341 	   Productos    TABLE     �   CREATE TABLE "ProductosTabla"."Productos" (
    pedidos_id integer NOT NULL,
    pedidos_cantidades integer,
    pedidos_descripcion text,
    precios_pedidos integer
);
 )   DROP TABLE "ProductosTabla"."Productos";
       ProductosTabla         heap    postgres    false    8            �            1259    41365    Zonas    TABLE     �   CREATE TABLE "ZonasTabla"."Zonas" (
    zonas_id integer NOT NULL,
    zonas_iniciales text,
    zonas_finales text,
    descripcion text
);
 !   DROP TABLE "ZonasTabla"."Zonas";
    
   ZonasTabla         heap    postgres    false    5            �          0    41349    EntregasRepartidor 
   TABLE DATA           �   COPY "Entregas"."EntregasRepartidor" (repartidor_id, nombres_del_repartidor, horarios_del_repartidor, dias_del_repartidor) FROM stdin;
    Entregas          postgres    false    214   7                  0    41357    PagosRepartidor 
   TABLE DATA           U   COPY "PagosTabla"."PagosRepartidor" (pago_id, metodos_pago, recibo_pago) FROM stdin;
 
   PagosTabla          postgres    false    215   T       �          0    41341 	   Productos 
   TABLE DATA           u   COPY "ProductosTabla"."Productos" (pedidos_id, pedidos_cantidades, pedidos_descripcion, precios_pedidos) FROM stdin;
    ProductosTabla          postgres    false    213   q                 0    41365    Zonas 
   TABLE DATA           ^   COPY "ZonasTabla"."Zonas" (zonas_id, zonas_iniciales, zonas_finales, descripcion) FROM stdin;
 
   ZonasTabla          postgres    false    216   �       n           2606    41355 *   EntregasRepartidor EntregasRepartidor_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "Entregas"."EntregasRepartidor"
    ADD CONSTRAINT "EntregasRepartidor_pkey" PRIMARY KEY (repartidor_id);
 \   ALTER TABLE ONLY "Entregas"."EntregasRepartidor" DROP CONSTRAINT "EntregasRepartidor_pkey";
       Entregas            postgres    false    214            p           2606    41363 $   PagosRepartidor PagosRepartidor_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "PagosTabla"."PagosRepartidor"
    ADD CONSTRAINT "PagosRepartidor_pkey" PRIMARY KEY (pago_id);
 X   ALTER TABLE ONLY "PagosTabla"."PagosRepartidor" DROP CONSTRAINT "PagosRepartidor_pkey";
    
   PagosTabla            postgres    false    215            l           2606    41347    Productos Productos_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY "ProductosTabla"."Productos"
    ADD CONSTRAINT "Productos_pkey" PRIMARY KEY (pedidos_id);
 P   ALTER TABLE ONLY "ProductosTabla"."Productos" DROP CONSTRAINT "Productos_pkey";
       ProductosTabla            postgres    false    213            r           2606    41371    Zonas Zonas_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY "ZonasTabla"."Zonas"
    ADD CONSTRAINT "Zonas_pkey" PRIMARY KEY (zonas_id);
 D   ALTER TABLE ONLY "ZonasTabla"."Zonas" DROP CONSTRAINT "Zonas_pkey";
    
   ZonasTabla            postgres    false    216            �      x������ � �             x������ � �      �      x������ � �            x������ � �     
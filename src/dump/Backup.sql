PGDMP     )    )            
    z            Veterinaria    15.1    15.0 3    1           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            2           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            3           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            4           1262    24706    Veterinaria    DATABASE     ?   CREATE DATABASE "Veterinaria" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Veterinaria";
                postgres    false            ?            1259    24726 	   alimentos    TABLE     ?   CREATE TABLE public.alimentos (
    idalimentos integer NOT NULL,
    descripcion character varying(45) NOT NULL,
    precio integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
    DROP TABLE public.alimentos;
       public         heap    postgres    false            ?            1259    24725    alimentos_idalimentos_seq    SEQUENCE     ?   CREATE SEQUENCE public.alimentos_idalimentos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.alimentos_idalimentos_seq;
       public          postgres    false    219            5           0    0    alimentos_idalimentos_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.alimentos_idalimentos_seq OWNED BY public.alimentos.idalimentos;
          public          postgres    false    218            ?            1259    24708    elementos_quirurgicos    TABLE     ?   CREATE TABLE public.elementos_quirurgicos (
    "Id_Elementos" integer NOT NULL,
    descripcion character varying NOT NULL,
    usuario_idusuario integer NOT NULL
);
 )   DROP TABLE public.elementos_quirurgicos;
       public         heap    postgres    false            ?            1259    24707 &   elementos_quirurgicos_Id_Elementos_seq    SEQUENCE     ?   CREATE SEQUENCE public."elementos_quirurgicos_Id_Elementos_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public."elementos_quirurgicos_Id_Elementos_seq";
       public          postgres    false    215            6           0    0 &   elementos_quirurgicos_Id_Elementos_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE public."elementos_quirurgicos_Id_Elementos_seq" OWNED BY public.elementos_quirurgicos."Id_Elementos";
          public          postgres    false    214            ?            1259    24717    insumos    TABLE     ?   CREATE TABLE public.insumos (
    "Id_Insumos" integer NOT NULL,
    descripcion character varying NOT NULL,
    usuario_idusuario integer NOT NULL
);
    DROP TABLE public.insumos;
       public         heap    postgres    false            ?            1259    24716    insumos_Id_Insumos_seq    SEQUENCE     ?   CREATE SEQUENCE public."insumos_Id_Insumos_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."insumos_Id_Insumos_seq";
       public          postgres    false    217            7           0    0    insumos_Id_Insumos_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."insumos_Id_Insumos_seq" OWNED BY public.insumos."Id_Insumos";
          public          postgres    false    216            ?            1259    24733    medicamentos    TABLE     ?   CREATE TABLE public.medicamentos (
    idmedicamentos integer NOT NULL,
    descripcion character varying(45) NOT NULL,
    precio integer NOT NULL,
    usuario_idusuario integer NOT NULL
);
     DROP TABLE public.medicamentos;
       public         heap    postgres    false            ?            1259    24732    medicamentos_idmedicamentos_seq    SEQUENCE     ?   CREATE SEQUENCE public.medicamentos_idmedicamentos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.medicamentos_idmedicamentos_seq;
       public          postgres    false    221            8           0    0    medicamentos_idmedicamentos_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.medicamentos_idmedicamentos_seq OWNED BY public.medicamentos.idmedicamentos;
          public          postgres    false    220            ?            1259    24740    rol    TABLE     `   CREATE TABLE public.rol (
    idrol integer NOT NULL,
    rol character varying(45) NOT NULL
);
    DROP TABLE public.rol;
       public         heap    postgres    false            ?            1259    24739    rol_idrol_seq    SEQUENCE     ?   CREATE SEQUENCE public.rol_idrol_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.rol_idrol_seq;
       public          postgres    false    223            9           0    0    rol_idrol_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.rol_idrol_seq OWNED BY public.rol.idrol;
          public          postgres    false    222            ?            1259    24747    usuario    TABLE       CREATE TABLE public.usuario (
    idusuario integer NOT NULL,
    email character varying(45) NOT NULL,
    password character varying(45) NOT NULL,
    rol_idrol integer NOT NULL,
    nombre character varying(50),
    telefono character varying(20) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            ?            1259    24746    usuario_idusuario_seq    SEQUENCE     ?   CREATE SEQUENCE public.usuario_idusuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.usuario_idusuario_seq;
       public          postgres    false    225            :           0    0    usuario_idusuario_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.usuario_idusuario_seq OWNED BY public.usuario.idusuario;
          public          postgres    false    224            ?           2604    24729    alimentos idalimentos    DEFAULT     ~   ALTER TABLE ONLY public.alimentos ALTER COLUMN idalimentos SET DEFAULT nextval('public.alimentos_idalimentos_seq'::regclass);
 D   ALTER TABLE public.alimentos ALTER COLUMN idalimentos DROP DEFAULT;
       public          postgres    false    218    219    219            ~           2604    24711 "   elementos_quirurgicos Id_Elementos    DEFAULT     ?   ALTER TABLE ONLY public.elementos_quirurgicos ALTER COLUMN "Id_Elementos" SET DEFAULT nextval('public."elementos_quirurgicos_Id_Elementos_seq"'::regclass);
 S   ALTER TABLE public.elementos_quirurgicos ALTER COLUMN "Id_Elementos" DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    24720    insumos Id_Insumos    DEFAULT     |   ALTER TABLE ONLY public.insumos ALTER COLUMN "Id_Insumos" SET DEFAULT nextval('public."insumos_Id_Insumos_seq"'::regclass);
 C   ALTER TABLE public.insumos ALTER COLUMN "Id_Insumos" DROP DEFAULT;
       public          postgres    false    216    217    217            ?           2604    24736    medicamentos idmedicamentos    DEFAULT     ?   ALTER TABLE ONLY public.medicamentos ALTER COLUMN idmedicamentos SET DEFAULT nextval('public.medicamentos_idmedicamentos_seq'::regclass);
 J   ALTER TABLE public.medicamentos ALTER COLUMN idmedicamentos DROP DEFAULT;
       public          postgres    false    221    220    221            ?           2604    24743 	   rol idrol    DEFAULT     f   ALTER TABLE ONLY public.rol ALTER COLUMN idrol SET DEFAULT nextval('public.rol_idrol_seq'::regclass);
 8   ALTER TABLE public.rol ALTER COLUMN idrol DROP DEFAULT;
       public          postgres    false    223    222    223            ?           2604    24750    usuario idusuario    DEFAULT     v   ALTER TABLE ONLY public.usuario ALTER COLUMN idusuario SET DEFAULT nextval('public.usuario_idusuario_seq'::regclass);
 @   ALTER TABLE public.usuario ALTER COLUMN idusuario DROP DEFAULT;
       public          postgres    false    224    225    225            (          0    24726 	   alimentos 
   TABLE DATA                 public          postgres    false    219   ?9       $          0    24708    elementos_quirurgicos 
   TABLE DATA                 public          postgres    false    215   ?:       &          0    24717    insumos 
   TABLE DATA                 public          postgres    false    217   ?<       *          0    24733    medicamentos 
   TABLE DATA                 public          postgres    false    221   5>       ,          0    24740    rol 
   TABLE DATA                 public          postgres    false    223   ?>       .          0    24747    usuario 
   TABLE DATA                 public          postgres    false    225   k?       ;           0    0    alimentos_idalimentos_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.alimentos_idalimentos_seq', 5, true);
          public          postgres    false    218            <           0    0 &   elementos_quirurgicos_Id_Elementos_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('public."elementos_quirurgicos_Id_Elementos_seq"', 27, true);
          public          postgres    false    214            =           0    0    insumos_Id_Insumos_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."insumos_Id_Insumos_seq"', 10, true);
          public          postgres    false    216            >           0    0    medicamentos_idmedicamentos_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.medicamentos_idmedicamentos_seq', 11, true);
          public          postgres    false    220            ?           0    0    rol_idrol_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.rol_idrol_seq', 3, true);
          public          postgres    false    222            @           0    0    usuario_idusuario_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.usuario_idusuario_seq', 6, true);
          public          postgres    false    224            ?           2606    24715 0   elementos_quirurgicos Elementos_Quirurgicos_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.elementos_quirurgicos
    ADD CONSTRAINT "Elementos_Quirurgicos_pkey" PRIMARY KEY ("Id_Elementos");
 \   ALTER TABLE ONLY public.elementos_quirurgicos DROP CONSTRAINT "Elementos_Quirurgicos_pkey";
       public            postgres    false    215            ?           2606    24724    insumos Insumos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT "Insumos_pkey" PRIMARY KEY ("Id_Insumos");
 @   ALTER TABLE ONLY public.insumos DROP CONSTRAINT "Insumos_pkey";
       public            postgres    false    217            ?           2606    24731    alimentos alimentos_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT alimentos_pkey PRIMARY KEY (idalimentos);
 B   ALTER TABLE ONLY public.alimentos DROP CONSTRAINT alimentos_pkey;
       public            postgres    false    219            ?           2606    24738    medicamentos medicamentos_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.medicamentos
    ADD CONSTRAINT medicamentos_pkey PRIMARY KEY (idmedicamentos);
 H   ALTER TABLE ONLY public.medicamentos DROP CONSTRAINT medicamentos_pkey;
       public            postgres    false    221            ?           2606    24745    rol rol_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY public.rol
    ADD CONSTRAINT rol_pkey PRIMARY KEY (idrol);
 6   ALTER TABLE ONLY public.rol DROP CONSTRAINT rol_pkey;
       public            postgres    false    223            ?           2606    24752    usuario usuario_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (idusuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    225            ?           2606    24758    alimentos fk_alimentos_rol    FK CONSTRAINT     ?   ALTER TABLE ONLY public.alimentos
    ADD CONSTRAINT fk_alimentos_rol FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 D   ALTER TABLE ONLY public.alimentos DROP CONSTRAINT fk_alimentos_rol;
       public          postgres    false    3215    225    219            ?           2606    24773 *   elementos_quirurgicos fk_elementos_usuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.elementos_quirurgicos
    ADD CONSTRAINT fk_elementos_usuario FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 T   ALTER TABLE ONLY public.elementos_quirurgicos DROP CONSTRAINT fk_elementos_usuario;
       public          postgres    false    215    3215    225            ?           2606    24768    insumos fk_insumos_usuario    FK CONSTRAINT     ?   ALTER TABLE ONLY public.insumos
    ADD CONSTRAINT fk_insumos_usuario FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 D   ALTER TABLE ONLY public.insumos DROP CONSTRAINT fk_insumos_usuario;
       public          postgres    false    3215    225    217            ?           2606    24753    usuario fk_usuario_rol1    FK CONSTRAINT     y   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT fk_usuario_rol1 FOREIGN KEY (rol_idrol) REFERENCES public.rol(idrol);
 A   ALTER TABLE ONLY public.usuario DROP CONSTRAINT fk_usuario_rol1;
       public          postgres    false    225    223    3213            ?           2606    24763    medicamentos medicamentos_rol    FK CONSTRAINT     ?   ALTER TABLE ONLY public.medicamentos
    ADD CONSTRAINT medicamentos_rol FOREIGN KEY (usuario_idusuario) REFERENCES public.usuario(idusuario);
 G   ALTER TABLE ONLY public.medicamentos DROP CONSTRAINT medicamentos_rol;
       public          postgres    false    3215    221    225            (   ?   x????
?P??O1;.?W??VBX???^b??{??o?r5g??[?4˓GiV?`???zS6??n?-x?~? ?mmp???Fs@?J??Ւ|x???$/?޵???? ?????d4	?????a6b?BeۓaS?h3f????ڲ?`s?fF????M?I?q?????      $   ?  x?Ŗ?n?0E???A6I 5??Gte?F?>?Go???c????o??c%iٮ?u'Z	5<?{??ۻ??Log_?˖???A??-~??6????ɴ^Lv?N
??iK?&6?%^P=???|??~rgW??G??m_??ђIaxN(?ߌ????:???x??
??A?l?An?W2H??Ç?"R^&????Wf?YrO?A??_?? ?P%?qKgA?z?#-??Eb??\?$i??j?1^??4a}?x??+?*˃?OG?|Fk̖?BYl????ǡ!?{Nӹ?d??????szN?b??`??-Ȑ??}P?cV?e?5m(?è.??P?Բ???Tv?Ky?%?#??[?5?~4҇SU?????6?r???;?q?q?k??r??ۆ?ԑՖP?ҭ?q?0??z?.6H? ??;r;??3ěP?qM??6k7??A#?sO?I9a??^????ȓ\?m+?ٚ}????X?      &   ?  x???MJ%1???????y??0?ai}???T?3mI???<?G??.f?[Q?ӓU????WUi??Ζ?/O ?֒?B>?	?ך??7k
:?t??????
F?+?^???ytqp?s???B??p?=y????&????
?f??gج?Ƣϒ.??CʤY?`?3?Z???-F?t??????3?snU??????4?,???R????????`?Sm@dYr?sUQ? ??H?
?5????*??p;1????Q*H?????V??P [i??{???p??=;OP?cR??-G?&?M?W!?P?TSg??;?[M?3вT???[=??ꍺ???>@D?1 X/???dR/??r?k?ɝ,??U??b"??f????W      *   ?   x??ѽ
?0?ݧ?[B???Щ????ڮ%&A.D??>~p??鞳?o?yQf?
򢺂k?l?
??????o'??a=j??#?{a?ь?G?B>? ???#+???.B??m?D?.?	^?o;?v?޴F?*???~1<q???s+?q???Z?&h?1VO?p1}c???bT:??{?=????]      ,   ]   x???v
Q???W((M??L?+??Q??LR:
@BS!??'?5XA?PGA?????O]Ӛ˓?F@???>??.???5?u??t?qi?? ??2f      .     x????j?0?w??mI@,?rL??C??:?Z.?Z?.Hqy?J????I??t?Wm??????N?A???sZE0WMe [T??	??!?0???T?'C??Jg??'Z???f??a3??J???+?_???(???? ?$?<? ??]TM??K??ܘוB??l?G?ȦWK|ף?M????s???U/_??+??S??????A??`U?"N???2_W+??fT???D??Z??0y1???eش?ܲ?"??	Oy*?S??>"?     
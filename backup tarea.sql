PGDMP      &                |            DATBtar    16.2    16.2 *               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16399    DATBtar    DATABASE     �   CREATE DATABASE "DATBtar" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "DATBtar";
                postgres    false            �            1259    16408    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    16407    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16424    actor_participa_en_pelicula    TABLE     c   CREATE TABLE public.actor_participa_en_pelicula (
    id_pelicula integer,
    id_actor integer
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    16401    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(100) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    16400    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16414    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16413    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16449    premio_mejor_actor    TABLE     |   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    16448     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16438    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    16437 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16460    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    16459 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    16408    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   4                 0    16424    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_pelicula, id_actor) FROM stdin;
    public          postgres    false    221   �;                 0    16401    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   �A                 0    16414    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   xI                 0    16449    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   �_                 0    16438    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   r`                 0    16460    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   Ha       !           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            "           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            #           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            $           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 24, true);
          public          postgres    false    224            %           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 35, true);
          public          postgres    false    222            &           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 28, true);
          public          postgres    false    226            p           2606    16412    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    16405    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    16418    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            v           2606    16453 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            t           2606    16442 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            x           2606    16464 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            z           2606    16432 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    4720    218    221            {           2606    16427 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    220    4722    221            y           2606    16419 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    220    216    4718            }           2606    16454 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    4720    225    218            |           2606    16443 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    216    223    4718            ~           2606    16465 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    227    220    4722               �  x�]WIv�6\��	� ���A�-ɳ-�l 5�D�!A�[��Yr����v�h��_��Z��j�����z�=齝YQ��ݨV���ު	k%/ٕ��o�����x��{�s~���F��ly���̨�7��\�+u4�f��Y�J��ݭ�=�2#�|bU�[�Z�jP�3*VԼc�Մ�����.�P��~����q!�5�1���e�KE<깙�;\���x��2g��.��,s.*�M}W6�Q�\���O��L��%���ʃ�v6=�\4썞'ews�|]�ڲw������8,��⋊�.Up;��;���ٙ�꘽V��J�ɒ�=��>�J�R�N}�����T���H��z����b_���aD���~��'Vጚ}V����{ XU���Z��#�)k��xѰ�������Pi���^Ge	���������?ff��e��z���R�����V����.�N��	,���wf�a_V��LQ�fo���X�|d��D3����R�n-�
��Н*�e�nh�ƃ��]��3�T9s��y%؝: �����;TE���l�,�*CS�6�������N_Q��8��Ē����w��W�$F�a/Z�C�i���6���8��������9�#��`aR��R�_��T����u�>���Ae�����L6�.i�w�Qgwjb��u�z�AM�Z�W��cx�k[-���0�nN�6?� ��6���l�;p{ѣbj�̡0�o1��0jP��D
vv�[�A�8t�XȂ]K�t���0,��ی�]i�d7]!sG&s.k�����4�WJ���@P��H�0��e��ɖ��	l).;v;�4�>P/�<��Jͤ�H+�_hMuS����!� rS&��A��y�I��Ir��6��w)y󋀽�����U�i�(��1KM�&��DU�.���mZ��ٹ]��9�6��>t�-�+3��d/��
���d׎�������q� �ґ5�͏ŁZ�L�H[��&a�\�Jht73�p���ʼ���]N��v"�-qHt���T�+1��V$�����]���l�D��w2��qt��}#�յ�G��'p���RgA���<�k�\x2&�ĉ�H�A,��.�'c:|y�[��'��܋�N���G,J�J��_�ɚ�VOL�7��Wj:����ݚ�@���*��#`��W���2�?h�W�"�E�w����ya�׺��f��Ͷ�a���1b#i�� ��Q�p�Tql����Ƞ?T^b^���+��d�x~���(�Od�&��%X���5z|v�]�a�罞���oe��-�{�H��{b�7D�g֨��>� �	�����q�w�;l?��w���P��\�"��Z�g���S��6��6�h'�GE!D�� ��6!�2��R�L�'��� nh�=��	 ��1�m+�;CTE�� Ҙn�H�2���7�s0��U��@:�	8�9� ��t������)��D��5�>ZK�rՍ��U��9 �;|��3�@�Cl&ꮓb�E
�H	��� x"�~&B)(ku�f��jF��%�%Lb��CU�`�8S��"��xj�[��D-7�x��2&���m2es�Q@�p@����	!�7��A��.���f��p4�d
	!y�\GGHx?��5O�ly-�@B��pm{e�� ����#=a����Nwm������[vi�/2��7�r�KOai�$�yF���I��	)#bB�B18#wd�xR;d��ɿ���`���9QD��[��RIGu	��D��H���H	��^�C��D�3#&��/�GP]����ݝK�����Se-��Im�����6$���[������#��!��!������?-n�T         C  x�5��q�0C�R1��{I�utNkI ����k�YΫ}�2F������׭�>���2������ػ곖�>V9��{�~5ʈz����Uc��un<m�C�N����5J��ze�:{���F�[c����e�rg��W(�N�ңg���(�Dk¨e7�<E�X{O=�2�Cz�u��"[_�*c�u�Vƚy*��s@{Vtuǹe�f"�E��G������)�b�W *�����ZU�V���1SY!g��#���^����������.�S��U[���uUe�G)t\t��CЇ��A��Nޚ~�b�:&t��T^W3��l��>�I�H�!�%HG��:{~uz:�������?(��#��P��7OQH!>�U?�2X�g��9�0�T��n%C**�.�j��,�v���{y�6�}����P?;� �*�5+Tp}H:�᥃�G��uW����2)b��,���U��zw�( {��5(�-�M`z�s�y��wRLX�ÌQ-�I�������A�!m"S�t8a��
$S2��A�avw��V%I��U�Ex�.�"C�"��AGYV:`��j����&%G��j|���;bܬqϟ���Y&H�?jQ`#�Nw���Ln�qJ<�C�H%> sK�u��ժE�Uu	+�e�L�v���8֥UX���6�ɖ�p�����Zd��T�ʋ	*���~ՙZ�Ð�BH�(Y�,��W����������z���kA�H-����c�[$��>��沗iA�t��ݎ/:d[8�3��o
!��cKotL�6�����O��tft���"��ԠmY��6*���A$������PLVI���,� �2d9������3��}��w/v�H�3���c`��׳!5�!�g߱�iZ�S��y���OBhy�
�ƥ&yx�6��Nr�˼�4(v�@a8}t�;����A���6�n��Zj=��z���1D�ꢷ?S�dn����g�B�>�_�������3�`�����i^7ã�̀L�	�dE&ì[�������ڷ�š�!r\����	3m�n�$��ȟ��o�w>�Q|�a�؉JbV��ies��[ ��%���G��f�ש���a����oo�_�u6���3e����֬p��_"j�)~U�bF����p�4O 2�oH���i`��3P�V��VME�Ff�MǓ)
�?����l^�h`��BDbI�b�$V�!4�+{k4 �ȷ��L��tUqY>��pϼ�4��������%L�ڳM�}c������^+���y:��\��j�?�0�2���g��)� �MC�Xy��NM��գ��A�����"��?ćC!�Bat)�$¬��^UT6'�Vf]?���GS�f��k�T���s�I1�Mbߴ�����&�@x 钗���a*-���[�7�@OI��7�ݜVi|���{܂�V��UT����=�t���:A�,���f��y���0�֕s���8�k�Ĕ��E	�q�DxN�����u�2��k7jl#��r��7�I� �]([���.�d�L���Ê7�0qV�1�X�-͙ӖDpB%�0N<��IA+������o���5�Q+�ߟZ�b�&�         }  x�mWIv�8\��	�	�Ky�dY�,[���(�D���Lf�u�:K_��cb������?ď��>X=�읙=l�̚��>Z3e��?�r.٧y��쵞��ۏ��d��vk�L���}0��:�n5�Q��"��FV6�fW�םή��`��p\���a�}3�yfJ�}ӝ�����c�q�s���>�+���-��u��νN�K�E��yy�X��}�[���(��\���7k�)Q�ϋ�zm\W��P�*ݼ�X�wz����|�qO�醝�a��s�@�)�h}��ÿ��ؑɜy����ce�����i�n�a���`o;����홪x!�]�a�M��.�^��~���;��0�Lb���l�x�P�Aw4��Ɇu,=$Z4��7��v�~f.�������3)����2��+>��K��v>�#� W
vnǣ��u��[dPs)�J��{�1�G��˒]���p-��n{��V�(�*�T�F&�� �g�M����.sv���6������WW\��~Z&ۆ�K����f���9M�K�� �Q�, v0�	����XJv��~��CBY�[=c#R�p�rP&����«�n�B*R�����0�f��(C%v��+�}��\��Wy�j�W�J���N'�
��.ٗq�5ͺ�~��� [Uɮ�Hy뗺�RW�LO��N�T�-1��f��|���doeͫ�	7&d��-��sǮ�i|fe�U���'�C����v�;
�\U����4Ԁa"*�>��iW�=ൈQ`O����Bk�oō��j�ry��J�V���*��<Ŀ��GMLZ����n�r�(+^�i/�L|zBm8/��dFӸR2 ]W����ZE.�=�+kE�A���a��6�(���4���	�����;�q�-�,Y𦠈٧�غ�Iq��Jޔ�UR�A�?p��{�`�s�mjv��x��W��݇M��*RЖ�]v�S����O�H�(�xu��j�O�ڎ���Z��Rh�Оw��l�#�I[��{�9�iI״�}"���a�4���'x��6�!~{vx�e�fߛ�Z&�y��C�jq�$0u�.q\Z��؁`E��\F�Msq�eR]�iȊȫ��umH�r��;ۯ1zM3��7i'��HZ"�6��+Տ�������1]`��H�&DT�U�T=Hp Y였�'eH����Z�;�g������#�@eI{�~d(*�� �h����oz���5��Z��q��-VuI\*P����L�ѩ.�C@�=)�Ǒd�]��)SR��+urb��(���no����#��,E@�߿�G��_���`�A����^�.{��	���hO�I��~{KH�L�dB�]pi�l)S�+�v^k(�BZ`�� B|����<e&IWv�9G �#	���^�W��l��m�4�����O6���;�{�e� ���
��/�:�05��7'������݀Xb�0�(O��#��4ZZ�(	x��9�7�������;*���E�|��L���	)����`���1��E�|���P�:JS��K �+	d��,D&Z���.�J#��Ժ]ѰH��Ed=�c���1Z.:����E�{���PЋ����~���@m�eo(Z뱴�*�O�l��B��w�H���!��;� -�]�+�⟲�O�i�8�K~��㧡�1΋��2�4��!��^�Ї��۬?w�(��F��.���l~FsI��qp^8R&|Cj�=Sy7A�M���2b��ٛ��%؇��c��m�i�x�V6"Lf�O��Fw¬p��eK�h-�#��(�K�齇)�	v��Z@j��:=�J��oǍ&ڀ�� l�̅�kP�T�[��"E������?���p            x��[=��6���_1�/�S���t��E�s���CEU���5q�#s����e�dI�ch&���|��eBU�Տ�/���/���t;����|9O_.��r}?����X�p:͟��U�Օn��?m�������}Z?�կ�L�n���rz\'��K�:G+���t/Z�m�z]�4~�������O��<_.c��8�{;W)7��F�(Uwt���yz���u����������i]��r�K�ڗ����`�uz�.���۲ο,�����r���H[�ö/z������r}]�Y����X���?��s���Ǟ-�T}m����m~����-�Ru�>�X,Ѫ���ǺN�~��r�6����zQ������i��_��8-�z���~���{Qt��VM�#+�=�?�B��A�K�Ԋή��v��>��������>UVaKGVx�m�t%�����vߗ����[��m���.�lb��\�ڪUOmOg?cQ��Q9׿�(:)�}:�t�}���_��\���4U��X��"���R�Ŧ���1���Ć�\�Y;4tTÆ8�"��L8����.y8]�?Xzo��_�2��u��4�#�Hڗݭ�����͎�5�i
�|�~�N�� �Zv�G%wStId�/rԷ�V����T^�7�z�X��4t�v��t�����YߑzPXiU	|�/���c8e<.\�£e�1�&�3|���Q�W~����[�A-$��d��}�}]�N'r����N��h���<tK��+a��}�׳�>�6����55a��{n� �:��u,��E�g��7X�m:}#|�R��M��>�WpWMΣx���t��Nydtp9��h�P���<.:k
ƪ��#�әMS���p�%��p#�������'�t9�!2������������'���N����s���}��%�=����Q��	�uc����AdZ�7x���zˬ��✾�~��:�7�^�m<�� ,�Ea{`Z�a ]���'���>/�i�bTL9W��]� H_�W�޹����<i`�5�E���:��*F�y�yBd�x4�}�������CfN�G6�s`S��^�O��s�h1S���;���ʥ#<�_����7���d�����_R>R�^b<\Fx�75�n&
��;�.��zZ��d��\A�	�&ۨ���P���}AyԦ|h��՚]��f5��7C����s;��]����Q=��"ۿ�D���B������c��[w���цd��O^40�&uu�x���B�Y�S��8�8���v��̞�%���D��b������"�e܅3k�p��nL(�`�?�������q��Һ��Y���>�"�9ƐX�D�(z��_�9a%S2�JȾ�oVa;r������<�#b[#��8����bM� ��R�O��kx���> n��/��Y�L�,SK�ES	?o���N�H�<��G�lg+�ǂr��S��X1�pok��u�_���t��S��1q�N.?&P
��s��A¾0��)��%��1[�A�jC�!g,C�$�}a�Ь	Ŗ�1�%z����ֳ$�ڴ�!7�����f^F�qz�nƄڴ�+w��ݭf�����c�.rT�咠�5��\F ˖�&ڲ��EΫkc=5�sv��܀��Gsv����h�=C��� ��� +d��q���JCY!��Exeۀ�?)�rH�ss����A��@����d��P����������6`�xۖ��G�~�@�K��J���-*��NÅoE����s�P>J4Bhטg�%�T�I:m�똚ؙ�UEH�9u��@4:'��C��Y�'
�����Fr��?���7S@��%z�oزs{�(��mE��*,y�	5���JQx;�A#���(��|��F�N�2*�Ǝ7ܦ��|���T��P����8���g�}�q>�4�#�0wT�_���*wF�T�U��n]�u�/��5a��T�.�6��4GG�
 &9��H��2���M!+9/���e�ZZ��]��_R
RQSr�����w�N�D��O�Xp$l��1��56�CDϬ�=b�L �w.B��t_��J��M���a��j��7��y`#��,@Y	��5$�c�k���{�G 5��Q�2X8����C��;�~L�_2��N�a\��*1J�(l
�J�MQ�R��9��OiĬ�fDs5
qIћ���M�v�*H����3d��Et��{ȑ&h���U*0���B���}��8%���|�j/�e��舨Q[z륖R:�B�lM��cճ�Q����|5=s���`f��������}q:]���VXJY��̵ fg�������ʌ�c�U(�6��x9}��<�|<)V2	S}�Y/�k)�(EL!�����-j���LAjE��ɶ݃����(d����Z�˒�Sh#����i�e�����-_s���7{�%6���`*�� Q�r�k���*���ÂdϹ��/}Z�8���P^.�4΋(� ��j*R{ɋ���~������H8>H��T�/�_h�c@in���22�@M�pj�t.���}���zNǚ�Һ2�S�c!'��Z���v�I�t��N ��P�G3a2~��
}� ���sxL��.i�r�X�v��kͺ�6-�aw�Q&Y��<�cZ�^�7��H1O���9�Ca'�w^pB�N��ʷ��%\���x�\�ތ>6�.Dp�@�����R�y#:��9U�v?��6U���1��f�S����-aW�{n��m%�B������t�����fB�I�el|%�K�۠�P�t'�G���L!���b�R� �0,@S��&�}!W%?(!���:����Q֎�r��m�ih\?}�O!0����@,�̎Ou��#�d*p�unݪ�X�6�s{�F�6r������z����"�{3`�"��"6~`~�:g3 �c�յQc��"=�wo��� �a��+p9�τo������
�	c�Xgp��p��Ջ� �f��m��5�E��rW6 M�/O��\:p�T	9��hw���k�`�X�8�TRr����L�%�;\H�B A��f���@n���E�<
�K��B�c��]u5�[���?��P-�zx��R�,������e&���g)\` =2��U���#�9�V����f��ccγ3�ЛJۣ���2��Ф� ���d�U����.HO>���t��`r�31H���Q�E�f(�+T!8q�l��8}N^��F�!G�nw��
�nT��.�Li4���u��Smg|*�J���+�U���P����;+@3|a燍v�ׁbF6�}����mdX؄ %���v,+c���W<=�mwm"Y7�7�K{�@�������@��G�o�[��>z9q`���q�?\�r�|�D1�$G��,����AHG���v�	���H�q'�d�?�g��
�7���n([�l��7^H>G�a�$�49��H���uS�BQ���H�W0P6�@(꟪��qᑣ�>	3��g��l�Hrx+�N^��mZ�IQu���ko���ɖd}R�����g�B�̽)h荐`�]H|Va�Ѕ��I20�94ǝ�D�Sa��?>���J�fڿ�pI���ٹ���]_�zY3����4����c��R&�DǚĈȇ ��*�Lx���*7Qw��3~�'@�+�m@#>��BD��g35�X�� +�	wKM�Tq�Q?"(��V����rs&�+�5AF��)Te�u����u���&{ԌtC�S�����*|�㞯���-5��6@3{�>z�y���Iq.�B�����{�}_9J�ےT.�v�g<�W�>�'|� ���G����i?jK��/%��$N���������߉�������+��� Mv�XĻ�\
�値ߑr堀��x箟���r=��(����������EsI��&5 S��v��=WxVֱE���ebc�m2�-T��CiDsg�nt��,�	��l���!:&j��h:�Rш4~P. C  �H&�-]3��^�4<ىZq�#RQ�8v���N%���X��뱢*��$×�o�ht��G^b�?���85D�I�H����[��:��Ϯh(CFdSv��^f}nj�M��[��Y-S�}).?4��f'[�G�֤�
�\�\��t;����-;��H+�}��A��4`��Oؕ�6%D�a�������E��I\����ع���v��Vڝ>jtbm�o��q}����S�&퇛x�U��CC,Ȩ���f��Ӈ�MK_.�qC N�/�A�0������;8�A�����Q�����$~9������Ld�:|xW��دT?S����R}�����:N����O	�k�D	>���eL�g���j�&^|�"��hـv�OIl�ʿ��h�p@�DuW�@Y;0:T��@+4���Y�/��Qs�%1H�6S���僵�I�[B�^�KL���C�C��_2���C�1���/E�F��0҄��J�zf�����T��*I�x-�kduާ��mze"<��6���>����S�����n��m̿��U��T��>�栥�N��g.���bb�&���������f4A��%�z������1�^pm�k�2��"-�	�}qKBc�Z��h��!�b�[L�8���	��	�\��M���:��I.�Pi�����m~�V���˓�4[�2�`�be�J��̀��5�Ʀ%���ƒy�ܳI�Gp%�?;ٍ̇e{`���[HR���@�s9W�l$y�#��i��\4o}n���f�����
�Pir_XC��p�h�rQF(#��~����G\��ٱ�B�ދ9��J�<{'��(�zX�)d�DJ�C��k�f�{�˞��
��~0��V�C�?#,
�,�w�Km{��&���|��S����8ad$��Bk@s�P��h@�UdN����WM<}�K࢜=y�Ӱ11U���5��AK/�'UL<1am�z���G��S�a�ZzT`����L�Y?��1h�Ѽ����8�}*D,EkxUs4���d��w%
�o�#}��8�4���
򶼟#3���� i��[��2M���>q[�M��,�?6���?��n�-�� GL@��q��_w���G�?�{��hV�
׏�m���T�R�Y�6d~��(ٔK����P�D��ψ��e���{22*Q�ϟ�p�s�
�O�u�e�����f|���hŀ�I��6:�	�B<�O&�K�ƿd� �VW|�9CE]�����u�mE�Q7��QVHx6����H�یy��0A� 0�q�O�Q�%�B�>��o��?�R��~�PC�<��8��CZ.�xc�O����B6�)�b��1�����F�4�lƷ	�mA�n�Q�J�@��A	=��,9�B�i�oѷ�
F��V�Q�苝��!��z��;�H����.�!�>La˰i����������A-��Q�v0şXv�,L��ز=�b<�rԨ��n/k@���f���4�A�#vT��wa�i�|�=�(jw�..g�d������D�~�����Q��L�;��#4@�^~lX^��h+�a�g^QHÌ����[]����ʃ         �   x�-��1ߨ���1�^�wyx��"7��n��ۘz����Ǹ8�@J.�U(��.���Uyv�D�t�ɘ����r�d�h��ޠ�е���nXvs e��_�٤�J�/zNZҺ�A�m<��'���~ � a*h         �   x�-�ˍE!C�q1�| @/��:��@�N�',��h�EO�s�j
:�En����Z��&�&H"�l
D��Q��'��_T��Bh��E��O�a�Z�+���9�XK�SӸ].?Ij�\:�a�>���'d��k�Q�<�x�e�����r~e��;	ﱅ#��ބ�@�ۖ6Ŝu�N�}�(���(��"�iKCc����_@.         �   x�-P�q@1��azbb4�t�9*�����i����;�,r	nl�}5>H�-�8k�B){�ŕ����_��-�T�R�cV<�gU���'����[�p��%k[�R��l�'§�;�c{]΁�@6f�U�]�8���i�>���eߗ�����?�z2Y     
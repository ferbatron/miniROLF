PGDMP     9    6        	        {            CarsDB    15.0    15.0 #    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    16398    CarsDB    DATABASE     |   CREATE DATABASE "CarsDB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE "CarsDB";
                postgres    false            �            1259    65544    baskets    TABLE     �   CREATE TABLE public.baskets (
    id bigint NOT NULL,
    person_id bigint NOT NULL,
    product_id bigint NOT NULL,
    number bigint NOT NULL,
    product_type character varying(64) NOT NULL
);
    DROP TABLE public.baskets;
       public         heap    postgres    false            �            1259    65547    baskets_number_seq    SEQUENCE     �   ALTER TABLE public.baskets ALTER COLUMN number ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.baskets_number_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    222            �            1259    16399    cars    TABLE     1  CREATE TABLE public.cars (
    car_id bigint NOT NULL,
    brand character varying(128) NOT NULL,
    model character varying(128) NOT NULL,
    color character varying(128) NOT NULL,
    date integer NOT NULL,
    body character varying(128) NOT NULL,
    power integer NOT NULL,
    transmition character varying(128) NOT NULL,
    engine character varying(128) NOT NULL,
    unit character varying(128) NOT NULL,
    country character varying(128) NOT NULL,
    price integer NOT NULL,
    sale boolean NOT NULL,
    photo character varying(255) NOT NULL
);
    DROP TABLE public.cars;
       public         heap    postgres    false            �            1259    24592    cars_cars_id_seq    SEQUENCE     �   ALTER TABLE public.cars ALTER COLUMN car_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cars_cars_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �            1259    65554    items    TABLE     �   CREATE TABLE public.items (
    id bigint NOT NULL,
    name character varying(250) NOT NULL,
    description text,
    price integer NOT NULL,
    sale boolean NOT NULL,
    photo character varying(255) NOT NULL
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    65553    items_id_seq    SEQUENCE     �   ALTER TABLE public.items ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.items_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    40960    orders    TABLE     �   CREATE TABLE public.orders (
    id bigint NOT NULL,
    payment_date timestamp with time zone,
    basket_id bigint NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    57376    orders_id_seq    SEQUENCE     �   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    32768    persons    TABLE     p  CREATE TABLE public.persons (
    id bigint NOT NULL,
    email character varying(128) NOT NULL,
    first_name character varying(128) NOT NULL,
    last_name character varying(128) NOT NULL,
    middle_name character varying(128),
    password character varying(128) NOT NULL,
    telephone character varying(128) NOT NULL,
    role character varying(64) NOT NULL
);
    DROP TABLE public.persons;
       public         heap    postgres    false            �            1259    40968    persons_id_seq    SEQUENCE     �   ALTER TABLE public.persons ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.persons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    49186    tokens    TABLE     �   CREATE TABLE public.tokens (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    token character varying(512) NOT NULL,
    date timestamp without time zone
);
    DROP TABLE public.tokens;
       public         heap    postgres    false            �            1259    49185    tokens_id_seq    SEQUENCE     �   ALTER TABLE public.tokens ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            !          0    65544    baskets 
   TABLE DATA           R   COPY public.baskets (id, person_id, product_id, number, product_type) FROM stdin;
    public          postgres    false    222   �'                 0    16399    cars 
   TABLE DATA           �   COPY public.cars (car_id, brand, model, color, date, body, power, transmition, engine, unit, country, price, sale, photo) FROM stdin;
    public          postgres    false    214   /(       $          0    65554    items 
   TABLE DATA           J   COPY public.items (id, name, description, price, sale, photo) FROM stdin;
    public          postgres    false    225   �*                 0    40960    orders 
   TABLE DATA           =   COPY public.orders (id, payment_date, basket_id) FROM stdin;
    public          postgres    false    217   A                 0    32768    persons 
   TABLE DATA           k   COPY public.persons (id, email, first_name, last_name, middle_name, password, telephone, role) FROM stdin;
    public          postgres    false    216   \A                 0    49186    tokens 
   TABLE DATA           :   COPY public.tokens (id, user_id, token, date) FROM stdin;
    public          postgres    false    220   �E       +           0    0    baskets_number_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.baskets_number_seq', 137, true);
          public          postgres    false    223            ,           0    0    cars_cars_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.cars_cars_id_seq', 60, true);
          public          postgres    false    215            -           0    0    items_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.items_id_seq', 15, true);
          public          postgres    false    224            .           0    0    orders_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.orders_id_seq', 93, true);
          public          postgres    false    221            /           0    0    persons_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.persons_id_seq', 19, true);
          public          postgres    false    218            0           0    0    tokens_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tokens_id_seq', 31, true);
          public          postgres    false    219            �           2606    65552    baskets baskets_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.baskets
    ADD CONSTRAINT baskets_pkey PRIMARY KEY (number);
 >   ALTER TABLE ONLY public.baskets DROP CONSTRAINT baskets_pkey;
       public            postgres    false    222                       2606    24585    cars cars_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.cars
    ADD CONSTRAINT cars_pkey PRIMARY KEY (car_id);
 8   ALTER TABLE ONLY public.cars DROP CONSTRAINT cars_pkey;
       public            postgres    false    214            �           2606    65560    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public            postgres    false    225            �           2606    57353    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    217            �           2606    40971    persons persons_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.persons
    ADD CONSTRAINT persons_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.persons DROP CONSTRAINT persons_pkey;
       public            postgres    false    216            �           2606    49190    tokens tokens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public            postgres    false    220            �           2606    49191    tokens user_id_fkey    FK CONSTRAINT     t   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT user_id_fkey FOREIGN KEY (user_id) REFERENCES public.persons(id);
 =   ALTER TABLE ONLY public.tokens DROP CONSTRAINT user_id_fkey;
       public          postgres    false    220    3201    216            !   P   x�3�44�41���ΎA\�`�����o
�rz���r��M��`y0�� �7A�MA|SH�!�!cs�@� ġ         �  x�Ŗ_O�PƯ�}�~YϿ��;�Q#jx��mզ�m�p$�5�zeL�+/]��_����]`:���%��9���y��n܆;�z'�����&�ɦ�%/�OC��d[w�	^G��I)�8��l%[���q�&Pf�~��qru�mл�@��!�����'�����_�����7Pf��Zqܞ�V�`My� ���WgUU����f�K�����ʅ��S��L��Xn��3`�êߑ�w-aB�l:��\_�*墦e!�x.�q	��(R><PQ�)���r��HZ��j�d%��p~F��g	#!9$���{=WMǇ�/v�)�X��'��+�ʯo����"�k?y���FP?���l�����NS32\KJQj5�9.�9W��H=�8ⰼ�z{x�3�����	�X��$,A�`~f��C���,������<�ü��ˡ�
��q3t��q�Ԣ�0�m��m����t�Yx�+ύT݁��q<T�� 0��X�h�Ķ���ќ���LY��dgp�_��-<e]D�Pۑ6-�;�g�ʏ�q�i<żrTϿ�\���1)i	a�.F������L.X��"o3������!f�$?�z6t�]U3��yU���C�-lQB�3��	3��$��h&�ȹf�~c(��ְk�1*�j��!,A��VI�_#�O`ݦ�㏦*��oCw�      $      x��[�r[Wr}��b�!UR �NP��F�-F45EҊ��/�D+f$���d�x1E)�E�VQd]l�R���� y����%�^�{�}�2I�$� 
8�}�ݽ�{uc&�G��3܊z��;�nF��z��F'&:��Í�.�&�kE}�K7N�~7�Ә[��[���sS,L�d��5�|�Dݬ���mdM�P����p�ܸ�������h�c�ލ�ᦉB�zt��7�{�&��~l����t�!�DC����"o"�ѿ�.f]�3�{��G����?��Ml���F�შ��DY$=~����t�^��vǆ_��L4@�O�X}��[,�x0�&ҧ�y�
D�293�9�f�-�e��nvp�`�k�x��Q��6V��ӄ�vB:el��w�@�,E��d�i�Ԧ{�i2���/�$$%|<���$vL��c;N��Ϝ��A�2�M{�"+!L�JR;̓����J����,vĲL*/I��i�hw���a��T���YL�*���O!K�$�1B���@�h�BF'��o[���� ����?m��WP����:�g �)�yL�l���t�!������Ov �L�;V����ޡ'����G��
ua��2.���^�:��!j���^�H��)6��a�"�M��i�d)G�ui,1^k`���Z�o�Z�G��B��m������
Yïa�4�#[R0�G��<[.�Z�M�W�C��ݻ,�$To�$��N��s 5o�RU�����T9Y6nZVM�Q�=��n�Av~S0�ly��/�� �#�e1���g<؆����Ǧ:Ȓ��a���m>5S,�,��0i��㥟�x�ay��0Kl�İ�E�
x��Cʎz���ul9;�1��0^�.�A�l����4���`g�_�6���Q�a!
���7�^��T[�ceu�3���kU�d��6�"F`����Y�M���-�c[E���3䋼�S��3�b��!��n�� ��uWc���0�N���Q�6��-�/!��C�}g0%��b�C%�|�8��e 	�&hlo,	ȉ�^ �؄��ſ�G(`(���L��oZ����[S�+�)Δ*���gkk_\��Z������|�v�L�|����/�j��j�V)���_�W�D�%���ks������%s�q�Z㧳�ss��F��S*W�*U�X*Ѕ²�d/��� $<��]
�Q:�'|z�BT��3z$�����wl���}�V9�+�. ��e�bp�(ک>�xA�[8���CHgEoђG�z6��9�L�|��Z���x��}ϔ���ߟ%��w>��r;���7��}����+_�\�ukmm%W,�n�2G"�U����](���y�\(^ġT2���V��z҆kQ�<���D�(d~=����+�犥B��)�>y���7���qѰD������{�T*ܘ*��s��B<��c|����S������� uU��|0����?yyLRxƝ�=��%pd���������_v�J5��p΅�����YUwƾ��꾣1!Z/�)��=k�,��ȋ�I��$wn�b�a��A0u�(��v�, ��c@�%.7�m�lHr*Q�&6&[ ��+Y�E?�b=��J��cl�7��'�'KM`葏�<D�����7�w�p�5 6�vz>����í���+�2I�)�U�g(МV�j!ᓤ���rJ�M�FӁE�M#����(�[��|�?�*� ���nV�̮�g@�		�Z2������_T�k�R%W��_FjB�&$��I��-�+�S�|m�,�Y]�{�˩�;��:u��ݕ�;��Ϳ��]]��vw�j���Raj������jc~�|�T���br6͒�d�����s�̕����e3;�XX^��ʅ�f��|cqn鲹1;}iyv�!7G7g�������bc��e�8G�f痯/���{6$�x�������E#O�<��-��?J�u�G�T9v�t6��<� ��5�6�K(�p����Wb00rz����n"�#�hkg��!r�Rj (�X����mG�%)�u�^��Vt	�[hن5l.M��P
q���6��g*��s��B�\)�j��iv�m�, �P��Gӥm�)I.4�Ź`H���p�q���iܺ�z��M��h1W��)�� ���	�$�Z��-A�c	c��c%$��'����mIV��&�cS�G	�i=dEGP�Z��#�90v(�B膰��A�,x��#���4�k[��ȎD��If�6���J�1��9�NBW�iˆ��v��<�ez�CF�!Yt��8�)�T���Z�T����z�\~HR��"��@�pb����o�v6���]��_��r��\]��\��=�8;�cX�F<h�U����a�h�h=��0C9nG�<0½�G�Ŋ߄��^���q�`��c$�)��TO9����3b[LM��>f��������� ��:�U�b��?����$9��E���	��1�2�=4��h��v��'��8˦����?b�%�0�5�B�H�)��چ�q��[G�lȁ����^'��,qô�rnkZ��$���G��Pʀ=EP �q���35F�R��k��⛟�
4�#Z[S�/)v���]=a��$�4*���G��7Y��}�hzH�+�wO�F0�k�ly^���;���Tӳc���ȼoC}k0��o$���;�ǘLQ�K�+l	�.��-͇C�rH؁%�u��o���$�e��qcx�,���9TR�؉��H�Zt� �-)��g-e���������%^K1a�?;�5�8�L���������� ���	��%|�������.��y4y�a��'��5���S�����Ve�C�=9J�H1�&�m�\5'>/<����s7�_���D�����임�r��k'RA?O1+U��T{���v� �2�L����d��4�� N�w�6�K!�	�$���$&ߊ�LM��> \��~��B\�
�^d���'�G?���0�Y��th�7B�b��D�A'k�j�����Dz엔GG��%��Cm0�-��}�Ѳn���xj�È��^SS�I��0�h��ce�DK웢)r�ԼZE�ˬ3��m 6g��V�6Z:[�	@(��^���I���C��,�c,.`!���X�IlW �gM*���]��b�XA]-36�M�H��2Lv�xZ�moJ��	��Y�WƯ]����C5%�~���1��g��_d����	�{?�0N�D][4��YU[b\��}����ю����tz����M�X�`��Ldb�3��3ՙ�s��B�V�V%�)2��'%�������-�\[l|�,�mW�0@����@N�G�0]gB5�3!��t]7�N:�T�-�:��6�g���x'���#���%�+-���1D�d������-��������cCY�Q���6��65b�b����S��b!�����jA6�P2��p��m��Ol�"��@M��@��
a�1iH�R�)	���8�V,�X�@�A)r׸q�֑�bN�LjA\R��:M�cs��6{=x
�%(��$�2G``4z�`�k��$#	���Nь�?7GO�m���CY�t}�+q�H�H�6z%�����졣�C���	eD��Zgj��/�\��`�~��aD�|��g�p�7|�w���V���&ʤ���"}�6A�JG��]��������rF;�-4�4N���6`:�n��=˒�cձ��3�z���2]�)��Ef��l��,��;��7?1Ks�b��?z�#�$�
1#��hbx�^�cUu�\7�v��5�iaϽ����@���l��w�
LWR��X�F�Bӕf�b�W��H�B��$��*���:�|�X>שWʥj�('[�p�+��K�0����������b���\�T�e�2]��/^a����	,���8��C��3/Q���D6n�â� B�	�ԩP�.��W���d��E1��-�*�'`]�sx���baJ�		�ZO���i�h��ݧ�
���KV���0j)d ! 
  􎁛��F�q���N!.��c�5�  ���$�b�0��=�T�Y�'TVN2�خ�����߰c���$;��X�-�^щ�I�-����0��.�;���9ֹ$Z����֏��q�lC�V��3��B8Y���F��]�p���bCrAfim��<������e��^��]��Ji�O5�@�K?�O HA������2�N!m�f�k�K�N۹�р����i� eg�`�����YvS.v��{��<5�'L5SF��%O�]�R���X�I���6$N!GZ���y_u�D��"�Ĝ#�JO�>ɺ��=@�wW~�2өzr����f� Y}C2{�mQ����-�x��4�0TZ�%U��?7�(#B#�a\�)��	*n�(��Ba��Q6��h���;��c�y\�R��D�B��i+A�W�W��+,Q���3�ŷ$������u����L���>��X�C�]�m�uz�#��i*Y-
B��J�#�[eoi�g�T�/�e-���Ї�&FҨ�>?��@/b��6^��y�}����-��^'�}��B87���_CG���H�O�o-⃵9�k�P'��<��
�j]2N_��.uGh�OQl%7.}�flRR�?}p�XZ����#Mt�)I�1I�E��='�=�/�Au�sq��&��q�a��3F¶-T�P�`�l.
����C�'t!��ߋ�@�me�:����b	�㦏�y�#y~˶�i$J3gk���KҩoI�^�@X��N?��k�����|��4���ގ�.#m{��V�\d�Z͇�($��sH�^��}	)��4�ol�5HwlWx�ɡ�#u�	���O� Doli�`�c(hۼ�tD��q�=>�a��������J?��@>���-�!o�%�v���=m?������$L��oGZƵ7Z�3�p:�p֒��WM���?qx��������.�5�y��~J��Ed�s�D������ɽߦ�"j*زEs��t}g�4������a�Ĥ��rs�Yy7<$�����g�k������LMzԊ���`'��>7�8���e#�;,���N���B���}-?��QAm7.�hd��� �X;%ro��TYJG�����?q�s��8!��u�`�R��BcƶX�m�u$s;YNM��l����6�{��l.7=�h��:��v"���͜ɥ�X�T�m4��P���Ťu3&�P�/�n�X���T���c�����?)��g�~�Z/�k�iI��N��('M�q�C����
����s���6�-&��Y��
�H~v��
(�Z��g��H�r�䯀�y�����.��W��⁢[�r��z;V�g/�{Z[�{L�͎t*�g���mۃ,Nm$N@��=�wnYhr����i?-Lk!pi)�]RJ{�t}K��dyvj�.:&x��#�#?�r�rIH8Z ъ��[�2e�R3��Jb�����D�B[GQs�6�2dLв�\gQ܅޳�L�ݏ�p�	#���@�T+Ԫ3�?Ϳ��{� ��9         @   x��4�4202�5 "#CK+#S+c3=KsKCmcNC.Kc4%�@%�z�&`%�\1z\\\ u         \  x��UKo�V]��v��~�]x��0�*U���l6�LF�tѪ3RUi�U���M�d���՘АH#�Z�/[:�;��k�񩭙�A�s�)�N��$�ɧ��6}
�V����[*
&%�1@}]���s�l�-�����W�S��^a��V�{�3}	8��@W��OX`8Np8yj���<~ʰv���Mr��9,_��S+�Ze1c����E��D|)���f���#İGMՕb@����g����e�6H>����"�$7��^���1�>��'P^Uj\}!��.����jt6T����R��(k��Ċbg�%|��WJ@���֜g?>&���$W��9"Nz���	��Jl���箲��s#vk�ɣ�B�h�W�7(Ӕ��ש
�M���������s��_�w�mr��'S�ۮ�����K�z�@A����?F�N=�2���c�80i����'|ؚoi�v,�Ur�^�ߧ?fV_���< o�|�޽�M��(�e�v[��r#`���7grTQ�m�9U����CD
�mpCt&,�V�Q�>l�j�1�Ma�er�i`��#m�����;������e�!�$��o�w9��l?c�O�M�Eh��Q�$ܙ��G��p)�^c�t	q�F7���C��J�k�8ŗYv��D�K����Xs&z���>yH/�g�p0��#s�(�m�:�TKu�J�x8��x7�y�,�>���N���4-�R�=&�kO�f��]���$�)/�v'��p�?#�eg�"���Uu�/�7�Dy���U���(�47��ҥe-���L
c�]��!���Cf�Cf}�82��mIs�Aq��	�3���a��VS�d$F��oG6��}.b�q��^��y���И,��`�gM�J�s��/t���{=��z�Y�#�!��[Z6��fi��B�gJGcq�3f��*���#8F�8���6�Ӽ�����c-lJn��h̡�p�Ҭ�bs�E�J�4��3�kY�M:�L�m�E���~~�C�dvg�+>����L��/��?��:.�j�Ya%U�D�d�(��iU�G�9=�����xzƄ����k�999����         n  x����r�0���}�!�
MF��Ng:����(Ex����N���Μ{�9s?{ �^v^��3F����+-W8u舞�q�0�w&�°��<��-��A6uX��Y�sI�D@*=�H�s��"�%��*-U���dr3�"r�������x��C�����.c4��[�|r���l��w�y�y�g���4�ݙ#mT��x:y��vy��ӡ�����>�A �`�`Xд�!1�aj��_�?a$�궍�j'���B
�$"Y-��9-��X��.�@�W��_ R�O�� q�gm�~ :Ʈ\�J�e[�/˗�kF!����n�i���ə�B�x �B��X'Bc�=뚦} ��y     
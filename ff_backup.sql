PGDMP      '                |            ff_db    16.2    16.2 >    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16818    ff_db    DATABASE     �   CREATE DATABASE ff_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE ff_db;
                postgres    false            �            1259    16829    constructed_constructions    TABLE     �  CREATE TABLE public.constructed_constructions (
    "ccMaterials_id" integer NOT NULL,
    amount integer NOT NULL,
    capacity_used integer NOT NULL,
    name character varying NOT NULL,
    category character varying NOT NULL,
    icon character varying NOT NULL,
    description character varying NOT NULL,
    buy_price integer NOT NULL,
    sell_price integer NOT NULL,
    "settlementSettlementId" integer,
    "constructionConstructionsId" integer
);
 -   DROP TABLE public.constructed_constructions;
       public         heap    postgres    false            �            1259    16828 ,   constructed_constructions_ccMaterials_id_seq    SEQUENCE     �   CREATE SEQUENCE public."constructed_constructions_ccMaterials_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public."constructed_constructions_ccMaterials_id_seq";
       public          postgres    false    218            �           0    0 ,   constructed_constructions_ccMaterials_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."constructed_constructions_ccMaterials_id_seq" OWNED BY public.constructed_constructions."ccMaterials_id";
          public          postgres    false    217            �            1259    16820    constructions    TABLE     �  CREATE TABLE public.constructions (
    constructions_id integer NOT NULL,
    name character varying NOT NULL,
    image character varying NOT NULL,
    category character varying NOT NULL,
    "amountOwned" integer NOT NULL,
    "amountOwnedSettlement1" integer,
    "amountOwnedSettlement2" integer,
    "amountOwnedSettlement3" integer,
    cost integer,
    yields character varying
);
 !   DROP TABLE public.constructions;
       public         heap    postgres    false            �            1259    16819 "   constructions_constructions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.constructions_constructions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.constructions_constructions_id_seq;
       public          postgres    false    216            �           0    0 "   constructions_constructions_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.constructions_constructions_id_seq OWNED BY public.constructions.constructions_id;
          public          postgres    false    215            �            1259    16863 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    inventory_id integer NOT NULL,
    amount integer NOT NULL,
    capacity_used integer NOT NULL,
    "settlementsSettlementId" integer,
    "ccCcMaterialsId" integer
);
    DROP TABLE public.inventory;
       public         heap    postgres    false            �            1259    16862    inventory_inventory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.inventory_inventory_id_seq;
       public          postgres    false    226            �           0    0    inventory_inventory_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.inventory_inventory_id_seq OWNED BY public.inventory.inventory_id;
          public          postgres    false    225            �            1259    16836    items    TABLE       CREATE TABLE public.items (
    item_id integer NOT NULL,
    "constructionID" integer NOT NULL,
    "constructedId" integer NOT NULL,
    "amountNeeded" integer NOT NULL,
    "constructedCcMaterialsId" integer,
    "constructionsConstructionsId" integer
);
    DROP TABLE public.items;
       public         heap    postgres    false            �            1259    16835    items_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.items_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.items_item_id_seq;
       public          postgres    false    220            �           0    0    items_item_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.items_item_id_seq OWNED BY public.items.item_id;
          public          postgres    false    219            �            1259    16854    settlements    TABLE        CREATE TABLE public.settlements (
    settlement_id integer NOT NULL,
    name character varying NOT NULL,
    location character varying NOT NULL,
    level integer NOT NULL,
    total_capacity integer NOT NULL,
    "bottleCaps" integer NOT NULL,
    image character varying NOT NULL
);
    DROP TABLE public.settlements;
       public         heap    postgres    false            �            1259    16853    settlements_settlement_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settlements_settlement_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.settlements_settlement_id_seq;
       public          postgres    false    224            �           0    0    settlements_settlement_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.settlements_settlement_id_seq OWNED BY public.settlements.settlement_id;
          public          postgres    false    223            �            1259    16874    trader    TABLE     f   CREATE TABLE public.trader (
    trader_id integer NOT NULL,
    "settlementsSettlementId" integer
);
    DROP TABLE public.trader;
       public         heap    postgres    false            �            1259    16873    trader_trader_id_seq    SEQUENCE     �   CREATE SEQUENCE public.trader_trader_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.trader_trader_id_seq;
       public          postgres    false    228            �           0    0    trader_trader_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.trader_trader_id_seq OWNED BY public.trader.trader_id;
          public          postgres    false    227            �            1259    16845    users    TABLE     !  CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying NOT NULL,
    surname character varying NOT NULL,
    username character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    "isAdmin" boolean NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16844    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    222                        0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    221            9           2604    16832 (   constructed_constructions ccMaterials_id    DEFAULT     �   ALTER TABLE ONLY public.constructed_constructions ALTER COLUMN "ccMaterials_id" SET DEFAULT nextval('public."constructed_constructions_ccMaterials_id_seq"'::regclass);
 Y   ALTER TABLE public.constructed_constructions ALTER COLUMN "ccMaterials_id" DROP DEFAULT;
       public          postgres    false    217    218    218            8           2604    16823    constructions constructions_id    DEFAULT     �   ALTER TABLE ONLY public.constructions ALTER COLUMN constructions_id SET DEFAULT nextval('public.constructions_constructions_id_seq'::regclass);
 M   ALTER TABLE public.constructions ALTER COLUMN constructions_id DROP DEFAULT;
       public          postgres    false    216    215    216            =           2604    16866    inventory inventory_id    DEFAULT     �   ALTER TABLE ONLY public.inventory ALTER COLUMN inventory_id SET DEFAULT nextval('public.inventory_inventory_id_seq'::regclass);
 E   ALTER TABLE public.inventory ALTER COLUMN inventory_id DROP DEFAULT;
       public          postgres    false    226    225    226            :           2604    16839    items item_id    DEFAULT     n   ALTER TABLE ONLY public.items ALTER COLUMN item_id SET DEFAULT nextval('public.items_item_id_seq'::regclass);
 <   ALTER TABLE public.items ALTER COLUMN item_id DROP DEFAULT;
       public          postgres    false    220    219    220            <           2604    16857    settlements settlement_id    DEFAULT     �   ALTER TABLE ONLY public.settlements ALTER COLUMN settlement_id SET DEFAULT nextval('public.settlements_settlement_id_seq'::regclass);
 H   ALTER TABLE public.settlements ALTER COLUMN settlement_id DROP DEFAULT;
       public          postgres    false    223    224    224            >           2604    16877    trader trader_id    DEFAULT     t   ALTER TABLE ONLY public.trader ALTER COLUMN trader_id SET DEFAULT nextval('public.trader_trader_id_seq'::regclass);
 ?   ALTER TABLE public.trader ALTER COLUMN trader_id DROP DEFAULT;
       public          postgres    false    227    228    228            ;           2604    16848    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    222    221    222            �          0    16829    constructed_constructions 
   TABLE DATA           �   COPY public.constructed_constructions ("ccMaterials_id", amount, capacity_used, name, category, icon, description, buy_price, sell_price, "settlementSettlementId", "constructionConstructionsId") FROM stdin;
    public          postgres    false    218   }R       �          0    16820    constructions 
   TABLE DATA           �   COPY public.constructions (constructions_id, name, image, category, "amountOwned", "amountOwnedSettlement1", "amountOwnedSettlement2", "amountOwnedSettlement3", cost, yields) FROM stdin;
    public          postgres    false    216   NU       �          0    16863 	   inventory 
   TABLE DATA           v   COPY public.inventory (inventory_id, amount, capacity_used, "settlementsSettlementId", "ccCcMaterialsId") FROM stdin;
    public          postgres    false    226   SV       �          0    16836    items 
   TABLE DATA           �   COPY public.items (item_id, "constructionID", "constructedId", "amountNeeded", "constructedCcMaterialsId", "constructionsConstructionsId") FROM stdin;
    public          postgres    false    220   W       �          0    16854    settlements 
   TABLE DATA           p   COPY public.settlements (settlement_id, name, location, level, total_capacity, "bottleCaps", image) FROM stdin;
    public          postgres    false    224   �W       �          0    16874    trader 
   TABLE DATA           F   COPY public.trader (trader_id, "settlementsSettlementId") FROM stdin;
    public          postgres    false    228   uX       �          0    16845    users 
   TABLE DATA           ]   COPY public.users (user_id, name, surname, username, email, password, "isAdmin") FROM stdin;
    public          postgres    false    222   �X                  0    0 ,   constructed_constructions_ccMaterials_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public."constructed_constructions_ccMaterials_id_seq"', 12, true);
          public          postgres    false    217                       0    0 "   constructions_constructions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.constructions_constructions_id_seq', 6, true);
          public          postgres    false    215                       0    0    inventory_inventory_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.inventory_inventory_id_seq', 36, true);
          public          postgres    false    225                       0    0    items_item_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.items_item_id_seq', 28, true);
          public          postgres    false    219                       0    0    settlements_settlement_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.settlements_settlement_id_seq', 3, true);
          public          postgres    false    223                       0    0    trader_trader_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.trader_trader_id_seq', 1, false);
          public          postgres    false    227                       0    0    users_user_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.users_user_id_seq', 1, false);
          public          postgres    false    221            @           2606    16827 ,   constructions PK_136423e7bdd997003c7c37b6aad 
   CONSTRAINT     z   ALTER TABLE ONLY public.constructions
    ADD CONSTRAINT "PK_136423e7bdd997003c7c37b6aad" PRIMARY KEY (constructions_id);
 X   ALTER TABLE ONLY public.constructions DROP CONSTRAINT "PK_136423e7bdd997003c7c37b6aad";
       public            postgres    false    216            L           2606    16879 %   trader PK_244527bbfada91b82b6b3a9490d 
   CONSTRAINT     l   ALTER TABLE ONLY public.trader
    ADD CONSTRAINT "PK_244527bbfada91b82b6b3a9490d" PRIMARY KEY (trader_id);
 Q   ALTER TABLE ONLY public.trader DROP CONSTRAINT "PK_244527bbfada91b82b6b3a9490d";
       public            postgres    false    228            J           2606    16868 (   inventory PK_711db979ad954f0ab33e3eea53a 
   CONSTRAINT     r   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "PK_711db979ad954f0ab33e3eea53a" PRIMARY KEY (inventory_id);
 T   ALTER TABLE ONLY public.inventory DROP CONSTRAINT "PK_711db979ad954f0ab33e3eea53a";
       public            postgres    false    226            B           2606    16834 8   constructed_constructions PK_921f15d8af840c1d937f7fa0862 
   CONSTRAINT     �   ALTER TABLE ONLY public.constructed_constructions
    ADD CONSTRAINT "PK_921f15d8af840c1d937f7fa0862" PRIMARY KEY ("ccMaterials_id");
 d   ALTER TABLE ONLY public.constructed_constructions DROP CONSTRAINT "PK_921f15d8af840c1d937f7fa0862";
       public            postgres    false    218            F           2606    16852 $   users PK_96aac72f1574b88752e9fb00089 
   CONSTRAINT     i   ALTER TABLE ONLY public.users
    ADD CONSTRAINT "PK_96aac72f1574b88752e9fb00089" PRIMARY KEY (user_id);
 P   ALTER TABLE ONLY public.users DROP CONSTRAINT "PK_96aac72f1574b88752e9fb00089";
       public            postgres    false    222            D           2606    16843 $   items PK_d0249fbc104e3bd71b5a0ecf3b1 
   CONSTRAINT     i   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "PK_d0249fbc104e3bd71b5a0ecf3b1" PRIMARY KEY (item_id);
 P   ALTER TABLE ONLY public.items DROP CONSTRAINT "PK_d0249fbc104e3bd71b5a0ecf3b1";
       public            postgres    false    220            H           2606    16861 *   settlements PK_fafd79e82efaac341f4f6aae90e 
   CONSTRAINT     u   ALTER TABLE ONLY public.settlements
    ADD CONSTRAINT "PK_fafd79e82efaac341f4f6aae90e" PRIMARY KEY (settlement_id);
 V   ALTER TABLE ONLY public.settlements DROP CONSTRAINT "PK_fafd79e82efaac341f4f6aae90e";
       public            postgres    false    224            N           2606    16881 %   trader REL_03d653b4934fc7dfb09cd7ae4d 
   CONSTRAINT     w   ALTER TABLE ONLY public.trader
    ADD CONSTRAINT "REL_03d653b4934fc7dfb09cd7ae4d" UNIQUE ("settlementsSettlementId");
 Q   ALTER TABLE ONLY public.trader DROP CONSTRAINT "REL_03d653b4934fc7dfb09cd7ae4d";
       public            postgres    false    228            V           2606    16902 %   trader FK_03d653b4934fc7dfb09cd7ae4de    FK CONSTRAINT     �   ALTER TABLE ONLY public.trader
    ADD CONSTRAINT "FK_03d653b4934fc7dfb09cd7ae4de" FOREIGN KEY ("settlementsSettlementId") REFERENCES public.settlements(settlement_id);
 Q   ALTER TABLE ONLY public.trader DROP CONSTRAINT "FK_03d653b4934fc7dfb09cd7ae4de";
       public          postgres    false    4680    224    228            O           2606    16983 8   constructed_constructions FK_15bf2a9addf7fc51054438d677b    FK CONSTRAINT     �   ALTER TABLE ONLY public.constructed_constructions
    ADD CONSTRAINT "FK_15bf2a9addf7fc51054438d677b" FOREIGN KEY ("settlementSettlementId") REFERENCES public.settlements(settlement_id);
 d   ALTER TABLE ONLY public.constructed_constructions DROP CONSTRAINT "FK_15bf2a9addf7fc51054438d677b";
       public          postgres    false    4680    224    218            T           2606    16914 (   inventory FK_1c93486c5b0d2fb0c4676864382    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "FK_1c93486c5b0d2fb0c4676864382" FOREIGN KEY ("settlementsSettlementId") REFERENCES public.settlements(settlement_id);
 T   ALTER TABLE ONLY public.inventory DROP CONSTRAINT "FK_1c93486c5b0d2fb0c4676864382";
       public          postgres    false    4680    226    224            U           2606    16939 (   inventory FK_2790094711119a3dbc07c8c3afc    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT "FK_2790094711119a3dbc07c8c3afc" FOREIGN KEY ("ccCcMaterialsId") REFERENCES public.constructed_constructions("ccMaterials_id");
 T   ALTER TABLE ONLY public.inventory DROP CONSTRAINT "FK_2790094711119a3dbc07c8c3afc";
       public          postgres    false    218    4674    226            Q           2606    16934 $   items FK_675d7a99b94dc468583c6c067c1    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "FK_675d7a99b94dc468583c6c067c1" FOREIGN KEY ("constructedCcMaterialsId") REFERENCES public.constructed_constructions("ccMaterials_id");
 P   ALTER TABLE ONLY public.items DROP CONSTRAINT "FK_675d7a99b94dc468583c6c067c1";
       public          postgres    false    220    4674    218            R           2606    16887 $   items FK_7d62ac0a38faa8a980a6efeb71a    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "FK_7d62ac0a38faa8a980a6efeb71a" FOREIGN KEY ("constructionsConstructionsId") REFERENCES public.constructions(constructions_id);
 P   ALTER TABLE ONLY public.items DROP CONSTRAINT "FK_7d62ac0a38faa8a980a6efeb71a";
       public          postgres    false    220    4672    216            P           2606    16988 8   constructed_constructions FK_8e457f0bba7fb3940fcc9518e55    FK CONSTRAINT     �   ALTER TABLE ONLY public.constructed_constructions
    ADD CONSTRAINT "FK_8e457f0bba7fb3940fcc9518e55" FOREIGN KEY ("constructionConstructionsId") REFERENCES public.constructions(constructions_id);
 d   ALTER TABLE ONLY public.constructed_constructions DROP CONSTRAINT "FK_8e457f0bba7fb3940fcc9518e55";
       public          postgres    false    4672    216    218            S           2606    16993 $   items FK_a31f59a0cafe2fb54c8612d1740    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT "FK_a31f59a0cafe2fb54c8612d1740" FOREIGN KEY ("constructedId") REFERENCES public.constructed_constructions("ccMaterials_id");
 P   ALTER TABLE ONLY public.items DROP CONSTRAINT "FK_a31f59a0cafe2fb54c8612d1740";
       public          postgres    false    220    4674    218            �   �  x���͒�0���)� ,?�%���䒤*{�e/B��ʒ#���iɆ��*:`Km}�n�E�H�{�ۑګ*��K��Y�Q�f�~�(��ɳ2a�kfGڵ��;��J2*Dֲ��.P�+��$U��b	��Yc�m茊���r�O��c�AlĲ�H�0�*Kz��F3�E�t��L�G�����TT�)��Fyc�<$�V6�t`M��	|�=��e��@ע=Ht�v���.���D���	��ezƥX-Ė��8��8�������!�ճ��*�*�ݵ��C~��d���v���*�ARԩ���C��c��2�m`
X5�����Mev���JG>���檷��PZwK�!��y�L�}��p.�H�AuAvݾ�(eM� \���]�6�$Yy�ȶ3�����=Z��6�ùrVR����j3R�
D�:�L�Da*�PJFk ��D����w%��ۺ��hzͥѸ*�ų�g����MoGTo�x�Yg�o<2�\*���t�1��h){�W��IeTӨ��T�9&���'i�W�%��k�yx6�X�X/}jdOI�[?wݥ>�F�4�JкS�ct��V~��M��/�~-�BQWy�&�-yհia/�=���)W�*tٹ�b����J�עXH���g�=(I��d�@�7�8���l�\��!Uir���#)�g�%�����d2�kco�      �   �   x���AO� ����S�	Z�Y��e���i�ń0�����h]v)iz����|(��_S0G������)�k�"���䏾b���~!3�A���?|�&���R3y�˖���$�_�aP�[ɉ�+���D�%�V�G����j4�����#�wq��M�hUa�S�l����)�ֈW/'ߪ>6xD�9ￍ;�7�h�f-g�J����~d����Ƿ�c#2SYh��ʅۣ�g��z��	      �   �   x�E���0��a
���d��?G)Ym! 8:=���MU�.}��wEOYJ�a[�6�nYLda$F>�V1q�k$��0)~٪�,u��r�s����5N���t���E��7��*�w!�|KC|���2�绉B��1*�`Q�#؉��ST��ۜ�Չ���'�Ch��Y	�,	����Y7�      �   �   x�%�Q!C�������e��}���X��	"]��������k�gG����uE,���^ ��hr�%!~lC��_-���7�b ,rLf���­%)��¶�=��`�#��v�fw7�[�LZ�] ������� ����;c���Zի�~_Ir�-�      �   �   x��α
�0����y�4m�]���U���&%I�������|%o�-F��-���P��m�������(�aC�S��F������DOV�G��/�Y��LX�%��Z���x7O�C�<�n���\����m�K��<�W����O�      �      x������ � �      �   �   x�}ͻ�0 @ѹ|3�6I��T
ĥ�j�@�h�^W��;�t �=%�Ƭ}h��pϺ#i���|�*�ITT�PWM�GMR[�ˤj��5��ᴟ���LD��D��p
�ͱ�� ^��A�Y�/�=B"􏌋��.ڬ��!=���d�#q9��j�=��y��п���qx]o��YS�4�I     
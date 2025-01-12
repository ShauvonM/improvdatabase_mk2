PGDMP     +    5                s           d1ihmfmjooehcl    9.3.6    9.4.4 �    @           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            A           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            B           1262    309933    d1ihmfmjooehcl    DATABASE     �   CREATE DATABASE d1ihmfmjooehcl WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE d1ihmfmjooehcl;
             sdbuatyadcczhj    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             sdbuatyadcczhj    false            C           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  sdbuatyadcczhj    false    6            D           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM sdbuatyadcczhj;
GRANT ALL ON SCHEMA public TO sdbuatyadcczhj;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  sdbuatyadcczhj    false    6            �            3079    11756    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            E           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    200            �            1259    325620    comedygroup    TABLE     �  CREATE TABLE comedygroup (
    "GroupID" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Description" text NOT NULL,
    "Email" character varying(50) NOT NULL,
    "URL" character varying(50) NOT NULL,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.comedygroup;
       public         sdbuatyadcczhj    false    6            F           0    0    comedygroup    ACL     �   REVOKE ALL ON TABLE comedygroup FROM PUBLIC;
REVOKE ALL ON TABLE comedygroup FROM sdbuatyadcczhj;
GRANT ALL ON TABLE comedygroup TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    170            �            1259    325626    comedygroup_GroupID_seq    SEQUENCE     {   CREATE SEQUENCE "comedygroup_GroupID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."comedygroup_GroupID_seq";
       public       sdbuatyadcczhj    false    6    170            G           0    0    comedygroup_GroupID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "comedygroup_GroupID_seq" OWNED BY comedygroup."GroupID";
            public       sdbuatyadcczhj    false    171            H           0    0    comedygroup_GroupID_seq    ACL     �   REVOKE ALL ON SEQUENCE "comedygroup_GroupID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "comedygroup_GroupID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "comedygroup_GroupID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    171            �            1259    325628    duration    TABLE     _  CREATE TABLE duration (
    "DurationID" bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Description" text,
    "Min" integer,
    "Max" integer,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.duration;
       public         sdbuatyadcczhj    false    6            I           0    0    duration    ACL     �   REVOKE ALL ON TABLE duration FROM PUBLIC;
REVOKE ALL ON TABLE duration FROM sdbuatyadcczhj;
GRANT ALL ON TABLE duration TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    172            �            1259    325634    duration_DurationID_seq    SEQUENCE     {   CREATE SEQUENCE "duration_DurationID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."duration_DurationID_seq";
       public       sdbuatyadcczhj    false    6    172            J           0    0    duration_DurationID_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE "duration_DurationID_seq" OWNED BY duration."DurationID";
            public       sdbuatyadcczhj    false    173            K           0    0    duration_DurationID_seq    ACL     �   REVOKE ALL ON SEQUENCE "duration_DurationID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "duration_DurationID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "duration_DurationID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    173            �            1259    325636    game    TABLE     Z  CREATE TABLE game (
    "GameID" integer NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "DateAdded" timestamp without time zone NOT NULL,
    "Description" text,
    "DurationID" integer,
    "PlayerCountID" integer,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL,
    "ParentGameID" integer
);
    DROP TABLE public.game;
       public         sdbuatyadcczhj    false    6            L           0    0    game    ACL        REVOKE ALL ON TABLE game FROM PUBLIC;
REVOKE ALL ON TABLE game FROM sdbuatyadcczhj;
GRANT ALL ON TABLE game TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    174            �            1259    325642    game_GameID_seq    SEQUENCE     s   CREATE SEQUENCE "game_GameID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."game_GameID_seq";
       public       sdbuatyadcczhj    false    6    174            M           0    0    game_GameID_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "game_GameID_seq" OWNED BY game."GameID";
            public       sdbuatyadcczhj    false    175            N           0    0    game_GameID_seq    ACL     �   REVOKE ALL ON SEQUENCE "game_GameID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "game_GameID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "game_GameID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    175            �            1259    325644    name    TABLE     X  CREATE TABLE name (
    "NameID" integer NOT NULL,
    "GameID" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Weight" integer NOT NULL,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.name;
       public         sdbuatyadcczhj    false    6            O           0    0    name    ACL        REVOKE ALL ON TABLE name FROM PUBLIC;
REVOKE ALL ON TABLE name FROM sdbuatyadcczhj;
GRANT ALL ON TABLE name TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    176            �            1259    325647    name_NameID_seq    SEQUENCE     s   CREATE SEQUENCE "name_NameID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."name_NameID_seq";
       public       sdbuatyadcczhj    false    6    176            P           0    0    name_NameID_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "name_NameID_seq" OWNED BY name."NameID";
            public       sdbuatyadcczhj    false    177            Q           0    0    name_NameID_seq    ACL     �   REVOKE ALL ON SEQUENCE "name_NameID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "name_NameID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "name_NameID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    177            �            1259    325649    note    TABLE     �  CREATE TABLE note (
    "NoteID" integer NOT NULL,
    "GameID" integer,
    "Description" text NOT NULL,
    "Public" smallint NOT NULL,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL,
    "TagID" integer,
    "DurationID" integer,
    "PlayerCountID" integer
);
    DROP TABLE public.note;
       public         sdbuatyadcczhj    false    6            R           0    0    note    ACL        REVOKE ALL ON TABLE note FROM PUBLIC;
REVOKE ALL ON TABLE note FROM sdbuatyadcczhj;
GRANT ALL ON TABLE note TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    178            �            1259    325655    note_NoteID_seq    SEQUENCE     s   CREATE SEQUENCE "note_NoteID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public."note_NoteID_seq";
       public       sdbuatyadcczhj    false    6    178            S           0    0    note_NoteID_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE "note_NoteID_seq" OWNED BY note."NoteID";
            public       sdbuatyadcczhj    false    179            T           0    0    note_NoteID_seq    ACL     �   REVOKE ALL ON SEQUENCE "note_NoteID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "note_NoteID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "note_NoteID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    179            �            1259    325657    permissionkey    TABLE     h   CREATE TABLE permissionkey (
    "Name" character varying(20),
    "PermissionKeyID" bigint NOT NULL
);
 !   DROP TABLE public.permissionkey;
       public         sdbuatyadcczhj    false    6            U           0    0    permissionkey    ACL     �   REVOKE ALL ON TABLE permissionkey FROM PUBLIC;
REVOKE ALL ON TABLE permissionkey FROM sdbuatyadcczhj;
GRANT ALL ON TABLE permissionkey TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    180            �            1259    325660 !   permissionkey_PermissionKeyID_seq    SEQUENCE     �   CREATE SEQUENCE "permissionkey_PermissionKeyID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public."permissionkey_PermissionKeyID_seq";
       public       sdbuatyadcczhj    false    6    180            V           0    0 !   permissionkey_PermissionKeyID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE "permissionkey_PermissionKeyID_seq" OWNED BY permissionkey."PermissionKeyID";
            public       sdbuatyadcczhj    false    181            �            1259    325662    permissionkeyuserlevel    TABLE     �   CREATE TABLE permissionkeyuserlevel (
    "PermissionKeyUserLevelID" bigint NOT NULL,
    "PermissionKeyID" bigint,
    "UserLevelID" bigint
);
 *   DROP TABLE public.permissionkeyuserlevel;
       public         sdbuatyadcczhj    false    6            W           0    0    permissionkeyuserlevel    ACL     �   REVOKE ALL ON TABLE permissionkeyuserlevel FROM PUBLIC;
REVOKE ALL ON TABLE permissionkeyuserlevel FROM sdbuatyadcczhj;
GRANT ALL ON TABLE permissionkeyuserlevel TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    182            �            1259    325665 3   permissionkeyuserlevel_PermissionKeyUserLevelID_seq    SEQUENCE     �   CREATE SEQUENCE "permissionkeyuserlevel_PermissionKeyUserLevelID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."permissionkeyuserlevel_PermissionKeyUserLevelID_seq";
       public       sdbuatyadcczhj    false    6    182            X           0    0 3   permissionkeyuserlevel_PermissionKeyUserLevelID_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "permissionkeyuserlevel_PermissionKeyUserLevelID_seq" OWNED BY permissionkeyuserlevel."PermissionKeyUserLevelID";
            public       sdbuatyadcczhj    false    183            �            1259    325667    playercount    TABLE     f  CREATE TABLE playercount (
    "PlayerCountID" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Description" text,
    "Min" integer,
    "Max" integer,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.playercount;
       public         sdbuatyadcczhj    false    6            Y           0    0    playercount    ACL     �   REVOKE ALL ON TABLE playercount FROM PUBLIC;
REVOKE ALL ON TABLE playercount FROM sdbuatyadcczhj;
GRANT ALL ON TABLE playercount TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    184            �            1259    325673    playercount_PlayerCountID_seq    SEQUENCE     �   CREATE SEQUENCE "playercount_PlayerCountID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."playercount_PlayerCountID_seq";
       public       sdbuatyadcczhj    false    184    6            Z           0    0    playercount_PlayerCountID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE "playercount_PlayerCountID_seq" OWNED BY playercount."PlayerCountID";
            public       sdbuatyadcczhj    false    185            [           0    0    playercount_PlayerCountID_seq    ACL     �   REVOKE ALL ON SEQUENCE "playercount_PlayerCountID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "playercount_PlayerCountID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "playercount_PlayerCountID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    185            �            1259    325675 
   suggestion    TABLE     O  CREATE TABLE suggestion (
    "SuggestionID" integer NOT NULL,
    "SuggestionTypeID" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.suggestion;
       public         sdbuatyadcczhj    false    6            \           0    0 
   suggestion    ACL     �   REVOKE ALL ON TABLE suggestion FROM PUBLIC;
REVOKE ALL ON TABLE suggestion FROM sdbuatyadcczhj;
GRANT ALL ON TABLE suggestion TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    186            �            1259    325678    suggestion_SuggestionID_seq    SEQUENCE        CREATE SEQUENCE "suggestion_SuggestionID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."suggestion_SuggestionID_seq";
       public       sdbuatyadcczhj    false    6    186            ]           0    0    suggestion_SuggestionID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE "suggestion_SuggestionID_seq" OWNED BY suggestion."SuggestionID";
            public       sdbuatyadcczhj    false    187            ^           0    0    suggestion_SuggestionID_seq    ACL     �   REVOKE ALL ON SEQUENCE "suggestion_SuggestionID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "suggestion_SuggestionID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "suggestion_SuggestionID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    187            �            1259    325680    suggestiontype    TABLE     F  CREATE TABLE suggestiontype (
    "SuggestionTypeID" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Description" text,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
 "   DROP TABLE public.suggestiontype;
       public         sdbuatyadcczhj    false    6            _           0    0    suggestiontype    ACL     �   REVOKE ALL ON TABLE suggestiontype FROM PUBLIC;
REVOKE ALL ON TABLE suggestiontype FROM sdbuatyadcczhj;
GRANT ALL ON TABLE suggestiontype TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    188            �            1259    325686 #   suggestiontype_SuggestionTypeID_seq    SEQUENCE     �   CREATE SEQUENCE "suggestiontype_SuggestionTypeID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."suggestiontype_SuggestionTypeID_seq";
       public       sdbuatyadcczhj    false    188    6            `           0    0 #   suggestiontype_SuggestionTypeID_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE "suggestiontype_SuggestionTypeID_seq" OWNED BY suggestiontype."SuggestionTypeID";
            public       sdbuatyadcczhj    false    189            a           0    0 #   suggestiontype_SuggestionTypeID_seq    ACL     �   REVOKE ALL ON SEQUENCE "suggestiontype_SuggestionTypeID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "suggestiontype_SuggestionTypeID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "suggestiontype_SuggestionTypeID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    189            �            1259    325688    suggestiontypegame    TABLE       CREATE TABLE suggestiontypegame (
    "SuggestionTypeGameID" integer NOT NULL,
    "SuggestionTypeID" integer NOT NULL,
    "GameID" integer NOT NULL,
    "Description" text,
    "DateAdded" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL
);
 &   DROP TABLE public.suggestiontypegame;
       public         sdbuatyadcczhj    false    6            b           0    0    suggestiontypegame    ACL     �   REVOKE ALL ON TABLE suggestiontypegame FROM PUBLIC;
REVOKE ALL ON TABLE suggestiontypegame FROM sdbuatyadcczhj;
GRANT ALL ON TABLE suggestiontypegame TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    190            �            1259    325694 +   suggestiontypegame_SuggestionTypeGameID_seq    SEQUENCE     �   CREATE SEQUENCE "suggestiontypegame_SuggestionTypeGameID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 D   DROP SEQUENCE public."suggestiontypegame_SuggestionTypeGameID_seq";
       public       sdbuatyadcczhj    false    190    6            c           0    0 +   suggestiontypegame_SuggestionTypeGameID_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE "suggestiontypegame_SuggestionTypeGameID_seq" OWNED BY suggestiontypegame."SuggestionTypeGameID";
            public       sdbuatyadcczhj    false    191            d           0    0 +   suggestiontypegame_SuggestionTypeGameID_seq    ACL       REVOKE ALL ON SEQUENCE "suggestiontypegame_SuggestionTypeGameID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "suggestiontypegame_SuggestionTypeGameID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "suggestiontypegame_SuggestionTypeGameID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    191            �            1259    325696    tag    TABLE     �   CREATE TABLE tag (
    "TagID" integer NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Description" text,
    "DateAdded" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.tag;
       public         sdbuatyadcczhj    false    6            e           0    0    tag    ACL     |   REVOKE ALL ON TABLE tag FROM PUBLIC;
REVOKE ALL ON TABLE tag FROM sdbuatyadcczhj;
GRANT ALL ON TABLE tag TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    192            �            1259    325702    tag_TagID_seq    SEQUENCE     q   CREATE SEQUENCE "tag_TagID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public."tag_TagID_seq";
       public       sdbuatyadcczhj    false    6    192            f           0    0    tag_TagID_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE "tag_TagID_seq" OWNED BY tag."TagID";
            public       sdbuatyadcczhj    false    193            g           0    0    tag_TagID_seq    ACL     �   REVOKE ALL ON SEQUENCE "tag_TagID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "tag_TagID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "tag_TagID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    193            �            1259    325704    taggame    TABLE     �   CREATE TABLE taggame (
    "TagGameID" integer NOT NULL,
    "TagID" integer NOT NULL,
    "GameID" integer NOT NULL,
    "DateAdded" timestamp without time zone NOT NULL,
    "AddedUserID" integer NOT NULL,
    "ModifiedUserID" integer NOT NULL
);
    DROP TABLE public.taggame;
       public         sdbuatyadcczhj    false    6            h           0    0    taggame    ACL     �   REVOKE ALL ON TABLE taggame FROM PUBLIC;
REVOKE ALL ON TABLE taggame FROM sdbuatyadcczhj;
GRANT ALL ON TABLE taggame TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    194            �            1259    325707    taggame_TagGameID_seq    SEQUENCE     y   CREATE SEQUENCE "taggame_TagGameID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."taggame_TagGameID_seq";
       public       sdbuatyadcczhj    false    6    194            i           0    0    taggame_TagGameID_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE "taggame_TagGameID_seq" OWNED BY taggame."TagGameID";
            public       sdbuatyadcczhj    false    195            j           0    0    taggame_TagGameID_seq    ACL     �   REVOKE ALL ON SEQUENCE "taggame_TagGameID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "taggame_TagGameID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "taggame_TagGameID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    195            �            1259    325709 	   userlevel    TABLE     `   CREATE TABLE userlevel (
    "UserLevelID" bigint NOT NULL,
    "Name" character varying(50)
);
    DROP TABLE public.userlevel;
       public         sdbuatyadcczhj    false    6            k           0    0 	   userlevel    ACL     �   REVOKE ALL ON TABLE userlevel FROM PUBLIC;
REVOKE ALL ON TABLE userlevel FROM sdbuatyadcczhj;
GRANT ALL ON TABLE userlevel TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    196            �            1259    325712    userLevel_UserLevelID_seq    SEQUENCE     }   CREATE SEQUENCE "userLevel_UserLevelID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."userLevel_UserLevelID_seq";
       public       sdbuatyadcczhj    false    196    6            l           0    0    userLevel_UserLevelID_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE "userLevel_UserLevelID_seq" OWNED BY userlevel."UserLevelID";
            public       sdbuatyadcczhj    false    197            �            1259    325714    users    TABLE     /  CREATE TABLE users (
    "UserID" bigint NOT NULL,
    "FirstName" character varying(50) NOT NULL,
    "LastName" character varying(50) NOT NULL,
    "Gender" character varying(1),
    "Email" character varying(50) DEFAULT NULL::character varying,
    "URL" character varying(50) DEFAULT NULL::character varying,
    "DateAdded" timestamp without time zone NOT NULL,
    "DateModified" timestamp without time zone NOT NULL,
    "Password" character(60),
    "UserLevel" bigint[],
    "Locked" boolean DEFAULT false,
    "Description" text DEFAULT ''::text
);
    DROP TABLE public.users;
       public         sdbuatyadcczhj    false    6            m           0    0    users    ACL     �   REVOKE ALL ON TABLE users FROM PUBLIC;
REVOKE ALL ON TABLE users FROM sdbuatyadcczhj;
GRANT ALL ON TABLE users TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    198            �            1259    325724    users_UserID_seq    SEQUENCE     t   CREATE SEQUENCE "users_UserID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."users_UserID_seq";
       public       sdbuatyadcczhj    false    6    198            n           0    0    users_UserID_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE "users_UserID_seq" OWNED BY users."UserID";
            public       sdbuatyadcczhj    false    199            o           0    0    users_UserID_seq    ACL     �   REVOKE ALL ON SEQUENCE "users_UserID_seq" FROM PUBLIC;
REVOKE ALL ON SEQUENCE "users_UserID_seq" FROM sdbuatyadcczhj;
GRANT ALL ON SEQUENCE "users_UserID_seq" TO sdbuatyadcczhj;
            public       sdbuatyadcczhj    false    199            �           2604    325726    GroupID    DEFAULT     p   ALTER TABLE ONLY comedygroup ALTER COLUMN "GroupID" SET DEFAULT nextval('"comedygroup_GroupID_seq"'::regclass);
 D   ALTER TABLE public.comedygroup ALTER COLUMN "GroupID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    171    170            �           2604    325727 
   DurationID    DEFAULT     p   ALTER TABLE ONLY duration ALTER COLUMN "DurationID" SET DEFAULT nextval('"duration_DurationID_seq"'::regclass);
 D   ALTER TABLE public.duration ALTER COLUMN "DurationID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    173    172            �           2604    325728    GameID    DEFAULT     `   ALTER TABLE ONLY game ALTER COLUMN "GameID" SET DEFAULT nextval('"game_GameID_seq"'::regclass);
 <   ALTER TABLE public.game ALTER COLUMN "GameID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    175    174            �           2604    325729    NameID    DEFAULT     `   ALTER TABLE ONLY name ALTER COLUMN "NameID" SET DEFAULT nextval('"name_NameID_seq"'::regclass);
 <   ALTER TABLE public.name ALTER COLUMN "NameID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    177    176            �           2604    325730    NoteID    DEFAULT     `   ALTER TABLE ONLY note ALTER COLUMN "NoteID" SET DEFAULT nextval('"note_NoteID_seq"'::regclass);
 <   ALTER TABLE public.note ALTER COLUMN "NoteID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    179    178            �           2604    325731    PermissionKeyID    DEFAULT     �   ALTER TABLE ONLY permissionkey ALTER COLUMN "PermissionKeyID" SET DEFAULT nextval('"permissionkey_PermissionKeyID_seq"'::regclass);
 N   ALTER TABLE public.permissionkey ALTER COLUMN "PermissionKeyID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    181    180            �           2604    325732    PermissionKeyUserLevelID    DEFAULT     �   ALTER TABLE ONLY permissionkeyuserlevel ALTER COLUMN "PermissionKeyUserLevelID" SET DEFAULT nextval('"permissionkeyuserlevel_PermissionKeyUserLevelID_seq"'::regclass);
 `   ALTER TABLE public.permissionkeyuserlevel ALTER COLUMN "PermissionKeyUserLevelID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    183    182            �           2604    325733    PlayerCountID    DEFAULT     |   ALTER TABLE ONLY playercount ALTER COLUMN "PlayerCountID" SET DEFAULT nextval('"playercount_PlayerCountID_seq"'::regclass);
 J   ALTER TABLE public.playercount ALTER COLUMN "PlayerCountID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    185    184            �           2604    325734    SuggestionID    DEFAULT     x   ALTER TABLE ONLY suggestion ALTER COLUMN "SuggestionID" SET DEFAULT nextval('"suggestion_SuggestionID_seq"'::regclass);
 H   ALTER TABLE public.suggestion ALTER COLUMN "SuggestionID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    187    186            �           2604    325735    SuggestionTypeID    DEFAULT     �   ALTER TABLE ONLY suggestiontype ALTER COLUMN "SuggestionTypeID" SET DEFAULT nextval('"suggestiontype_SuggestionTypeID_seq"'::regclass);
 P   ALTER TABLE public.suggestiontype ALTER COLUMN "SuggestionTypeID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    189    188            �           2604    325736    SuggestionTypeGameID    DEFAULT     �   ALTER TABLE ONLY suggestiontypegame ALTER COLUMN "SuggestionTypeGameID" SET DEFAULT nextval('"suggestiontypegame_SuggestionTypeGameID_seq"'::regclass);
 X   ALTER TABLE public.suggestiontypegame ALTER COLUMN "SuggestionTypeGameID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    191    190            �           2604    325737    TagID    DEFAULT     \   ALTER TABLE ONLY tag ALTER COLUMN "TagID" SET DEFAULT nextval('"tag_TagID_seq"'::regclass);
 :   ALTER TABLE public.tag ALTER COLUMN "TagID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    193    192            �           2604    325738 	   TagGameID    DEFAULT     l   ALTER TABLE ONLY taggame ALTER COLUMN "TagGameID" SET DEFAULT nextval('"taggame_TagGameID_seq"'::regclass);
 B   ALTER TABLE public.taggame ALTER COLUMN "TagGameID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    195    194            �           2604    325739    UserLevelID    DEFAULT     t   ALTER TABLE ONLY userlevel ALTER COLUMN "UserLevelID" SET DEFAULT nextval('"userLevel_UserLevelID_seq"'::regclass);
 F   ALTER TABLE public.userlevel ALTER COLUMN "UserLevelID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    197    196            �           2604    325740    UserID    DEFAULT     b   ALTER TABLE ONLY users ALTER COLUMN "UserID" SET DEFAULT nextval('"users_UserID_seq"'::regclass);
 =   ALTER TABLE public.users ALTER COLUMN "UserID" DROP DEFAULT;
       public       sdbuatyadcczhj    false    199    198                       0    325620    comedygroup 
   TABLE DATA               �   COPY comedygroup ("GroupID", "Name", "Description", "Email", "URL", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    170            p           0    0    comedygroup_GroupID_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('"comedygroup_GroupID_seq"', 1, false);
            public       sdbuatyadcczhj    false    171            "          0    325628    duration 
   TABLE DATA               �   COPY duration ("DurationID", "Name", "Description", "Min", "Max", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    172            q           0    0    duration_DurationID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"duration_DurationID_seq"', 5, true);
            public       sdbuatyadcczhj    false    173            $          0    325636    game 
   TABLE DATA               �   COPY game ("GameID", "DateModified", "DateAdded", "Description", "DurationID", "PlayerCountID", "AddedUserID", "ModifiedUserID", "ParentGameID") FROM stdin;
    public       sdbuatyadcczhj    false    174            r           0    0    game_GameID_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"game_GameID_seq"', 132, true);
            public       sdbuatyadcczhj    false    175            &          0    325644    name 
   TABLE DATA               {   COPY name ("NameID", "GameID", "Name", "Weight", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    176            s           0    0    name_NameID_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('"name_NameID_seq"', 176, true);
            public       sdbuatyadcczhj    false    177            (          0    325649    note 
   TABLE DATA               �   COPY note ("NoteID", "GameID", "Description", "Public", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID", "TagID", "DurationID", "PlayerCountID") FROM stdin;
    public       sdbuatyadcczhj    false    178            t           0    0    note_NoteID_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"note_NoteID_seq"', 13, true);
            public       sdbuatyadcczhj    false    179            *          0    325657    permissionkey 
   TABLE DATA               ;   COPY permissionkey ("Name", "PermissionKeyID") FROM stdin;
    public       sdbuatyadcczhj    false    180            u           0    0 !   permissionkey_PermissionKeyID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('"permissionkey_PermissionKeyID_seq"', 20, true);
            public       sdbuatyadcczhj    false    181            ,          0    325662    permissionkeyuserlevel 
   TABLE DATA               g   COPY permissionkeyuserlevel ("PermissionKeyUserLevelID", "PermissionKeyID", "UserLevelID") FROM stdin;
    public       sdbuatyadcczhj    false    182            v           0    0 3   permissionkeyuserlevel_PermissionKeyUserLevelID_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"permissionkeyuserlevel_PermissionKeyUserLevelID_seq"', 19, true);
            public       sdbuatyadcczhj    false    183            .          0    325667    playercount 
   TABLE DATA               �   COPY playercount ("PlayerCountID", "Name", "Description", "Min", "Max", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    184            w           0    0    playercount_PlayerCountID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('"playercount_PlayerCountID_seq"', 17, true);
            public       sdbuatyadcczhj    false    185            0          0    325675 
   suggestion 
   TABLE DATA               �   COPY suggestion ("SuggestionID", "SuggestionTypeID", "Name", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    186            x           0    0    suggestion_SuggestionID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('"suggestion_SuggestionID_seq"', 1, false);
            public       sdbuatyadcczhj    false    187            2          0    325680    suggestiontype 
   TABLE DATA               �   COPY suggestiontype ("SuggestionTypeID", "Name", "Description", "DateAdded", "DateModified", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    188            y           0    0 #   suggestiontype_SuggestionTypeID_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('"suggestiontype_SuggestionTypeID_seq"', 1, false);
            public       sdbuatyadcczhj    false    189            4          0    325688    suggestiontypegame 
   TABLE DATA               �   COPY suggestiontypegame ("SuggestionTypeGameID", "SuggestionTypeID", "GameID", "Description", "DateAdded", "AddedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    190            z           0    0 +   suggestiontypegame_SuggestionTypeGameID_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('"suggestiontypegame_SuggestionTypeGameID_seq"', 1, false);
            public       sdbuatyadcczhj    false    191            6          0    325696    tag 
   TABLE DATA               d   COPY tag ("TagID", "Name", "Description", "DateAdded", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    192            {           0    0    tag_TagID_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('"tag_TagID_seq"', 68, true);
            public       sdbuatyadcczhj    false    193            8          0    325704    taggame 
   TABLE DATA               h   COPY taggame ("TagGameID", "TagID", "GameID", "DateAdded", "AddedUserID", "ModifiedUserID") FROM stdin;
    public       sdbuatyadcczhj    false    194            |           0    0    taggame_TagGameID_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('"taggame_TagGameID_seq"', 418, true);
            public       sdbuatyadcczhj    false    195            }           0    0    userLevel_UserLevelID_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('"userLevel_UserLevelID_seq"', 4, true);
            public       sdbuatyadcczhj    false    197            :          0    325709 	   userlevel 
   TABLE DATA               3   COPY userlevel ("UserLevelID", "Name") FROM stdin;
    public       sdbuatyadcczhj    false    196            <          0    325714    users 
   TABLE DATA               �   COPY users ("UserID", "FirstName", "LastName", "Gender", "Email", "URL", "DateAdded", "DateModified", "Password", "UserLevel", "Locked", "Description") FROM stdin;
    public       sdbuatyadcczhj    false    198            ~           0    0    users_UserID_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('"users_UserID_seq"', 5, true);
            public       sdbuatyadcczhj    false    199            �           2606    325742    duration_Name_key 
   CONSTRAINT     R   ALTER TABLE ONLY duration
    ADD CONSTRAINT "duration_Name_key" UNIQUE ("Name");
 F   ALTER TABLE ONLY public.duration DROP CONSTRAINT "duration_Name_key";
       public         sdbuatyadcczhj    false    172    172            �           2606    325744    duration_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY duration
    ADD CONSTRAINT duration_pkey PRIMARY KEY ("DurationID");
 @   ALTER TABLE ONLY public.duration DROP CONSTRAINT duration_pkey;
       public         sdbuatyadcczhj    false    172    172            �           2606    325746 	   game_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY game
    ADD CONSTRAINT game_pkey PRIMARY KEY ("GameID");
 8   ALTER TABLE ONLY public.game DROP CONSTRAINT game_pkey;
       public         sdbuatyadcczhj    false    174    174            �           2606    325748 
   group_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY comedygroup
    ADD CONSTRAINT group_pkey PRIMARY KEY ("GroupID");
 @   ALTER TABLE ONLY public.comedygroup DROP CONSTRAINT group_pkey;
       public         sdbuatyadcczhj    false    170    170            �           2606    325750 	   name_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY name
    ADD CONSTRAINT name_pkey PRIMARY KEY ("NameID");
 8   ALTER TABLE ONLY public.name DROP CONSTRAINT name_pkey;
       public         sdbuatyadcczhj    false    176    176            �           2606    325752 	   note_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY note
    ADD CONSTRAINT note_pkey PRIMARY KEY ("NoteID");
 8   ALTER TABLE ONLY public.note DROP CONSTRAINT note_pkey;
       public         sdbuatyadcczhj    false    178    178            �           2606    325754    permissionkey_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY permissionkey
    ADD CONSTRAINT permissionkey_pkey PRIMARY KEY ("PermissionKeyID");
 J   ALTER TABLE ONLY public.permissionkey DROP CONSTRAINT permissionkey_pkey;
       public         sdbuatyadcczhj    false    180    180            �           2606    325756    permissionkeyuserlevel_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY permissionkeyuserlevel
    ADD CONSTRAINT permissionkeyuserlevel_pkey PRIMARY KEY ("PermissionKeyUserLevelID");
 \   ALTER TABLE ONLY public.permissionkeyuserlevel DROP CONSTRAINT permissionkeyuserlevel_pkey;
       public         sdbuatyadcczhj    false    182    182            �           2606    325758    playercount_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY playercount
    ADD CONSTRAINT playercount_pkey PRIMARY KEY ("PlayerCountID");
 F   ALTER TABLE ONLY public.playercount DROP CONSTRAINT playercount_pkey;
       public         sdbuatyadcczhj    false    184    184            �           2606    325760    suggestion_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY suggestion
    ADD CONSTRAINT suggestion_pkey PRIMARY KEY ("SuggestionID");
 D   ALTER TABLE ONLY public.suggestion DROP CONSTRAINT suggestion_pkey;
       public         sdbuatyadcczhj    false    186    186            �           2606    325762    suggestiontype_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY suggestiontype
    ADD CONSTRAINT suggestiontype_pkey PRIMARY KEY ("SuggestionTypeID");
 L   ALTER TABLE ONLY public.suggestiontype DROP CONSTRAINT suggestiontype_pkey;
       public         sdbuatyadcczhj    false    188    188            �           2606    325764    suggestiontypegame_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY suggestiontypegame
    ADD CONSTRAINT suggestiontypegame_pkey PRIMARY KEY ("SuggestionTypeGameID");
 T   ALTER TABLE ONLY public.suggestiontypegame DROP CONSTRAINT suggestiontypegame_pkey;
       public         sdbuatyadcczhj    false    190    190            �           2606    325766    tag_Name_key 
   CONSTRAINT     H   ALTER TABLE ONLY tag
    ADD CONSTRAINT "tag_Name_key" UNIQUE ("Name");
 <   ALTER TABLE ONLY public.tag DROP CONSTRAINT "tag_Name_key";
       public         sdbuatyadcczhj    false    192    192            �           2606    325768    tag_pkey 
   CONSTRAINT     H   ALTER TABLE ONLY tag
    ADD CONSTRAINT tag_pkey PRIMARY KEY ("TagID");
 6   ALTER TABLE ONLY public.tag DROP CONSTRAINT tag_pkey;
       public         sdbuatyadcczhj    false    192    192            �           2606    325770    taggame_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY taggame
    ADD CONSTRAINT taggame_pkey PRIMARY KEY ("TagGameID");
 >   ALTER TABLE ONLY public.taggame DROP CONSTRAINT taggame_pkey;
       public         sdbuatyadcczhj    false    194    194            �           2606    325772    userLevel_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY userlevel
    ADD CONSTRAINT "userLevel_pkey" PRIMARY KEY ("UserLevelID");
 D   ALTER TABLE ONLY public.userlevel DROP CONSTRAINT "userLevel_pkey";
       public         sdbuatyadcczhj    false    196    196            �           2606    325774 	   user_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY users
    ADD CONSTRAINT user_pkey PRIMARY KEY ("UserID");
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public         sdbuatyadcczhj    false    198    198                   x������ � �      "   �  x�m�?o�0�g�Sp˒�7���p��r�-���je�����G���x���{�P�z7��I��\�Z<�����?{�X�vGx´��70YG,�{x��<�)�B8�+O�%h���{Q�Zh���n��4�6�ZjwF�j�E����؄ѷpB�zr>��F*8i���	����ݥ�{n��Wmvߘ���W�����*�c.���f�d9�������
!F�n��0�Y�OX81�U;��(��{.{#K�`�?s���*���_��8ء�4!��ĭ8���6�Gy>��ccǄ<�� ��`���g�y��<-1�v�C�ɫ5ȃ����G-{�y���{���L		f�&KM�C.�^l�y�k��!��[z��l�>�c��*�w��ѷ?j���v�Z�C�      $      x���ۖ��r6x-?�7U��.��e/kU�ZR�:��lY����P� 7 6E]��<ͼ�̋M��� ������R7$��q�/&_L.Ɨ�����U6?\�=\^�6��)���AV�Y�,�u�v�l��m9�����?e���e�Ӯ�6�|_4m�vy�ey�Ί�fy5��.k�u�m겢����k�l���+��G�h̺)��*_�����3�u�}��q
~r�卾���eCʟ۬���^��5�޶۵���	�mٕue���K0�כU��������I��e�f�e��uu6��]�-��0��)�|�@[|*��Sޔ9���_?E6x�*齲��A6x���<���4�.�����	������7_�������7���7W�ۣ�xa��z���ͪ�Ϥ���4��������T�^gE>[�l��x9Ì�e��O���뼫lv�u%��eQ��ȸ������K�k�.i�_��<k�=����y���Ys�oM8��_ן
�~�4����h�yґ,���.��{i�ۮش�vC�������4��ٕ�Q �D�-�o˳g�S�C��b���׶���{��<z��EG�2�ihc/�@��v��7�ֿѶwL7|���_Z�0Z쒉2�4-/�<�Y٪�?�A��\��:�h��d�ncyamw�:����Af􌽁ND���G�d��^��jH���y���EK��k� �1��/̚��쌾p��W����v��x+��i�W�4�8e<�l�����U��߶eCc�L�c��[zlʌ��A407�Hܶ 5�U,�s9��e�$�[�i�Gp��QY�V�9��e?��i��#�bC$K�iz�7tn�V�ߚf����j������Pe��v�3]^2u\����&Fq7}��>~�	��^F�#pR��gń��p���
�c�����É"&���V�Ӣ���H�O�SA��^�>�F��R���\~�՘��̷� �a!t1nG�z����O��`7ݶ�m�
��O�-O�O�� �^���꽊�%	��d^�Ov���ҙZ�_Kf5�~�z;d�	H�u%ޕgK��eIk?�v�=5�B��Z���i�V�~���ϼ��2~�JW^�+[��d%&,.�_cn�r�q����#9b��ry_���Q1	g3:ӆ�JS���&�kO���v��������;��M�ݑaXv��3�U[d�e..�^��J�Ar�y)[�#���}9"�������}����ӯl$Nވ����}L|�����̔6�&o�%))���-�~!��y�y��ϓͽ�o$����k��L�D1ؚ�9T�V��8)E�,v4Q��9݋ߟ|��N���hk�����h��˕I�I�bD�,�j �z�Ɲ���tl��/eT����r"4/����e^��s��s�����Y�z&��j��M݀3̖��iAڑ׻��u�鯽\{�s9�����	��x!�f^.�ڂ~Y�,��A�05�	�/���,B	u���Ҵ�����00qR��4)i�`�-�E.b���rz�����W6��$�q�o6E��=9$^ �t+!D�[Uz�y����.!L��s���|��{�����.�^c�Z�Z�����l��� ��)����9ܙu��b�7��&�qm�f%@��d�/*�,��C	]�-�sUjY,�Y�m���p0�NzZ�&��`Ƈ�93H��2��^����ars�Z�����"(ֵ*r��q��{)Kf�Ffю��c��<�;�H�����266��+���Dk��Yr/���Ä*�E�Bi=�'������7���G�it��BX��Y��慘Iky񋒅	[,�̢�����l&ͽѓɟYo`��p��A��#h�4��-�E���Xy$�;��g+�6[��<�����e2t��ږX[&�
�ib�K�qAt�[��� �����~�vc��N�oSl�����h�5�'ۍ8��N8[��J�;1I��rX��Ϣ���C;��q��Ǘ�>�k�SB������nG���ª������3�N�KJ~���6�G���D��yӞ���Obg�U�aMɄ
�_V���+z�����"��
i�q
mrK,�f�n`'��*�{�y|�_��D{pלjʅ2E�'����%N�D��횜(�w1o���z���wN��T�K�:lY��ǉ��B�2�<q"��������3�M#Y��W/�=�}*��uQu��J��a$=�UX{�ʢ�R�����!E��Soh~k����k:{�#�r�u�M�y�����_x#�+�G�j90���8���`m<,��v"+�Xa�D�V�@��֒Ls(t>?�f�rx٢\��֚����3C���rQ�6�e^��Վ2쾿��G�:�=�.*NXz�/ωA]��'�������e�^��Θ�9o?�q�w���Eg����<H��a�<�e5�ͅi�EL��<�����ٲ.�?d�̓��|Sl��S7�p@�D��\D��9k>�p�j��(�J�oU2��G����M�5�~����Hk�?���ѣ<d#��c�~(����}&a����Ϲ	<[N� ���?��Q5�r�������"�]��$˲��u�Eg''@��('�����4���?G�ߝ0�I�b���������5f����H�S�ڒm'�lgRgh�a��L+�:��]h���5gg�p�P�<��h��4X�-��ےt�
�hrg�(���i ��N$�	���M���x��dY�E��M޵�A��?
�M�b#
IbYO&�5%ʼ9z�1 iΊ��g��E���D[��.��\cx�|��>���Rj8��[���5�}e�oG��u�^�6�z����G��fې�B9`1�'t3*r�]S���G;����E[�t�ǈP�&�9(�TŢ���68�<�
�t"�y���.XL���}�T�����<�8�Ķ����L�|��FN�e�_��<[���9�U�.������w�27�o'�{ⴼ6���4qlDo/���B��KеS�q��$_?L.�1��%���=14��<�8������N��zev]��s���`:�v�DY_!�^#Ͼ�g��Mُ��v�J\?���74�i��%}�7��h�ݏ��T��)+���r"5m��6o����+
��RUm9�w��ɻO��.�y���"��,�O������&#�=��x���-��N�܂�5���9�5#����^�e�MY<b�7X����2���"�����O����X�,��q�1�un�s�yAD|H��O����k^���iAv����c2(G�)Sz(����*2h,z]��4�?�����m���tZv�E�`ъn�l�'���Nѐ�������e�v���y1e',h+zF�:��P�P�)s˰w�����fKca�l죆�76-@��ό�ґ(�%�(�n@���80I�w�{G�Xv+u*���3ؕUU4![!��l�H�q�q4��M����+��V���H��̃�5}�\�5�5��}�ŨLƠ������מ���OƘ,0���=��-N�{>Q�z���6I褞���{TZ�üފ���nƓ�F=��݃\6�6��mv'$�s��c�c/���W�m�m����FFM5�3sNJ��ͭl%�"Z�ym��ZMQPW�ؽ�i�-��.<��62FG8}K�`+r�E�/���3�&���D\���#ڤGw ՜z0�v�eU�&6,��z��s^�Ѥ�j> o��q�>�wM�2��.�+H 2�׭�pRk.�C���E��}�[O���Hf�Kf;䓉�Bg�"�\>Q$��U�h�]��u��$��g�����k}���&ކ<'ӂŃs
U6�2{α(q���O|�V����˶��l�+D0��Y�/�+����V��G�5K��ÎS;��F��N���y�\�F��-I��yr%z�f��ߍT�Q�+��O	��)�W3�T`���������zh�iMl�BX��݆���m���{��58ͣ��;�!�����,z$`�59	�;�Cӿ�:��-(�̙x�J�S���g+V    �7��c{��	�3n��t�/9�`A/���4�%���G����E�S�@�"$��NJ3ڄT�F����ƲD]p�d��&+�"|�� �'弐����h�����Qn|�^ч�D�d���Q��C-�����Βz�#r�y{@�E�/�EE�%�suyL]�:AS��-Rk�! 4��˻����Q�WB�d�5-L���h<�ݦڵ����N�0$�؉'i�2��V����Co���eq��t�g�V��q���)�l�&��9u�����gz�e�,�?��H�gk��G�*7���/Xkw'�w�D�b[O��f����w0�M��|&3�����Vej���.�,�pu�p}�Zj%��RIIy�{,%,���_!������yVa����=�,$���2�	W>�U}�r7��To��w �+P��D�n��1�����+#ҬZ�'��<��I�*�����	���ߒ=תAr�K�k��(�*eT������EV�*�>�e��l���Bb��&N�u$�X[K����-�q}��b���[����$IRhbN
��-	������j�����a�6�a��}�ޕǐE<�7����ǊN]y���߶,�E*�Q"ᄳ�ly%���r�l�Y]-H���i7D���= ���T�&_s65�SS�~��w�諐��Ԥ*���y���Y଼"��|q嶩���G�	ג��҇��4ov6}�|�	1��ӴX1��<�o�+r�y`��9�B$!����`�v�h檖�b�3>i8��G�y�1�̛V�C<J��]^������q-ګ��1S��s�m4�+��~���x -���*
N�{$�c�yw�,����%�?�4�0��s�a��L��/n�N2�I5搸e��9����Oᤤ	�K���ۧDz?�'�:U���\��s��?�[ڮ�;&��lC?�Ͻ/�-��5�Y�[ܓ��)�p��4}NM�,�$���q������^����఍U ��[�션��Y7���!*>`�r674:�����'ͅ�A�v�f��^��NZ�I>F�e�:�$;��{U�>�ǪEfg�$��fv�p��ȵ�e����{+iptE�y���	oHTi|�2�-z����OF���S����\����s	��ԭ���/1�'_}���XT��i�X�u1gaȦ^ǉW��r~޲�b���2��'?f%�)~Z�d���"���[�V���qd�r=�k����!/ۦ˘��۰~!ݎ�?�D��q���������	ǵ��l�Bk�P�B�a��Զ��$D�-UʎBHJ2��h^/"������o)�D'����I	�c�*u:dY�u�ّHl=�qa�Lu���ɋ�~G��t=�h�	����"t)��b�p�|��ʆY~��oGI�&�|5|�I�E�$V�R���s��k�LP���[͕!�P2�8�o�g���萿�;��9����p<!xk�Q�^M���v$iW��̥��nW�C�>pFP����!~��-��?fo�z3��| A^��s�^v$��f�U�d���,W�ߐ=��ǽ�� 9�+q��ʵ�}Ї	������I�	�xvp��5[ϳ�WܘL�T��
RO6��?7`RC����}^�\a���t�����GX�,B�1�}4�<�>M�N2��]��TV�H�,wB�3��6�l��^�پ��Q"$�hp�l�0s�$R�a�~����&�k"@�[���G!�����U���E6��m�x���>K�_{�Td��>�J�־ἆA�%��m̲X�l�R6�6�ݬ��۠�ٕ#�0y���Ѡ�̋i�*;���d�1d�|�	��4����x`�VQ*�;O���zٖ0�P`4t�z_����-9+�cO��gY�#�f%B��s������JR�/���o@z� ���7�� �(�:g����=�Ĩ��%���4D�C�3���bG/k6f��꘧UӬ�)�+��u�R^�Fc�����u����}�~�=������6�aQ�+	���R>�M9fƥ��F'⡺�<夌��T��yTEpt{�մ����Y��JH��aLxb5�S����-t"
�8�	����=ӕن��C�2k��e-_�Ü��켨$�h�W��B����_�a��f�7�͔��p \�p09���|�r�U)�TИ��nV���=8�V�Q�B�����nI^�r��^��R�G��V�o��E���(�0�L-�3Ob`�q>�deg�=���߳��g�ķgG���+�wz)%ĥ9S���q�_Mw0��k��<iU�StuZ�B�Q\cd�b�{����� ����c�2ɿ��^��_� $��{���ppF#��8�ecb�����Q�Z}ھ�<V�!*~�W%)���9;i��~�o���!k�k��YiNV#f:+����ؿ�BN���S)\����Kw%Om��b�[�-�::̏ˡ�s,�<��.��g���C�H�S��<`84�sÆ���{o'>����j�sJ��+�|�S�s^�x���;��*����c�εV)�J߭ ;gv��C��A<��k48s��F��R�x�@�6}x��۪ʰ�DZ��o+��UiH�I�L����55���\& �^0��5�#��7�i���N�f@ҹ��?�C�'?Ғ�s�VzN�70�[*S������ϥ��Q\DX�dp��G��y&�����$�̌���� 9���©�Y�X_�qp�����7[�e�w�������`�p�;ޚ�Guq
��[�Y�8��t���v���%~���Oٌ#�Ӳ��Y���8x�Y�{Y���"�k�^������	@T�`�elSN�e2L�e�l�(g�����VhwE!��R__�]r��k����4�VX�(�`Z����͠��,�R���&֝J
�-�_z.��+�m���i�]<�s٩���d�ˊ�D�S��t/��x�U[I�񬜽���_�+(��p\���2#vI��جQ" cL�����:����%������	F�p��N���>-�8Y�_&�o\&x��׈��G7�A/�BD�v��O�3�*>��_/a>rb��s�brrS(�C�)�y��ɥY0��#��1@�:�ɴL��cᒹA�ˌʹ��N��ձ��*	�,�_nq�(2�R ��J��ۊX����Q3c��B>�å,�̓��-��QX��_4/�CM\AĐ/J�H[��$��GNWc���^�Δ�Y�b�+�b��Dg�"�Xv��v$l�OE��C	|�s�l�.<5C6��t�z�*OR�%�B.I$5�ꎧs�OWg8�t�FR �~�|]�5�A�R0m�%|��E�s�9��G\�4�5]\ʼ��jq�(+�W9�|��	�)�_����NP���g	C}�5rm^_��+<�EK�15��d肽M�X05dʧsv�T��p����_
���d-��i�5�b_���<�7z[��/��)�ؿ��(��@s���8�czJH�e������n��~�������J�]�~����*�k����B�z�6�9�\|��|f���3$0>���SQ<$���kv����$P�a�]K�ԜǼ���H�y[�y�d��k2��{/��C��@'<���_r��+�4��� ��Ú��,����d
Ie����7�겗��y�� 
�B�C�'� ��P����7�
u{�$��(��ZS��~�F���̰`֜(r��TJ6��/L-��{^�|�X�'��E���8��n{q�p��~����ǁ r�0:�|5Y�j��$-�K��4;,��C�p�sF+�����B�#n3������ܹˍ�c")���z�ZH�|���I�2��#uvOZ����Hͯ��-����g͇��o7I�_�9�|����� �I�O��'��u߸��{�> \��%TC��!�B'�4��ٹ!٥�y�����~�lU� ��������>�	�b�V���Z�;f�l��� �[�W�n�`-�?�=�)�    K�����A�+�Ěw�@~���]�?�]�vrO�y`]ɣ�S5������7��˦����s|,�X]a�!�Ui͡i����t �J���pK��;��e/pU(����Qm�g�_��z�'*y��f�m�����$	��A�X�Te_ ���z�������[lr���d"�2��<ȉ���:Q�M��Y�y+p�]Ҳ�K�ҍ�Ów��:��1m$cE�sϧS8s�yn�WR�A��l�њ���}���"�ij��f��s����ă�S��`��ߘ�AC�G^���f�fUJd\��#�e���[OC�ҒB��W�h���#l�Y�[��+JדCϦ\��mtf��sb�K�[}�M���Z��U�ל��۳�.m������Ma([G|� ��ޫs�gx2����SɁ9���Q���ח�>'�kǾ:A�@x��s�K ��~1RpS�I���CQ�7�9�����������a->�GA�|Hyx�I��}����ߍk2�> ��+T�VMt��C������k� ���c�Q �(P<��h�<���x8�}���εr�)�f/F*�2I|����,���E�N�k����I�C���M��<��g�n�u�fb�v"o��g]��ae�8�_���PWV$�S��X)�+g^��$�4�,EKW��	h
K3�4���g�8QOހ4$��9�2�}�W�c ���+��V�E�Xɇ�K�����>\�Q\�f����\b��10�(�8�ŏ��E>CX|b����*�;�i^�����<Ea�����γ�%d�d]��+�Z�==�����U��Y��5��;�K�N_����!�	�Xm�D�Y���s�3h5'���y���9��-�"�_+��6p%��э����N���S�{��/��ґ�E.���_���ݷ٩M�LaN���*��P��U!p^Q��7}G�1b��L EJ����Y��"�;~z�f��*� � ;w��I���SK�2�-Ɍ��Y�o��)��Cm�*p�]�{@ϼx�R�r��5�'̵���'!��bG"M����4���\׭�u��	Ze����>�	/�J���Dↀ6��O˵��n��Q�B�@� n�� �.�A���6�������w#���7�\�cT� Te�֫��H��(�8M����p�)u}DA��D1K��o�3�a?plmN�C�O��i"DPbZ���Nx��yki�k�P�4_�O�sǛ
����&������b�1z��ar1�]�z�X˝��4ܞ��H��҆��E�i��|:R ����l��/h#N�)&~N��s8�XQ����$��,��w�'V}ՁNƹ�K��̯f&�N�Ǐ�}?���y#+(7�B�}���O�?U".�`��j��ZA�:4�KWHG��_�.
�-x }�m�D���o/����I�g�_}�ᛳ,�<��ӭ���V��ۜ����r���E~��h��s�̖��RY�kC�����:��Օ�r��v���$���w��:�C��T	ˎǅ����\����=���ٞΛ45�����d�pə��;):z��X���f�	�S�P�1[T�,�;��&�.�YF����4m1�},P)����NcB� �ʢF�aW{��(�W[r�Vۀe=�a^ $BC��?ز�5��(���a�ۥ�z�MZ���5�apD����*qi�ZS�/cu_�6"p���3l@h�H+�8�%�L�}3n��������e������i�z~���Bh�+�њaԋU�G�� {�j$��P���)$D��l/Y��I�BS%)­���)bㅴQP�8[k<�?X�x�ҩ#�4���j�Nn���:m�0to�- bF����<�!�G%�8�>c�����i��u﫯��\�.o�_�nd��洘H3o��,�^}�nPvj�ӟ�7�=���d�����/߾��}�H������9����?���p�)�X�8����ȏi8�����R���z�+^���{����o��������#�/�
h�a��'1�Qɩu@V�H�[i�����0&����T�s�TV��b/2�s!%ϻ/𖒘���R�eeێ8R��]=�R�~ N���c��R��^��D���BH0� 0�yۓx�=M�s[��GK�dL�����_��*}ӣ�k.�ݏ�4�C}�&��G����|4/C�D?�OR��*�����HI������I��9-�y[��X��w�jZ���Լ�V/ĭ�;�h�;�m�ϛ�0��}��i�00s���it�(�h��?�ՇPE��_�H��#k��P���e���4��KRbF��f���_�¯ȏ,	@[e(���P�M��ec�$_���CYV/���܍.��6ɮ�+Z�l�E����.N�B�cʉH���%ΠD'�c{�%�ȣ��ZΔ�:ڝm� =��}�)|�^V*��p
$�K��Pt�
��84H��ΛT���6������돉�����J"�)��%�,���h���9���a�k�^b��;�f�w��#=��}H
�EH�H�]����3]�P�5�ޜ˱�^>(�5a{f����Ő�@��dpÝ���`"2��6S�bu�:!X����kB�R	1GZ4�6�i����~�MV���o&7[�Hq����4�"XX�y[�~�R4k�H���m� }.�:��:��|԰9��Q�AM.=��L2���M"�,�2F,�-w(.+�o�(�<T ����kf�G�dxx����;%lI�t��.���⊯W�΂K!H���N澩G�0�c&�'���i쓆�f>,��b5 �z��O������݁A�.�m��O�5:d��/RVP�z"*(h6��y�A�+t����c��w�Jb���d*c3v������@f�[eU�੨�A˕�PI?単Ű.���&�˃�FU���Ěٖ~)g/N�r	�HҞK���.�R��_�5��3;�����&�����˚VL�<�pi��p"���=�p�_:I�GdC�E�o^4��1��}#�h>�^b</҅�0����@�����:K�Q�E��E�H!��!]�`���D54v[�n�ƾV)+�����-����n|)���&�}W��-�]Df�Rq���c��[��~	U+�\,�xj���J>�j"�,�}[<a�9�h2Hv�Gd�s<C֍#S������x4��K�x�������Q�$����Oz�x���ɥ~��c���o��U�j�����?�-��Qг#�L���r���$��>Ss��+���������Ŭ�>[����R������yA�K��v�����4y-�i��]&�sJ:�t)^��rnS����+�5�5/�%���Y���2L1z���>=��u�y�����$��Fy8/�<���a�н�5n���V���9���(F  <��v&�I4�d[S�ת�����͊��;	K���H�J2	�xt}Ǫ۫�9���ry��-�uy�w����X���]l�ak%��h�P�$4��Gɢ[pa����� 
�Iz����$��zD[f}-�l��+~�A�z|{�[)N��ݍ��+^O��z� P
�FK��z�ؑ�Z��ڡovl��J?�N�5,���W�T5%&��ȼ�j�.��������u,�A�<o�ҵ�AI�6�pd�޶����$v�ԭ�.ZRvu����Q?�΄��O��9����P�x@���Wdxq�d%�����"��Z��·�5-����I��c��DrN5�'���ȎZ`�C�	��|�4Q�C� zjt�-&�[+�9Zvղ`���1@:s�AM��Ly���n֍�Tf8�������-��W^5�]��}����|�sl|1�傏;@�-��C��9���U2O�b$�g�'�	�Qh�]�H�X����{�b�.��(b�zSh�S�u��e����qYw$��"܄���;����$��fb�ʾ��4���q��%��7�g�,�5�:TFB���m��ɗX#������,/PDiΥʷa���$�!    �8|&.��i��ٖ�T�$���`�L��>�,M�� �^�f�K�&c�5B��7]��MU���
(bz����[� K>WI�4,�E&�
'=@oo{f|�p1]N._�~`c5�w�X՜�lEX�!�3%���Y�]e� �VsWp��(�4ܞ�epլ
,ٰ]� ��^�m��}�}�T�а�{�S������\=dܮ"��иBI2Xb�pd���1�����S��Ŭ���(��h�DJ��B�E�/�]-@�PohT��)?ę���D(4@^���с�
;�OE�'�&ٴ�ǔ��	��I���q�kB��M{�`P��Jm1i�_���2Q�di����v�NR�7mن_�Y�qiX�8>0�"�ƨ���s�i�X��<�q�t�������A�4����������i������{ם?L��ͪ���찧%_P*G�#�SҭΩ��3@s�@����"�^'4颁gɎ�XG�9�ff��a�̓����a��3�3���r!��3ׇ	С��jk��䥵yA�����ω�	¹Z��6-�"`�.�+�@�Y]YM��צ�q��,[�X�pG1���k=6�x'�e�OZ�!��Nq�w�L�\���~>k@h����ztw�W���Ib[꾐�|����Wd;�N5QF0{�$���!j�����+]x0;���4�:�S�F��
`�A��1�%CZ�mU���<�1�)w�U�����Kw��5��xϕ�]:�L�͠Ί��ms)q�[����Xu�)�|+ �ǭ1F�Ci��5��"yP�>�k��H��0b�� 04z 1������˘c��#</�FZ��QO@i�W���6m�ɶ�B���Y`Zi�&���:U1���(t��ʕLi��r��%���C���Ăh��;��<�rv)H+}��U횛fp�?���ד�����ǚ�j]�s]/��\��'_�<-�v/��$;��Π֎}��9��l���w���$+}��I��ۘ��i[�(Qu�YץT�ˎ��F��c���D�̂���(�w�ߑ��t�SC43�:���U�n��w?�{|����6FT�Ob��������{�������zI^�C)��u��?��SΆ�l�K�)�R&0xܲ9]��|8�+�Y��y��X���T�9~L��t�'����ռ9�Vk�ݲfb$�zP5�4(uc2!jcf<�5w�oOO�_u�W�vs-�[�F���QC���u6ݢ�֜�H`M�}s��z�rs��t_ؼÇ��V�p왃��u�f��96���|������ﲧo��J����d?~�������|3H���&�y?��&�����W���fJ�	F=er��wF"(��n+��.���H�V�Q�W@H��k����_[�[kR6m�oۺ�f�
�p'~���Jo�M]t��e?�;�4N:�Z�}��nŵ���kڐ��*�L>v{�m �R=f�
 LV�sZ�s���D���`���]O'�W��U�g�눅�3t�_ҔmyąDb���V6A��"�Tc�D��0�Z�D$�vˋGǩ���W�0�v�nm~У�8��|ji�%z.����)����%����%u��\YvlS�����'<��c�ғ�A��z��Q���rjĊ=RnJAc�/�iT,\�ƫ`'�Ņ��օ�o3������,z	��y��(�
7gX�5�^���w��+B��s\>Ys1u��d���\���a����Y���3���ur?�\޼z=�\u�4�s�u���w���g}�����8�#�i?+��OI�>>Q��q=�+��IX=���7m��(�-��ˡ�
� �La����0r*��'PmsE��C��I�|�v֊՞@���ʮ�B�b'�%�+ԯ�V�a��լ���=����uo�/�Ww���D�{��4��E
���"2�4������[���S_��lRK
Y�!KU�ځ�hn	�
[������ٻ��7YkK3O9(����%���NE�[e���tR2�kF��*�7i#"���	�T���������!�qԻ�]��1��ܿz=�4���=�툋0m7�A�N �5,�h%�C�Hy��C	eSw�2���%�~^��f�b��A�k;����p.%,�*"���-�/Z�C��]^�s ��l�u��O1;W����L�@i�f�5ڴ��1�`���j@�;X'5�C�P��Kg��,5Cs�}�\��(���k[%m^XD�(�]�g��S?�MƓW�'�*�f�Iܱ��s�.N	f�E'!�sp���J��'ޑ$/b���y���Z�@f���	�+��Ι"8;)�b��9m>�%�޹�%��f$����3�1�w��!y�M@��8����XU4���a(����8�4o��Rg�>`醤�-ZFl�. �i�vKHΡ��D��J\qqA+�CB��p�*ǵ��Y���F��՚�<Lܚ�3��g��=˹e�J`�T�D�`1�O�]�i_"��u;��7�̒��H�iݠ�8�]�9��D� ���?�|>��
�E���m/|)��Z��f����03:sř�4�H��T@�1_	��%ԥ5�p�l��5�>3�r��2
�B�7I�����Nh��
Y�*�Iy>�J-O�xi�BT�N�������ZE�c����-k�{	E.�η{�>b\�0���y���5zY��6�j&�WB\OU>^�=�(h��A�#���h�P5��T�[ʳ5��T��FZ/�v�r�+���u���^h����u�+}�)��U�x�:��mc�k�汩����lI��I��.��/�����G�x|�������f4v!����Ef�Z������v����H�i��9��VA��e�A��M#��Z�!��)4�˫�l:�׬,�o�V���KPs8�0-��W�+�[&��iX ��Brf�كNºH)ƪ�&i�(Z��4�*���̏y�f��ސU�<#S�8'�>��bֹ4)�;Pz�]ұ �6*��O��e+���@'8�@/���s�D�a���:�~ң�����\�z���t�F܊ŠC`�^��B����.uNq������:���BT�<�W�"�iM$W��bAW�	e=q]� VYJG�y���نK�Ed*��CdʟD7�+�XE�4�ȫ���PsV��EI��6'�~����e�`F�doUe�֐�.��B�����\�!�4<��MZ�����,�=�����әAv�^GUI�V|H��6Y��j��4��Ԍ~V���)�\_�]Wx�胡�����W�IE�A�FM�Kl���k���-��\�¿��#���ɓ$|��G����V���A-$'�r�OP�ʊ��H�qh�bo`�=���Ѡ�a�����e_�F�c�\�j����*�4([%iD4�u:�}��?'��n$��eK��j����|�L#�dHP@�W^���Z}4"u=��G�{34��$��d� �*�w�j�dVD�2q�����g����SP�g��D���s;	;+�˸����BiFNJ����b����$�u|=��(v7��#��ڻ�A�f�wxA�.�5h�/���&e
�$���>}��|#P��O��D�"f"�*�O�r����H����8F����:y;:�4����7D��^�*C��Rͪ�W�e>-���B�+>"�/��̈́�&�5�~������ׯGy��2��ސ�o+�z^�����u������=�[i�)ѬYN_��ܙH묣&�	)��=-�/Z/�[�u�}CQ��I��"��q:���d&�����ƭ�7���.�(�L1{Y�Fju"l�'Hy�Lf����Y �j�����,>�HI���~�	�d�\G��j�>o���S�K���C⫲�$�8���{.)�5����6_?�?�7�/�z׏�?E+��������6C����;$$�:"|l}i2�r���3�W��Ζ+S:��c��ߴ��/$P2�s�Y��|r��a�Q $�q.�^t�:��JO��CI��<_�p���)��X
�1��j�����aJ�.����^я�z<���;5�Y���iB    l�|�ŭ}�������"�C��dh���k<��
o���h��Ď�e�eU�0w�+�2�g��ci����i�r���Z��N��K:9���Z��i�!q��<hh%d��kN.i��S�B��Iy)���J�C`�M�t���H�[3t������"�{#+�^P-fAvY;4=��<Ҫ��u!�0��xm���l���_�y�o4G�(��� �h��n�tF4���������|�vT��Q�����:���Z=RR�
^�bk2.ʞd��]'�T��w	�ay����F Vű�C�\ ���4]���!>�4�Rm�=�� E�K�QC���L�K�J�rVSGٰڔ
��媖��T1�Q�3�(7'A�~d�:j@��r��J��'dK��q�}`�Ъݥu�y����2f��6��=S�e�t,o��,g�A؋z/���U�z̗q�oF��>S���>�SMU�yRV�Tg�=�Ҕ�����(�ssb΋�*o³�՜��]T��{p��X߈����*JpL���J�\��h�5�_jD#��޿�^�9#�h��ȧ��Uι��A}G+�]�Y�v���TY��ߧ���vU껅/��Ԟ"ek���S.�'e���ͽ"��G3�D����|��Dj�5F��&��URУ�jn~ �6e>�&g������+D� N������B_U�I�¿�д3<���(���r^�+��.������5��@�F$@�8���Dh�p���0�W>�N����/�a�!�1�+,O�����}����kbc�#.�nN�{�3����_���ݯ�[@_&�˦���M�~�ߏ6�e�����'��w2�s��28:J-�V{k�'W�N�A�Wu�_sh4��i�&Z���e+�%�`#X��2駟�E3�e�8C�+A)
|��B���q׀���U�h�xT��,��*�:y��?�!��g[�W�^{�K��"9�w^6�d�����`�2"^).�� TT�"���܁�l��дH[�������*�>ާ��������rt}��ug ��RK}kw�Y�~(>�([eI��H��t�"��`Bz�D� BM���A	��p��'zjԛ��A��{gW�8=��2ڄihd��4�`Egq�iG�n���s�#	�À#����蝶��Tү|�ة�A����ᾷ�gE�CsH[䣽���C�߀.�<�y`�t;��f�i ��5v?��kQ����:����ԫ���K�аbq��a>֕:Į�>��վe((I���i�S��(1W�!��6�ʥ	C~:��t���o9E������׏8�K��p����)u�\�c9;E�p��n윔�u�ɡ�e��_l(�`�l�`��3d@ ��5��&r\=�D���.��!��>»ህ���t�_6��W̾���I��(%����\��0������W7������G@`B͐�<G �I
�zD����RM�M�2�W�z`~�3Z�e���	5m[���d���Cg	d�uUG�?�b }1i��Ғ5��N�� Y?�eX����9a��n�E����E�Ě�$�� J���;TȰ�ɕ%��l5
?�T�������L��@��2��N���U�CQ	�(B�Ü[ }uY���=s��R���$���C�l�ۻG��:*��v}��A'�G¹����G���K�h�8��wT���������Yw�qL ��+6F������T� y#���у�w��vU�`'?���Z��� �m�%�Mb�������ֆ1��$N~��s�rn��nu�w����]v��y�v�6����iՋ��.z�y}�mn���-^�F�mQeY����{�����u�q�&LS@U����m��ͧy 1R���G|���E�`` kϹ���Pl��9��،t�
-iC�Z8�Μŗ&�3��P�~�??G�TS
� Onb���"����B�5
{L#sǾv^�~A�9Щ%Dj"FQ������W%���p���T�m&l����^��n�̄ի�ʴ{�����ĭXu>n��h
�<\�����L��)�>V)��l8Xة����&�Eg�X�'�����.Fz����,��eI�����.ǣ�۾��ƃʱúa��Vt��>��È��,����p5?�м(h�Z#��=:j�)��f�(w�&
��=����+��������Ś�eoR�Hڦ*oc i0�����Ƅ�e�n�%�'��9���0�04����;��H��a�^Q� ���W���n! �ũ�k�?^��M��>3��ƅ����E+bq.���8��&0	�`T��U���<V��Ϩ	m^���&��t{s�O~��%$㣃,�]�X/����۩�!�`���j��</�7"7�%He�D��&�p�$R�J)4�����g�W޶�>�J�B�!��O��"P������~S'�X��-������RĞ�3�C���#qR�YUUs�[�nfޢ�M�l,�2 �bZbu9�gK^���M/���ʮGw7���5Xf1&89����@S�倄��@˙M;MH	
 ��?T��l�Y���&g�g9Nz^�:J?)4��D 3�D���B{_��0���>I@ħ2m�m�pQqׅ��a.|j��ݩ+M�˳x�ߤx����
^�h�������B))`�u�]-4/��Ԝ�u�u!Q"�&�2~l�"ÐZ�����n������Jz�ݸ<�y�Gf�`!���d�,U���4���O���_P�]�L2L�8�!T#����4�^����!�D��j,��,o����9G���)Sδ�k���l�eο�o�U ��H�ie�i�V���i׬�c��i�?�-!~�p�?��C�OP/���蒩j��)&:���\����\a��T��U��gݷ{py%�Vq�ES�8�:
z�{$E�8i�z�Ii�i:_b�Ph�d�2�����d���|Ck�B�Ҷ�\�v��T
&�D�Bq�J��w��1���1����x��|��1=ΐ0�'c_D r+
w*k�T�����+^����-걝�R�X��m����E���>Q"{��
��!8�~�2�z�8=�{�\0v���Kb$(`l�_گ�6�����~��dR�r���"�qWh�@�lҼ~/���2��E'��~U�e��6I��1�ES��s�L/�zE;����;_qL��T���`ܝ�{1�W��L������<d�`e����v�LK�31�nz/�ݬ�8�~'�f(5�ؠl�ؕ���&
0ktc+�Eથ'�+׏J�O��{��&	�6��훺�-��ک��Wb�	���!4�-���잧�L��`>� ro�E8���FP����%A-_��8��X���xݴp��o�`�3
��{)�$�ɮ(-	���(T��FFn���a�u������������ژ��?���hcq�KV�й��Ū8�>��ی��5�a���ի�c�7���J�&�,������C]/|$ϼ�~�m�p,/F�R:-G];HY#���L�`��(��H�|Wy�[�+VM�}��_����,��]`�>G.�p��� &�d^q[+�9v<��>:~��[�����C�f�\6���K�����v\�"^���j�Y��uS��<n���]��c�3i���}����1�S���X���"De0��*�!e��m�*#�r�/�lL��A!���o\f'2����^X�hY�q'�U�֚�G;��5-��G:\�����}���ժ˫>s�ד�R������A���Y>}��[�6fE�5�M_��1��d��:�������IZ���{�&�F�J�C��n�94�4�\�I�����s�	�;��X���������
ZuN� ������N�p�)9���%U��:��=���6��qu�FX����t��m�7�t4�/�i,C�j�9,�	�s2Rhj#��ɘ���W���\����vm����^�Q�#U�(�
i�Z����35�K֜9�8 Ԇ�    &eb�%�Ʋ@I��+�J�bPܫt�zú�a#�� 03+W���`�x�&����o?a��IU`��o?b��yy~�N����h��~�d�|?<�Z��<���=Ӯ�}�u�ϙ_�=#kT9��A�~���;�Y��^+�M"�i_��P�:�)%mpSG�ر�[���]�j���j�b�q�oyɱc�;�ԲcOQ8�U$9l񉡹�Y����7�؊�L[���j(ϴ^T_�	dZh��<����1�t�Eh�r�U�#����m�hd�5#XF�m�����/���Wπ���Tij!>�΅ Y|P�u��*�J�(�c2���pzcH�Pc��0bOR��1twիu�?�j�@�I�)�]^%���+�Ȼ}��ǥg�rf�f�>Î'{Z�	�0a�MC��t)���X����#��$RM�%� �.C�ٮ�/mQ��,����D#���۬\��W$'�w���ʛ}�?�θ9�J� \�"L��afch>�~л���r�C��K�M�u�z��w�1��1�;-�C.�F�0���ugL#����s��^���zV�����>�*�qY}�N��xC�eߕm�i�J��4"���Y��^SI�ޮ�[�T��*v��93��

���V�������rtu{���Gk��w��� �p�"$Jv�(bY$��7�z�4L��9�U���W�P8��6)cì���ٶA1�2�q7&�1w�<�_ǔ� 	T�Y k#5e�˴y.n��%�Y��Y�lj�wA��c�3@d�!mg��VJ�4�4@e�r[U��+,���P�"�(31���z*<nV\^�����7�nf��3�ʺȭ�/ %�P�T����7)q���w�\\�z݋�S����rM�v�"O�T�|l n ���ޅ�s���B�)�?�ؔFN'���J��3�{ҿM�g��b\�sN�d�-|�+ Fc~��U>H�:Ew������1�ʵ$H�ێ4�N��a%Ka�%���������S���W�t�e<�N�o����щ"�%�Z˵0�$��Eǫ1�t�'�gC�u��B׻U�~�1:���R�md�%�O��m�G��Y�vKE�G�nɣ$K����ӃJ'���'���c��;��8���G��vy��.�n�l�XrP6.�C>�Ok����X�Z�w�tĀ���T����ΟK�%ts�T
��%�({�q�*�1zYK2�8�WWe$H�)zG��g���Bк�>���[��e��aD<�nѷ+�<8�v�lKc+Wq�J��4�@.��8�Ya�C�X�\�`yj�;��߫��	/��Ճ�/: P�A5q"�')��G�.�F���.?���s��9�FnʬYĻ6ʑ�h�����5����a- RZ�p��-�K|��{�	�ɳ�������ܱ}�&��%�u��O}9|4d(#�y��:3PƏ�|��Sp7�Q,m��5�?�Ȩ݈� �P� ����b�����?_<�����w�v�1O+d��Ku�2��^I����9��#?�є�`�2
�L���9�x�������ӂ���o��].�v<v�߱�}y��Y[�f���\�Lʿ
�
���<�w78�y��N+`{�?hi�e���ۓ�j��ʠ.)J㖊�(�PϦ�0���˞?��32יdH���{Ә�e�6��ʊ�:���A�TԒS�H*2��������Y��k�2��ę�!��P�I�|4�:i�dܞ�YKG_6գ�?M8�y�K������7X:�sA�V��S4�h8���C��������zds}K���.������g��\B��󧃸-}�L��^0�� I::��;�D�8
81��z���.�f�^��r����z��yJ��--� �l��/�}lq��lR����
�a9����10��sE$���ۚ�3K��g��-A�w���m��K�r{������O�ͩ���Y�A)�(�l��>V<�u���ّ�i1܂��#=Ɏ��ZΣ>=��AN�x�Ы��4&:iF��4̲T-�k�a�!�O���J&��'!���j'��4�!L!�.4 ��N<+�2q%���ŀ��z�^���8�G>�����;'z��"V<�=iC�۴Hw���ȑ��S@��*R��Břw���fk��O�b��]�� <�	k�^��2�D��K�y��LCS?̀�8�K Ӗ�:̬j�߶e������Y)�o�y��3�P/�5���qI��E�
7�xlX�M
#���%<���/6~��\���g3��������������}�&8�F,�U�kA)GDn�6i�3
��&�$�[U�Y�勄���n#�ؼL�>5���Jv�eճc'5��"�B4�y 	�Nɼ˥��lUp��m"z�(h��J��Љ�gмϤ|ȴ�2���O^%nw*{�KB/x\.]���䶷��5�^�z=퀭>)A�	B*���K�aE���o����GL�Y̽6�$��u�N6?y<93���z\�%��P�yx{�W���Y[�Ṝ�І�� �!�Z}ҢH7$�p���!n��
��e�-	�V����RRI+h�O�;ɬ>�?_��_�N8�[��aI�T������I?>ˆ���LO�gpB:�x4���z]��ݚ�e��`���z���-���_?��M��ˇ�O���-7k�&�3Q�<��k��)�h���'y���*�h������y�(�:{cN��fx4	D��jBۑ��#�������6@Va���Z��@*+�!��tHc��Pn{w���;���O��k�%jMF,�Oh�fr���AA�4HW�+���?v��j�2r��j�^x�!��kָ!\:Z���Q�Z�����ys�,j��oA{���Ξ���C�����>3�`�d�^���e�az���;��A�i�ȍ4�OB��_�ֳ]<�P�g-D�1C:�����wʶ��^̳\�+���.X=���?XEl��/�.����~W��a�ZQ���?}�x �9���x{.I�Bf���A��d��(B
Z�INd?�^���PhY���BW�~p\=�����Aa���'�t�X��H9k(�����oIc<���L�Z������NP��}m�)+��Ǿ����1Ao_��"�+�T��O�c���o�f	�'H�0T���T?rL���{���F�tWY�$c]:��2�����ypbP*hg��y��w�dA������S|�Þ5Bz���$�J&JL�H���E)�i�:0Q�j���Ր�@ CsF���t��Ď{'��������]g�WC�Y"Q�B�Qud�|�"�>V�*�Ｖ��N��� �G�?˚�c]���8��_{N�|�&�H:4 �Z%� b=��GLq]?;�0R�f7I[����Ξ��.u1��������q`�>}�N�|��4���r;D�.��D8lٷ�ڇ@��g)� �p�l�
MB��@���gƹ�f��`X	<��Zu����k��4��"�Y�i%����%���u}~q	T;V�Ɨ#�E�.3�gl>�%4y�f�t[Rk<,l\�X�W�/��l]"֫���s/��)Qϛ�+j�Y`!�K���E��J_Y�Z 8p�,�I&����,�Q���7���/��\�6��{�p�9k�]�Ie���<8����,�K�@XH�+����ϕϨ^�K���v�o���
۾���4Pr���c8�M[��$���,136X��
Rf�+��$X��Fp��Юͤ�"@�F�0Fӌ`-�RPR!��FL@�X�Bˇ��Z%�fD�"O[Q��{�2�/�<$���*A�1Yz������A��J�˪	�]
�S��V���Q+�/�-��t�h�ǰ^��Z�ݏ���鏿� ����|2V�?�d���+�\\?L�S,~��G|��q>�o8�z:�Z���Γs�b�;����x�@���6n	7T���45�VY��W<�?j�d!"�^�d4�z5�z�9ϻ�팥 q���u���t�%��:𦌅����Y��=��ߞE��h�6���-�B�<�~�p����	�s�z!�OySj�P H   @K*��L�u�:篊�Q/?�"y���K��ۣ���n.$U��@�{2-�'���\$�?����� �{�D      &   9  x�u�[�۸���_�<9��0H𢗭��N֗�&qU*/��X��	E�����np$� �vgf��H��}�J���Ut��UK��Y�lR�����⾱�O�?Fe�(��h`t(�'�S�YD�Ou6"_�f-�V�-�V.ۺ9�0*�*Y��B��aaD$�e�t��f�0��hh*q�{��l+�+[Y�/L2� ��l۫gkX����! �k����r��ύ=�ۺ���V��=hM�ڛƾF�\���j-o�vb4�vZ���vû_�p��� �jˉ�J��o5��x|,T$�n��	+(��u[����d�y�iL�\����U<x��ơ�����M�XY7�z���g�5~�1�.ws��wk?��z���֘������i��f4!�EMj<�;�l������������Q��dRcT,@{[�wEY���>M����v�R�3�1����e%?��m���;��Z"!�5�17kĲ\�=ڭ�6
sw}��5f�><´:a=�V|1�D>�1 0������n/o�߾!d� -��Q>�1�{sz�����hW2�q�E �biW�m���JOj<V	lʧ'���&��xp$"-��+����7�Pz��x|,����t��v��r]c�9Q��5� ���lW[ʚ+۴����&5Fd�F~���K�eR㱹��[[�[��V����y?e�5Bġ ٚ2�C�݂
Q��[���x%��-N{��Z����,��`�Z ��Xc���t���M$盈 l��
���8H�݀|�g�!� 綖_���Q<{�H�v�Yc�D,��!�X$���0�POj�H(/��i����	
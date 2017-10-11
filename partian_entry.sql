--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.3
-- Dumped by pg_dump version 9.6.3

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: blog_blog; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blog (
    page_ptr_id integer NOT NULL,
    intro text NOT NULL
);


ALTER TABLE blog_blog OWNER TO postgres;

--
-- Name: blog_blogpage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blogpage (
    page_ptr_id integer NOT NULL,
    body text,
    date date,
    intro character varying(250),
    cover integer
);


ALTER TABLE blog_blogpage OWNER TO postgres;

--
-- Name: blog_blogpagegalleryimage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE blog_blogpagegalleryimage (
    id integer NOT NULL,
    sort_order integer,
    caption character varying(250) NOT NULL,
    image_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE blog_blogpagegalleryimage OWNER TO postgres;

--
-- Name: blog_blogpagegalleryimage_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE blog_blogpagegalleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE blog_blogpagegalleryimage_id_seq OWNER TO postgres;

--
-- Name: blog_blogpagegalleryimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE blog_blogpagegalleryimage_id_seq OWNED BY blog_blogpagegalleryimage.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO postgres;

--
-- Name: home_homepage; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE home_homepage (
    page_ptr_id integer NOT NULL
);


ALTER TABLE home_homepage OWNER TO postgres;

--
-- Name: home_pagesection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE home_pagesection (
    page_ptr_id integer NOT NULL,
    body text NOT NULL
);


ALTER TABLE home_pagesection OWNER TO postgres;

--
-- Name: taggit_tag; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE taggit_tag (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    slug character varying(100) NOT NULL
);


ALTER TABLE taggit_tag OWNER TO postgres;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE taggit_tag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_tag_id_seq OWNER TO postgres;

--
-- Name: taggit_tag_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE taggit_tag_id_seq OWNED BY taggit_tag.id;


--
-- Name: taggit_taggeditem; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE taggit_taggeditem (
    id integer NOT NULL,
    object_id integer NOT NULL,
    content_type_id integer NOT NULL,
    tag_id integer NOT NULL
);


ALTER TABLE taggit_taggeditem OWNER TO postgres;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE taggit_taggeditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE taggit_taggeditem_id_seq OWNER TO postgres;

--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE taggit_taggeditem_id_seq OWNED BY taggit_taggeditem.id;


--
-- Name: wagtailcore_collection; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_collection (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    name character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_collection_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_collection_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE wagtailcore_collection OWNER TO postgres;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_collection_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_collection_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_collection_id_seq OWNED BY wagtailcore_collection.id;


--
-- Name: wagtailcore_collectionviewrestriction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_collectionviewrestriction (
    id integer NOT NULL,
    restriction_type character varying(20) NOT NULL,
    password character varying(255) NOT NULL,
    collection_id integer NOT NULL
);


ALTER TABLE wagtailcore_collectionviewrestriction OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_collectionviewrestriction_groups (
    id integer NOT NULL,
    collectionviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE wagtailcore_collectionviewrestriction_groups OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_collectionviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_collectionviewrestriction_groups_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_collectionviewrestriction_groups_id_seq OWNED BY wagtailcore_collectionviewrestriction_groups.id;


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_collectionviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_collectionviewrestriction_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_collectionviewrestriction_id_seq OWNED BY wagtailcore_collectionviewrestriction.id;


--
-- Name: wagtailcore_groupcollectionpermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_groupcollectionpermission (
    id integer NOT NULL,
    collection_id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE wagtailcore_groupcollectionpermission OWNER TO postgres;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_groupcollectionpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_groupcollectionpermission_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_groupcollectionpermission_id_seq OWNED BY wagtailcore_groupcollectionpermission.id;


--
-- Name: wagtailcore_grouppagepermission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_grouppagepermission (
    id integer NOT NULL,
    permission_type character varying(20) NOT NULL,
    group_id integer NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailcore_grouppagepermission OWNER TO postgres;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_grouppagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_grouppagepermission_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_grouppagepermission_id_seq OWNED BY wagtailcore_grouppagepermission.id;


--
-- Name: wagtailcore_page; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_page (
    id integer NOT NULL,
    path character varying(255) COLLATE pg_catalog."C" NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    title character varying(255) NOT NULL,
    slug character varying(255) NOT NULL,
    live boolean NOT NULL,
    has_unpublished_changes boolean NOT NULL,
    url_path text NOT NULL,
    seo_title character varying(255) NOT NULL,
    show_in_menus boolean NOT NULL,
    search_description text NOT NULL,
    go_live_at timestamp with time zone,
    expire_at timestamp with time zone,
    expired boolean NOT NULL,
    content_type_id integer NOT NULL,
    owner_id integer,
    locked boolean NOT NULL,
    latest_revision_created_at timestamp with time zone,
    first_published_at timestamp with time zone,
    live_revision_id integer,
    last_published_at timestamp with time zone,
    draft_title character varying(255) NOT NULL,
    CONSTRAINT wagtailcore_page_depth_check CHECK ((depth >= 0)),
    CONSTRAINT wagtailcore_page_numchild_check CHECK ((numchild >= 0))
);


ALTER TABLE wagtailcore_page OWNER TO postgres;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_page_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_page_id_seq OWNED BY wagtailcore_page.id;


--
-- Name: wagtailcore_pagerevision; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_pagerevision (
    id integer NOT NULL,
    submitted_for_moderation boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    content_json text NOT NULL,
    approved_go_live_at timestamp with time zone,
    page_id integer NOT NULL,
    user_id integer
);


ALTER TABLE wagtailcore_pagerevision OWNER TO postgres;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_pagerevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pagerevision_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_pagerevision_id_seq OWNED BY wagtailcore_pagerevision.id;


--
-- Name: wagtailcore_pageviewrestriction; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_pageviewrestriction (
    id integer NOT NULL,
    password character varying(255) NOT NULL,
    page_id integer NOT NULL,
    restriction_type character varying(20) NOT NULL
);


ALTER TABLE wagtailcore_pageviewrestriction OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_pageviewrestriction_groups (
    id integer NOT NULL,
    pageviewrestriction_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE wagtailcore_pageviewrestriction_groups OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_pageviewrestriction_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pageviewrestriction_groups_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_pageviewrestriction_groups_id_seq OWNED BY wagtailcore_pageviewrestriction_groups.id;


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_pageviewrestriction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_pageviewrestriction_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_pageviewrestriction_id_seq OWNED BY wagtailcore_pageviewrestriction.id;


--
-- Name: wagtailcore_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailcore_site (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    port integer NOT NULL,
    is_default_site boolean NOT NULL,
    root_page_id integer NOT NULL,
    site_name character varying(255)
);


ALTER TABLE wagtailcore_site OWNER TO postgres;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailcore_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailcore_site_id_seq OWNER TO postgres;

--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailcore_site_id_seq OWNED BY wagtailcore_site.id;


--
-- Name: wagtaildocs_document; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtaildocs_document (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    uploaded_by_user_id integer,
    collection_id integer NOT NULL
);


ALTER TABLE wagtaildocs_document OWNER TO postgres;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtaildocs_document_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtaildocs_document_id_seq OWNER TO postgres;

--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtaildocs_document_id_seq OWNED BY wagtaildocs_document.id;


--
-- Name: wagtailembeds_embed; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailembeds_embed (
    id integer NOT NULL,
    url character varying(200) NOT NULL,
    max_width smallint,
    type character varying(10) NOT NULL,
    html text NOT NULL,
    title text NOT NULL,
    author_name text NOT NULL,
    provider_name text NOT NULL,
    thumbnail_url character varying(200),
    width integer,
    height integer,
    last_updated timestamp with time zone NOT NULL
);


ALTER TABLE wagtailembeds_embed OWNER TO postgres;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailembeds_embed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailembeds_embed_id_seq OWNER TO postgres;

--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailembeds_embed_id_seq OWNED BY wagtailembeds_embed.id;


--
-- Name: wagtailforms_formsubmission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailforms_formsubmission (
    id integer NOT NULL,
    form_data text NOT NULL,
    submit_time timestamp with time zone NOT NULL,
    page_id integer NOT NULL
);


ALTER TABLE wagtailforms_formsubmission OWNER TO postgres;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailforms_formsubmission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailforms_formsubmission_id_seq OWNER TO postgres;

--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailforms_formsubmission_id_seq OWNED BY wagtailforms_formsubmission.id;


--
-- Name: wagtailimages_image; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailimages_image (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    focal_point_x integer,
    focal_point_y integer,
    focal_point_width integer,
    focal_point_height integer,
    uploaded_by_user_id integer,
    file_size integer,
    collection_id integer NOT NULL,
    CONSTRAINT wagtailimages_image_file_size_check CHECK ((file_size >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_height_check CHECK ((focal_point_height >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_width_check CHECK ((focal_point_width >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_x_check CHECK ((focal_point_x >= 0)),
    CONSTRAINT wagtailimages_image_focal_point_y_check CHECK ((focal_point_y >= 0))
);


ALTER TABLE wagtailimages_image OWNER TO postgres;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailimages_image_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_image_id_seq OWNER TO postgres;

--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailimages_image_id_seq OWNED BY wagtailimages_image.id;


--
-- Name: wagtailimages_rendition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailimages_rendition (
    id integer NOT NULL,
    file character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    focal_point_key character varying(16) NOT NULL,
    image_id integer NOT NULL,
    filter_spec character varying(255) NOT NULL
);


ALTER TABLE wagtailimages_rendition OWNER TO postgres;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailimages_rendition_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailimages_rendition_id_seq OWNER TO postgres;

--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailimages_rendition_id_seq OWNED BY wagtailimages_rendition.id;


--
-- Name: wagtailredirects_redirect; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailredirects_redirect (
    id integer NOT NULL,
    old_path character varying(255) NOT NULL,
    is_permanent boolean NOT NULL,
    redirect_link character varying(200) NOT NULL,
    redirect_page_id integer,
    site_id integer
);


ALTER TABLE wagtailredirects_redirect OWNER TO postgres;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailredirects_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailredirects_redirect_id_seq OWNER TO postgres;

--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailredirects_redirect_id_seq OWNED BY wagtailredirects_redirect.id;


--
-- Name: wagtailsearch_editorspick; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailsearch_editorspick (
    id integer NOT NULL,
    sort_order integer,
    description text NOT NULL,
    page_id integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE wagtailsearch_editorspick OWNER TO postgres;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailsearch_editorspick_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_editorspick_id_seq OWNER TO postgres;

--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailsearch_editorspick_id_seq OWNED BY wagtailsearch_editorspick.id;


--
-- Name: wagtailsearch_query; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailsearch_query (
    id integer NOT NULL,
    query_string character varying(255) NOT NULL
);


ALTER TABLE wagtailsearch_query OWNER TO postgres;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailsearch_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_query_id_seq OWNER TO postgres;

--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailsearch_query_id_seq OWNED BY wagtailsearch_query.id;


--
-- Name: wagtailsearch_querydailyhits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailsearch_querydailyhits (
    id integer NOT NULL,
    date date NOT NULL,
    hits integer NOT NULL,
    query_id integer NOT NULL
);


ALTER TABLE wagtailsearch_querydailyhits OWNER TO postgres;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailsearch_querydailyhits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailsearch_querydailyhits_id_seq OWNER TO postgres;

--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailsearch_querydailyhits_id_seq OWNED BY wagtailsearch_querydailyhits.id;


--
-- Name: wagtailusers_userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE wagtailusers_userprofile (
    id integer NOT NULL,
    submitted_notifications boolean NOT NULL,
    approved_notifications boolean NOT NULL,
    rejected_notifications boolean NOT NULL,
    user_id integer NOT NULL,
    preferred_language character varying(10) NOT NULL
);


ALTER TABLE wagtailusers_userprofile OWNER TO postgres;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE wagtailusers_userprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE wagtailusers_userprofile_id_seq OWNER TO postgres;

--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE wagtailusers_userprofile_id_seq OWNED BY wagtailusers_userprofile.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: blog_blogpagegalleryimage id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpagegalleryimage ALTER COLUMN id SET DEFAULT nextval('blog_blogpagegalleryimage_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: taggit_tag id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_tag ALTER COLUMN id SET DEFAULT nextval('taggit_tag_id_seq'::regclass);


--
-- Name: taggit_taggeditem id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_taggeditem ALTER COLUMN id SET DEFAULT nextval('taggit_taggeditem_id_seq'::regclass);


--
-- Name: wagtailcore_collection id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collection ALTER COLUMN id SET DEFAULT nextval('wagtailcore_collection_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction ALTER COLUMN id SET DEFAULT nextval('wagtailcore_collectionviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_collectionviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('wagtailcore_collectionviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_groupcollectionpermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_groupcollectionpermission_id_seq'::regclass);


--
-- Name: wagtailcore_grouppagepermission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_grouppagepermission ALTER COLUMN id SET DEFAULT nextval('wagtailcore_grouppagepermission_id_seq'::regclass);


--
-- Name: wagtailcore_page id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_page ALTER COLUMN id SET DEFAULT nextval('wagtailcore_page_id_seq'::regclass);


--
-- Name: wagtailcore_pagerevision id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pagerevision ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pagerevision_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pageviewrestriction_id_seq'::regclass);


--
-- Name: wagtailcore_pageviewrestriction_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction_groups ALTER COLUMN id SET DEFAULT nextval('wagtailcore_pageviewrestriction_groups_id_seq'::regclass);


--
-- Name: wagtailcore_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_site ALTER COLUMN id SET DEFAULT nextval('wagtailcore_site_id_seq'::regclass);


--
-- Name: wagtaildocs_document id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtaildocs_document ALTER COLUMN id SET DEFAULT nextval('wagtaildocs_document_id_seq'::regclass);


--
-- Name: wagtailembeds_embed id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailembeds_embed ALTER COLUMN id SET DEFAULT nextval('wagtailembeds_embed_id_seq'::regclass);


--
-- Name: wagtailforms_formsubmission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailforms_formsubmission ALTER COLUMN id SET DEFAULT nextval('wagtailforms_formsubmission_id_seq'::regclass);


--
-- Name: wagtailimages_image id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_image ALTER COLUMN id SET DEFAULT nextval('wagtailimages_image_id_seq'::regclass);


--
-- Name: wagtailimages_rendition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_rendition ALTER COLUMN id SET DEFAULT nextval('wagtailimages_rendition_id_seq'::regclass);


--
-- Name: wagtailredirects_redirect id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailredirects_redirect ALTER COLUMN id SET DEFAULT nextval('wagtailredirects_redirect_id_seq'::regclass);


--
-- Name: wagtailsearch_editorspick id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_editorspick ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_editorspick_id_seq'::regclass);


--
-- Name: wagtailsearch_query id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_query ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_query_id_seq'::regclass);


--
-- Name: wagtailsearch_querydailyhits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_querydailyhits ALTER COLUMN id SET DEFAULT nextval('wagtailsearch_querydailyhits_id_seq'::regclass);


--
-- Name: wagtailusers_userprofile id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailusers_userprofile ALTER COLUMN id SET DEFAULT nextval('wagtailusers_userprofile_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
1	Moderators
2	Editors
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 2, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	2
6	2	3
7	1	4
8	2	4
9	1	5
10	1	6
11	1	7
12	2	5
13	2	6
14	2	7
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 14, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add image	2	add_image
2	Can change image	2	change_image
3	Can delete image	2	delete_image
4	Can access Wagtail admin	3	access_admin
5	Can add document	4	add_document
6	Can change document	4	change_document
7	Can delete document	4	delete_document
8	Can add home page	5	add_homepage
9	Can change home page	5	change_homepage
10	Can delete home page	5	delete_homepage
11	Can add page section	6	add_pagesection
12	Can change page section	6	change_pagesection
13	Can delete page section	6	delete_pagesection
14	Can add blog	7	add_blog
15	Can change blog	7	change_blog
16	Can delete blog	7	delete_blog
17	Can add blog page	8	add_blogpage
18	Can change blog page	8	change_blogpage
19	Can delete blog page	8	delete_blogpage
20	Can add blog page gallery image	9	add_blogpagegalleryimage
21	Can change blog page gallery image	9	change_blogpagegalleryimage
22	Can delete blog page gallery image	9	delete_blogpagegalleryimage
23	Can add form submission	10	add_formsubmission
24	Can change form submission	10	change_formsubmission
25	Can delete form submission	10	delete_formsubmission
26	Can add redirect	11	add_redirect
27	Can change redirect	11	change_redirect
28	Can delete redirect	11	delete_redirect
29	Can add embed	12	add_embed
30	Can change embed	12	change_embed
31	Can delete embed	12	delete_embed
32	Can add user profile	13	add_userprofile
33	Can change user profile	13	change_userprofile
34	Can delete user profile	13	delete_userprofile
35	Can add rendition	14	add_rendition
36	Can change rendition	14	change_rendition
37	Can delete rendition	14	delete_rendition
38	Can add query	15	add_query
39	Can change query	15	change_query
40	Can delete query	15	delete_query
41	Can add Query Daily Hits	16	add_querydailyhits
42	Can change Query Daily Hits	16	change_querydailyhits
43	Can delete Query Daily Hits	16	delete_querydailyhits
44	Can add page	1	add_page
45	Can change page	1	change_page
46	Can delete page	1	delete_page
47	Can add group page permission	17	add_grouppagepermission
48	Can change group page permission	17	change_grouppagepermission
49	Can delete group page permission	17	delete_grouppagepermission
50	Can add page revision	18	add_pagerevision
51	Can change page revision	18	change_pagerevision
52	Can delete page revision	18	delete_pagerevision
53	Can add page view restriction	19	add_pageviewrestriction
54	Can change page view restriction	19	change_pageviewrestriction
55	Can delete page view restriction	19	delete_pageviewrestriction
56	Can add site	20	add_site
57	Can change site	20	change_site
58	Can delete site	20	delete_site
59	Can add collection	21	add_collection
60	Can change collection	21	change_collection
61	Can delete collection	21	delete_collection
62	Can add group collection permission	22	add_groupcollectionpermission
63	Can change group collection permission	22	change_groupcollectionpermission
64	Can delete group collection permission	22	delete_groupcollectionpermission
65	Can add collection view restriction	23	add_collectionviewrestriction
66	Can change collection view restriction	23	change_collectionviewrestriction
67	Can delete collection view restriction	23	delete_collectionviewrestriction
68	Can add Tag	24	add_tag
69	Can change Tag	24	change_tag
70	Can delete Tag	24	delete_tag
71	Can add Tagged Item	25	add_taggeditem
72	Can change Tagged Item	25	change_taggeditem
73	Can delete Tagged Item	25	delete_taggeditem
74	Can add log entry	26	add_logentry
75	Can change log entry	26	change_logentry
76	Can delete log entry	26	delete_logentry
77	Can add permission	27	add_permission
78	Can change permission	27	change_permission
79	Can delete permission	27	delete_permission
80	Can add group	28	add_group
81	Can change group	28	change_group
82	Can delete group	28	delete_group
83	Can add user	29	add_user
84	Can change user	29	change_user
85	Can delete user	29	delete_user
86	Can add content type	30	add_contenttype
87	Can change content type	30	change_contenttype
88	Can delete content type	30	delete_contenttype
89	Can add session	31	add_session
90	Can change session	31	change_session
91	Can delete session	31	delete_session
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 91, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$36000$pki7ifOM8nSD$l/s/2CQV7EMkgOtRg1ycRZR1hRvBZT5bmpch3Bw/fmo=	2017-10-06 16:51:53.418169+08	t	admin			admin@admin.com	t	t	2017-10-06 16:51:34.599014+08
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: blog_blog; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blog (page_ptr_id, intro) FROM stdin;
4	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.</p>
\.


--
-- Data for Name: blog_blogpage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpage (page_ptr_id, body, date, intro, cover) FROM stdin;
5	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales. Pellentesque aliquam lectus elit, quis viverra tortor tincidunt non. Nulla facilisi. In hac habitasse platea dictumst. Pellentesque dolor justo, auctor non pretium a, convallis quis sem. Maecenas vitae efficitur risus. Phasellus vel scelerisque enim, iaculis tempor ex. Donec bibendum libero lorem, sit amet eleifend tellus venenatis eu. Donec dolor purus, maximus vitae posuere nec, consectetur in justo.</p><p>Pellentesque porta in nisl eu mattis. Aenean eu feugiat lacus, sed vestibulum odio. Nunc sodales rhoncus eleifend. Nullam eu orci nunc. Fusce felis urna, tincidunt quis nisl id, porta vehicula eros. Suspendisse varius est id sem sodales, nec imperdiet purus dictum. Proin nec nisi nec augue sagittis condimentum at gravida erat. Proin elementum sit amet orci id malesuada. Nullam tincidunt semper felis, sed ultricies est. Vestibulum ornare lectus in ultricies suscipit. Sed sed maximus lacus. Duis tempus nulla et malesuada blandit. Vestibulum urna arcu, ullamcorper ut libero a, semper malesuada ante. Vivamus in porta sem. Integer gravida mattis lectus sit amet efficitur. Vivamus luctus et elit sit amet aliquam.</p><p>Etiam tempor urna lobortis mattis viverra. Donec scelerisque leo risus, eu euismod massa fermentum non. Vivamus erat mauris, ultricies id ante sed, convallis tincidunt sem. Donec sit amet augue mi. Maecenas et est augue. Nullam suscipit dignissim sem in posuere. Nunc rutrum libero ut suscipit varius. Etiam porttitor, magna vitae placerat vestibulum, nisl neque posuere mi, nec pharetra ipsum elit ac risus. Sed nisl nisl, interdum et purus ut, bibendum ullamcorper erat. Etiam nec urna ac diam posuere laoreet. Nulla sed ex diam. Sed quam justo, tristique quis tempor at, fermentum vitae mauris. Phasellus vel lacus bibendum, viverra elit quis, dictum nisl. Etiam sed velit lorem. Nam bibendum congue justo, vitae sodales metus sagittis quis.</p><p>Vivamus tincidunt nisi et augue suscipit, ac commodo erat pulvinar. Praesent non dictum velit, scelerisque ullamcorper purus. Nam eget euismod velit. Aliquam accumsan eros et ultricies pharetra. Morbi tristique erat at turpis commodo tempus. Fusce ultrices convallis ex. Nulla viverra libero id laoreet ornare. In tincidunt ac dui vitae finibus. Vivamus sit amet leo ante. Phasellus ut mauris mi. Phasellus lacinia enim non nunc porta venenatis. Morbi ut vehicula est. Curabitur quis convallis ex. Aliquam fermentum sollicitudin sodales. Vivamus at fringilla nunc. Etiam vel vestibulum eros, ac pharetra augue.</p><p>Suspendisse potenti. Curabitur eleifend sit amet orci vitae semper. In lobortis nisi a nulla venenatis vestibulum vel a ligula. Sed ac magna non orci molestie congue. Donec sagittis venenatis velit nec maximus. Mauris sapien dolor, pretium sit amet mollis vel, malesuada vitae risus. Curabitur mollis tellus lorem, sit amet faucibus libero convallis in. Fusce lobortis felis sed nibh euismod, at congue urna eleifend. Sed gravida ante a cursus dictum. Nulla vel quam nec tortor congue sagittis.</p>	2017-10-06	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.	33
6	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales. Pellentesque aliquam lectus elit, quis viverra tortor tincidunt non. Nulla facilisi. In hac habitasse platea dictumst. Pellentesque dolor justo, auctor non pretium a, convallis quis sem. Maecenas vitae efficitur risus. Phasellus vel scelerisque enim, iaculis tempor ex. Donec bibendum libero lorem, sit amet eleifend tellus venenatis eu. Donec dolor purus, maximus vitae posuere nec, consectetur in justo.</p><p>Pellentesque porta in nisl eu mattis. Aenean eu feugiat lacus, sed vestibulum odio. Nunc sodales rhoncus eleifend. Nullam eu orci nunc. Fusce felis urna, tincidunt quis nisl id, porta vehicula eros. Suspendisse varius est id sem sodales, nec imperdiet purus dictum. Proin nec nisi nec augue sagittis condimentum at gravida erat. Proin elementum sit amet orci id malesuada. Nullam tincidunt semper felis, sed ultricies est. Vestibulum ornare lectus in ultricies suscipit. Sed sed maximus lacus. Duis tempus nulla et malesuada blandit. Vestibulum urna arcu, ullamcorper ut libero a, semper malesuada ante. Vivamus in porta sem. Integer gravida mattis lectus sit amet efficitur. Vivamus luctus et elit sit amet aliquam.</p>	2017-10-06	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.	35
\.


--
-- Data for Name: blog_blogpagegalleryimage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY blog_blogpagegalleryimage (id, sort_order, caption, image_id, page_id) FROM stdin;
3	0		29	6
1	0		29	5
2	1		31	5
\.


--
-- Name: blog_blogpagegalleryimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('blog_blogpagegalleryimage_id_seq', 3, true);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	wagtailcore	page
2	wagtailimages	image
3	wagtailadmin	admin
4	wagtaildocs	document
5	home	homepage
6	home	pagesection
7	blog	blog
8	blog	blogpage
9	blog	blogpagegalleryimage
10	wagtailforms	formsubmission
11	wagtailredirects	redirect
12	wagtailembeds	embed
13	wagtailusers	userprofile
14	wagtailimages	rendition
15	wagtailsearch	query
16	wagtailsearch	querydailyhits
17	wagtailcore	grouppagepermission
18	wagtailcore	pagerevision
19	wagtailcore	pageviewrestriction
20	wagtailcore	site
21	wagtailcore	collection
22	wagtailcore	groupcollectionpermission
23	wagtailcore	collectionviewrestriction
24	taggit	tag
25	taggit	taggeditem
26	admin	logentry
27	auth	permission
28	auth	group
29	auth	user
30	contenttypes	contenttype
31	sessions	session
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 31, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-10-06 16:51:13.674355+08
2	auth	0001_initial	2017-10-06 16:51:13.710898+08
3	admin	0001_initial	2017-10-06 16:51:13.725709+08
4	admin	0002_logentry_remove_auto_add	2017-10-06 16:51:13.733499+08
5	contenttypes	0002_remove_content_type_name	2017-10-06 16:51:13.749681+08
6	auth	0002_alter_permission_name_max_length	2017-10-06 16:51:13.755313+08
7	auth	0003_alter_user_email_max_length	2017-10-06 16:51:13.763451+08
8	auth	0004_alter_user_username_opts	2017-10-06 16:51:13.772767+08
9	auth	0005_alter_user_last_login_null	2017-10-06 16:51:13.780479+08
10	auth	0006_require_contenttypes_0002	2017-10-06 16:51:13.781542+08
11	auth	0007_alter_validators_add_error_messages	2017-10-06 16:51:13.78859+08
12	auth	0008_alter_user_username_max_length	2017-10-06 16:51:13.800096+08
13	taggit	0001_initial	2017-10-06 16:51:13.821376+08
14	wagtailimages	0001_initial	2017-10-06 16:51:13.856787+08
15	wagtailcore	0001_initial	2017-10-06 16:51:14.170074+08
16	wagtailcore	0002_initial_data	2017-10-06 16:51:14.171517+08
17	wagtailcore	0003_add_uniqueness_constraint_on_group_page_permission	2017-10-06 16:51:14.172644+08
18	wagtailcore	0004_page_locked	2017-10-06 16:51:14.173683+08
19	wagtailcore	0005_add_page_lock_permission_to_moderators	2017-10-06 16:51:14.17489+08
20	wagtailcore	0006_add_lock_page_permission	2017-10-06 16:51:14.176003+08
21	wagtailcore	0007_page_latest_revision_created_at	2017-10-06 16:51:14.176936+08
22	wagtailcore	0008_populate_latest_revision_created_at	2017-10-06 16:51:14.177939+08
23	wagtailcore	0009_remove_auto_now_add_from_pagerevision_created_at	2017-10-06 16:51:14.17892+08
24	wagtailcore	0010_change_page_owner_to_null_on_delete	2017-10-06 16:51:14.179819+08
25	wagtailcore	0011_page_first_published_at	2017-10-06 16:51:14.18069+08
26	wagtailcore	0012_extend_page_slug_field	2017-10-06 16:51:14.18153+08
27	wagtailcore	0013_update_golive_expire_help_text	2017-10-06 16:51:14.182371+08
28	wagtailcore	0014_add_verbose_name	2017-10-06 16:51:14.183186+08
29	wagtailcore	0015_add_more_verbose_names	2017-10-06 16:51:14.184002+08
30	wagtailcore	0016_change_page_url_path_to_text_field	2017-10-06 16:51:14.18481+08
31	wagtailimages	0002_initial_data	2017-10-06 16:51:14.210021+08
32	wagtailimages	0003_fix_focal_point_fields	2017-10-06 16:51:14.247485+08
33	wagtailimages	0004_make_focal_point_key_not_nullable	2017-10-06 16:51:14.270944+08
34	wagtailimages	0005_make_filter_spec_unique	2017-10-06 16:51:14.279092+08
35	wagtailimages	0006_add_verbose_names	2017-10-06 16:51:14.317854+08
36	wagtailimages	0007_image_file_size	2017-10-06 16:51:14.329882+08
37	wagtailimages	0008_image_created_at_index	2017-10-06 16:51:14.341848+08
38	wagtailimages	0009_capitalizeverbose	2017-10-06 16:51:14.413317+08
39	wagtailimages	0010_change_on_delete_behaviour	2017-10-06 16:51:14.427318+08
40	wagtailcore	0017_change_edit_page_permission_description	2017-10-06 16:51:14.43692+08
41	wagtailcore	0018_pagerevision_submitted_for_moderation_index	2017-10-06 16:51:14.448193+08
42	wagtailcore	0019_verbose_names_cleanup	2017-10-06 16:51:14.485451+08
43	wagtailcore	0020_add_index_on_page_first_published_at	2017-10-06 16:51:14.49684+08
44	wagtailcore	0021_capitalizeverbose	2017-10-06 16:51:14.778711+08
45	wagtailcore	0022_add_site_name	2017-10-06 16:51:14.787881+08
46	wagtailcore	0023_alter_page_revision_on_delete_behaviour	2017-10-06 16:51:14.801408+08
47	wagtailcore	0024_collection	2017-10-06 16:51:14.808222+08
48	wagtailcore	0025_collection_initial_data	2017-10-06 16:51:14.823425+08
49	wagtailcore	0026_group_collection_permission	2017-10-06 16:51:14.847708+08
50	wagtailimages	0011_image_collection	2017-10-06 16:51:14.868664+08
51	wagtailimages	0012_copy_image_permissions_to_collections	2017-10-06 16:51:14.889972+08
52	wagtailimages	0013_make_rendition_upload_callable	2017-10-06 16:51:14.897722+08
53	wagtailimages	0014_add_filter_spec_field	2017-10-06 16:51:14.927701+08
54	wagtailimages	0015_fill_filter_spec_field	2017-10-06 16:51:14.94295+08
55	wagtailimages	0016_deprecate_rendition_filter_relation	2017-10-06 16:51:14.969867+08
56	wagtailimages	0017_reduce_focal_point_key_max_length	2017-10-06 16:51:14.982453+08
57	wagtailimages	0018_remove_rendition_filter	2017-10-06 16:51:14.99984+08
58	wagtailimages	0019_delete_filter	2017-10-06 16:51:15.003563+08
59	wagtailcore	0027_fix_collection_path_collation	2017-10-06 16:51:15.020176+08
60	wagtailcore	0024_alter_page_content_type_on_delete_behaviour	2017-10-06 16:51:15.038905+08
61	wagtailcore	0028_merge	2017-10-06 16:51:15.040402+08
62	wagtailcore	0029_unicode_slugfield_dj19	2017-10-06 16:51:15.051518+08
63	wagtailcore	0030_index_on_pagerevision_created_at	2017-10-06 16:51:15.06427+08
64	wagtailcore	0031_add_page_view_restriction_types	2017-10-06 16:51:15.106503+08
65	wagtailcore	0032_add_bulk_delete_page_permission	2017-10-06 16:51:15.118028+08
66	wagtailcore	0033_remove_golive_expiry_help_text	2017-10-06 16:51:15.168948+08
67	wagtailcore	0034_page_live_revision	2017-10-06 16:51:15.181503+08
68	wagtailcore	0035_page_last_published_at	2017-10-06 16:51:15.193121+08
69	wagtailcore	0036_populate_page_last_published_at	2017-10-06 16:51:15.210513+08
70	wagtailcore	0037_set_page_owner_editable	2017-10-06 16:51:15.2248+08
71	wagtailcore	0038_make_first_published_at_editable	2017-10-06 16:51:15.235781+08
72	wagtailcore	0039_collectionviewrestriction	2017-10-06 16:51:15.281046+08
73	wagtailcore	0040_page_draft_title	2017-10-06 16:51:15.323635+08
74	blog	0001_initial	2017-10-06 16:51:15.346326+08
75	blog	0002_auto_20171006_0215	2017-10-06 16:51:15.379595+08
76	blog	0003_auto_20171006_0224	2017-10-06 16:51:15.406449+08
77	blog	0004_auto_20171006_0228	2017-10-06 16:51:15.428372+08
78	blog	0005_auto_20171006_0533	2017-10-06 16:51:15.488543+08
79	home	0001_initial	2017-10-06 16:51:15.528874+08
80	home	0002_auto_20171006_0140	2017-10-06 16:51:15.545182+08
81	sessions	0001_initial	2017-10-06 16:51:15.551005+08
82	taggit	0002_auto_20150616_2121	2017-10-06 16:51:15.559765+08
83	wagtailadmin	0001_create_admin_access_permissions	2017-10-06 16:51:15.593307+08
84	wagtaildocs	0001_initial	2017-10-06 16:51:15.613087+08
85	wagtaildocs	0002_initial_data	2017-10-06 16:51:15.648397+08
86	wagtaildocs	0003_add_verbose_names	2017-10-06 16:51:15.691863+08
87	wagtaildocs	0004_capitalizeverbose	2017-10-06 16:51:15.802347+08
88	wagtaildocs	0005_document_collection	2017-10-06 16:51:15.821932+08
89	wagtaildocs	0006_copy_document_permissions_to_collections	2017-10-06 16:51:15.854321+08
90	wagtaildocs	0005_alter_uploaded_by_user_on_delete_action	2017-10-06 16:51:15.874069+08
91	wagtaildocs	0007_merge	2017-10-06 16:51:15.875163+08
92	wagtailembeds	0001_initial	2017-10-06 16:51:15.888202+08
93	wagtailembeds	0002_add_verbose_names	2017-10-06 16:51:15.891993+08
94	wagtailembeds	0003_capitalizeverbose	2017-10-06 16:51:15.89531+08
95	wagtailforms	0001_initial	2017-10-06 16:51:15.915711+08
96	wagtailforms	0002_add_verbose_names	2017-10-06 16:51:15.931776+08
97	wagtailforms	0003_capitalizeverbose	2017-10-06 16:51:15.951276+08
98	wagtailredirects	0001_initial	2017-10-06 16:51:15.979442+08
99	wagtailredirects	0002_add_verbose_names	2017-10-06 16:51:16.01983+08
100	wagtailredirects	0003_make_site_field_editable	2017-10-06 16:51:16.050253+08
101	wagtailredirects	0004_set_unique_on_path_and_site	2017-10-06 16:51:16.080702+08
102	wagtailredirects	0005_capitalizeverbose	2017-10-06 16:51:16.185334+08
103	wagtailsearch	0001_initial	2017-10-06 16:51:16.248535+08
104	wagtailsearch	0002_add_verbose_names	2017-10-06 16:51:16.308459+08
105	wagtailsearch	0003_remove_editors_pick	2017-10-06 16:51:16.33382+08
106	wagtailusers	0001_initial	2017-10-06 16:51:16.362819+08
107	wagtailusers	0002_add_verbose_name_on_userprofile	2017-10-06 16:51:16.460899+08
108	wagtailusers	0003_add_verbose_names	2017-10-06 16:51:16.47156+08
109	wagtailusers	0004_capitalizeverbose	2017-10-06 16:51:16.517707+08
110	wagtailusers	0005_make_related_name_wagtail_specific	2017-10-06 16:51:16.539441+08
111	wagtailusers	0006_userprofile_prefered_language	2017-10-06 16:51:16.557975+08
112	wagtailcore	0001_squashed_0016_change_page_url_path_to_text_field	2017-10-06 16:51:16.560034+08
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_migrations_id_seq', 112, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
h5tys0ylj20ainzi5msdrylbdkvp7ca5	NmY1ZmEzYzliMzRhY2MyMDFjZWE3NGVlODg0MzA4OWE5NTc2ZjgwZDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNGY3YTJkMjU4YmY2NGZhM2ZmMDkzOGY1ZmE2NjlmZmY4NzliMmExIn0=	2017-10-20 16:51:53.420336+08
\.


--
-- Data for Name: home_homepage; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY home_homepage (page_ptr_id) FROM stdin;
\.


--
-- Data for Name: home_pagesection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY home_pagesection (page_ptr_id, body) FROM stdin;
3	[{"type": "section", "value": {"heading": "What We Do", "sub_heading": "", "body": "", "styling": {"container_id": "", "container_css": "", "background_image": null}, "gallery": [{"title": "Engineering", "caption": "Keeping pace with the latest in technology yet ensuring the right tools for the job.", "image": 9}, {"title": "Development", "caption": "Keeping pace with the latest in technology yet ensuring the right tools for the job.", "image": 7}, {"title": "Design", "caption": "Keeping pace with the latest in technology yet ensuring the right tools for the job.", "image": 6}]}, "id": "5834a5bf-5dca-4a02-908f-d6a997476272"}, {"type": "section", "value": {"heading": "About", "sub_heading": "LES BOIS ENGINEERING INNOVATIONS", "body": "We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.", "styling": {"container_id": "", "container_css": "", "background_image": null}, "gallery": [{"title": "", "caption": "", "image": null}]}, "id": "c559dbbc-35b1-428a-b5ae-dcbd21a45f67"}, {"type": "section", "value": {"heading": "Meet The Team", "sub_heading": "", "body": "", "styling": {"container_id": "", "container_css": "", "background_image": null}, "gallery": [{"title": "ADAM", "caption": "The Boss", "image": 3}, {"title": "ROB", "caption": "The Other Boss", "image": 29}, {"title": "RIZA", "caption": "The Manager", "image": 27}, {"title": "GLEN", "caption": "The Senior Dev", "image": 11}, {"title": "ROLAND", "caption": "The Hackerman", "image": 31}, {"title": "GOPER", "caption": "Goofy Developer", "image": 13}, {"title": "MARK", "caption": "Random Developer", "image": 23}, {"title": "JEREMY", "caption": "The Backend Guy", "image": 16}, {"title": "PHILIP", "caption": "The Design Guy", "image": 25}, {"title": "KIN", "caption": "The Python Tamer", "image": 19}, {"title": "JOSE", "caption": "Frontend Pope", "image": 18}, {"title": "CLEM", "caption": "Video Guy", "image": 5}]}, "id": "d897f7c3-edf3-494f-8de3-7137a26bfc2b"}, {"type": "section", "value": {"heading": "Partners", "sub_heading": "", "body": "", "styling": {"container_id": "", "container_css": "", "background_image": null}, "gallery": [{"title": "", "caption": "", "image": 8}, {"title": "", "caption": "", "image": 1}, {"title": "", "caption": "", "image": 14}]}, "id": "af3ea5a5-c2db-46ea-bccd-58fa328d0450"}, {"type": "section", "value": {"heading": "Daily", "sub_heading": "", "body": "", "styling": {"container_id": "", "container_css": "", "background_image": null}, "gallery": [{"title": "", "caption": "", "image": 52}, {"title": "", "caption": "", "image": 51}, {"title": "", "caption": "", "image": 50}, {"title": "", "caption": "", "image": 49}, {"title": "", "caption": "", "image": 48}, {"title": "", "caption": "", "image": 47}, {"title": "", "caption": "", "image": 46}, {"title": "", "caption": "", "image": 45}]}, "id": "b07bf240-745a-444b-9a37-fe7fc9cce5ad"}]
\.


--
-- Data for Name: taggit_tag; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY taggit_tag (id, name, slug) FROM stdin;
\.


--
-- Name: taggit_tag_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('taggit_tag_id_seq', 1, false);


--
-- Data for Name: taggit_taggeditem; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY taggit_taggeditem (id, object_id, content_type_id, tag_id) FROM stdin;
\.


--
-- Name: taggit_taggeditem_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('taggit_taggeditem_id_seq', 1, false);


--
-- Data for Name: wagtailcore_collection; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_collection (id, path, depth, numchild, name) FROM stdin;
1	0001	1	0	Root
\.


--
-- Name: wagtailcore_collection_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_collection_id_seq', 1, true);


--
-- Data for Name: wagtailcore_collectionviewrestriction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_collectionviewrestriction (id, restriction_type, password, collection_id) FROM stdin;
\.


--
-- Data for Name: wagtailcore_collectionviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_collectionviewrestriction_groups (id, collectionviewrestriction_id, group_id) FROM stdin;
\.


--
-- Name: wagtailcore_collectionviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_collectionviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_collectionviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_collectionviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_groupcollectionpermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_groupcollectionpermission (id, collection_id, group_id, permission_id) FROM stdin;
1	1	1	1
2	1	2	1
3	1	1	2
4	1	2	2
5	1	1	5
6	1	2	5
7	1	1	6
8	1	2	6
\.


--
-- Name: wagtailcore_groupcollectionpermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_groupcollectionpermission_id_seq', 8, true);


--
-- Data for Name: wagtailcore_grouppagepermission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_grouppagepermission (id, permission_type, group_id, page_id) FROM stdin;
1	add	1	1
2	edit	1	1
3	publish	1	1
4	add	2	1
5	edit	2	1
6	lock	1	1
\.


--
-- Name: wagtailcore_grouppagepermission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_grouppagepermission_id_seq', 6, true);


--
-- Data for Name: wagtailcore_page; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_page (id, path, depth, numchild, title, slug, live, has_unpublished_changes, url_path, seo_title, show_in_menus, search_description, go_live_at, expire_at, expired, content_type_id, owner_id, locked, latest_revision_created_at, first_published_at, live_revision_id, last_published_at, draft_title) FROM stdin;
1	0001	1	1	Root	root	t	f	/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Root
2	00010001	2	1	Welcome to your new Wagtail site!	home	t	f	/home/		f		\N	\N	f	1	\N	f	\N	\N	\N	\N	Welcome to your new Wagtail site!
4	0001000100010001	4	2	Blog	blog	t	f	/home/home/blog/		f		\N	\N	f	7	1	f	2017-10-06 17:18:33.159118+08	2017-10-06 17:18:33.16953+08	5	2017-10-06 17:18:33.16953+08	Blog
6	00010001000100010002	5	0	Lorem ipsum	lorem-ipsum	t	f	/home/home/blog/lorem-ipsum/		f		\N	\N	f	8	1	f	2017-10-06 17:38:19.321731+08	2017-10-06 17:19:53.716774+08	8	2017-10-06 17:38:19.336532+08	Lorem ipsum
5	00010001000100010001	5	0	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.	lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-consectetur-eleifend-nibh-molestie-libero-mauris-pharetra-purus-diam-tincidunt-finibus-duis-ultrices-efficitur-sodales	t	f	/home/home/blog/lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-consectetur-eleifend-nibh-molestie-libero-mauris-pharetra-purus-diam-tincidunt-finibus-duis-ultrices-efficitur-sodales/		f		\N	\N	f	8	1	f	2017-10-06 17:43:25.985162+08	2017-10-06 17:19:03.636027+08	9	2017-10-06 17:43:26.004181+08	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.
3	000100010001	3	1	Home	home	t	f	/home/home/		f		\N	\N	f	6	1	f	2017-10-11 14:18:32.53002+08	2017-10-06 16:52:21.095742+08	16	2017-10-11 14:18:32.545079+08	Home
\.


--
-- Name: wagtailcore_page_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_page_id_seq', 6, true);


--
-- Data for Name: wagtailcore_pagerevision; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_pagerevision (id, submitted_for_moderation, created_at, content_json, approved_go_live_at, page_id, user_id) FROM stdin;
1	f	2017-10-06 16:52:21.084648+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 0, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}]"}	\N	3	1
16	f	2017-10-11 14:18:32.53002+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-11T06:16:55.961Z", "latest_revision_created_at": "2017-10-11T06:16:55.946Z", "live_revision": 15, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 52}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 51}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 50}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 49}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 48}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 47}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 46}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 45}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
7	f	2017-10-06 17:19:53.70318+08	{"pk": 6, "path": "00010001000100010002", "depth": 5, "numchild": 0, "title": "Lorem ipsum", "draft_title": "Lorem ipsum", "slug": "lorem-ipsum", "content_type": 8, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/blog/lorem-ipsum/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "cover": null, "date": "2017-10-06", "intro": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "body": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales. Pellentesque aliquam lectus elit, quis viverra tortor tincidunt non. Nulla facilisi. In hac habitasse platea dictumst. Pellentesque dolor justo, auctor non pretium a, convallis quis sem. Maecenas vitae efficitur risus. Phasellus vel scelerisque enim, iaculis tempor ex. Donec bibendum libero lorem, sit amet eleifend tellus venenatis eu. Donec dolor purus, maximus vitae posuere nec, consectetur in justo.</p><p>Pellentesque porta in nisl eu mattis. Aenean eu feugiat lacus, sed vestibulum odio. Nunc sodales rhoncus eleifend. Nullam eu orci nunc. Fusce felis urna, tincidunt quis nisl id, porta vehicula eros. Suspendisse varius est id sem sodales, nec imperdiet purus dictum. Proin nec nisi nec augue sagittis condimentum at gravida erat. Proin elementum sit amet orci id malesuada. Nullam tincidunt semper felis, sed ultricies est. Vestibulum ornare lectus in ultricies suscipit. Sed sed maximus lacus. Duis tempus nulla et malesuada blandit. Vestibulum urna arcu, ullamcorper ut libero a, semper malesuada ante. Vivamus in porta sem. Integer gravida mattis lectus sit amet efficitur. Vivamus luctus et elit sit amet aliquam.</p>", "gallery_images": [{"pk": 3, "sort_order": 0, "page": 6, "image": 29, "caption": ""}]}	\N	6	1
14	f	2017-10-11 13:46:31.791484+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-11T05:45:32.148Z", "latest_revision_created_at": "2017-10-11T05:45:32.135Z", "live_revision": 13, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 39}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 38}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 43}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 42}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 40}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 44}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
5	f	2017-10-06 17:18:33.159118+08	{"pk": 4, "path": "0001000100010001", "depth": 4, "numchild": 0, "title": "Blog", "draft_title": "Blog", "slug": "blog", "content_type": 7, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/blog/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "intro": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.</p>"}	\N	4	1
3	f	2017-10-06 17:00:24.906039+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 0, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-06T08:58:08.325Z", "latest_revision_created_at": "2017-10-06T08:58:08.312Z", "live_revision": 2, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}]"}	\N	3	1
2	f	2017-10-06 16:58:08.312737+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 0, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-06T08:52:21.095Z", "latest_revision_created_at": "2017-10-06T08:52:21.084Z", "live_revision": 1, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}]"}	\N	3	1
8	f	2017-10-06 17:38:19.321731+08	{"pk": 6, "path": "00010001000100010002", "depth": 5, "numchild": 0, "title": "Lorem ipsum", "draft_title": "Lorem ipsum", "slug": "lorem-ipsum", "content_type": 8, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/blog/lorem-ipsum/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T09:19:53.716Z", "last_published_at": "2017-10-06T09:19:53.716Z", "latest_revision_created_at": "2017-10-06T09:19:53.703Z", "live_revision": 7, "cover": 35, "date": "2017-10-06", "intro": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "body": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales. Pellentesque aliquam lectus elit, quis viverra tortor tincidunt non. Nulla facilisi. In hac habitasse platea dictumst. Pellentesque dolor justo, auctor non pretium a, convallis quis sem. Maecenas vitae efficitur risus. Phasellus vel scelerisque enim, iaculis tempor ex. Donec bibendum libero lorem, sit amet eleifend tellus venenatis eu. Donec dolor purus, maximus vitae posuere nec, consectetur in justo.</p><p>Pellentesque porta in nisl eu mattis. Aenean eu feugiat lacus, sed vestibulum odio. Nunc sodales rhoncus eleifend. Nullam eu orci nunc. Fusce felis urna, tincidunt quis nisl id, porta vehicula eros. Suspendisse varius est id sem sodales, nec imperdiet purus dictum. Proin nec nisi nec augue sagittis condimentum at gravida erat. Proin elementum sit amet orci id malesuada. Nullam tincidunt semper felis, sed ultricies est. Vestibulum ornare lectus in ultricies suscipit. Sed sed maximus lacus. Duis tempus nulla et malesuada blandit. Vestibulum urna arcu, ullamcorper ut libero a, semper malesuada ante. Vivamus in porta sem. Integer gravida mattis lectus sit amet efficitur. Vivamus luctus et elit sit amet aliquam.</p>", "gallery_images": [{"pk": 3, "sort_order": 0, "page": 6, "image": 29, "caption": ""}]}	\N	6	1
6	f	2017-10-06 17:19:03.620198+08	{"pk": 5, "path": "00010001000100010001", "depth": 5, "numchild": 0, "title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "draft_title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "slug": "lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-consectetur-eleifend-nibh-molestie-libero-mauris-pharetra-purus-diam-tincidunt-finibus-duis-ultrices-efficitur-sodales", "content_type": 8, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/blog/lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-consectetur-eleifend-nibh-molestie-libero-mauris-pharetra-purus-diam-tincidunt-finibus-duis-ultrices-efficitur-sodales/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": null, "last_published_at": null, "latest_revision_created_at": null, "live_revision": null, "cover": null, "date": "2017-10-06", "intro": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "body": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales. Pellentesque aliquam lectus elit, quis viverra tortor tincidunt non. Nulla facilisi. In hac habitasse platea dictumst. Pellentesque dolor justo, auctor non pretium a, convallis quis sem. Maecenas vitae efficitur risus. Phasellus vel scelerisque enim, iaculis tempor ex. Donec bibendum libero lorem, sit amet eleifend tellus venenatis eu. Donec dolor purus, maximus vitae posuere nec, consectetur in justo.</p><p>Pellentesque porta in nisl eu mattis. Aenean eu feugiat lacus, sed vestibulum odio. Nunc sodales rhoncus eleifend. Nullam eu orci nunc. Fusce felis urna, tincidunt quis nisl id, porta vehicula eros. Suspendisse varius est id sem sodales, nec imperdiet purus dictum. Proin nec nisi nec augue sagittis condimentum at gravida erat. Proin elementum sit amet orci id malesuada. Nullam tincidunt semper felis, sed ultricies est. Vestibulum ornare lectus in ultricies suscipit. Sed sed maximus lacus. Duis tempus nulla et malesuada blandit. Vestibulum urna arcu, ullamcorper ut libero a, semper malesuada ante. Vivamus in porta sem. Integer gravida mattis lectus sit amet efficitur. Vivamus luctus et elit sit amet aliquam.</p><p>Etiam tempor urna lobortis mattis viverra. Donec scelerisque leo risus, eu euismod massa fermentum non. Vivamus erat mauris, ultricies id ante sed, convallis tincidunt sem. Donec sit amet augue mi. Maecenas et est augue. Nullam suscipit dignissim sem in posuere. Nunc rutrum libero ut suscipit varius. Etiam porttitor, magna vitae placerat vestibulum, nisl neque posuere mi, nec pharetra ipsum elit ac risus. Sed nisl nisl, interdum et purus ut, bibendum ullamcorper erat. Etiam nec urna ac diam posuere laoreet. Nulla sed ex diam. Sed quam justo, tristique quis tempor at, fermentum vitae mauris. Phasellus vel lacus bibendum, viverra elit quis, dictum nisl. Etiam sed velit lorem. Nam bibendum congue justo, vitae sodales metus sagittis quis.</p><p>Vivamus tincidunt nisi et augue suscipit, ac commodo erat pulvinar. Praesent non dictum velit, scelerisque ullamcorper purus. Nam eget euismod velit. Aliquam accumsan eros et ultricies pharetra. Morbi tristique erat at turpis commodo tempus. Fusce ultrices convallis ex. Nulla viverra libero id laoreet ornare. In tincidunt ac dui vitae finibus. Vivamus sit amet leo ante. Phasellus ut mauris mi. Phasellus lacinia enim non nunc porta venenatis. Morbi ut vehicula est. Curabitur quis convallis ex. Aliquam fermentum sollicitudin sodales. Vivamus at fringilla nunc. Etiam vel vestibulum eros, ac pharetra augue.</p><p>Suspendisse potenti. Curabitur eleifend sit amet orci vitae semper. In lobortis nisi a nulla venenatis vestibulum vel a ligula. Sed ac magna non orci molestie congue. Donec sagittis venenatis velit nec maximus. Mauris sapien dolor, pretium sit amet mollis vel, malesuada vitae risus. Curabitur mollis tellus lorem, sit amet faucibus libero convallis in. Fusce lobortis felis sed nibh euismod, at congue urna eleifend. Sed gravida ante a cursus dictum. Nulla vel quam nec tortor congue sagittis.</p>", "gallery_images": [{"pk": 1, "sort_order": 0, "page": 5, "image": 29, "caption": ""}, {"pk": 2, "sort_order": 1, "page": 5, "image": 31, "caption": ""}]}	\N	5	1
9	f	2017-10-06 17:43:25.985162+08	{"pk": 5, "path": "00010001000100010001", "depth": 5, "numchild": 0, "title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "draft_title": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "slug": "lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-consectetur-eleifend-nibh-molestie-libero-mauris-pharetra-purus-diam-tincidunt-finibus-duis-ultrices-efficitur-sodales", "content_type": 8, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/blog/lorem-ipsum-dolor-sit-amet-consectetur-adipiscing-elit-sed-consectetur-eleifend-nibh-molestie-libero-mauris-pharetra-purus-diam-tincidunt-finibus-duis-ultrices-efficitur-sodales/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T09:19:03.636Z", "last_published_at": "2017-10-06T09:19:03.636Z", "latest_revision_created_at": "2017-10-06T09:19:03.620Z", "live_revision": 6, "cover": 33, "date": "2017-10-06", "intro": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales.", "body": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur eleifend nibh, in molestie libero. Mauris pharetra purus a diam tincidunt finibus. Duis ultrices efficitur sodales. Pellentesque aliquam lectus elit, quis viverra tortor tincidunt non. Nulla facilisi. In hac habitasse platea dictumst. Pellentesque dolor justo, auctor non pretium a, convallis quis sem. Maecenas vitae efficitur risus. Phasellus vel scelerisque enim, iaculis tempor ex. Donec bibendum libero lorem, sit amet eleifend tellus venenatis eu. Donec dolor purus, maximus vitae posuere nec, consectetur in justo.</p><p>Pellentesque porta in nisl eu mattis. Aenean eu feugiat lacus, sed vestibulum odio. Nunc sodales rhoncus eleifend. Nullam eu orci nunc. Fusce felis urna, tincidunt quis nisl id, porta vehicula eros. Suspendisse varius est id sem sodales, nec imperdiet purus dictum. Proin nec nisi nec augue sagittis condimentum at gravida erat. Proin elementum sit amet orci id malesuada. Nullam tincidunt semper felis, sed ultricies est. Vestibulum ornare lectus in ultricies suscipit. Sed sed maximus lacus. Duis tempus nulla et malesuada blandit. Vestibulum urna arcu, ullamcorper ut libero a, semper malesuada ante. Vivamus in porta sem. Integer gravida mattis lectus sit amet efficitur. Vivamus luctus et elit sit amet aliquam.</p><p>Etiam tempor urna lobortis mattis viverra. Donec scelerisque leo risus, eu euismod massa fermentum non. Vivamus erat mauris, ultricies id ante sed, convallis tincidunt sem. Donec sit amet augue mi. Maecenas et est augue. Nullam suscipit dignissim sem in posuere. Nunc rutrum libero ut suscipit varius. Etiam porttitor, magna vitae placerat vestibulum, nisl neque posuere mi, nec pharetra ipsum elit ac risus. Sed nisl nisl, interdum et purus ut, bibendum ullamcorper erat. Etiam nec urna ac diam posuere laoreet. Nulla sed ex diam. Sed quam justo, tristique quis tempor at, fermentum vitae mauris. Phasellus vel lacus bibendum, viverra elit quis, dictum nisl. Etiam sed velit lorem. Nam bibendum congue justo, vitae sodales metus sagittis quis.</p><p>Vivamus tincidunt nisi et augue suscipit, ac commodo erat pulvinar. Praesent non dictum velit, scelerisque ullamcorper purus. Nam eget euismod velit. Aliquam accumsan eros et ultricies pharetra. Morbi tristique erat at turpis commodo tempus. Fusce ultrices convallis ex. Nulla viverra libero id laoreet ornare. In tincidunt ac dui vitae finibus. Vivamus sit amet leo ante. Phasellus ut mauris mi. Phasellus lacinia enim non nunc porta venenatis. Morbi ut vehicula est. Curabitur quis convallis ex. Aliquam fermentum sollicitudin sodales. Vivamus at fringilla nunc. Etiam vel vestibulum eros, ac pharetra augue.</p><p>Suspendisse potenti. Curabitur eleifend sit amet orci vitae semper. In lobortis nisi a nulla venenatis vestibulum vel a ligula. Sed ac magna non orci molestie congue. Donec sagittis venenatis velit nec maximus. Mauris sapien dolor, pretium sit amet mollis vel, malesuada vitae risus. Curabitur mollis tellus lorem, sit amet faucibus libero convallis in. Fusce lobortis felis sed nibh euismod, at congue urna eleifend. Sed gravida ante a cursus dictum. Nulla vel quam nec tortor congue sagittis.</p>", "gallery_images": [{"pk": 1, "sort_order": 0, "page": 5, "image": 29, "caption": ""}, {"pk": 2, "sort_order": 1, "page": 5, "image": 31, "caption": ""}]}	\N	5	1
15	f	2017-10-11 14:16:55.946851+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-11T05:46:31.805Z", "latest_revision_created_at": "2017-10-11T05:46:31.791Z", "live_revision": 14, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": []}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
11	f	2017-10-11 13:35:58.176379+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-11T05:31:18.658Z", "latest_revision_created_at": "2017-10-11T05:31:18.627Z", "live_revision": 10, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 39}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 38}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 37}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 36}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 43}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 42}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 41}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 40}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
4	f	2017-10-06 17:17:50.063068+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 0, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-06T09:00:24.918Z", "latest_revision_created_at": "2017-10-06T09:00:24.906Z", "live_revision": 3, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 31}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 27}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 23}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 25}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 29}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 16}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 19}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 11}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
12	f	2017-10-11 13:36:28.418988+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-11T05:35:58.190Z", "latest_revision_created_at": "2017-10-11T05:35:58.176Z", "live_revision": 11, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 39}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 38}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 36}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 43}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 42}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 40}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
13	f	2017-10-11 13:45:32.135658+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-11T05:36:28.430Z", "latest_revision_created_at": "2017-10-11T05:36:28.418Z", "live_revision": 12, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 39}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 38}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 43}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 42}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 40}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
10	f	2017-10-11 13:31:18.62752+08	{"pk": 3, "path": "000100010001", "depth": 3, "numchild": 1, "title": "Home", "draft_title": "Home", "slug": "home", "content_type": 6, "live": true, "has_unpublished_changes": false, "url_path": "/home/home/", "owner": 1, "seo_title": "", "show_in_menus": false, "search_description": "", "go_live_at": null, "expire_at": null, "expired": false, "locked": false, "first_published_at": "2017-10-06T08:52:21.095Z", "last_published_at": "2017-10-06T09:17:50.076Z", "latest_revision_created_at": "2017-10-06T09:17:50.063Z", "live_revision": 4, "body": "[{\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"What We Do\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"Engineering\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 9}, {\\"title\\": \\"Development\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 7}, {\\"title\\": \\"Design\\", \\"caption\\": \\"Keeping pace with the latest in technology yet ensuring the right tools for the job.\\", \\"image\\": 6}]}, \\"id\\": \\"5834a5bf-5dca-4a02-908f-d6a997476272\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"About\\", \\"sub_heading\\": \\"LES BOIS ENGINEERING INNOVATIONS\\", \\"body\\": \\"We are an outsourcing company focusing on Website Development and Engineering Solutions for Electronics and Electrical Engineers. We develop and maintain the website and collaborate with Engineers all over the world on projects, articles and educational sources. We will be promoting related products and embed it on projects, publish technical articles that will be useful for electronics designers and engineers and becomes a source of all information for new designs, projects, and new technology.\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": null}]}, \\"id\\": \\"c559dbbc-35b1-428a-b5ae-dcbd21a45f67\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Meet The Team\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"ADAM\\", \\"caption\\": \\"The Boss\\", \\"image\\": 3}, {\\"title\\": \\"ROB\\", \\"caption\\": \\"The Other Boss\\", \\"image\\": 29}, {\\"title\\": \\"RIZA\\", \\"caption\\": \\"The Manager\\", \\"image\\": 27}, {\\"title\\": \\"GLEN\\", \\"caption\\": \\"The Senior Dev\\", \\"image\\": 11}, {\\"title\\": \\"ROLAND\\", \\"caption\\": \\"The Hackerman\\", \\"image\\": 31}, {\\"title\\": \\"GOPER\\", \\"caption\\": \\"Goofy Developer\\", \\"image\\": 13}, {\\"title\\": \\"MARK\\", \\"caption\\": \\"Random Developer\\", \\"image\\": 23}, {\\"title\\": \\"JEREMY\\", \\"caption\\": \\"The Backend Guy\\", \\"image\\": 16}, {\\"title\\": \\"PHILIP\\", \\"caption\\": \\"The Design Guy\\", \\"image\\": 25}, {\\"title\\": \\"KIN\\", \\"caption\\": \\"The Python Tamer\\", \\"image\\": 19}, {\\"title\\": \\"JOSE\\", \\"caption\\": \\"Frontend Pope\\", \\"image\\": 18}, {\\"title\\": \\"CLEM\\", \\"caption\\": \\"Video Guy\\", \\"image\\": 5}]}, \\"id\\": \\"d897f7c3-edf3-494f-8de3-7137a26bfc2b\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Partners\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 8}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 1}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 14}]}, \\"id\\": \\"af3ea5a5-c2db-46ea-bccd-58fa328d0450\\"}, {\\"type\\": \\"section\\", \\"value\\": {\\"heading\\": \\"Daily\\", \\"sub_heading\\": \\"\\", \\"body\\": \\"\\", \\"styling\\": {\\"container_id\\": \\"\\", \\"container_css\\": \\"\\", \\"background_image\\": null}, \\"gallery\\": [{\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 39}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 38}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 37}, {\\"title\\": \\"\\", \\"caption\\": \\"\\", \\"image\\": 36}]}, \\"id\\": \\"b07bf240-745a-444b-9a37-fe7fc9cce5ad\\"}]"}	\N	3	1
\.


--
-- Name: wagtailcore_pagerevision_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_pagerevision_id_seq', 16, true);


--
-- Data for Name: wagtailcore_pageviewrestriction; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_pageviewrestriction (id, password, page_id, restriction_type) FROM stdin;
\.


--
-- Data for Name: wagtailcore_pageviewrestriction_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_pageviewrestriction_groups (id, pageviewrestriction_id, group_id) FROM stdin;
\.


--
-- Name: wagtailcore_pageviewrestriction_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_groups_id_seq', 1, false);


--
-- Name: wagtailcore_pageviewrestriction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_pageviewrestriction_id_seq', 1, false);


--
-- Data for Name: wagtailcore_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailcore_site (id, hostname, port, is_default_site, root_page_id, site_name) FROM stdin;
1	localhost	80	t	3	\N
\.


--
-- Name: wagtailcore_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailcore_site_id_seq', 1, true);


--
-- Data for Name: wagtaildocs_document; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtaildocs_document (id, title, file, created_at, uploaded_by_user_id, collection_id) FROM stdin;
\.


--
-- Name: wagtaildocs_document_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtaildocs_document_id_seq', 1, false);


--
-- Data for Name: wagtailembeds_embed; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailembeds_embed (id, url, max_width, type, html, title, author_name, provider_name, thumbnail_url, width, height, last_updated) FROM stdin;
\.


--
-- Name: wagtailembeds_embed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailembeds_embed_id_seq', 1, false);


--
-- Data for Name: wagtailforms_formsubmission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailforms_formsubmission (id, form_data, submit_time, page_id) FROM stdin;
\.


--
-- Name: wagtailforms_formsubmission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailforms_formsubmission_id_seq', 1, false);


--
-- Data for Name: wagtailimages_image; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailimages_image (id, title, file, width, height, created_at, focal_point_x, focal_point_y, focal_point_width, focal_point_height, uploaded_by_user_id, file_size, collection_id) FROM stdin;
1	AAC.png	original_images/AAC_fp7QTaB.png	239	44	2017-10-06 16:53:20.465598+08	\N	\N	\N	\N	1	3761	1
2	Adam_Full.png	original_images/Adam_Full.png	262	519	2017-10-06 16:53:20.533662+08	\N	\N	\N	\N	1	13961	1
3	Adam.png	original_images/Adam_MoMaQRN.png	268	301	2017-10-06 16:53:20.585863+08	\N	\N	\N	\N	1	8412	1
4	Clem_full.png	original_images/Clem_full.png	191	452	2017-10-06 16:53:20.639228+08	\N	\N	\N	\N	1	14335	1
5	Clem.png	original_images/Clem_Ycxmh6o.png	268	301	2017-10-06 16:53:20.694927+08	\N	\N	\N	\N	1	12410	1
6	Design.png	original_images/Design_Djc9HYu.png	89	103	2017-10-06 16:53:20.754717+08	\N	\N	\N	\N	1	10457	1
7	Developments.png	original_images/Developments_LrC8Jwl.png	88	103	2017-10-06 16:53:20.80237+08	\N	\N	\N	\N	1	9404	1
8	EETECH.png	original_images/EETECH_kTE3rAb.png	188	35	2017-10-06 16:53:20.849446+08	\N	\N	\N	\N	1	2295	1
9	Engineering.png	original_images/Engineering_K1nbSHm.png	90	102	2017-10-06 16:53:20.906061+08	\N	\N	\N	\N	1	10025	1
10	Glen_full.png	original_images/Glen_full.png	201	515	2017-10-06 16:53:20.948756+08	\N	\N	\N	\N	1	34371	1
11	Glen.png	original_images/Glen_9ohIIds.png	268	301	2017-10-06 16:53:20.992966+08	\N	\N	\N	\N	1	23321	1
12	Goper_full.png	original_images/Goper_full.png	294	466	2017-10-06 16:53:21.031979+08	\N	\N	\N	\N	1	20730	1
13	Goper.png	original_images/Goper_zxqVdwU.png	268	301	2017-10-06 16:53:21.070561+08	\N	\N	\N	\N	1	19665	1
14	growpromote.png	original_images/growpromote_Qfad9ZF.png	302	59	2017-10-06 16:53:21.108178+08	\N	\N	\N	\N	1	5657	1
15	Jeremy_full.png	original_images/Jeremy_full.png	273	538	2017-10-06 16:53:21.149453+08	\N	\N	\N	\N	1	22607	1
16	Jeremy.png	original_images/Jeremy_wmC5m3Z.png	268	301	2017-10-06 16:53:21.194094+08	\N	\N	\N	\N	1	17846	1
17	Jose_full.png	original_images/Jose_full.png	179	492	2017-10-06 16:53:21.241653+08	\N	\N	\N	\N	1	12628	1
18	Jose.png	original_images/Jose_rEXROgB.png	268	301	2017-10-06 16:53:21.291003+08	\N	\N	\N	\N	1	9855	1
19	kin.png	original_images/kin_XCBRs7K.png	268	301	2017-10-06 16:53:21.362055+08	\N	\N	\N	\N	1	9148	1
20	lin_full.png	original_images/lin_full.png	160	488	2017-10-06 16:53:21.403156+08	\N	\N	\N	\N	1	12082	1
21	line_design.png	original_images/line_design.png	127	15	2017-10-06 16:53:21.44353+08	\N	\N	\N	\N	1	1514	1
22	Mark_full.png	original_images/Mark_full.png	146	484	2017-10-06 16:53:21.484474+08	\N	\N	\N	\N	1	14705	1
23	Mark.png	original_images/Mark_nnre7jh.png	268	301	2017-10-06 16:53:21.524057+08	\N	\N	\N	\N	1	11028	1
24	philip_full.png	original_images/philip_full.png	164	482	2017-10-06 16:53:21.574113+08	\N	\N	\N	\N	1	15203	1
25	philip.png	original_images/philip_0kznm8V.png	268	301	2017-10-06 16:53:21.62169+08	\N	\N	\N	\N	1	19935	1
26	Riza_full.png	original_images/Riza_full.png	261	448	2017-10-06 16:53:21.667775+08	\N	\N	\N	\N	1	34290	1
27	Riza.png	original_images/Riza_KSDRNFv.png	268	301	2017-10-06 16:53:21.710547+08	\N	\N	\N	\N	1	22534	1
28	Rob_Full.png	original_images/Rob_Full.png	180	482	2017-10-06 16:53:21.752371+08	\N	\N	\N	\N	1	17312	1
29	Rob.png	original_images/Rob_QY97Cxe.png	268	301	2017-10-06 16:53:21.796492+08	\N	\N	\N	\N	1	12571	1
30	Roland_full.png	original_images/Roland_full.png	203	470	2017-10-06 16:53:21.840122+08	\N	\N	\N	\N	1	19578	1
31	Roland.png	original_images/Roland_8DWpUgZ.png	268	301	2017-10-06 16:53:21.880694+08	\N	\N	\N	\N	1	16862	1
32	Wave _1.png	original_images/Wave__1.png	1799	617	2017-10-06 16:53:21.926038+08	\N	\N	\N	\N	1	818372	1
33	Wave_2.png	original_images/Wave_2.png	1800	393	2017-10-06 16:53:21.973838+08	\N	\N	\N	\N	1	524210	1
34	Wave_3.png	original_images/Wave_3.png	1800	317	2017-10-06 16:53:22.023598+08	\N	\N	\N	\N	1	422430	1
35	dumb	original_images/21768148_1475331365849070_5579645671125356882_n_uNVek8U.jpg	700	676	2017-10-06 17:38:14.484596+08	\N	\N	\N	\N	1	\N	1
45	1.jpg	original_images/1.jpg	1280	960	2017-10-11 14:17:46.102487+08	\N	\N	\N	\N	1	741723	1
46	3.jpg	original_images/3.jpg	1280	960	2017-10-11 14:17:46.233747+08	\N	\N	\N	\N	1	3061751	1
47	4.jpg	original_images/4.jpg	1280	960	2017-10-11 14:17:46.357286+08	\N	\N	\N	\N	1	3006366	1
48	5.jpg	original_images/5.jpg	1280	960	2017-10-11 14:17:46.448859+08	\N	\N	\N	\N	1	3018795	1
49	6.jpg	original_images/6.jpg	1280	960	2017-10-11 14:17:46.547244+08	\N	\N	\N	\N	1	2662820	1
50	7.jpg	original_images/7.jpg	1280	960	2017-10-11 14:17:46.643904+08	\N	\N	\N	\N	1	3273903	1
51	8.jpg	original_images/8.jpg	1280	960	2017-10-11 14:17:46.732692+08	\N	\N	\N	\N	1	2727176	1
52	9.jpg	original_images/9.jpg	1280	960	2017-10-11 14:17:46.825567+08	\N	\N	\N	\N	1	2969759	1
\.


--
-- Name: wagtailimages_image_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailimages_image_id_seq', 52, true);


--
-- Data for Name: wagtailimages_rendition; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailimages_rendition (id, file, width, height, focal_point_key, image_id, filter_spec) FROM stdin;
1	images/Wave_3.max-165x165.png	165	29		34	max-165x165
2	images/Wave_2.max-165x165.png	165	36		33	max-165x165
3	images/Wave__1.max-165x165.png	165	56		32	max-165x165
4	images/Roland_8DWpUgZ.max-165x165.png	146	165		31	max-165x165
5	images/Roland_full.max-165x165.png	71	165		30	max-165x165
6	images/Rob_QY97Cxe.max-165x165.png	146	165		29	max-165x165
7	images/Rob_Full.max-165x165.png	61	165		28	max-165x165
8	images/Riza_KSDRNFv.max-165x165.png	146	165		27	max-165x165
9	images/Riza_full.max-165x165.png	96	165		26	max-165x165
10	images/philip_0kznm8V.max-165x165.png	146	165		25	max-165x165
11	images/philip_full.max-165x165.png	56	165		24	max-165x165
12	images/Mark_nnre7jh.max-165x165.png	146	165		23	max-165x165
13	images/Mark_full.max-165x165.png	49	165		22	max-165x165
14	images/line_design.max-165x165.png	127	15		21	max-165x165
15	images/lin_full.max-165x165.png	54	165		20	max-165x165
16	images/kin_XCBRs7K.max-165x165.png	146	165		19	max-165x165
17	images/Jose_rEXROgB.max-165x165.png	146	165		18	max-165x165
18	images/Jose_full.max-165x165.png	60	165		17	max-165x165
19	images/Jeremy_wmC5m3Z.max-165x165.png	146	165		16	max-165x165
20	images/Jeremy_full.max-165x165.png	83	165		15	max-165x165
21	images/growpromote_Qfad9ZF.max-165x165.png	165	32		14	max-165x165
22	images/Goper_zxqVdwU.max-165x165.png	146	165		13	max-165x165
23	images/Goper_full.max-165x165.png	104	165		12	max-165x165
24	images/Glen_9ohIIds.max-165x165.png	146	165		11	max-165x165
25	images/Glen_full.max-165x165.png	64	165		10	max-165x165
26	images/Engineering_K1nbSHm.max-165x165.png	90	102		9	max-165x165
27	images/EETECH_kTE3rAb.max-165x165.png	165	30		8	max-165x165
28	images/Developments_LrC8Jwl.max-165x165.png	88	103		7	max-165x165
29	images/Design_Djc9HYu.max-165x165.png	89	103		6	max-165x165
30	images/Clem_Ycxmh6o.max-165x165.png	146	165		5	max-165x165
31	images/Clem_full.max-165x165.png	69	165		4	max-165x165
32	images/Adam_MoMaQRN.max-165x165.png	146	165		3	max-165x165
33	images/Adam_Full.max-165x165.png	83	165		2	max-165x165
34	images/AAC_fp7QTaB.max-165x165.png	165	30		1	max-165x165
35	images/Rob_QY97Cxe.2e16d0ba.fill-320x240.png	268	201	2e16d0ba	29	fill-320x240
36	images/Roland_8DWpUgZ.2e16d0ba.fill-320x240.png	268	201	2e16d0ba	31	fill-320x240
37	images/21768148_1475331365849070_557964567112535688.max-165x165_6DtaPj1.jpg	165	159		35	max-165x165
65	images/9.max-165x165.jpg	165	123		52	max-165x165
66	images/8.max-165x165.jpg	165	123		51	max-165x165
67	images/7.max-165x165.jpg	165	123		50	max-165x165
68	images/6.max-165x165.jpg	165	123		49	max-165x165
69	images/5.max-165x165.jpg	165	123		48	max-165x165
70	images/4.max-165x165.jpg	165	123		47	max-165x165
71	images/3.max-165x165.jpg	165	123		46	max-165x165
72	images/1.max-165x165.jpg	165	123		45	max-165x165
\.


--
-- Name: wagtailimages_rendition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailimages_rendition_id_seq', 72, true);


--
-- Data for Name: wagtailredirects_redirect; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailredirects_redirect (id, old_path, is_permanent, redirect_link, redirect_page_id, site_id) FROM stdin;
\.


--
-- Name: wagtailredirects_redirect_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailredirects_redirect_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_editorspick; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailsearch_editorspick (id, sort_order, description, page_id, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_editorspick_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailsearch_editorspick_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_query; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailsearch_query (id, query_string) FROM stdin;
\.


--
-- Name: wagtailsearch_query_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailsearch_query_id_seq', 1, false);


--
-- Data for Name: wagtailsearch_querydailyhits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailsearch_querydailyhits (id, date, hits, query_id) FROM stdin;
\.


--
-- Name: wagtailsearch_querydailyhits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailsearch_querydailyhits_id_seq', 1, false);


--
-- Data for Name: wagtailusers_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language) FROM stdin;
\.


--
-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('wagtailusers_userprofile_id_seq', 1, false);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: blog_blog blog_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blog
    ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_blogpage blog_blogpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpage
    ADD CONSTRAINT blog_blogpage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: blog_blogpagegalleryimage blog_blogpagegalleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpagegalleryimage
    ADD CONSTRAINT blog_blogpagegalleryimage_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: home_homepage home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: home_pagesection home_pagesection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_pagesection
    ADD CONSTRAINT home_pagesection_pkey PRIMARY KEY (page_ptr_id);


--
-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);


--
-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);


--
-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_tag
    ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);


--
-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);


--
-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collection
    ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);


--
-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);


--
-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);


--
-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);


--
-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);


--
-- Name: wagtailembeds_embed wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailembeds_embed
    ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);


--
-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);


--
-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);


--
-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_query
    ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: blog_blogpagegalleryimage_image_id_0dfee4d0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpagegalleryimage_image_id_0dfee4d0 ON blog_blogpagegalleryimage USING btree (image_id);


--
-- Name: blog_blogpagegalleryimage_page_id_afaddd42; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX blog_blogpagegalleryimage_page_id_afaddd42 ON blog_blogpagegalleryimage USING btree (page_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_name_58eb2ed9_like ON taggit_tag USING btree (name varchar_pattern_ops);


--
-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_tag_slug_6be58b2c_like ON taggit_tag USING btree (slug varchar_pattern_ops);


--
-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON taggit_taggeditem USING btree (content_type_id);


--
-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON taggit_taggeditem USING btree (content_type_id, object_id);


--
-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON taggit_taggeditem USING btree (object_id);


--
-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON taggit_taggeditem USING btree (tag_id);


--
-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collection_path_d848dc19_like ON wagtailcore_collection USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);


--
-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON wagtailcore_collectionviewrestriction USING btree (collection_id);


--
-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON wagtailcore_collectionviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON wagtailcore_groupcollectionpermission USING btree (collection_id);


--
-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON wagtailcore_groupcollectionpermission USING btree (group_id);


--
-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON wagtailcore_groupcollectionpermission USING btree (permission_id);


--
-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON wagtailcore_grouppagepermission USING btree (group_id);


--
-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON wagtailcore_grouppagepermission USING btree (page_id);


--
-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_content_type_id_c28424df ON wagtailcore_page USING btree (content_type_id);


--
-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON wagtailcore_page USING btree (first_published_at);


--
-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON wagtailcore_page USING btree (live_revision_id);


--
-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON wagtailcore_page USING btree (owner_id);


--
-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_path_98eba2c8_like ON wagtailcore_page USING btree (path varchar_pattern_ops);


--
-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f ON wagtailcore_page USING btree (slug);


--
-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON wagtailcore_page USING btree (slug varchar_pattern_ops);


--
-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON wagtailcore_pagerevision USING btree (created_at);


--
-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON wagtailcore_pagerevision USING btree (page_id);


--
-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON wagtailcore_pagerevision USING btree (submitted_for_moderation);


--
-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON wagtailcore_pagerevision USING btree (user_id);


--
-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);


--
-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON wagtailcore_pageviewrestriction_groups USING btree (group_id);


--
-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON wagtailcore_pageviewrestriction USING btree (page_id);


--
-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_site_hostname_96b20b46 ON wagtailcore_site USING btree (hostname);


--
-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON wagtailcore_site USING btree (hostname varchar_pattern_ops);


--
-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON wagtailcore_site USING btree (root_page_id);


--
-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtaildocs_document_collection_id_23881625 ON wagtaildocs_document USING btree (collection_id);


--
-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON wagtaildocs_document USING btree (uploaded_by_user_id);


--
-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON wagtailforms_formsubmission USING btree (page_id);


--
-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON wagtailimages_image USING btree (collection_id);


--
-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON wagtailimages_image USING btree (created_at);


--
-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON wagtailimages_image USING btree (uploaded_by_user_id);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON wagtailimages_rendition USING btree (filter_spec);


--
-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);


--
-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON wagtailimages_rendition USING btree (image_id);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON wagtailredirects_redirect USING btree (old_path);


--
-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);


--
-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON wagtailredirects_redirect USING btree (redirect_page_id);


--
-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON wagtailredirects_redirect USING btree (site_id);


--
-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON wagtailsearch_editorspick USING btree (page_id);


--
-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON wagtailsearch_editorspick USING btree (query_id);


--
-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON wagtailsearch_query USING btree (query_string varchar_pattern_ops);


--
-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON wagtailsearch_querydailyhits USING btree (query_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blog blog_blog_page_ptr_id_2f2bd924_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blog
    ADD CONSTRAINT blog_blog_page_ptr_id_2f2bd924_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpage blog_blogpage_page_ptr_id_1d78e2b7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpage
    ADD CONSTRAINT blog_blogpage_page_ptr_id_1d78e2b7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagegalleryimage blog_blogpagegallery_image_id_0dfee4d0_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpagegalleryimage
    ADD CONSTRAINT blog_blogpagegallery_image_id_0dfee4d0_fk_wagtailim FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: blog_blogpagegalleryimage blog_blogpagegallery_page_id_afaddd42_fk_blog_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY blog_blogpagegalleryimage
    ADD CONSTRAINT blog_blogpagegallery_page_id_afaddd42_fk_blog_blog FOREIGN KEY (page_id) REFERENCES blog_blogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_homepage home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_homepage
    ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: home_pagesection home_pagesection_page_ptr_id_b132607b_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY home_pagesection
    ADD CONSTRAINT home_pagesection_page_ptr_id_b132607b_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY taggit_taggeditem
    ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction
    ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco FOREIGN KEY (collectionviewrestriction_id) REFERENCES wagtailcore_collectionviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_collectionviewrestriction_groups
    ADD CONSTRAINT wagtailcore_collecti_group_id_1823f2a3_fk_auth_grou FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_collection_id_5423575a_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_group_id_05d61460_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_group_id_05d61460_fk_auth_grou FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_groupcollectionpermission
    ADD CONSTRAINT wagtailcore_groupcol_permission_id_1b626275_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_group_id_fc07e671_fk_auth_grou FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_grouppagepermission wagtailcore_grouppag_page_id_710b114a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_grouppagepermission
    ADD CONSTRAINT wagtailcore_grouppag_page_id_710b114a_fk_wagtailco FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_content_type_id_c28424df_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_content_type_id_c28424df_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_live_revision_id_930bd822_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_live_revision_id_930bd822_fk_wagtailco FOREIGN KEY (live_revision_id) REFERENCES wagtailcore_pagerevision(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_page wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_page
    ADD CONSTRAINT wagtailcore_page_owner_id_fbf7c332_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevi_page_id_d421cc1d_fk_wagtailco FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pagerevision
    ADD CONSTRAINT wagtailcore_pagerevision_user_id_2409d2f4_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_group_id_6460f223_fk_auth_grou; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_group_id_6460f223_fk_auth_grou FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction
    ADD CONSTRAINT wagtailcore_pageview_page_id_15a8bea6_fk_wagtailco FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_pageviewrestriction_groups
    ADD CONSTRAINT wagtailcore_pageview_pageviewrestriction__f147a99a_fk_wagtailco FOREIGN KEY (pageviewrestriction_id) REFERENCES wagtailcore_pageviewrestriction(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailcore_site wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailcore_site
    ADD CONSTRAINT wagtailcore_site_root_page_id_e02fb95c_fk_wagtailcore_page_id FOREIGN KEY (root_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_collection_id_23881625_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_collection_id_23881625_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtaildocs_document wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtaildocs_document
    ADD CONSTRAINT wagtaildocs_document_uploaded_by_user_id_17258b41_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailforms_formsubmission wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailforms_formsubmission
    ADD CONSTRAINT wagtailforms_formsub_page_id_e48e93e7_fk_wagtailco FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_collection_id_c2f8af7e_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_image wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_image
    ADD CONSTRAINT wagtailimages_image_uploaded_by_user_id_5d73dc75_fk_auth_user FOREIGN KEY (uploaded_by_user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailimages_rendition wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailimages_rendition
    ADD CONSTRAINT wagtailimages_rendit_image_id_3e1fd774_fk_wagtailim FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_redirect_page_id_b5728a8f_fk_wagtailco FOREIGN KEY (redirect_page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailredirects_redirect wagtailredirects_red_site_id_780a0e1e_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailredirects_redirect
    ADD CONSTRAINT wagtailredirects_red_site_id_780a0e1e_fk_wagtailco FOREIGN KEY (site_id) REFERENCES wagtailcore_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_page_id_28cbc274_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_page_id_28cbc274_fk_wagtailco FOREIGN KEY (page_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_editorspick wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_editorspick
    ADD CONSTRAINT wagtailsearch_editor_query_id_c6eee4a0_fk_wagtailse FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailsearch_querydailyhits wagtailsearch_queryd_query_id_2185994b_fk_wagtailse; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailsearch_querydailyhits
    ADD CONSTRAINT wagtailsearch_queryd_query_id_2185994b_fk_wagtailse FOREIGN KEY (query_id) REFERENCES wagtailsearch_query(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY wagtailusers_userprofile
    ADD CONSTRAINT wagtailusers_userprofile_user_id_59c92331_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--


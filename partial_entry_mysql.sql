# Converted with pg2mysql-1.9
# Converted on Fri, 08 Dec 2017 02:10:24 -0500
# Lightbox Technologies Inc. http://www.lightbox.ca

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone="+00:00";

-- CREATE TABLE auth_group (
--     id int(11) NOT NULL,
--     name varchar(80) NOT NULL
-- );
--
-- CREATE TABLE auth_group_permissions (
--     id int(11) NOT NULL,
--     group_id int(11) NOT NULL,
--     permission_id int(11) NOT NULL
-- );
--
-- CREATE TABLE auth_permission (
--     id int(11) NOT NULL,
--     name varchar(255) NOT NULL,
--     content_type_id int(11) NOT NULL,
--     codename varchar(100) NOT NULL
-- );
--
-- CREATE TABLE auth_user (
--     id int(11) NOT NULL,
--     password varchar(128) NOT NULL,
--     last_login timestamp,
--     is_superuser bool NOT NULL,
--     username varchar(150) NOT NULL,
--     first_name varchar(30) NOT NULL,
--     last_name varchar(30) NOT NULL,
--     email varchar(254) NOT NULL,
--     is_staff bool NOT NULL,
--     is_active bool NOT NULL,
--     date_joined timestamp NOT NULL
-- );
--
-- CREATE TABLE auth_user_groups (
--     id int(11) NOT NULL,
--     user_id int(11) NOT NULL,
--     group_id int(11) NOT NULL
-- );
--
-- CREATE TABLE auth_user_user_permissions (
--     id int(11) NOT NULL,
--     user_id int(11) NOT NULL,
--     permission_id int(11) NOT NULL
-- );
--
-- CREATE TABLE blog_blog (
--     page_ptr_id int(11) NOT NULL,
--     intro text NOT NULL
-- );
--
-- CREATE TABLE blog_blogpage (
--     page_ptr_id int(11) NOT NULL,
--     body text,
--     date date,
--     intro varchar(250),
--     cover int(11)
-- );
--
-- CREATE TABLE blog_blogpagegalleryimage (
--     id int(11) NOT NULL,
--     sort_order int(11),
--     caption varchar(250) NOT NULL,
--     image_id int(11) NOT NULL,
--     page_id int(11) NOT NULL
-- );
--
-- CREATE TABLE django_admin_log (
--     id int(11) NOT NULL,
--     action_time timestamp NOT NULL,
--     object_id text,
--     object_repr varchar(200) NOT NULL,
--     action_flag smallint NOT NULL,
--     change_message text NOT NULL,
--     content_type_id int(11),
--     user_id int(11) NOT NULL
-- );
--
-- CREATE TABLE django_content_type (
--     id int(11) NOT NULL,
--     app_label varchar(100) NOT NULL,
--     model varchar(100) NOT NULL
-- );
--
-- CREATE TABLE django_migrations (
--     id int(11) NOT NULL,
--     app varchar(255) NOT NULL,
--     name varchar(255) NOT NULL,
--     applied timestamp NOT NULL
-- );
--
-- CREATE TABLE django_session (
--     session_key varchar(40) NOT NULL,
--     session_data text NOT NULL,
--     expire_date timestamp NOT NULL
-- );
--
-- CREATE TABLE home_homepage (
--     page_ptr_id int(11) NOT NULL
-- );
--
-- CREATE TABLE home_pagesection (
--     page_ptr_id int(11) NOT NULL,
--     body text NOT NULL
-- );
--
-- CREATE TABLE taggit_tag (
--     id int(11) NOT NULL,
--     name varchar(100) NOT NULL,
--     slug varchar(100) NOT NULL
-- );
--
-- CREATE TABLE taggit_taggeditem (
--     id int(11) NOT NULL,
--     object_id int(11) NOT NULL,
--     content_type_id int(11) NOT NULL,
--     tag_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_collection (
--     id int(11) NOT NULL,
--     path varchar(255) COLLATE pg_catalog.`C` NOT NULL,
--     depth int(11) NOT NULL,
--     numchild int(11) NOT NULL,
--     name varchar(255) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_collectionviewrestriction (
--     id int(11) NOT NULL,
--     restriction_type varchar(20) NOT NULL,
--     password varchar(255) NOT NULL,
--     collection_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_collectionviewrestriction_groups (
--     id int(11) NOT NULL,
--     collectionviewrestriction_id int(11) NOT NULL,
--     group_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_groupcollectionpermission (
--     id int(11) NOT NULL,
--     collection_id int(11) NOT NULL,
--     group_id int(11) NOT NULL,
--     permission_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_grouppagepermission (
--     id int(11) NOT NULL,
--     permission_type varchar(20) NOT NULL,
--     group_id int(11) NOT NULL,
--     page_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_page (
--     id int(11) NOT NULL,
--     path varchar(255) COLLATE pg_catalog.`C` NOT NULL,
--     depth int(11) NOT NULL,
--     numchild int(11) NOT NULL,
--     title varchar(255) NOT NULL,
--     slug varchar(255) NOT NULL,
--     live bool NOT NULL,
--     has_unpublished_changes bool NOT NULL,
--     url_path text NOT NULL,
--     seo_title varchar(255) NOT NULL,
--     show_in_menus bool NOT NULL,
--     search_description text NOT NULL,
--     go_live_at timestamp,
--     expire_at timestamp,
--     expired bool NOT NULL,
--     content_type_id int(11) NOT NULL,
--     owner_id int(11),
--     locked bool NOT NULL,
--     latest_revision_created_at timestamp,
--     first_published_at timestamp,
--     live_revision_id int(11),
--     last_published_at timestamp,
--     draft_title varchar(255) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_pagerevision (
--     id int(11) NOT NULL,
--     submitted_for_moderation bool NOT NULL,
--     created_at timestamp NOT NULL,
--     content_json text NOT NULL,
--     approved_go_live_at timestamp,
--     page_id int(11) NOT NULL,
--     user_id int(11)
-- );
--
-- CREATE TABLE wagtailcore_pageviewrestriction (
--     id int(11) NOT NULL,
--     password varchar(255) NOT NULL,
--     page_id int(11) NOT NULL,
--     restriction_type varchar(20) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_pageviewrestriction_groups (
--     id int(11) NOT NULL,
--     pageviewrestriction_id int(11) NOT NULL,
--     group_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailcore_site (
--     id int(11) NOT NULL,
--     hostname varchar(255) NOT NULL,
--     port int(11) NOT NULL,
--     is_default_site bool NOT NULL,
--     root_page_id int(11) NOT NULL,
--     site_name varchar(255)
-- );
--
-- CREATE TABLE wagtaildocs_document (
--     id int(11) NOT NULL,
--     title varchar(255) NOT NULL,
--     file varchar(100) NOT NULL,
--     created_at timestamp NOT NULL,
--     uploaded_by_user_id int(11),
--     collection_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailembeds_embed (
--     id int(11) NOT NULL,
--     url varchar(200) NOT NULL,
--     max_width smallint,
--     `type` varchar(10) NOT NULL,
--     html text NOT NULL,
--     title text NOT NULL,
--     author_name text NOT NULL,
--     provider_name text NOT NULL,
--     thumbnail_url varchar(200),
--     width int(11),
--     height int(11),
--     last_updated timestamp NOT NULL
-- );
--
-- CREATE TABLE wagtailforms_formsubmission (
--     id int(11) NOT NULL,
--     form_data text NOT NULL,
--     submit_time timestamp NOT NULL,
--     page_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailimages_image (
--     id int(11) NOT NULL,
--     title varchar(255) NOT NULL,
--     file varchar(100) NOT NULL,
--     width int(11) NOT NULL,
--     height int(11) NOT NULL,
--     created_at timestamp NOT NULL,
--     focal_point_x int(11),
--     focal_point_y int(11),
--     focal_point_width int(11),
--     focal_point_height int(11),
--     uploaded_by_user_id int(11),
--     file_size int(11),
--     collection_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailimages_rendition (
--     id int(11) NOT NULL,
--     file varchar(100) NOT NULL,
--     width int(11) NOT NULL,
--     height int(11) NOT NULL,
--     focal_point_key varchar(16) NOT NULL,
--     image_id int(11) NOT NULL,
--     filter_spec varchar(255) NOT NULL
-- );
--
-- CREATE TABLE wagtailredirects_redirect (
--     id int(11) NOT NULL,
--     old_path varchar(255) NOT NULL,
--     is_permanent bool NOT NULL,
--     redirect_link varchar(200) NOT NULL,
--     redirect_page_id int(11),
--     site_id int(11)
-- );
--
-- CREATE TABLE wagtailsearch_editorspick (
--     id int(11) NOT NULL,
--     sort_order int(11),
--     description text NOT NULL,
--     page_id int(11) NOT NULL,
--     query_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailsearch_query (
--     id int(11) NOT NULL,
--     query_string varchar(255) NOT NULL
-- );
--
-- CREATE TABLE wagtailsearch_querydailyhits (
--     id int(11) NOT NULL,
--     date date NOT NULL,
--     hits int(11) NOT NULL,
--     query_id int(11) NOT NULL
-- );
--
-- CREATE TABLE wagtailusers_userprofile (
--     id int(11) NOT NULL,
--     submitted_notifications bool NOT NULL,
--     approved_notifications bool NOT NULL,
--     rejected_notifications bool NOT NULL,
--     user_id int(11) NOT NULL,
--     preferred_language varchar(10) NOT NULL
-- );

-- ALTER TABLE auth_group_permissions
--     ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
-- ALTER TABLE auth_group
--     ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
-- ALTER TABLE auth_permission
--     ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
-- ALTER TABLE auth_user_groups
--     ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
-- ALTER TABLE auth_user
--     ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
-- ALTER TABLE auth_user_user_permissions
--     ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
-- ALTER TABLE blog_blog
--     ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (page_ptr_id);
-- ALTER TABLE blog_blogpage
--     ADD CONSTRAINT blog_blogpage_pkey PRIMARY KEY (page_ptr_id);
-- ALTER TABLE blog_blogpagegalleryimage
--     ADD CONSTRAINT blog_blogpagegalleryimage_pkey PRIMARY KEY (id);
-- ALTER TABLE django_admin_log
--     ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
-- ALTER TABLE django_content_type
--     ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
-- ALTER TABLE django_migrations
--     ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
-- ALTER TABLE django_session
--     ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
-- ALTER TABLE home_homepage
--     ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);
-- ALTER TABLE home_pagesection
--     ADD CONSTRAINT home_pagesection_pkey PRIMARY KEY (page_ptr_id);
-- ALTER TABLE taggit_tag
--     ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);
-- ALTER TABLE taggit_taggeditem
--     ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_collection
--     ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_collectionviewrestriction_groups
--     ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_collectionviewrestriction
--     ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_groupcollectionpermission
--     ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_grouppagepermission
--     ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_page
--     ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_pagerevision
--     ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_pageviewrestriction_groups
--     ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_pageviewrestriction
--     ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailcore_site
--     ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtaildocs_document
--     ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailembeds_embed
--     ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailforms_formsubmission
--     ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailimages_image
--     ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailimages_rendition
--     ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailredirects_redirect
--     ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailsearch_editorspick
--     ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailsearch_query
--     ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailsearch_querydailyhits
--     ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);
-- ALTER TABLE wagtailusers_userprofile
--     ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);
-- ALTER TABLE `auth_group` ADD INDEX ( name varchar_pattern_ops ) ;
-- ALTER TABLE `auth_group_permissions` ADD INDEX ( group_id ) ;
-- ALTER TABLE `auth_group_permissions` ADD INDEX ( permission_id ) ;
-- ALTER TABLE `auth_permission` ADD INDEX ( content_type_id ) ;
-- ALTER TABLE `auth_user_groups` ADD INDEX ( group_id ) ;
-- ALTER TABLE `auth_user_groups` ADD INDEX ( user_id ) ;
-- ALTER TABLE `auth_user_user_permissions` ADD INDEX ( permission_id ) ;
-- ALTER TABLE `auth_user_user_permissions` ADD INDEX ( user_id ) ;
-- ALTER TABLE `auth_user` ADD INDEX ( username varchar_pattern_ops ) ;
-- ALTER TABLE `blog_blogpagegalleryimage` ADD INDEX ( image_id ) ;
-- ALTER TABLE `blog_blogpagegalleryimage` ADD INDEX ( page_id ) ;
-- ALTER TABLE `django_admin_log` ADD INDEX ( content_type_id ) ;
-- ALTER TABLE `django_admin_log` ADD INDEX ( user_id ) ;
-- ALTER TABLE `django_session` ADD INDEX ( expire_date ) ;
-- ALTER TABLE `django_session` ADD INDEX ( session_key varchar_pattern_ops ) ;
-- ALTER TABLE `taggit_tag` ADD INDEX ( name varchar_pattern_ops ) ;
-- ALTER TABLE `taggit_tag` ADD INDEX ( slug varchar_pattern_ops ) ;
-- ALTER TABLE `taggit_taggeditem` ADD INDEX ( content_type_id ) ;
-- ALTER TABLE `taggit_taggeditem` ADD INDEX ( content_type_id, object_id ) ;
-- ALTER TABLE `taggit_taggeditem` ADD INDEX ( object_id ) ;
-- ALTER TABLE `taggit_taggeditem` ADD INDEX ( tag_id ) ;
-- ALTER TABLE `wagtailcore_collection` ADD INDEX ( path varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailcore_collectionviewrestriction_groups` ADD INDEX ( collectionviewrestriction_id ) ;
-- ALTER TABLE `wagtailcore_collectionviewrestriction` ADD INDEX ( collection_id ) ;
-- ALTER TABLE `wagtailcore_collectionviewrestriction_groups` ADD INDEX ( group_id ) ;
-- ALTER TABLE `wagtailcore_groupcollectionpermission` ADD INDEX ( collection_id ) ;
-- ALTER TABLE `wagtailcore_groupcollectionpermission` ADD INDEX ( group_id ) ;
-- ALTER TABLE `wagtailcore_groupcollectionpermission` ADD INDEX ( permission_id ) ;
-- ALTER TABLE `wagtailcore_grouppagepermission` ADD INDEX ( group_id ) ;
-- ALTER TABLE `wagtailcore_grouppagepermission` ADD INDEX ( page_id ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( content_type_id ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( first_published_at ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( live_revision_id ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( owner_id ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( path varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( slug ) ;
-- ALTER TABLE `wagtailcore_page` ADD INDEX ( slug varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailcore_pagerevision` ADD INDEX ( created_at ) ;
-- ALTER TABLE `wagtailcore_pagerevision` ADD INDEX ( page_id ) ;
-- ALTER TABLE `wagtailcore_pagerevision` ADD INDEX ( submitted_for_moderation ) ;
-- ALTER TABLE `wagtailcore_pagerevision` ADD INDEX ( user_id ) ;
-- ALTER TABLE `wagtailcore_pageviewrestriction_groups` ADD INDEX ( pageviewrestriction_id ) ;
-- ALTER TABLE `wagtailcore_pageviewrestriction_groups` ADD INDEX ( group_id ) ;
-- ALTER TABLE `wagtailcore_pageviewrestriction` ADD INDEX ( page_id ) ;
-- ALTER TABLE `wagtailcore_site` ADD INDEX ( hostname ) ;
-- ALTER TABLE `wagtailcore_site` ADD INDEX ( hostname varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailcore_site` ADD INDEX ( root_page_id ) ;
-- ALTER TABLE `wagtaildocs_document` ADD INDEX ( collection_id ) ;
-- ALTER TABLE `wagtaildocs_document` ADD INDEX ( uploaded_by_user_id ) ;
-- ALTER TABLE `wagtailforms_formsubmission` ADD INDEX ( page_id ) ;
-- ALTER TABLE `wagtailimages_image` ADD INDEX ( collection_id ) ;
-- ALTER TABLE `wagtailimages_image` ADD INDEX ( created_at ) ;
-- ALTER TABLE `wagtailimages_image` ADD INDEX ( uploaded_by_user_id ) ;
-- ALTER TABLE `wagtailimages_rendition` ADD INDEX ( filter_spec ) ;
-- ALTER TABLE `wagtailimages_rendition` ADD INDEX ( filter_spec varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailimages_rendition` ADD INDEX ( image_id ) ;
-- ALTER TABLE `wagtailredirects_redirect` ADD INDEX ( old_path ) ;
-- ALTER TABLE `wagtailredirects_redirect` ADD INDEX ( old_path varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailredirects_redirect` ADD INDEX ( redirect_page_id ) ;
-- ALTER TABLE `wagtailredirects_redirect` ADD INDEX ( site_id ) ;
-- ALTER TABLE `wagtailsearch_editorspick` ADD INDEX ( page_id ) ;
-- ALTER TABLE `wagtailsearch_editorspick` ADD INDEX ( query_id ) ;
-- ALTER TABLE `wagtailsearch_query` ADD INDEX ( query_string varchar_pattern_ops ) ;
-- ALTER TABLE `wagtailsearch_querydailyhits` ADD INDEX ( query_id ) ;
INSERT INTO wagtailusers_userprofile (id, submitted_notifications, approved_notifications, rejected_notifications, user_id, preferred_language) VALUES
('.'),
(''),
(''),
('--'),
('-- Name: wagtailusers_userprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres'),
('--'),
(''),
('SELECT pg_catalog.setval(\'wagtailusers_userprofile_id_seq\', 1, false);'),
(''),
(''),
('--'),
('-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_group_name_key UNIQUE (name);'),
(''),
(''),
('--'),
('-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);'),
(''),
(''),
('--'),
('-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);'),
(''),
(''),
('--'),
('-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);'),
(''),
(''),
('--'),
('-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);'),
(''),
(''),
('--'),
('-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_username_key UNIQUE (username);'),
(''),
(''),
('--'),
('-- Name: blog_blog blog_blog_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blog_pkey PRIMARY KEY (page_ptr_id);'),
(''),
(''),
('--'),
('-- Name: blog_blogpage blog_blogpage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blogpage_pkey PRIMARY KEY (page_ptr_id);'),
(''),
(''),
('--'),
('-- Name: blog_blogpagegalleryimage blog_blogpagegalleryimage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blogpagegalleryimage_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);'),
(''),
(''),
('--'),
('-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);'),
(''),
(''),
('--'),
('-- Name: home_homepage home_homepage_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT home_homepage_pkey PRIMARY KEY (page_ptr_id);'),
(''),
(''),
('--'),
('-- Name: home_pagesection home_pagesection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT home_pagesection_pkey PRIMARY KEY (page_ptr_id);'),
(''),
(''),
('--'),
('-- Name: taggit_tag taggit_tag_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT taggit_tag_name_key UNIQUE (name);'),
(''),
(''),
('--'),
('-- Name: taggit_tag taggit_tag_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT taggit_tag_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: taggit_tag taggit_tag_slug_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT taggit_tag_slug_key UNIQUE (slug);'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem taggit_taggeditem_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT taggit_taggeditem_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collection wagtailcore_collection_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_collection_path_key UNIQUE (path);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collection wagtailcore_collection_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_collection_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_collectionvi_collectionviewrestrictio_988995ae_uniq UNIQUE (collectionviewrestriction_id, group_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collectionviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_collectionviewrestriction_groups_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction wagtailcore_collectionviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_collectionviewrestriction_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_groupcollect_group_id_collection_id_p_a21cefe9_uniq UNIQUE (group_id, collection_id, permission_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_groupcollectionpermission wagtailcore_groupcollectionpermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_groupcollectionpermission_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_grouppagepermission wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_grouppageper_group_id_page_id_permiss_0898bdf8_uniq UNIQUE (group_id, page_id, permission_type);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_grouppagepermission wagtailcore_grouppagepermission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_grouppagepermission_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page wagtailcore_page_path_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_page_path_key UNIQUE (path);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page wagtailcore_page_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_page_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pagerevision wagtailcore_pagerevision_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_pagerevision_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_pageviewrest_pageviewrestriction_id_g_d23f80bb_uniq UNIQUE (pageviewrestriction_id, group_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pageviewrestriction_groups wagtailcore_pageviewrestriction_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_pageviewrestriction_groups_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pageviewrestriction wagtailcore_pageviewrestriction_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_pageviewrestriction_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_site wagtailcore_site_hostname_port_2c626d70_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_site_hostname_port_2c626d70_uniq UNIQUE (hostname, port);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_site wagtailcore_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_site_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtaildocs_document wagtaildocs_document_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtaildocs_document_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailembeds_embed wagtailembeds_embed_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailembeds_embed_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailembeds_embed wagtailembeds_embed_url_max_width_8a2922d8_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailembeds_embed_url_max_width_8a2922d8_uniq UNIQUE (url, max_width);'),
(''),
(''),
('--'),
('-- Name: wagtailforms_formsubmission wagtailforms_formsubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailforms_formsubmission_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_image wagtailimages_image_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailimages_image_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_rendition wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailimages_rendition_image_id_filter_spec_foc_323c8fe0_uniq UNIQUE (image_id, filter_spec, focal_point_key);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_rendition wagtailimages_rendition_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailimages_rendition_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailredirects_redirect wagtailredirects_redirect_old_path_site_id_783622d7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailredirects_redirect_old_path_site_id_783622d7_uniq UNIQUE (old_path, site_id);'),
(''),
(''),
('--'),
('-- Name: wagtailredirects_redirect wagtailredirects_redirect_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailredirects_redirect_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_editorspick wagtailsearch_editorspick_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailsearch_editorspick_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_query wagtailsearch_query_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailsearch_query_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_query wagtailsearch_query_query_string_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailsearch_query_query_string_key UNIQUE (query_string);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailsearch_querydailyhits_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_querydailyhits wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailsearch_querydailyhits_query_id_date_1dd232e6_uniq UNIQUE (query_id, date);'),
(''),
(''),
('--'),
('-- Name: wagtailusers_userprofile wagtailusers_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailusers_userprofile_pkey PRIMARY KEY (id);'),
(''),
(''),
('--'),
('-- Name: wagtailusers_userprofile wagtailusers_userprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailusers_userprofile_user_id_key UNIQUE (user_id);'),
(''),
(''),
('--'),
('-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);'),
(''),
(''),
('--'),
('-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);'),
(''),
(''),
('--'),
('-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);'),
(''),
(''),
('--'),
('-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);'),
(''),
(''),
('--'),
('-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);'),
(''),
(''),
('--'),
('-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);'),
(''),
(''),
('--'),
('-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);'),
(''),
(''),
('--'),
('-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: blog_blogpagegalleryimage_image_id_0dfee4d0; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX blog_blogpagegalleryimage_image_id_0dfee4d0 ON blog_blogpagegalleryimage USING btree (image_id);'),
(''),
(''),
('--'),
('-- Name: blog_blogpagegalleryimage_page_id_afaddd42; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX blog_blogpagegalleryimage_page_id_afaddd42 ON blog_blogpagegalleryimage USING btree (page_id);'),
(''),
(''),
('--'),
('-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);'),
(''),
(''),
('--'),
('-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);'),
(''),
(''),
('--'),
('-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);'),
(''),
(''),
('--'),
('-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: taggit_tag_name_58eb2ed9_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX taggit_tag_name_58eb2ed9_like ON taggit_tag USING btree (name varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: taggit_tag_slug_6be58b2c_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX taggit_tag_slug_6be58b2c_like ON taggit_tag USING btree (slug varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem_content_type_id_9957a03c; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX taggit_taggeditem_content_type_id_9957a03c ON taggit_taggeditem USING btree (content_type_id);'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem_content_type_id_object_id_196cc965_idx; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX taggit_taggeditem_content_type_id_object_id_196cc965_idx ON taggit_taggeditem USING btree (content_type_id, object_id);'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem_object_id_e2d7d1df; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX taggit_taggeditem_object_id_e2d7d1df ON taggit_taggeditem USING btree (object_id);'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem_tag_id_f4f5b767; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX taggit_taggeditem_tag_id_f4f5b767 ON taggit_taggeditem USING btree (tag_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collection_path_d848dc19_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_collection_path_d848dc19_like ON wagtailcore_collection USING btree (path varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionview_collectionviewrestriction__47320efd; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_collectionview_collectionviewrestriction__47320efd ON wagtailcore_collectionviewrestriction_groups USING btree (collectionviewrestriction_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction_collection_id_761908ec; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_collectionviewrestriction_collection_id_761908ec ON wagtailcore_collectionviewrestriction USING btree (collection_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_collectionviewrestriction_groups_group_id_1823f2a3 ON wagtailcore_collectionviewrestriction_groups USING btree (group_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_groupcollectionpermission_collection_id_5423575a; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_groupcollectionpermission_collection_id_5423575a ON wagtailcore_groupcollectionpermission USING btree (collection_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_groupcollectionpermission_group_id_05d61460; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_groupcollectionpermission_group_id_05d61460 ON wagtailcore_groupcollectionpermission USING btree (group_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_groupcollectionpermission_permission_id_1b626275; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_groupcollectionpermission_permission_id_1b626275 ON wagtailcore_groupcollectionpermission USING btree (permission_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_grouppagepermission_group_id_fc07e671; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_grouppagepermission_group_id_fc07e671 ON wagtailcore_grouppagepermission USING btree (group_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_grouppagepermission_page_id_710b114a; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_grouppagepermission_page_id_710b114a ON wagtailcore_grouppagepermission USING btree (page_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_content_type_id_c28424df; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_content_type_id_c28424df ON wagtailcore_page USING btree (content_type_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_first_published_at_2b5dd637; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_first_published_at_2b5dd637 ON wagtailcore_page USING btree (first_published_at);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_live_revision_id_930bd822; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_live_revision_id_930bd822 ON wagtailcore_page USING btree (live_revision_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_owner_id_fbf7c332; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_owner_id_fbf7c332 ON wagtailcore_page USING btree (owner_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_path_98eba2c8_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_path_98eba2c8_like ON wagtailcore_page USING btree (path varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_slug_e7c11b8f; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_slug_e7c11b8f ON wagtailcore_page USING btree (slug);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_page_slug_e7c11b8f_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_page_slug_e7c11b8f_like ON wagtailcore_page USING btree (slug varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pagerevision_created_at_66954e3b; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pagerevision_created_at_66954e3b ON wagtailcore_pagerevision USING btree (created_at);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pagerevision_page_id_d421cc1d; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pagerevision_page_id_d421cc1d ON wagtailcore_pagerevision USING btree (page_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pagerevision_submitted_for_moderation_c682e44c; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pagerevision_submitted_for_moderation_c682e44c ON wagtailcore_pagerevision USING btree (submitted_for_moderation);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pagerevision_user_id_2409d2f4; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pagerevision_user_id_2409d2f4 ON wagtailcore_pagerevision USING btree (user_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pageviewrestri_pageviewrestriction_id_f147a99a ON wagtailcore_pageviewrestriction_groups USING btree (pageviewrestriction_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pageviewrestriction_groups_group_id_6460f223; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pageviewrestriction_groups_group_id_6460f223 ON wagtailcore_pageviewrestriction_groups USING btree (group_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_pageviewrestriction_page_id_15a8bea6; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_pageviewrestriction_page_id_15a8bea6 ON wagtailcore_pageviewrestriction USING btree (page_id);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_site_hostname_96b20b46; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_site_hostname_96b20b46 ON wagtailcore_site USING btree (hostname);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_site_hostname_96b20b46_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_site_hostname_96b20b46_like ON wagtailcore_site USING btree (hostname varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailcore_site_root_page_id_e02fb95c; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailcore_site_root_page_id_e02fb95c ON wagtailcore_site USING btree (root_page_id);'),
(''),
(''),
('--'),
('-- Name: wagtaildocs_document_collection_id_23881625; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtaildocs_document_collection_id_23881625 ON wagtaildocs_document USING btree (collection_id);'),
(''),
(''),
('--'),
('-- Name: wagtaildocs_document_uploaded_by_user_id_17258b41; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtaildocs_document_uploaded_by_user_id_17258b41 ON wagtaildocs_document USING btree (uploaded_by_user_id);'),
(''),
(''),
('--'),
('-- Name: wagtailforms_formsubmission_page_id_e48e93e7; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailforms_formsubmission_page_id_e48e93e7 ON wagtailforms_formsubmission USING btree (page_id);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_image_collection_id_c2f8af7e; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailimages_image_collection_id_c2f8af7e ON wagtailimages_image USING btree (collection_id);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_image_created_at_86fa6cd4; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailimages_image_created_at_86fa6cd4 ON wagtailimages_image USING btree (created_at);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_image_uploaded_by_user_id_5d73dc75; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailimages_image_uploaded_by_user_id_5d73dc75 ON wagtailimages_image USING btree (uploaded_by_user_id);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_rendition_filter_spec_1cba3201; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201 ON wagtailimages_rendition USING btree (filter_spec);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_rendition_filter_spec_1cba3201_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailimages_rendition_filter_spec_1cba3201_like ON wagtailimages_rendition USING btree (filter_spec varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailimages_rendition_image_id_3e1fd774; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailimages_rendition_image_id_3e1fd774 ON wagtailimages_rendition USING btree (image_id);'),
(''),
(''),
('--'),
('-- Name: wagtailredirects_redirect_old_path_bb35247b; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailredirects_redirect_old_path_bb35247b ON wagtailredirects_redirect USING btree (old_path);'),
(''),
(''),
('--'),
('-- Name: wagtailredirects_redirect_old_path_bb35247b_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailredirects_redirect_old_path_bb35247b_like ON wagtailredirects_redirect USING btree (old_path varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailredirects_redirect_redirect_page_id_b5728a8f; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailredirects_redirect_redirect_page_id_b5728a8f ON wagtailredirects_redirect USING btree (redirect_page_id);'),
(''),
(''),
('--'),
('-- Name: wagtailredirects_redirect_site_id_780a0e1e; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailredirects_redirect_site_id_780a0e1e ON wagtailredirects_redirect USING btree (site_id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_editorspick_page_id_28cbc274; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailsearch_editorspick_page_id_28cbc274 ON wagtailsearch_editorspick USING btree (page_id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_editorspick_query_id_c6eee4a0; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailsearch_editorspick_query_id_c6eee4a0 ON wagtailsearch_editorspick USING btree (query_id);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_query_query_string_e785ea07_like; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailsearch_query_query_string_e785ea07_like ON wagtailsearch_query USING btree (query_string varchar_pattern_ops);'),
(''),
(''),
('--'),
('-- Name: wagtailsearch_querydailyhits_query_id_2185994b; Type: INDEX; Schema: public; Owner: postgres'),
('--'),
(''),
('CREATE INDEX wagtailsearch_querydailyhits_query_id_2185994b ON wagtailsearch_querydailyhits USING btree (query_id);'),
(''),
(''),
('--'),
('-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: blog_blog blog_blog_page_ptr_id_2f2bd924_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blog_page_ptr_id_2f2bd924_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: blog_blogpage blog_blogpage_page_ptr_id_1d78e2b7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blogpage_page_ptr_id_1d78e2b7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: blog_blogpagegalleryimage blog_blogpagegallery_image_id_0dfee4d0_fk_wagtailim; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blogpagegallery_image_id_0dfee4d0_fk_wagtailim FOREIGN KEY (image_id) REFERENCES wagtailimages_image(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: blog_blogpagegalleryimage blog_blogpagegallery_page_id_afaddd42_fk_blog_blog; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT blog_blogpagegallery_page_id_afaddd42_fk_blog_blog FOREIGN KEY (page_id) REFERENCES blog_blogpage(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: home_homepage home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT home_homepage_page_ptr_id_e5b77cf7_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: home_pagesection home_pagesection_page_ptr_id_b132607b_fk_wagtailcore_page_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT home_pagesection_page_ptr_id_b132607b_fk_wagtailcore_page_id FOREIGN KEY (page_ptr_id) REFERENCES wagtailcore_page(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem taggit_taggeditem_content_type_id_9957a03c_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT taggit_taggeditem_content_type_id_9957a03c_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: taggit_taggeditem taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT taggit_taggeditem_tag_id_f4f5b767_fk_taggit_tag_id FOREIGN KEY (tag_id) REFERENCES taggit_tag(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction wagtailcore_collecti_collection_id_761908ec_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--'),
(''),
('ADD CONSTRAINT wagtailcore_collecti_collection_id_761908ec_fk_wagtailco FOREIGN KEY (collection_id) REFERENCES wagtailcore_collection(id) DEFERRABLE INITIALLY DEFERRED;'),
(''),
(''),
('--'),
('-- Name: wagtailcore_collectionviewrestriction_groups wagtailcore_collecti_collectionviewrestri_47320efd_fk_wagtailco; Type: FK CONSTRAINT; Schema: public; Owner: postgres'),
('--');

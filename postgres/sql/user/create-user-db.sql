    --    psql --dbname=bitnami_keycloak --username=bn_keycloak --file=/sql/user/create-user-db.sql
    --    psql --dbname=user_db --username=user_db_user --file=/sql/user/create-user-schema.sql
CREATE ROLE user_db_user LOGIN PASSWORD 'VibeCheck10.05.2025';

CREATE DATABASE user_db;

GRANT ALL ON DATABASE user_db TO user_db_user;

CREATE TABLESPACE userspace OWNER user_db_user LOCATION '/var/lib/postgresql/tablespace/user';
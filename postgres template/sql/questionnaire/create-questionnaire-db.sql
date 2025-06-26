

-- psql --dbname=bitnami_keycloak --username=bn_keycloak --file=/sql/questionnaire/create-db-questionnaire.sql
-- psql --dbname=bitnami_keycloak --username=bn_keycloak --file=/sql/questionnaire/create-schema-questionnaire.sql


CREATE ROLE questionnaire_db_user LOGIN PASSWORD 'VibeCheck10.05.2025';

CREATE DATABASE questionnaire_db;

GRANT ALL ON DATABASE questionnaire_db TO questionnaire_db_user;

CREATE TABLESPACE questionnairespace OWNER questionnaire_db_user LOCATION '/var/lib/postgresql/tablespace/questionnaire';
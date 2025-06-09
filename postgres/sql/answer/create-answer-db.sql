    --    psql --dbname=bitnami_keycloak --username=bn_keycloak --file=/sql/answer/create-answer-db.sql
    --    psql --dbname=answer_db --username=answer_db_user --file=/sql/answer/create-answer-schema.sql
    
CREATE ROLE answer_db_user LOGIN PASSWORD 'VibeCheck10.05.2025';

CREATE DATABASE answer_db;

GRANT ALL ON DATABASE answer_db TO answer_db_user;

CREATE TABLESPACE answerspace OWNER answer_db_user LOCATION '/var/lib/postgresql/tablespace/answer';
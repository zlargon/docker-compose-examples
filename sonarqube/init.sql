-- https://docs.sonarsource.com/sonarqube/latest/setup-and-upgrade/install-the-server/installing-the-database/
CREATE SCHEMA IF NOT EXISTS sonar;
ALTER USER postgres_user SET search_path to sonar;

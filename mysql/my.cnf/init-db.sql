-- init-db.sql
-- Этот скрипт будет выполнен при первом старте MySQL-контейнера.

-- Даем пользователю 'art' полные привилегии на ВСЕ базы данных с любого хоста.
-- Это перекроет любые привилегии, выданные через переменные окружения типа MYSQL_DATABASE/USER/PASSWORD.
GRANT ALL PRIVILEGES ON *.* TO 'art'@'%';

-- Отзываем (REVOKE) привилегии на системные базы данных, которые обычно не нужны приложению.
-- Это стандартные системные базы данных MySQL. Добавьте сюда любые другие, если они есть и вы хотите их исключить.
--REVOKE ALL PRIVILEGES ON mysql.* FROM 'art'@'%';
--REVOKE ALL PRIVILEGES ON sys.* FROM 'art'@'%';
--REVOKE ALL PRIVILEGES ON information_schema.* FROM 'art'@'%';
--REVOKE ALL PRIVILEGES ON performance_schema.* FROM 'art'@'%';

-- Обновляем кэш привилегий, чтобы изменения вступили в силу немедленно.
FLUSH PRIVILEGES;

```
mkdir -p src
```



```
docker-compose up -d --build
```

```
cat бд_портал.sql | docker exec -i portal-mysql-1 mysql -u root -p1234 -f
```

Настроим Бекап
```
0 3 * * * docker exec portal-mysql-1 mysqldump -u root -p1234 --all-databases > "/PORTAL/src/бд_портал_backup_$(date +\%Y\%m\%d).sql"
```

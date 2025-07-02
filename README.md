```
mkdir -p src
```
```
cat бд_портал.sql | docker exec -i portal-mysql-1 mysql -u root -p1234 -f
```

```
docker-compose up -d --build
```
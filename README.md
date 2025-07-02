```
mkdir -p src
```



```
docker-compose up -d --build
```

```
cat бд_портал.sql | docker exec -i portal-mysql-1 mysql -u root -p1234 -f
```

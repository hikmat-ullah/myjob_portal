CREATE USER IF NOT EXISTS 'admin'@'%' IDENTIFIED BY 'Me@app@123';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;


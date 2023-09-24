# Car_Reselling_Website
Create a Registration, Login Page for Customers using html ,css, laravel,mysql,php

![78e94a09-d2c3-41f9-93dd-18376f339d22](https://github.com/shitallog/Car_Reselling_Website/assets/134849794/75752281-0e95-4b5e-9e12-02fb1a80de33)
Customer Registration Page
![585143bc-48bc-4631-a46e-d31e063e93df](https://github.com/shitallog/Car_Reselling_Website/assets/134849794/1e40062e-938b-41b0-b7af-372ddf8c3b36)
Customer Login page...
![d2584c81-e080-49e6-a927-17c9f4e13a06](https://github.com/shitallog/Car_Reselling_Website/assets/134849794/59b4a7a4-bac3-4662-9131-a2af8b9a0f49)
All Cars for sell
![68747470733a2f2f692e696d6775722e636f6d2f4e6a4868554a372e706e67](https://github.com/shitallog/Car_Reselling_Website/assets/134849794/81b67386-f675-4c69-9d00-92ab30361f93)

Create Page for Selling a Car...
![68747470733a2f2f692e696d6775722e636f6d2f71656d6e416f6c2e706e67](https://github.com/shitallog/Car_Reselling_Website/assets/134849794/c0befde9-7e6a-4353-bd45-0a4ebee62832)
Installation process
Clone the repo.
git clone https://github.com/vikas-ukani/Car-Reselling.git
cd Car-Reselling
Create .env file
cp .env.example .env
Install pacakges.
Install php laravel pacakges
composer install 
Configure local database connection.
Generate key if it's required, Run the command
php artisan key:generate
Database setup
Find the exported database backup on database directory and import on local system.

Path database/car-reselling.sql

OR run the migrations, for fresh database setup. php artisan migrate

Seed the dummy data.
After done setup with, Run the below command to insert dummy data to database
php artisan db:seed
Run the PHP server
php artisan serve
Run Vue server
npm run dev
Run the test for routes.
php artisan test
Visit the site.
http://localhost:8000/

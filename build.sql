--Create statements for SQL tables
--CS586 Term Project

create table models (
    modelid INT PRIMARY KEY,
    model VARCHAR(30) NOT NULL);

create table cars (
    carid INT PRIMARY KEY,
    modelid INT REFERENCES models(modelid),
    mpg FLOAT,
    cylinders INT,
    displacement FLOAT,
    horsepower INT,
    weight INT,
    acceleration FLOAT,
    year INT);

create table cities (
    cityid INT PRIMARY KEY,
    city VARCHAR(30) NOT NULL);

create table makes (
    makeid INT PRIMARY KEY,
    make VARCHAR(30) NOT NULL,
    cityid INT REFERENCES cities(cityid));

create table makerel (
    modelid INT REFERENCES models(modelid),
    makeid INT REFERENCES makes(makeid),
    PRIMARY KEY(modelid, makeid));

create table countries (
    countryid INT PRIMARY KEY,
    country VARCHAR(30) NOT NULL); 

create table cityrel (
    cityid INT REFERENCES cities(cityid),
    countryid INT REFERENCES countries(countryid),
    PRIMARY KEY (cityid, countryid));


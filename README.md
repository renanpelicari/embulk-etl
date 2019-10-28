# Embulk ETL

This project has only one goal, test the embulk.
So, do not consider some database normalizations not used properly, even the way that data was splitted up by RDBMS, NoSQL and File.

---

### Stacks:

* [Embulk -  Open Source ETL Tool](https://www.embulk.org/)
* [Docker - Container to run envs and apps](https://www.docker.com/)
* [PostgreSQL - Open Source Relational Database](https://www.postgresql.org/)
* [MySQL - Open Source Relational Database](https://www.mysql.com/)
* [MongoDB - Open Souce Database Oriented by Document](https://www.mongodb.com/)
* [BASH - Unix Shell to orchestrate the Docker scripts](https://en.wikipedia.org/wiki/Bash_(Unix_shell))

---

### Scenario:

To make this sample easier, I used the follow scenario:

A PUB has some products at Menu, and the SKU, Brand and Stock informations are registered at MySQL at `db_product` Database.
The informations related to order made to beverage distributor are in MongoDB at `db_replenishment`.
And the survey, that customer can filled at a fictional device, are stored in a server, in `.csv` format.

This PUB needs a BI, to help they choose the good options of beers, to precify them and to buy for stock replenishment.
So, they want to get all the relevant information from source data (db_product, db_sales and csv files), aggregate the related info, and provice in another database `db_analysis` (at Postgres) with some views to turn easier for analysts.

PS: This example can be silly, but the idea its just to show how to aggregate data from different sources.

---

### Pre Requirements:

* Has OS `unix-like` (Linux, MacOs, or Windows with some tool) to run BASH scripts;
* Has `docker` and `docker-compose` installed;

---

### How to Use:

* First you need to give the execution permission for main script: `chmod +x run.sh`;
* Execute the script: `./run.sh` or `bash run.sh`;

---

### Author:

Renan Peliçari Rodrigues

renanpelicari@gmail.com

https://www.linkedin.com/in/renanpelicari/

https://github.com/renanpelicari

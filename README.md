# Udagram App
This project has been developed to host a full stack web application. Deployed and hosted with AWS. Frontend developed with Angular JS. Backend developed with Express JS. 


[![CircleCI](https://circleci.com/gh/mostafamaa1/fullstack-hosting-app/tree/master.svg?style=svg)](https://circleci.com/gh/mostafamaa1/fullstack-hosting-app/?branch=master)

## Project endpoints

* > <a href="http://my-udagram-app1.s3-website-us-east-1.amazonaws.com/">Frontend</a>

* > <a href="http://udagram-api-dev.eba-chkjrke3.us-east-1.elasticbeanstalk.com">API</a>

## Project Setup and Installation
1- Clone the project at `https://github.com/mostafamaa1/fullstack-hosting-app.git` 

2- Create an `.env` file in the `udagram-api` folder and define the followng variables:
```
- POSTGRES_USERNAME
- POSTGRES_PASSWORD
- POSTGRES_PORT
- POSTGRES_HOST
- POSTGRES_DB
- PORT
- AWS_BUCKET
- AWS_DEFAULT_REGION=us-east-1
- AWS_PROFILE
- AWS_ACCESS_KEY_ID
- AWS_SECRET_ACCESS_KEY
- JWT_SECRET
- URL
```
3- In the root of the project open two terminals and run the following:
```bash
# Frontend
npm run frontend:install
npm run frontend:start
```

```bash
# Backend
npm run api:install
npm run api:start
```

## Built With

- [Angular](https://angular.io/) - Single Page Application Framework
- [NodeJS](https://nodejs.org) - Javascript Runtime
- [Express](https://expressjs.com/) - Javascript API Framework

## Documentation
* Detailed Documentation (Infrastructure, App dependencies, Pipeline process) is provided in ./documentation/
* Screenshots of the AWS configurations and the CircleCI are provided in ./documentation/screenshots/
* Architecture Diagrams of the AWS and the Pipeline are provided in ./documentation/diagrams/

## CopyRights
-> The Code base of this project has been supplied from Udacity as a final project of Fullstack-web-development program.

-> Developed by Mostafa Ahmed

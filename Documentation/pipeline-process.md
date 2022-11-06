# Pipeline

The root level package.json file is used for running all scripts of the project for the pipeline process.

```bash
# Install frontend dependencies
npm run frontend:install
# Build the Angular frontend
npm run frontend:build 
# Deploy the project to S3
npm run frontend:deploy 
# linting the frontend
npm run frontend:lint
# Install backend dependencies
npm run api:install
# Build the api folder and transpile Typescript
npm run api:build
# Deploy the project to Elastic beanstalk
npm run api:deploy
```
## Pipeline process

### Development process

Developing the project locally without the use of CI. 

* Create a postgress database instance (Using AWS RDS, or local postgres).
* Confugure the environment variables in the .env file.
* Setup frontend dependencies.
* Setup api dependencies.
* Start the api server `npm run api:start`.
* Start the frontend server `npm run frontend:start`.
* Open the frontend in a browser (Using S3 bucket for static web site hosting).

### Production process

Developing the project using CircleCi for continuous integration. 
When the code changes is being commite and synced with version control circleci pipeline is then triggered and starts running the following jobs.

#### Build:
* Set Env Variables.
* Install NodeJS.
* Checkout Code & Cloning the Repo.
* Install Frontend dependencies.
* Install Backend dependencies.
* Lint Frontend.
* Build Frontend.
* Build Api.
- > Hold (Manual approval to deploy) 

#### Deploy:
* Install AWS CLI v2.
* Install AWS EB CLI.
* Set Env variables on eb.
* Deploy app to AWS Elastic Beanstalk.
* Deploy to AWS S3.
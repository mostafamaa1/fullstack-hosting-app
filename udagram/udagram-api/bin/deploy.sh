# Deploy to AWS EB
eb init udagram-api --region us-east-1 --platform node.js
eb create --sample udagram-api-dev
eb use udagram-api-dev

eb setenv AWS_BUCKET=$AWS_BUCKET AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION POSTGRES_PORT=$POSTGRES_PORT PORT=$PORT &&
eb setenv JWT_SECRET=$JWT_SECRET POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL

eb deploy udagram-api-dev
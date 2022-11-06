# Deploy to AWS EB
eb init udagram-api --region us-east-1 --platform node.js
eb create --sample udagram-api-dev
eb use udagram-api-dev

eb deploy udagram-api-dev
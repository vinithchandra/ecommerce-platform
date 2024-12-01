# E-commerce Platform

A modern e-commerce platform built with React.js, Node.js, Express, and MongoDB.

## Features

- User authentication (JWT)
- Product management
- Shopping cart functionality
- Secure payment processing (Stripe)
- Order tracking
- Responsive design
- AWS S3 integration for image storage

## Tech Stack

- **Frontend**: React.js, Redux
- **Backend**: Node.js, Express.js
- **Database**: MongoDB
- **Additional Tools**: Docker, AWS S3, Stripe API

## Prerequisites

- Node.js (v14 or higher)
- MongoDB
- Docker
- AWS Account
- Stripe Account

## Installation

1. Clone the repository
2. Install backend dependencies:
   ```bash
   npm install
   ```
3. Install frontend dependencies:
   ```bash
   cd client
   npm install
   ```
4. Create a .env file in the root directory with:
   ```
   MONGODB_URI=your_mongodb_uri
   JWT_SECRET=your_jwt_secret
   STRIPE_SECRET_KEY=your_stripe_secret_key
   AWS_ACCESS_KEY_ID=your_aws_access_key
   AWS_SECRET_ACCESS_KEY=your_aws_secret_key
   AWS_BUCKET_NAME=your_s3_bucket_name
   ```

## Running the Application

Development mode:
```bash
npm run dev:full
```

Production mode:
```bash
npm start
```

## Docker Deployment

```bash
docker-compose up --build
```

## Project Structure

```
├── client/                 # React frontend
├── server/                 # Node.js backend
│   ├── config/            # Configuration files
│   ├── controllers/       # Route controllers
│   ├── middleware/        # Custom middleware
│   ├── models/           # MongoDB models
│   ├── routes/           # API routes
│   └── utils/            # Utility functions
├── docker-compose.yml     # Docker composition
└── README.md             # Project documentation
```

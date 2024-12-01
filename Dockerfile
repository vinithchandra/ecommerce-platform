# Multi-stage build for production
FROM node:18 as builder

# Build frontend
WORKDIR /app/client
COPY client/package*.json ./
RUN npm install
COPY client/ ./
RUN npm run build

# Build backend
FROM node:18-slim
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY server/ ./server/
COPY --from=builder /app/client/build ./client/build

# Set environment variables
ENV NODE_ENV=production
ENV PORT=5000

EXPOSE 5000
CMD ["npm", "start"]

# Dockerfile
FROM node:18-alpine AS build
WORKDIR /usr/src/app

# install build deps
COPY package.json package-lock.json ./
RUN npm ci --legacy-peer-deps
COPY . ./
RUN npm run build

FROM node:18-alpine AS runtime
WORKDIR /usr/src/app
ENV NODE_ENV=production
COPY --from=build /usr/src/app /usr/src/app
RUN npm ci --only=production --legacy-peer-deps
EXPOSE 1337
CMD ["node", "./server.js"]

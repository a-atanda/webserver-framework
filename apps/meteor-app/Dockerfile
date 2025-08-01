FROM node:20-slim AS builder
WORKDIR /app

# ─ Copy only package.json, then install
COPY package.json ./
RUN npm install --production --force

# ─ Copy the rest of your Meteor bundle
COPY . .

FROM node:20-slim
WORKDIR /app
COPY --from=builder /app /app

EXPOSE 3000
CMD ["node", "main.js"]


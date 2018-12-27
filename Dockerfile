# Base image
FROM node:10.15.0

# Set up a workspace
WORKDIR /usr/app

# Deps
COPY ./app/naming-things-is-hard/package.json \
  ./app/naming-things-is-hard/package-lock.json \
  ./

# Install
RUN npm install --quiet

# App source
COPY ./app/naming-things-is-hard .

# Expose dev server port
EXPOSE 8000

CMD ["npm", "run", "develop"]

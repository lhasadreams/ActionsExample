FROM node:16.15-alpine3.14
RUN mkdir -p /opt/app
WORKDIR /opt/app
RUN adduser -S app
RUN npm init -y
RUN npm install
RUN npm install electron@11.1.1
RUN chown -R app /opt/app
USER app
EXPOSE 3000

from node:current
WORKDIR /emails

RUN npm install -g mjml
COPY build-emails.sh /

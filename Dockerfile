FROM node:22.18.0-slim

WORKDIR /app

RUN npm i -D @playwright/test@1.54.0

RUN npx -y playwright install --with-deps chromium --only-shell

EXPOSE 3000

CMD npx playwright -V && \
  npx -y playwright run-server --port 3000 --host 0.0.0.0

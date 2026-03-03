ARG BUNDLE_URL
FROM node:20-alpine
WORKDIR /app
ADD ${BUNDLE_URL} /tmp/source.tar.gz
RUN tar xzf /tmp/source.tar.gz && rm /tmp/source.tar.gz
RUN npm install --omit=dev
CMD ["node", "dist/index.js"]

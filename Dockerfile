FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install 

# RUN if [ "$NODE_ENV" = "development" ]; \
#         then npm install; \
#         else npm install --only=produnction; \
#         fi
        
COPY . ./
# ENV PORT 3000
# EXPOSE $PORT
CMD ["node","index.js"]

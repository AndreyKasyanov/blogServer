FROM node:14

# App folder
WORKDIR /usr/src/app

# Packages install
COPY package*.json ./
RUN npm install --only=production
# For production use
# RUN npm install --production

# Copy project files
COPY . .

# Notify about listening port
EXPOSE 8000

# Project start
CMD ["npm", "start"]
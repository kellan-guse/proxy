FROM ghcr.io/linuxserver/webtop:ubuntu-mate

# Install Node.js
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

WORKDIR /app
COPY . .
RUN npm install

# This environment starts the desktop; you can then open a terminal 
# inside the web-view and run 'npm start' to see your browser app.

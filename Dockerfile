# Uses a lightweight version of Chromium already set up for the web
FROM linuxserver/chromium:latest

# Basic configuration to help it run on lower-end servers
EXPOSE 3000

ENV CHROME_FLAGS="--disable-dev-shm-usage --no-sandbox --disable-gpu"

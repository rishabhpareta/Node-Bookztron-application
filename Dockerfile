from node:latest
workdir /app
copy . .
run npm install
cmd npm start

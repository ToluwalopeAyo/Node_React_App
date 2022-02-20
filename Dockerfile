FROM node:16-alpine
WORKDIR /app
ADD . .
RUN npm install --prefix ./backend && npm install --prefix ./frontend
EXPOSE 3000
CMD ["npm", "run", "dev", "--prefix", "./backend"]
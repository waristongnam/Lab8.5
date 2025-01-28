FROM node:22-alpine

WORKDIR /app
COPY . .
RUN npm config set strict-ssl false
# ติดตั้งแพ็กเกจโดยไม่ติดตั้ง devDependencies
RUN npm install --omit=dev

CMD ["node", "src/index.js"]
EXPOSE 3000

# Base Image
FROM node:lts-alpine

# Working Directory (WORKDIR)
WORKDIR /usr/app

# Copy package.json (ส่วนนี้ไม่ค่อยมีการเปลี่ยนแปลงจะดึงจาก cache ในรอบถัดไป)
COPY ./package.json .
RUN npm install
COPY . .
CMD ["npm", "start"]
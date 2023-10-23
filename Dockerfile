# Используйте базовый образ Node.js
FROM node:14

# Создайте и установите рабочий каталог
WORKDIR /

# Установите зависимости
COPY package.json package-lock.json ./
RUN npm install

# Копируйте код бота в контейнер
COPY . .

# Команда для запуска бота
CMD ["npm start", "index.js"]

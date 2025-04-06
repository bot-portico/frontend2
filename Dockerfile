FROM node:16-alpine

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos package.json e package-lock.json que estão na pasta "backend"
COPY backend/package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante dos arquivos do backend para o container
COPY backend/. .

EXPOSE 3000

CMD ["npm", "start"]

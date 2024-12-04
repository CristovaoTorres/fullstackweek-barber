# Usar uma imagem oficial do Node.js com suporte ao Yarn
FROM node:18

# Define o diretório de trabalho no container
WORKDIR /app

# Copia apenas os arquivos necessários para instalar dependências
COPY package.json yarn.lock prisma/ ./

# Instala as dependências do projeto
RUN yarn install

# Copia o restante do código do projeto
COPY . .

# Expor a porta padrão do Next.js (3000)
EXPOSE 3000

# Comando para iniciar o servidor de desenvolvimento
CMD ["yarn", "dev"]

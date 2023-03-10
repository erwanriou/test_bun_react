FROM jarredsumner/bun:edge

WORKDIR /app
COPY package.json .
COPY bun.lockb .

RUN bun install

COPY . .

CMD ["bun", "dev"]

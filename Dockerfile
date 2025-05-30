FROM ruby:3.3.5

# Instalar dependências
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# Configurar diretório de trabalho
WORKDIR /rails

# Instalar gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copiar código
COPY . .

# Crie diretórios necessários e ajuste permissões
RUN mkdir -p tmp/pids tmp/sockets tmp/cache log public/uploads
RUN chown -R 1000:1000 tmp log public/uploads && chmod -R 777 tmp log public/uploads

# Expor porta
EXPOSE 3000

# Comando para iniciar o servidor
CMD ["rails", "server", "-b", "0.0.0.0"] 
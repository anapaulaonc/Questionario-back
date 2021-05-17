# Questionario-back
Trabalho MP
## Guia de instalação

## Ubuntu
```sh
sudo apt update
sudo apt install curl gnupg2 build-essential
```
Rvm
```sh
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
```
Feche e reabra o terminal para prosseguir
```sh
rvm install 2.7.0
rvm --default use 2.7.0
```

Gems
```sh
gem install bundler
gem install rails
```

PostgreSQL

LINUX
```sh
sudo apt update
sudo apt install postgresql postgresql-contrib
```

MAC
Instalação aqui: https://www.postgresql.org/download/macosx/

WINDOWS
Instalação aqui: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads


Começar a rodar
```sh
bundle install
rails db:reset
rails db:migrate
rails s
```


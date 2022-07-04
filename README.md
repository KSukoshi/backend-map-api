# Projeto Teste - Clínicas

## Tecnologias

- Ruby 3.0.0
- Rails 6.1.6
- Rack-Cors
- PostgreSQL 14

### Instalação
Clone o projeto em uma pasta de sua preferência, configure uma role em seu postgres acessando o console pelo `su - postgres` ou `sudo su - postgres`, ao iniciar o console do postgres, uma alternativa bem simples para criar a role é pelo criador de usuário interatico, rode o comando `createuser --interactive --pwprompt`, após rodar o comando, você precisa descrever o nome do seu role, uma senha opcional e se você precisa de um usuário super user. ao finalizar o registro, vá para o `backend-map-api/config/database.yml` e insira o seu role na linha 23 `username:`, caso tenha optado pela senha, insira na linha 26 `password` a sua senha ou remova esta linha caso esteja usando a role sem senha.

Ao finalizar a configuração do `database.yml` abra o console na pasta raiz do projeto e execute o comando `rake db:create` para criar os bancos de dados e após isso rode `rake db:migrate` para rodar as migrations e criar as tabelas.

Caso precise fazer alguma alteração no cors caso for rodar o projeto front-end em outro domínio que não seja o localhost, vá para `backend-map-api/config/initializers/cors.rb` e mude o URL caso precisar. Se for rodar o projeto front-end no localhost, é só roda-lo após o serviço do backend-api.

Pronto! Já está tudo configurado, abra o console na pasta raiz do projeto e rode o comando `rails s`

O endpoint das clínicas é o `http://localhost:3000/api/v1/clinics`


### Funções

O Backend API disponibiliza, guarda e valida os dados das clínicas usadas no projeto front-end, além de separar as informações de uma única pesquisa do front-end em múltiplos campos para a manipulação dos dados.

### Instalação - Parte 2

Agora é só fazer a instalação do aplicativo front-end
Link: https://github.com/KSukoshi/front-end-map

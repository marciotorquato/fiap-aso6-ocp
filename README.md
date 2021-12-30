# Grupo 14
## Criação do projeto
Depois de logado, criar o projeto dentro do openshift executando o comando:
```sh
oc new-project fiap-aso-grupo14 --display-name 'fiap-aso-grupo14'
```

## Criação e configuração do Banco de Dados
Ao executar o comando, serão criados:
- Secrets contendo as informações de **user, password, database service name e database name**;
- Criação do **Service**;
- Criação do **Persistent Volume Claim**;
- Criação do **Deployment Config**, contendo configurações a apontamentos para a secret anteriormente criada;

Executar o comando:
```sh
oc create -f https://raw.githubusercontent.com/marciotorquato/fiap-aso6-ocp/main/database-blog.yml
```

## Criação do Deployment do Blog
Ao executar o comando, serão criados:
- ConfigMap contendo a variavel **BLOG_SITE_NAME** com o nome do Grupo e a variavel **BLOG_BANNER_COLOR** contendo a cor do topo do Blog que foi definido como azul;
- Crialçao do **Deployment** com suas configurações e tambem os referentes apontamentos para as variaveis contidas no ConfigMap e Secret que foram anteriormente criadas;
- Criação do **Service**;
- Criação do **Route**;

Executar o comando:
```sh
oc create -f https://raw.githubusercontent.com/marciotorquato/fiap-aso6-ocp/main/deployment-blog.yml
```

## Criação do Horizontal Pod Autoscalers (HPA)
Criar o Horizontal **Pod Autoscalers (HPA)** dentro do openshift executando o comando:
```sh
oc create -f https://raw.githubusercontent.com/marciotorquato/fiap-aso6-ocp/main/hpa-scale.yml
```

## LINKS
- O link do projeto Blog se encontra disponivel em:
https://github.com/openshift-instruqt/blog-django-py

- A imagem utilizada para fazer o deployment se encontra disponivel em:
https://hub.docker.com/r/openshiftkatacoda/blog-django-py

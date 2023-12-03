# org-stats

Esse repositório é um fork do [caarlos0/org-stats](https://github.com/caarlos0/org-stats).

Ao rodar o script original, ele não consegue finalizar a execução, 
isso porque a nossa organização é muito grande e o script não consegue lidar corretamente com o rate limit do github.

A solução que conseguimos aqui não parece ser a ideal mas funciona muito bem para o nosso caso
(principalmente pela falta de experiência com go), por isso
optamos pelo fork ao invés de abrir um PR no repositório original.

## Rodando o script

Para rodar o script o seu usuário precisa ter acesso a todos os repositórios da organização.

Então você vai precisar gerar o token de acesso do github com as permissões `Full control of private repositories`.

Com o token em mãos, basta buildar a imagem docker e executar o container:

```bash
docker build -t quero-edu/org-stats .
```

```bash
docker run -it -e GITHUB_TOKEN=SEU_TOKEN quero-edu/org-stats
```

O script vai demorar alguns bons minutos para rodar, mas no final ele vai gerar a saida via stdout
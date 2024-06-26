<h1 align="center">LocalStack - Terraform</h1>

<p align="center">
  <img alt="AWS" src="https://img.shields.io/static/v1?label=LocalStack&message=AWS&color=8257E5&labelColor=000000"  />
  <img alt="License" src="https://img.shields.io/static/v1?label=license&message=MIT&color=49AA26&labelColor=000000">
</p>

<p align="center">
  <a href="#-projeto">Projeto</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-tecnologias">Tecnologias</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-roadmap">Roadmap</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#-referências">Referências</a>
</p>

<p align="center">
  <img alt="AWS" src="data/localstack.png">
</p>

## 💡 Projeto

- Host a static website locally using Simple Storage Service (S3) and Terraform with LocalStack

## ✨ Pré-requisitos

Comunidade LocalStack
Terraforma
awslocal

## 👣 Roadmap

- [ ] Instalar Terraform
- [ ] Executar container LocalStack
    - [ ] Criar um bucket chamado `testwebsite`
    - [ ] Habilitar a hospedagem de site estático
    - [ ] Anexar uma política ao bucket para permitir o acesso público e seu conteúdo
- [ ] Criar um site estático para exemplo
- [ ] Hospedando um site estático usando S3
    - [ ] Fazer upload dos arquivos para o bucket

## Commands

```bash
aws --endpoint-url=http://localhost:4566 s3api create-bucket --bucket testwebsite
aws --endpoint-url=http://localhost:4566 s3api put-bucket-policy --bucket testwebsite --policy file://bucket_policy.json 
aws --endpoint-url=http://localhost:4566 s3 sync ./ s3://testwebsite
aws --endpoint-url=http://localhost:4566 s3 website s3://testwebsite/ --index-document index.html --error-document error.html
```

## 📄 Referências

- [LocalStack](https://www.localstack.cloud/)
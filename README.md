# RFID Tracking - Desafio Java Advanced (4º Sprint)

## 🏍️ Visão Geral do Projeto

Este projeto é uma solução de rastreamento e gestão de motos utilizando a tecnologia RFID (Radio-Frequency Identification). Desenvolvido como parte do desafio final da disciplina de Java Advanced, o sistema permite o cadastro de filiais, motos e o registro de eventos de rastreamento, demonstrando a aplicação de conceitos avançados de desenvolvimento Java com Spring Boot.

## 🛠️ Tecnologias Utilizadas

O projeto foi construído com foco em **Clean Code** e **Arquitetura em Camadas (MVC)**, utilizando as seguintes tecnologias:

| Categoria | Tecnologia | Descrição |
| :--- | :--- | :--- |
| **Backend** | Java 11+ | Linguagem de programação principal. |
| **Framework** | Spring Boot 2.7.x | Facilita a criação de aplicações robustas e *stand-alone*. |
| **Segurança** | Spring Security | Implementação de autenticação e autorização baseada em papéis (`USER` e `ADMIN`). |
| **Persistência** | Spring Data JPA / Hibernate | Gerenciamento de dados e mapeamento Objeto-Relacional. |
| **Banco de Dados** | PostgreSQL | Banco de dados relacional persistente, ideal para ambientes de produção como o Render. |
| **Migração** | Flyway | Gerenciamento de versionamento e migração do esquema do banco de dados. |
| **Frontend** | Thymeleaf | Motor de templates para renderização de páginas HTML dinâmicas. |

## 🔑 Conceitos de Java Advanced Aplicados

*   **Segurança (Spring Security):** Implementação de formulário de login customizado e controle de acesso baseado em papéis (`hasRole(\'ADMIN\')`, `hasAnyRole(\'USER\', \'ADMIN\')`).
*   **Persistência (JPA/Flyway):** Uso de Flyway para garantir que o esquema do banco de dados e os dados iniciais (incluindo usuários) sejam criados de forma controlada e idempotente.
*   **Padrão DTO (Data Transfer Object):** Uso de DTOs para desacoplar as entidades de domínio das camadas de apresentação e serviço.
*   **Validação (Bean Validation):** Uso de anotações como `@NotNull`, `@Size` para garantir a integridade dos dados de entrada.

## 🚀 Como Executar (Localmente)

Para rodar o projeto localmente, você precisará ter o **Java 11+** e o **Maven** instalados.

1.  **Clone o repositório:**
    ```bash
    git clone https://github.com/lucasmirandaleite/Challengejavasprint4.git
    cd Challengejavasprint4/ChallengeJavaSprint4
    ```
2.  **Execute a aplicação:**
    ```bash
    ./mvnw spring-boot:run
    ```
    *A aplicação será iniciada no perfil `dev`, utilizando o banco de dados H2 em memória.*

3.  **Acesse:**
    Abra seu navegador em `http://localhost:8080/login`

## ☁️ Deploy no Render (Produção)

O projeto está configurado para ser implantado no Render, utilizando o perfil `prod` e um banco de dados PostgreSQL.

1.  **Banco de Dados:** É necessário um serviço de **PostgreSQL** no Render.
2.  **Variáveis de Ambiente:** As seguintes variáveis devem ser configuradas no serviço de aplicação para a conexão com o banco de dados:
    *   `SPRING_DATASOURCE_URL`
    *   `SPRING_DATASOURCE_USERNAME`
    *   `SPRING_DATASOURCE_PASSWORD`

## 👤 Credenciais de Acesso (Padrão)

O Flyway insere automaticamente os seguintes usuários no banco de dados:

| Usuário | Senha | Perfil |
| :---: | :---: | :---: |
| **user** | **password** | USER |
| **admin** | **adminpass** | ADMIN |

---
*Este README foi gerado para auxiliar na entrega do desafio final.*
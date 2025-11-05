# Challenge Java Sprint 3: RFID Tracking System

## 👨‍💻 Integrantes
- Lucas Miranda Leite RM:555161
- Gusthavo Daniel De Souza RM:554681
- Guilhereme Damasio Roselli RM:555873

---

Este projeto é uma aplicação web completa desenvolvida em Java utilizando o framework Spring Boot, focada em rastreamento de RFID para a solução proposta à Mottu.

## 🚀 Melhorias e Correções (Feedback da Avaliação)

O código foi refatorado para atender aos seguintes pontos de feedback e boas práticas de desenvolvimento:

1.  **Injeção de Dependência:** O uso do anti-padrão `@Autowired` em campos foi completamente substituído pela **Injeção de Dependência via Construtor**, seguindo a recomendação do Spring para melhor testabilidade e clareza.
2.  **Entidades JPA:** Os métodos `equals()` e `hashCode()` foram implementados nas entidades (`Filial`, `Moto`, `RegistroRFID`), utilizando a chave primária como base, conforme a boa prática para objetos persistentes.
3.  **Organização de Pacotes:** A estrutura de pacotes foi consolidada em `com.example.rfidtracking.*`, removendo pacotes de exemplo desnecessários (`org.example`) para garantir uma organização coesa e profissional.

## 📋 Requisitos Técnicos Atendidos

O projeto atende integralmente aos requisitos técnicos da entrega:

### 1. Thymeleaf (Frontend)
*   **Páginas HTML:** Implementadas para listar, criar, editar e excluir registros (`Moto` e `RegistroRFID`).
*   **Fragmentos:** Utilização de fragmentos (`cabecalho`, `rodape`, `menu`) para evitar repetição de código.

### 2. Flyway (Controle de Versão do Banco de Dados)
*   **Versionamento:** Configuração completa do Flyway.
*   **Quatro Versões de Migração:**
    *   `V1__Create_initial_tables.sql`: Criação das tabelas principais (`Filial`, `Moto`, `RegistroRFID`).
    *   `V2__Insert_initial_data.sql`: Inserção de dados iniciais de `Filial` e `Moto`.
    *   `V3__Create_user_table.sql`: Criação das tabelas de usuários e perfis (`user`, `role`, `user_role`).
    *   `V4__Insert_default_users.sql`: Inserção de usuários padrão (`admin` e `user`) com diferentes perfis.

### 3. Spring Security (Autenticação e Controle de Acesso)
*   **Sistema de Autenticação:** Implementado via formulário (`/login` e `/logout`).
*   **Perfis de Usuário:** Implementação de dois tipos de usuário com permissões diferentes:
    *   **ADMIN:** Acesso total (Ex: `/motos/**` e `/registros/**`).
    *   **USER:** Acesso limitado (Ex: apenas a listagem de registros).
*   **Proteção de Rotas:** Configuração de autorização baseada no perfil do usuário no `SecurityConfig.java`.

### 4. Funcionalidades Completas
*   **Fluxos Funcionais:** Os fluxos de CRUD para `Moto` e `RegistroRFID` estão implementados.

## 🛠️ Como Executar a Aplicação

### Pré-requisitos
*   Java 11+
*   Maven 3.6+

### Passos
1.  **Clone o Repositório:**
    ```bash
    # O repositório foi clonado em: https://github.com/lucasmirandaleite/Challengejavasprint3
    # Se estiver em um ambiente local, use:
    # git clone https://github.com/lucasmirandaleite/Challengejavasprint3
    # cd Challengejavasprint3
    ```
2.  **Compile e Execute:**
    ```bash
    # Compila o projeto e cria o JAR
    mvn clean install -DskipTests
    
    # Executa o JAR
    java -jar target/rfid-tracking-1.0.0.jar
    ```
3.  **Acesse a Aplicação:**
    *   A aplicação estará disponível em `http://localhost:8080`.
    *   Você será redirecionado automaticamente para a página de login.

### Credenciais de Teste
| Usuário | Senha | Perfil | Acesso |
| :--- | :--- | :--- | :--- |
| **admin** | **adminpass** | ADMIN | Total (CRUD e Listagem) |
| **user** | **userpass** | USER | Limitado (Apenas Listagem) |

## 💡 Observações Adicionais

Este projeto foi refatorado utilizando ferramentas de Inteligência Artificial para análise de código e aplicação de boas práticas (refatoração de injeção de dependência e implementação de `equals`/`hashCode`). A IA foi utilizada como um assistente de refatoração para elevar a qualidade do código.


# Nexus Support - Config Server

![Java](https://img.shields.io/badge/Java-24-blue?logo=java&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring_Boot-3.5.3-green?logo=springboot&logoColor=white)
![Spring Cloud](https://img.shields.io/badge/Spring_Cloud-2025.0.0-blueviolet?logo=spring&logoColor=white)
![Config Server](https://img.shields.io/badge/Spring_Config_Server-4.3.0-orange?logo=spring&logoColor=white)
![Microservices](https://img.shields.io/badge/Architecture-Microservices-lightgrey)

---

## 📚 Visão Geral do Projeto

Este repositório faz parte do projeto acadêmico **Nexus Support**, desenvolvido para a disciplina **DIM0614 -
Programação Distribuída** na **UFRN**. O Nexus Support é um **sistema de suporte distribuído** que visa otimizar a
gestão de chamados (tickets) utilizando uma arquitetura de microsserviços e inteligência artificial.

### Função do Config Server:

O **Config Server** é responsável por fornecer **configurações centralizadas** para todos os microsserviços do ecossistema.
Ao invés de cada serviço gerenciar seus próprios arquivos de configuração, o Config Server oferece uma fonte única e centralizada,
facilitando a manutenção, versionamento e atualização das configurações — especialmente útil em ambientes distribuídos.

Ele integra-se ao **Eureka Discovery Server**, permitindo que outros serviços o localizem dinamicamente, e está
preparado para **monitoramento e rastreamento distribuído** via **Micrometer**, **Prometheus** e **Zipkin**.

## 🚀 Tecnologias Utilizadas

Este serviço é construído sobre um stack confiável e moderno, utilizando as seguintes tecnologias:

* **Spring Boot (3.5.3):** Framework principal para o desenvolvimento do ecossistema.
* **Java (24):** Linguagem de programação utilizada.
* **Spring Cloud (2025.0.0):** Para orquestração e padrões de microsserviços, incluindo:
    * `spring-cloud-starter-config`: **Gerenciamento Centralizado de Configurações**.
    * `spring-cloud-starter-netflix-eureka-client`: **Descoberta de Serviços** (para registrar-se e encontrar outros
      serviços como o Config Server, Gateway, etc.).
* **Micrometer Tracing & Zipkin:** Para **observabilidade e rastreamento distribuído**, fundamental em uma arquitetura
  de microsserviços.
* **Prometheus:** Para coleta de métricas e monitoramento.
* **Lombok:** Reduzir código boilerplate.
* **Spring Boot Actuator:** Para monitoramento e gerenciamento da aplicação em produção.
* **Spring Boot DevTools:** Ferramentas para desenvolvimento rápido.

## ⚙️ Funcionalidades

* 📁 **Centralização de Configurações:** Garante que todos os microsserviços obtenham suas configurações de forma unificada.
* ♻️ **Integração com Eureka:** Facilita o descobrimento automático pelo restante da malha de serviços.
* 📊 **Observabilidade:** Endpoints de métricas e tracing para facilitar análise e debug em produção.
* 🔄 **Atualização de Configurações:** Possibilita recarregar configurações com *actuator refresh endpoints* (se aplicável nos clientes).

## 📈 Monitoramento e Observabilidade

Este serviço está configurado para fornecer informações operacionais e rastreamento:

* **Actuator:** Endpoints disponíveis em `/actuator` para inspeção da saúde e métricas.
* **Prometheus:** Métricas em `/actuator/prometheus`, prontas para scraping por servidores Prometheus.
* **Zipkin:** Integrado ao Micrometer Tracing, envia traces automaticamente para um servidor Zipkin configurado.

## 🗺️ Outros Repositórios do Nexus Support

Este serviço faz parte de um ecossistema distribuído. Veja outros módulos do Nexus Support:

* 🧠 **[Nexus Support - AI Service](https://github.com/franklinclf/nexus-spring-cloud-ai)**: Microsserviço de triagem inteligente com IA e RAG.
* 🔍 **[Nexus Support - Eureka Discovery Service](https://github.com/franklinclf/nexus-spring-cloud-discovery)**: Serviço de descoberta de microsserviços.
* 🧭 **[Nexus Support - Gateway](https://github.com/franklinclf/nexus-spring-cloud-gateway)**: Gateway de entrada para o sistema.
* 🔗 **[Nexus Support - Ticket Service + MCP](https://github.com/franklinclf/nexus-spring-cloud-mcp)**: Serviço que lida com operações e persistências de tickets, expondo rotas consumidas tanto por IA (MCP) ou requisições REST padrão.
* ☁️ **[Nexus Support - Serverless Function](https://github.com/franklinclf/nexus-spring-cloud-serverless)**: Componente serverless para geração de relatórios e tarefas específicas.

---
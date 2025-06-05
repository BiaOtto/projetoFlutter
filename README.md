# 🌹 O Cravo e a Rosa

Este aplicativo foi desenvolvido como parte da atividade final da unidade curricular **Programação de Aplicativos Mobile**. O projeto foi realizado em grupo, com o objetivo de aplicar na prática todos os conhecimentos adquiridos ao longo do semestre com Flutter e Dart.

A proposta era construir um aplicativo funcional em Flutter, seguindo os seguintes requisitos: tela de login com autenticação real, múltiplas telas funcionais, persistência de dados local ou na nuvem, integração com API, aplicação de técnicas de segurança, estruturação e organização de código e documentação completa.

Nosso grupo escolheu como tema um diário pessoal, chamado **“O Cravo e a Rosa”** — uma proposta leve e simbólica para explorar recursos de cadastro, exibição e armazenamento de registros pessoais.

---

## Tecnologias Utilizadas

- Flutter & Dart  
- Firebase (para autenticação)  
- Flutter Secure Storage (para dados locais com segurança)  
- Git e GitHub  
- Android Studio e VS Code  

---

## Funcionalidades Implementadas

- Tela de login com autenticação no Firebase  
- Cadastro e visualização de entradas no diário  
- Interface responsiva com múltiplas telas  
- Tema personalizado com cores suaves  
- Persistência de dados  
- Organização modular do código  

---

## Estrutura do Projeto

```
lib/
├── main.dart
├── models/
│   └── bouquet.dart
├── providers/
│   └── bouquet_provider.dart
├── screens/
│   ├── bouquet_detail_screen.dart
│   ├── bouquet_selection_screen.dart
│   ├── favorites_screen.dart
│   ├── login_screen.dart
│   ├── register_screen.dart
│   └── welcome_screen.dart
├── widgets/
│   └── bouquet_card.dart
```

---

## Como Rodar o Projeto

1. Clone o repositório:  
```bash
git clone https://github.com/BiaOtto/projetoFlutter.git
```

2. Acesse a pasta do projeto:  
```bash
cd projetoFlutter
```

3. Instale as dependências:  
```bash
flutter pub get
```

4. Execute o projeto:  
```bash
flutter run
```

> Certifique-se de que seu ambiente Flutter está corretamente configurado com `flutter doctor`.

---

## Aprendizados

Durante o desenvolvimento, aprendemos a:  
- Criar e organizar um app Flutter do zero  
- Trabalhar com autenticação e segurança  
- Usar boas práticas de estrutura e componentização  
- Colaborar em equipe com Git  
- Aplicar conceitos reais de persistência de dados e design de interface  

---

## Contribuições

Este projeto foi feito com foco em aprendizado e colaboração. Estamos abertas a sugestões de melhorias!

---

## Licença

Este projeto está sob a Licença MIT.

---

## Equipe de Desenvolvimento

- Larissa de Lima Calcanho  
- Bruna Zimmermann  
- Emily Mader Peres

# 🌸 O Cravo e a Rosa

**O Cravo e a Rosa** é um aplicativo mobile desenvolvido como projeto final da disciplina de **Programação de Aplicativos Mobile**, utilizando Flutter e Dart. A proposta do projeto é simular um diário digital com foco em experiências pessoais e florais, promovendo um ambiente leve, agradável e seguro para registrar memórias.

---

## 🎯 Objetivo

Aplicar na prática os conhecimentos adquiridos ao longo do semestre sobre desenvolvimento de aplicativos móveis, incluindo autenticação, persistência de dados, design responsivo, organização de código e colaboração com Git.

---

## 📱 Funcionalidades

- Tela de boas-vindas com navegação fluida
- Autenticação de usuário com Firebase (login e cadastro)
- Seleção e visualização de buquês (com imagens e detalhes)
- Lista de favoritos
- Armazenamento seguro com `flutter_secure_storage`
- Interface personalizada com temática floral
- Organização modular do código (models, providers, screens, widgets)

---

## 🧰 Tecnologias Utilizadas

- **Flutter & Dart**
- **Firebase Authentication**
- **Flutter Secure Storage**
- **Provider (Gerenciamento de estado)**
- **Android Studio / Visual Studio Code**
- **Git & GitHub**

---

## 📁 Estrutura do Projeto

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

## 📦 Assets

```
assets/
├── Girassol.jpg
├── Lirio.jpg
├── Logo.png
├── Rosa.jpg
└── Tulipa.jpg
```

---

## ▶️ Como Rodar o Projeto

1. Clone o repositório:
```bash
git clone https://github.com/BiaOtto/projetoFlutter.git
```

2. Acesse o diretório:
```bash
cd projetoFlutter
```

3. Instale as dependências:
```bash
flutter pub get
```

4. Execute o app:
```bash
flutter run
```

---

## 📚 Aprendizados

- Estruturar e organizar um app Flutter do zero
- Implementar autenticação segura com Firebase
- Utilizar gerenciamento de estado com Provider
- Persistência segura com Flutter Secure Storage
- Criar interfaces bonitas e responsivas
- Trabalhar com versionamento e colaboração usando Git

---

## 🤝 Contribuições

Este projeto foi feito com foco em aprendizado e colaboração. Sugestões e melhorias são sempre bem-vindas!

---

## 🧾 Licença

Distribuído sob a Licença MIT.

---

## 👩‍💻 Equipe de Desenvolvimento

- **Larissa de Lima Calcanho**
- **Bruna Zimmermann**
- **Emily Mader Peres**
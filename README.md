# My Dotfiles

Персональные конфигурационные файлы для macOS development environment.

## Что включено

- **Zsh конфигурация** - `.zshrc` с Oh My Zsh и Powerlevel10k темой
- **Powerlevel10k настройки** - `.p10k.zsh` кастомная конфигурация промпта
- **Git конфигурация** - `.gitconfig` с пользовательскими настройками
- **Global gitignore** - игнорирование файлов на уровне системы
- **VS Code настройки** - базовые настройки редактора

## Установка

```bash
# Клонировать репозиторий
git clone https://github.com/artemsokolov/dotfiles.git ~/dotfiles

# Перейти в директорию
cd ~/dotfiles

# Запустить установку
./install.sh
```

## Обновление dotfiles

После изменения конфигурационных файлов:

```bash
cd ~/dotfiles
./update.sh
```

## Требования

- macOS
- Zsh (должен быть установлен как shell по умолчанию)
- Oh My Zsh
- Powerlevel10k тема
- Git

## Структура

```
dotfiles/
├── .zshrc              # Основная конфигурация Zsh
├── .p10k.zsh           # Powerlevel10k тема
├── .zprofile           # Zsh профиль
├── .gitconfig          # Git конфигурация
├── config/
│   └── git/
│       └── ignore      # Global gitignore
├── vscode/
│   └── argv.json       # VS Code настройки
├── install.sh          # Скрипт установки
├── update.sh           # Скрипт обновления
└── README.md           # Этот файл
```
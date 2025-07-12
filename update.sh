#!/bin/bash

echo "Обновление dotfiles..."

# Копировать актуальные конфигурационные файлы
cp ~/.zshrc .
cp ~/.p10k.zsh .
cp ~/.zprofile .
cp ~/.gitconfig .
cp ~/.config/git/ignore config/git/
cp ~/.vscode/argv.json vscode/ 2>/dev/null || echo "VS Code argv.json не найден"

# Добавить изменения в git
git add .

# Проверить есть ли изменения
if git diff --staged --quiet; then
    echo "📝 Изменений не обнаружено"
else
    # Создать коммит с текущей датой
    git commit -m "Update dotfiles $(date +'%Y-%m-%d %H:%M')

🤖 Generated with [Claude Code](https://claude.ai/code)

Co-Authored-By: Claude <noreply@anthropic.com>"
    
    # Отправить на GitHub
    git push
    
    echo "✅ Dotfiles обновлены и загружены на GitHub!"
fi
#!/bin/bash

# Активация виртуального окружения Python
source .venv/bin/activate

# Установка переменных для подключения к базе данных
DB_USER=""
DB_HOST=""
DB_PORT=""
DB_NAME=""
# Установка PYTHON PATH
PYTHON_PATH=""
# Проверка на наличие значений для подключения к БД
if [[ -z "$DB_USER" || -z "$DB_HOST" || -z "$DB_PORT" || -z "$DB_NAME" ]]; then
    echo "One or more database connection parameters are missing."
    exit 1
fi

# Запрос пароля пользователя
read -s -p "Enter password for user $DB_USER: " DB_PASSWORD
echo

# Тестирование подключения к базе данных и проверка наличия таблицы version
VERSION=$(psql "postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME" -c "SELECT version_id FROM version LIMIT 1;" | tail -n +3 | head -n 1 2>/dev/null)
if [[ $? -ne 0 ]]; then
    VERSION=0
fi

# Проверка наличия каталогов обновлений
if [[ -z $(ls -d upd_* 2>/dev/null) ]]; then
    echo "No update directories found."
    exit 0
fi

# Перебор каталогов upd_x, начиная с upd_$VERSION+1 и заканчивая последним каталогом upd_x
for i in $(seq $((VERSION + 1)) $(ls -d upd_* | sort -V | tail -n 1 | sed 's/upd_//')); do
    update_dir="upd_$i"

    if [ -d "$update_dir" ]; then
        # Проверка, есть ли файлы в каталоге
        if [ -z "$(ls -A "$update_dir")" ]; then
            echo "No files to process in $update_dir."
            continue
        fi

        # Получение списка всех файлов в каталоге
        files=( "$update_dir"/* )

        # Запуск файлов в порядке сортировки по имени
        for f in "${files[@]}"; do
            filename="${f##*/}"

            # Обработка SQL-файлов
            if [[ ${filename} =~ \.sql$ ]]; then
                if psql "postgresql://$DB_USER:$DB_PASSWORD@$DB_HOST:$DB_PORT/$DB_NAME" -f "$f" -w; then
                    echo "Executed $f successfully."
                else
                    echo "Failed to execute $f."
                    exit 1
                fi
            # Обработка Python-файлов
            elif [[ ${filename} =~ \.py$ ]]; then
                # Добавление директории с Python-скриптами в PYTHONPATH
                export PYTHONPATH="$PYTHON_PATH:$PYTHONPATH"

                if python3 "$f"; then
                    echo "Executed $f successfully."
                else
                    echo "Failed to execute $f."
                    exit 1
                fi
            fi
        done
    fi
done

# Очистка истории выполнения команд в консоли
history -c
history -w

# Деактивация виртуального окружения и выход
deactivate
exit 0

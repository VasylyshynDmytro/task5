#!/bin/bash

echo "Користувачі з /bin/bash у файлі /etc/passwd:"

while IFS=: read -r username password uid gid home shell; do
    if [ "$shell" = "/bin/bash" ]; then
        echo "Ім'я користувача: $username"
    fi
done < /etc/passwd

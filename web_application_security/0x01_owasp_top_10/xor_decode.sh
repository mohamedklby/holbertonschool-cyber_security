#!/bin/bash

# Vérification de l’argument
if [ -z "$1" ]; then
  echo "Usage: $0 '{xor}BASE64_STRING' ou 'BASE64_STRING'"
  exit 1
fi

input="$1"

# Enlever le préfixe {xor} s’il existe
clean=${input#\{xor\}}

# Boucle sur les caractères ASCII imprimables
for key in $(seq 32 126); do
  result=$(echo "$clean" | base64 -d 2>/dev/null | \
    perl -pe "s/(.)/chr(ord(\$1)^$key)/ge")

  # Affiche tout (pas de filtre bloquant)
  printf "clé: 0x%x (%s) → %s\n" \
    "$key" \
    "$(printf \\$(printf '%03o' $key))" \
    "$result"
done


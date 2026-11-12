#!/usr/bin/env bash
# Rode na pasta do site (onde ficam os .html). Corrige as OUTRAS páginas:
#  1) troca o placeholder [DOMÍNIO DO SITE] pelo domínio real (canonical, og:url, JSON-LD);
#  2) troca links para index.html por "/" (evita URL duplicada com a raiz).
# Faz backup .bak de cada arquivo alterado.
set -e
DOM="https://lvesteticaautomotiva.vercel.app"
for f in *.html; do
  [ "$f" = "index.html" ] && continue
  case "$f" in google*.html) continue;; esac
  cp "$f" "$f.bak"
  sed -i \
    -e "s#\[DOMÍNIO DO SITE\]#$DOM#g" \
    -e 's#href="index\.html#href="/#g' \
    -e "s#$DOM/index\.html#$DOM/#g" \
    "$f"
  echo "ok: $f"
done
grep -l "DOMÍNIO DO SITE" *.html 2>/dev/null && echo "ATENÇÃO: ainda há placeholder nos arquivos acima" || echo "Nenhum placeholder restante."

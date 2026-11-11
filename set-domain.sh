#!/bin/bash
# Uso: ./set-domain.sh https://www.seudominio.com.br
# Troca o marcador [DOMÍNIO DO SITE] pela URL final em canonical, Open Graph, JSON-LD, sitemap e robots.
[ -z "$1" ] && { echo "Informe o domínio. Ex.: ./set-domain.sh https://www.seudominio.com.br"; exit 1; }
D="${1%/}"
sed -i "s|\[DOMÍNIO DO SITE\]|$D|g" *.html sitemap.xml robots.txt
echo "Domínio aplicado: $D"

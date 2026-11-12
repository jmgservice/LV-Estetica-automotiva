# Guia Google — LV Estética Automotiva

Domínio: https://lvesteticaautomotiva.vercel.app

## 1. Publicar as correções (ordem)
1. Substitua o `index.html` pelo novo e coloque na raiz: `sitemap.xml`, `robots.txt`, `vercel.json`.
2. Na pasta do site, rode `./seo-fix.sh` (corrige o placeholder `[DOMÍNIO DO SITE]` e os links `index.html` nas outras páginas).
3. Faça o deploy na Vercel.
4. Confira no navegador: `/robots.txt`, `/sitemap.xml` e se `/index.html` redireciona para `/`.

## 2. Google Search Console
O arquivo de verificação `google3edec0acf087720c.html` já está citado no site: mantenha-o publicado na raiz.
1. search.google.com/search-console → **Adicionar propriedade** → **Prefixo do URL** → `https://lvesteticaautomotiva.vercel.app/`.
2. Método **Arquivo HTML** → **Verificar** (só funciona se o arquivo abrir em `/google3edec0acf087720c.html`).
3. **Sitemaps** → digite `sitemap.xml` → Enviar.
4. **Inspeção de URL** → cole a home → **Solicitar indexação**. Repita para as páginas de lavagem e Jet Cera.
5. Depois de alguns dias: **Páginas** (indexação) e **Desempenho** (consultas "estética automotiva Passo Fundo" etc.).

## 3. Google Analytics 4
1. analytics.google.com → criar propriedade → fluxo de dados **Web** com a URL do site → copiar o ID `G-XXXXXXXXXX`.
2. No `<head>` do `index.html` (e nas demais páginas) há um bloco **comentado** do GA4. Remova o `<!--` e o `-->` e troque `G-XXXXXXXXXX` pelo seu ID.
3. O site já dispara estes eventos: `whatsapp_click` (links do WhatsApp e formulário de orçamento), `agendar_click` (botões para `agendar.html`) e `phone_click` (ligação).
4. No GA4: **Administrador → Eventos** → marque `whatsapp_click`, `agendar_click` e `phone_click` como **evento-chave** (conversão). Eles aparecem na lista depois do primeiro disparo (até 24 h).
5. Teste: **Relatórios → Tempo real** e clique em um botão de WhatsApp no site.

## 4. Perfil da Empresa no Google (principal fator do "perto de mim")
1. business.google.com → criar perfil → categoria principal **Lavagem de automóveis** (ou "Serviço de estética automotiva", se aparecer).
2. Use exatamente: nome **LV Estética Automotiva**, endereço **Rua Uruguai, 2704 - Centro, Passo Fundo - RS**, telefone **(54) 99265-7516**, site `https://lvesteticaautomotiva.vercel.app/`, horários iguais aos do site (seg-sex 8h-12h e 13h-18h, sáb 9h-12h, dom fechado).
3. Verifique o perfil (vídeo/cartão/telefone, conforme o Google pedir).
4. Adicione os serviços com os valores reais, fotos reais (as da galeria) e peça avaliações a clientes de verdade. Responda todas.
5. Em **Site/Link de agendamento**, use `https://lvesteticaautomotiva.vercel.app/agendar.html`.
6. Mantenha nome, endereço e telefone (NAP) idênticos no Instagram e em qualquer outro cadastro.

## 5. Checagens depois do deploy
- Search Console → **Inspeção de URL** → "Testar URL ativa" na home: a canonical deve ser `https://lvesteticaautomotiva.vercel.app/`.
- Teste de dados estruturados: search.google.com/test/rich-results (cole a URL) e validator.schema.org.
- PageSpeed: pagespeed.web.dev (mobile) na home.

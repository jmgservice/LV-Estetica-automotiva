# Relatório SEO Local — LV Estética Automotiva (Passo Fundo–RS)

## O que foi feito
- **Título/descrição/H1 da home** com intenção local: "LV Lavagem e Estética Automotiva em Passo Fundo - RS". H1 único, no lugar do rótulo pequeno acima do slogan (o slogan e o visual do hero foram mantidos). Botão "Agendar Horário" adicionado ao hero.
- **Canonical, Open Graph, Twitter Card** em todas as páginas, com imagem social 1200×630 (`img/og-lv-estetica-automotiva.jpg`).
- **JSON-LD**: `WebSite` + `AutoWash` (nome, endereço, telefone, horários reais, áreas atendidas, catálogo de serviços com preços do site, Instagram) na home; `BreadcrumbList` nas demais; `Service` nas páginas de serviço. Removido o `geo` com texto "[INFORMAÇÃO NECESSÁRIA]" (inválido).
- **2 páginas novas** com conteúdo próprio: `lavagem-automotiva-passo-fundo.html` e `jet-cera-passo-fundo.html`, com links internos entre si, home e agendamento.
- **FAQ visível** na home (8 perguntas, todas respondidas só com dados do site) + menu "Dúvidas".
- **Imagens**: 9 fotos da galeria + logo convertidas para WebP (de ~3,8 MB para ~2,2 MB no total, a maior era um PNG de 3,5 MB), nomes e ALTs descritivos, `width/height`, lazy-loading. **Placas dos carros borradas.** O pôster do hero deixou de vir do Unsplash.
- **Técnico**: CSS extraído para `styles.css` (compartilhado), `sitemap.xml`, `robots.txt`, hierarquia H1→H2→H3 corrigida (h4 soltos viraram h3), link do WhatsApp do rodapé corrigido, telefone e endereço clicáveis (tel: e Google Maps), NAP consistente no rodapé.
- **Medição**: eventos `whatsapp_click`, `phone_click`, `agendar_click` (enviados ao GA4/GTM quando instalados) e snippet GA4 comentado no `<head>`.
- `agendar.html`: title/description/H1 locais, canonical, OG, breadcrumb.

## Palavras-chave trabalhadas (só serviços que a LV oferece no site)
lavagem automotiva em Passo Fundo · lavagem de carro Passo Fundo · lavagem de SUV / camionete Passo Fundo · Jet Cera Passo Fundo · estética automotiva Passo Fundo · lavagem de moto Passo Fundo · quanto custa lavar o carro em Passo Fundo · agendar lavagem Passo Fundo.

## Decisões que fogem do prompt (e por quê)
- **Polimento, vitrificação, higienização, cristalização, detalhamento, revitalização**: o site só vende lavagem, Jet Cera e adicional de sujeira pesada. Criar páginas/títulos para serviços que a LV não lista seria enganoso e arriscaria o Google Meu Negócio. Se a LV faz esses serviços, me passe descrição e preço e eu crio as páginas.
- **Sem avaliações/nota no schema**: não há fonte verificável.

## Pendências do proprietário (bloqueiam ou limitam o resultado)
1. **Domínio**: ainda é o marcador `[DOMÍNIO DO SITE]`. Rode `./set-domain.sh https://www.seudominio.com.br` e publique. Sem isso canonical/sitemap/OG ficam inválidos.
2. **`politica-privacidade.html`**: o arquivo enviado era idêntico ao `index.html` (mesmo hash). Envie o arquivo correto; enquanto isso o link do rodapé não funciona.
3. **Arquivos citados no código que não vieram**: `hero-video.mp4` e `civic-sobre.jpg`.
4. **Depoimentos da home**: um fala de "vitrificação na moto", serviço que não está no site, e nenhum tem fonte. Troque por avaliações reais (Google/Instagram) ou remova — depoimentos inventados podem gerar problema com o Google e com o consumidor.
5. **Agendamento** (`agendar.html`): grava só no navegador do cliente (localStorage). Dois clientes podem marcar o mesmo horário e a LV só fica sabendo pelo WhatsApp. Precisa de banco de dados para valer como sistema.
6. **Coordenadas (latitude/longitude)** e **Facebook** (ícone sem link): informar para completar schema/rodapé.
7. **Promoção de novembro**: título, FAQ e preços citam a promoção; atualizar em dezembro.
8. **Google Search Console**: o arquivo `google3edec0acf087720c.html` deve ficar na raiz; depois enviar o `sitemap.xml`.
9. **Google Meu Negócio** (maior alavanca para "perto de mim"): categoria principal "Lavagem de automóveis"; mesmo nome, endereço (Rua Uruguai, 2704 - Centro) e telefone do site; horários iguais; serviços e preços cadastrados; fotos próprias; link para o site; publicar toda semana; pedir avaliações a clientes reais (link direto, sem incentivo em troca de nota) e responder todas.

## Próximos passos
- Publicar → Search Console → enviar sitemap → pedir indexação das 4 URLs.
- Conteúdo (1/mês, só após termos fotos/casos reais): "Onde lavar o carro em Passo Fundo?", "Quanto custa lavar o carro em Passo Fundo", "Jet Cera: vale a pena?", "Como lavar o carro sem riscar a pintura".
- Acompanhar mensalmente: cliques, impressões, CTR e posição média (Search Console) para: *lavagem automotiva passo fundo*, *lavagem de carro passo fundo*, *estética automotiva passo fundo*, *jet cera passo fundo*, *lavagem suv passo fundo*; mais cliques no WhatsApp (GA4) e ligações/rotas no Meu Negócio.
- Ninguém pode prometer posição no Google; esse trabalho melhora a base técnica e local, o ranking depende também do perfil no Maps e das avaliações.

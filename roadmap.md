# Roadmap

- [x] Investigar fonte AC Odds (jogos estão no HTML: 88 / 120 / 3 encontrados)
- [x] Design system dark + verde neon (styles.css)
- [x] Captura server-side das 3 páginas do AC Odds, sem limite, com diagnóstico
- [x] Dashboard (/) com métricas, filtros de duração, analisar confronto, próximos jogos
- [x] Página Jogos (/jogos) com busca e filtros
- [x] Página Análise (/analise) baseada apenas em dados reais da fonte
- [x] Página Diagnóstico (/diagnostico): encontrados / válidos / futuros / duplicados + lista
- [x] Navegação inferior (Home, Jogos, Análises, Diagnóstico)
- [x] Referência visual "Resultado final base" (imagem 2): chips de liga/status, campos Equipa/Jogador
- [x] Corrigir a página Análises e validar a captura completa e todas as telas no navegador
- [x] Integrar odds 1X2 reais do BetBallers para Battle 8 com associação segura à AC Odds
- [x] Adicionar cálculos transparentes e validar a análise sem fabricar dados
- [x] Integrar Bumbet como fonte principal de odds 1X2 e manter BetBallers como reserva
- [x] Integrar BetsAPI (token real configurado) — odds 1X2 e histórico das três modalidades
- [x] Calcular cada palpite com histórico real das últimas 5 partidas, sequência de vitórias e desempenho recente
- [x] Implementar fórmula matemática das últimas 5, sequência, gols, confronto direto, confiança e valor esperado
- [x] Permitir inserir odds 1X2 manualmente em cada jogo para uso único na análise
- [x] Fonte de resultados reais integrada (BetsAPI): 855 resultados, 278 jogos com 5 partidas por lado

- [x] Carregamento rápido dos jogos (cache + atualização em segundo plano)
- [x] Remover entrada manual de odds
- [x] Tela Palpites: ranking de entradas por probabilidade calculada (últimas 5 + H2H + gols + sequência + odds reais)
- [x] Corrigir partidas sem histórico/odds por falha de enriquecimento e validar a cobertura real
- [x] Impedir a etapa final de odds de apagar históricos já carregados e preservar dados reais entre atualizações parciais
- [x] Impedir respostas sem odds em acessos compartilhados aguardando o enriquecimento completo e repetindo apenas enquanto pendente
- [x] Separar atualização rápida de odds do histórico pesado, com cache curto e deduplicação para mercados recém-abertos
- [x] Publicar odds da API contratada antes das fontes reservas para impedir timeout na primeira abertura
- [x] Corrigir paginação de odds pelo total real da API e reconsultar jogos sem mercado a cada 5s nos 7 minutos finais
- [x] Impedir resposta parcial de odds de encerrar a consulta antes das últimas 5 partidas
- [x] Evitar bloqueio 429 preservando a cota da API para histórico e consultando odds apenas perto do início

- [x] Pipeline por EVENT_ID/PLAYER_ID: identidade preservada, histórico por jogador, odds por evento, estágios paralelos com timeouts próprios, estados LOADING/PARTIAL/READY/ERROR e publicação incremental do histórico.
- [x] Corrigir automaticamente entradas encerradas como green/red, recuperando EVENT_ID persistido inclusive para registros antigos.
- Anti-draw filter (liberado/cautela/bloqueado), only liberado counted
- [x] Permitir cancelar a entrada pelo mesmo botão dos Palpites sem que o registro automático a recrie
- [x] Regressão palpites zerados: diagnóstico por jogo na aba Palpites + proteção contra calibração que trava a faixa

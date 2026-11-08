# Diretrizes do Projeto

## Arquitetura

- Trate `data.lua`, `data-final-fixes.lua` e `control.lua` na raiz como os entrypoints dos estagios. Siga os `require` ativos antes de presumir que um modulo esta carregado.
- Mantenha prototipos nos estagios de dados e logica de eventos/runtime no estagio de controle. Nao use APIs como `game` ou `script` em estagios de dados.
- `control.lua` atualmente nao carrega os modulos em `control/`; varias tecnologias, blocos e outros arquivos tambem nao estao ativos. Nao ative nem remova arquivos como limpeza incidental: confirme o comportamento e a compatibilidade primeiro.
- `data-final-fixes.lua` e um estagio separado: ele inicializa a LDA-LIB novamente e cria receitas/itens genericos para desbloqueios `DSP-` sem receita correspondente.
- Consulte [info.json](info.json) antes de alterar compatibilidade: o projeto exige Factorio 2.1, `base >= 2.1.24`, Space Age e `LDA-LIB >= 0.0.17`.

## Documentacao

- Use [Buildings](docs/Buildings.md), [Items](docs/Items.md), [Technologies](docs/Technologies.md), [Upgrades](docs/Upgrades.md) e [table techs](docs/table%20techs.md) como referencia do jogo original, nao como definicao autoritativa dos prototipos deste mod. Confirme nomes, receitas, desbloqueios e compatibilidade no codigo ativo e nos dados do Factorio.
- PDFs de Buildings, Items e Upgrades estao em `docs/`; nao existe PDF de Technologies no repositorio. Use os guias Markdown como ponto de partida e consulte HTML/PDF quando precisar do contexto original.
- Mantenha separadas a documentacao original do DSP e a copia de referencia da LDA-LIB em `docs/factorio-LDA-LIB/`.
- Antes de alterar conteudo relacionado, consulte [changelog.txt](changelog.txt) para historico de compatibilidade e erros conhecidos.

## Uso da LDA-LIB

- Antes de criar utilitario ou padrao reutilizavel, procure a funcionalidade na LDA-LIB. Consulte [README](docs/factorio-LDA-LIB/README.md), [USAGE](docs/factorio-LDA-LIB/USAGE.md), exemplos e os modulos relevantes; confirme assinatura e disponibilidade na versao minima de [info.json](info.json).
- Se a biblioteca ja oferecer a funcionalidade, reutilize-a em vez de duplicar codigo. Nao aumente a versao minima da dependencia sem requisito explicito.
- Trate `docs/factorio-LDA-LIB/` como referencia somente leitura; nunca a edite nem apresente mudancas nela como contribuicoes oficiais a biblioteca.
- Se a funcionalidade necessaria nao existir, informe ao usuario que e uma **request feature to LDA-LIB** e registre-a em [request-feature.md](request-feature.md), seguindo o modelo existente. Mantenha `Pendente de envio` ate confirmar o envio; nao afirme que foi enviada sem evidencia.
- Ate existir uma versao compativel da biblioteca, implemente apenas o helper local necessario em `utils/`, pequeno e isolado. Quando a API oficial estiver disponivel, migre os consumidores e remova o helper se nao houver outros usos.

## Convencoes Lua e Assets

- Siga os modulos proximos: `require` explicito, responsabilidade pequena e tabelas de retorno quando os chamadores consumirem uma API de modulo.
- Use builders da LDA-LIB e helpers existentes quando adequados; mantenha a construcao dos prototipos compativel com o estagio que os carrega.
- Antes de escolher um caminho de imagem, confira os assets e o uso no prototipo: imagens de entidades ficam em `graphics/entities/` e imagens de tecnologias em `graphics/technology/`.
- Preserve as convencoes e os chamadores existentes. Valide entradas e estados de jogadores, entidades, superficies e GUI antes de operar; trate falhas explicitamente.

## Desenvolvimento e Validacao

- Prefira mudancas pequenas e focadas. Preserve compatibilidade com Factorio 2.1, Space Age e a versao minima da LDA-LIB; nao altere metadados de compatibilidade sem requisito explicito.
- Preserve alteracoes staged ou unstaged que nao pertencam a tarefa. Nao adicione segredos e nao leia arquivos locais como `.env` sem necessidade.
- Atualize a documentacao relacionada quando uma mudanca alterar comportamento, configuracao ou instrucoes.
- O projeto nao define comando de teste ou lint. Se Lua estiver disponivel, `lua -e "assert(loadfile([[path/to/file.lua]]))"` verifica sintaxe, mas nao valida comportamento no Factorio. Para mudancas de prototipos/runtime, valide no jogo somente quando o executavel e os caminhos locais de dados estiverem disponiveis.
- Nao execute `autogit.cmd` como validacao: ele adiciona todas as mudancas, cria commit e faz push. `autoupdate.cmd` tambem nao e teste automatizado: empacota, copia para a instalacao local e inicia o Factorio; pode alterar `.env` se `API_KEY` estiver ausente. Execute esses fluxos apenas quando forem explicitamente necessarios e seus efeitos forem desejados.

## Referencias

- Metadados e dependencias: [info.json](info.json)
- Historico de mudancas: [changelog.txt](changelog.txt)
- Registro e modelo de pedidos para a LDA-LIB: [request-feature.md](request-feature.md)
- Referencia da LDA-LIB: [README](docs/factorio-LDA-LIB/README.md), [USAGE](docs/factorio-LDA-LIB/USAGE.md), guias de [builders](docs/factorio-LDA-LIB/docs/builders.md), [runtime](docs/factorio-LDA-LIB/docs/runtime.md), [utils](docs/factorio-LDA-LIB/docs/utils.md) e [space](docs/factorio-LDA-LIB/docs/space.md)
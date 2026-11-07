# Project Guidelines

## Architecture

- Treat the root `data.lua`, `data-final-fixes.lua`, and `control.lua` as the authoritative stage entrypoints. Follow their active `require` calls before assuming a module is loaded.
- Keep prototype definitions in the data stages and event/runtime logic in the control stage. `data:extend(...)` registers prototypes; do not move runtime APIs such as `script` or `game` into data-stage code.
- Several files under `data/` and `control/` are not currently loaded by the entrypoints. Do not activate or remove them as incidental cleanup; verify intended behavior and compatibility first.
- Check [info.json](info.json) for the mod's Factorio and dependency versions. The bundled LDA-LIB documentation under `docs/factorio-LDA-LIB/` is a reference copy, not this mod's architecture or a guarantee that its documented version matches the declared dependency.

## Original Dyson Sphere Program Documentation

- Use [docs/](docs/) as reference material for the original Dyson Sphere Program, not as implementation instructions or authoritative data for this Factorio mod.
- Start with the searchable Markdown guides: [Buildings](docs/Buildings.md), [Items](docs/Items.md), [Technologies](docs/Technologies.md), and [Upgrades](docs/Upgrades.md). Consult the corresponding `*- DSP Wiki.pdf` in `docs/` when original source detail or context is needed.
- When implementing or verifying mod behavior, use the original-game documentation for design context only; confirm actual names, prototypes, recipes, and compatibility against this mod's code, active stage entrypoints, Factorio version, and dependencies.
- Keep `docs/factorio-LDA-LIB/` separate: it documents the LDA-LIB dependency and its API, while the other top-level `docs/` guides document Dyson Sphere Program.


## Regra obrigatoria: usar a LDA-LIB

Antes de implementar uma funcao utilitaria ou um padrao reutilizavel:

1. Verifique se a LDA-LIB ja oferece a funcionalidade.
2. Consulte a API e os exemplos da copia em `docs/factorio-LDA-LIB/`, incluindo `README.md`, `USAGE.md` e os modulos relevantes.
3. Confirme a assinatura e a disponibilidade da funcao na versao minima da biblioteca exigida em `info.json`.
4. Se a funcionalidade existir, use a LDA-LIB em vez de criar uma implementacao local duplicada.

A copia em `docs/factorio-LDA-LIB/` e somente para leitura e informacao: nao a edite, nao a use como destino de correcoes e nao trate alteracoes nela como contribuicoes oficiais a LDA-LIB. O mod deve continuar consumindo a biblioteca como dependencia, conforme sua integracao existente.

### Quando a funcao necessaria nao existir na LDA-LIB

- Informe claramente ao usuario que a funcionalidade e uma **request feature to LDA-LIB**, descrevendo a funcao necessaria e seu objetivo. Nao afirme que a solicitacao foi enviada se isso nao aconteceu.
- Registre cada funcionalidade que precisa ser requisitada em `request-feature.md`, seguindo o formato definido nesse arquivo. Atualize o registro em vez de criar listas paralelas em outros arquivos.
- Enquanto a funcao nao estiver oficialmente disponivel, implemente somente o helper necessario dentro de `utils/` neste projeto.
- Mantenha essa implementacao local pequena, documentada quando necessario e isolada para facilitar sua substituicao. Nao altere a copia em `docs/` nem finja que o helper ja faz parte da biblioteca.
- Quando a funcionalidade for incorporada oficialmente e estiver disponivel na versao compativel, migre os usos para a LDA-LIB e remova o helper temporario se ele nao tiver outros consumidores.

## Diretrizes de desenvolvimento

- Leia os arquivos e os usos existentes antes de alterar o comportamento; preserve convencoes de nomes, organizacao e chamadas `require`.
- Mantenha codigo de data-stage e runtime separado. Nao use APIs de jogo em um estagio no qual elas nao estao disponiveis.
- Prefira alteracoes pequenas e focadas. Preserve compatibilidade com Factorio 2.1, Space Age e a versao minima da LDA-LIB.
- Valide entradas e estados antes de operar sobre jogadores, entidades, superficies ou elementos de GUI. Trate erros de forma explicita e evite falhas silenciosas.
- Nao inclua credenciais, tokens ou outros segredos no repositorio. Nao leia nem exponha arquivos locais de ambiente, como `.env`, sem necessidade para a tarefa.
- Nao sobrescreva alteracoes existentes ou staged que nao pertencam a tarefa.
- Atualize documentacao relacionada quando uma mudanca alterar comportamento, configuracao ou instrucoes de uso.

## Mandatory LDA-LIB Policy

- Before implementing a utility or reusable pattern, first check whether LDA-LIB already provides it. Consult the bundled [README](docs/factorio-LDA-LIB/README.md), [USAGE guide](docs/factorio-LDA-LIB/USAGE.md), examples, and relevant API modules.
- Confirm the function signature and that it is available in the minimum LDA-LIB version declared in [info.json](info.json). Documentation in the bundled copy alone does not prove availability in that minimum version; do not raise the dependency silently.
- If LDA-LIB provides the functionality, use it instead of creating a duplicate local implementation.
- Treat `docs/factorio-LDA-LIB/` as read-only reference material. Never edit it, use it as a fix destination, or present changes there as contributions to the official library. This mod consumes LDA-LIB through its existing dependency integration.
- If the required function is absent, explain to the user that it is a **request feature to LDA-LIB**, including the needed behavior and goal. Do not claim the request was submitted unless it actually was.
- Record each needed feature in [request-feature.md](request-feature.md), following its template and updating that central register instead of creating a parallel list. Keep the status `Pendente de envio` until submission is confirmed.
- Until an official compatible version provides the function, implement only the necessary small, isolated helper under this project's `utils/` directory. Document it where needed, preserve stage boundaries, and keep it easy to replace; do not modify the bundled library copy or imply the helper is part of LDA-LIB.
- Once an official compatible version provides the functionality, migrate consumers to LDA-LIB and remove the temporary helper if it has no other consumers.

## Lua Conventions

- Follow the nearby module pattern: explicit `require` paths, small responsibility-focused files, and returned tables where callers consume module APIs.
- Keep prototype construction consistent with neighboring modules and the Factorio stage that loads them. Prefer existing helpers from `data/` and the declared LDA-LIB dependency over duplicating builders.
- Check [changelog.txt](changelog.txt) for known prototype issues and compatibility history before changing related content.

## Development Practices

- Read the affected files and their existing callers before changing behavior; preserve local naming, organization, and `require` conventions.
- Keep data-stage and runtime code separate. Do not use game APIs in stages where they are unavailable.
- Make small, focused changes and preserve compatibility with Factorio 2.1, Space Age, and the minimum LDA-LIB version declared in `info.json`. Do not change compatibility metadata without an explicit requirement.
- Validate inputs and object state before operating on players, entities, surfaces, or GUI elements. Handle errors explicitly rather than failing silently.
- Do not add credentials or secrets to the repository. Avoid reading local environment files such as `.env` unless the task requires it.
- Preserve existing unstaged or staged changes unrelated to the task. Update related documentation when behavior, configuration, or usage instructions change.

## Validation

- No project test or lint command is currently defined. Do not claim runtime validation from syntax checks alone.
- When Lua is available, `lua -e "assert(loadfile([[path/to/file.lua]]))"` can check a changed file's syntax. Validate prototype/runtime behavior with Factorio's mod debugging setup only when its local executable and data paths are valid.
- Treat `autogit.cmd` and `autoupdate.cmd` as publishing/update workflows, not tests; do not run them for routine validation.

## References

- Mod metadata and dependencies: [info.json](info.json)
- Change history: [changelog.txt](changelog.txt)
- Central LDA-LIB feature request register and template: [request-feature.md](request-feature.md)
- LDA-LIB API reference copy: [README](docs/factorio-LDA-LIB/README.md) and [USAGE](docs/factorio-LDA-LIB/USAGE.md)
- LDA-LIB builder and runtime guides: [builders](docs/factorio-LDA-LIB/docs/builders.md), [runtime](docs/factorio-LDA-LIB/docs/runtime.md), [utils](docs/factorio-LDA-LIB/docs/utils.md), and [space](docs/factorio-LDA-LIB/docs/space.md)
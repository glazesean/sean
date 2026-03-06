# Sean Health Knowledge System

This repo is Sean's working system for capturing personal health information, storing private raw inputs locally, and generating structured research and analysis with Claude Code.

It is not just a document folder and not just a codebase. It mixes:

- Sean-authored source material
- private machine-local data
- derived analyses that can be regenerated
- shared agent tooling, templates, and research workflows

## How Sean Uses This Repo

Typical use looks like this:

1. Sean records observations, symptoms, questionnaire answers, corrections, and context in `self-reports/`.
2. Raw exports and sensitive documents go into `data/` on Sean's machine.
3. Claude Code or scripts transform those inputs into curated summaries, entity notes, and analyses.
4. Regenerable outputs are written to `derived/` or `docs/entities/`.
5. The collaborator updates the shared research infrastructure in `.claude/`, `docs/`, and `scripts/`.

The key idea is that Sean's own words stay preserved, while analysis stays separate and overwriteable.

## File Structure

### Source of Truth

- `self-reports/`
  Sean's raw voice. Use this for transcripts, symptom descriptions, questionnaire answers, corrections, and personal observations.
- `self-reports/private/`
  Local-only version of the same idea for entries Sean does not want shared. This path is gitignored by the main repo and can keep its own local history.
- `data/`
  Raw private inputs such as lab exports, PDFs, downloaded records, email exports, and API pulls. This is machine-local working data, not polished output.

### Derived and Curated

- `derived/`
  Regenerable analysis outputs. Safe to update, rewrite, or restructure as scripts and methods improve.
- `docs/entities/`
  Curated structured notes derived from Sean's raw inputs. This is where the agent can organize knowledge after reading `self-reports/`.

### Shared Research Infrastructure

- `docs/`
  Questionnaires, examples, templates, and research scaffolding.
- `scripts/`
  Analysis and pipeline code.
- `.claude/`
  Skills, rules, hooks, and runbooks that shape how Claude Code works in this repo.

## Practical Rules

- Put Sean-authored health information in `self-reports/`, not in ad hoc notes elsewhere.
- Treat `self-reports/` as append-only source material. Do not rewrite Sean's account into something cleaner and pretend it is the original.
- Put highly sensitive or local-only material in `self-reports/private/` or `data/`, depending on whether it is narrative input or raw records.
- Put downloads and raw records in `data/`, not in `docs/`.
- Put analyses in `derived/` if they can be regenerated.
- Put reusable instructions, templates, and examples in `docs/`.

## Mental Model

Use this distinction consistently:

- `self-reports/` = what Sean said
- `data/` = what systems exported
- `derived/` = what the agent concluded
- `docs/` = reusable scaffolding

That separation matters. It keeps original human input distinct from machine-collected records and distinct from agent interpretation.

## Collaboration Model

Two people maintain the repo:

- Sean uses it locally, adds self-reports, stores local private data, and runs Claude Code.
- A remote collaborator maintains shared scripts, templates, and agent infrastructure.

In practice:

- Sean-owned source material lives in `self-reports/`.
- Private local machine data lives in `data/`.
- Shared methodology lives in `.claude/`, `docs/`, and `scripts/`.

## Quick Start

If Sean is using the repo directly:

1. Add new personal observations to `self-reports/`.
2. Place raw records and exports in `data/`.
3. Ask Claude Code to analyze, summarize, or curate those inputs.
4. Expect outputs in `derived/` or `docs/entities/`.

If the collaborator is updating the system:

1. Add or refine workflows in `.claude/`.
2. Update templates and questionnaires in `docs/`.
3. Add or improve automation in `scripts/`.

## Guiding Principle

This repo should make it obvious:

- where Sean speaks for himself
- where raw evidence lives
- where the agent is allowed to transform material
- what can be safely regenerated

If a folder name stops communicating that clearly, it should be renamed.

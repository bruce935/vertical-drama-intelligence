# Vertical Drama Intelligence

[![skills.sh](https://skills.sh/b/bruce935/vertical-drama-intelligence)](https://skills.sh/bruce935/vertical-drama-intelligence)

**Stop your AI drama from forgetting its own story.**

A free, open-source production system for serialized AI vertical drama: plan the series, control continuity, structure episodes, translate story intent into production requirements, and catch story drift before it spreads across the season.

> Turn a rough story idea into a production-ready serialized drama system — without losing track of truth, character knowledge, continuity, or production constraints.

**Community Edition:** Free & Open Source  
**Release:** V0.4.1  
**Core Architecture:** V0.4 — Frozen  
**License:** MIT

---

## Quick Start

### Install with the Skills CLI

```bash
npx skills add bruce935/vertical-drama-intelligence --skill vertical-drama-intelligence
```

The Skills CLI supports multiple AI coding/agent environments and records anonymous install telemetry used by the skills.sh leaderboard.

### Or clone the repository

```bash
git clone https://github.com/bruce935/vertical-drama-intelligence.git
```

Main Skill definition: `SKILL.md`  
Skill-directory copy: `skills/vertical-drama-intelligence/SKILL.md`

Then give your agent a real serialized-drama task.

Example requests:

> Develop this rough idea into a vertical drama series. First evaluate whether it has enough story engine to sustain multiple episodes, then identify the protagonist desire, escalation path, hooks, unresolved obligations, and major continuity risks.

> Check this episode against the existing story state. Flag anything the characters know without learning it, any inference being promoted to fact, and any contradiction with locked continuity.

> Convert this episode into a Production Contract for AI video generation, then define what QC must verify and what may safely vary.

---

## The Problem It Solves

Generating one AI scene is relatively easy. Maintaining a serialized story across many episodes is much harder.

Common failures include:

- a character suddenly knowing information they never learned;
- a suspicion silently becoming established fact;
- episode 7 contradicting episode 2;
- unresolved promises disappearing from the story;
- AI-generated output changing locked story facts;
- visual or behavioral continuity drifting;
- regenerating an entire scene when only one layer actually failed;
- incomplete QC being treated as final approval.

Vertical Drama Intelligence makes those states explicit and controllable.

---

## What You Can Do With It

`ROUGH IDEA`

↓

`CONCEPT GREENLIGHT`

↓

`SERIES BIBLE`

↓

`EPISODE CONTRACT`

↓

`CONTINUITY STATE`

↓

`PRODUCTION CONTRACT`

↓

`GENERATION`

↓

`QC`

↓

`TARGETED REGENERATION`

↓

`STATE UPDATE`

Use the full workflow or only the stages where structured reasoning is needed.

---

## What Is Vertical Drama Intelligence?

Vertical Drama Intelligence is an Agent Skill for developing, evaluating, structuring, continuity-checking, and production-planning serialized vertical dramas.

It is designed for vertical dramas, microdramas, short-drama series, AI-generated dramas, manga dramas, serialized short-form stories, and other multi-episode narrative projects.

It is **not just a script generator**. It acts as an intelligence layer between the story idea and the production process.

It helps an AI agent reason about what the story means, what each character actually knows, what must remain consistent, what production is allowed to change, and whether generated output is ready to move forward.

---

## Core Capabilities

### Story Intelligence

Evaluate whether a concept can sustain serialized drama and identify protagonist desire, conflict, stakes, escalation capacity, serial engine, hooks, reveals, cliffhangers, promises/payoffs, story obligations, and episode-to-episode pressure.

### Continuity Intelligence

Track story truth, canon, character knowledge, character belief, claims, evidence, relationships, timeline, physical state, props, locations, mystery state, and unresolved obligations.

### Evidence-Aware Reasoning

The Skill distinguishes what is established from what is merely believed or inferred.

Truth states:

`CONFIRMED` · `OBSERVED` · `CALCULATED` · `INFERRED` · `ASSUMED` · `PENDING`

A character accusation, suspicion, clue, or production artifact does not automatically become story truth.

### Production Contracts

Translate story intent into production requirements: what must happen, what must remain true, what may vary, what must not happen, required assets, model freedom, continuity constraints, and what QC must verify.

> **Generated output does not own story truth.**

### Production QC & Targeted Regeneration

Evaluate generated output against the Production Contract, identify continuity/knowledge/evidence/visual/behavioral failures, locate the failure layer, and make the smallest safe correction instead of blindly regenerating everything.

Root-cause categories:

`STORY_SPEC` · `CONTINUITY_STATE` · `PRODUCTION_CONTRACT` · `ASSET` · `MODEL_ADAPTER` · `GENERATION` · `EDIT` · `QC` · `UNKNOWN`

---

## A Small Example

Suppose episode 3 contains a clue that makes the protagonist suspicious of another character.

A conventional generation workflow may accidentally write episode 4 as if the accusation were already proven.

Vertical Drama Intelligence keeps the states separate:

```text
OBSERVED: The protagonist saw the suspicious clue.
INFERRED: The protagonist thinks Character B may be responsible.
PENDING: Character B's actual responsibility is not established.
```

That distinction can then flow into the Episode Contract, Continuity State, Production Contract, and QC checks. Repetition does not turn an inference into truth.

---

## Source of Truth

When production artifacts disagree:

`USER-CONFIRMED TRUTH`

↓

`LOCKED SERIES BIBLE`

↓

`LOCKED CONTINUITY STATE`

↓

`LOCKED EPISODE CONTRACT`

↓

`LOCKED SCENE CONTRACT`

↓

`SHOT CONTRACT`

↓

`MODEL OUTPUT`

Lower-level generated output must not silently overwrite higher-level story truth.

---

## Production Modes

**PROTOTYPE** is for experimentation, exploration, and incomplete production testing.

**FINAL** is for determining whether output is eligible for final approval. If required evidence has not been checked, the correct state is `NOT_ELIGIBLE_FOR_FINAL_APPROVAL` — not approval and not rejection.

---

## Templates Included

The Community Edition includes reusable templates for:

- `series-bible.md`
- `episode-contract.md`
- `continuity-state.md`
- `production-contract.md`
- `qc-report.md`

---

## Worked Examples

Three examples are included:

- `examples/example-01-concept-greenlight.md` — concept qualification, story engine, stakes, escalation, hooks, obligations, and readiness.
- `examples/example-02-continuity-diagnosis.md` — what failed, why, root cause, smallest safe correction, and what must be preserved.
- `examples/example-03-production-qc.md` — generated-output evaluation, QC scope, targeted regeneration, regression control, and approval eligibility.

---

## Project Structure

| Path | Purpose |
|---|---|
| `SKILL.md` | Main Agent Skill |
| `references/` | Story, continuity, and production reasoning specifications |
| `templates/` | Reusable production artifacts |
| `examples/` | Worked examples |
| `evals/evals.json` | Evaluation and regression suite |
| `scripts/` | Validation utilities |
| `skills/vertical-drama-intelligence/` | Skill-directory distribution copy |
| `test-runs/` | Selected formal regression and closure records |
| `CHANGELOG.md` | Release history |

---

## Validation

V0.4.1 includes:

| Validation Area | Result |
|---|---:|
| Evaluation cases | 31 |
| Blind regression cases | 10 |
| Hard fail conditions | 15 |
| Validator PASS | 39 |
| Validator WARNING | 0 |
| Validator FAIL | 0 |
| Overall | **PASS** |

Regression testing covers truth versus belief, accusation versus knowledge, evidence integrity, identity uncertainty, semantic contract sufficiency, root-cause attribution, bluff semantics, final QC completeness, approval eligibility, and decision consistency.

See `scripts/validate-v04.ps1` for the validator.

---

## Community Edition and Pro

This repository is the **Community Edition** and remains free under the MIT License.

For creators and small production teams that need a more complete production operating system, **Vertical Drama Intelligence Pro — Early Access** adds the full production workflow, expanded production templates/workspaces, complete case-study material, production readiness and season handoff, model-adapter guidance, and advanced QC/targeted-regeneration workflows.

Learn about Pro at https://praxiory.com

The Community Edition is intentionally useful on its own. Pro is for running the system more deeply on real productions rather than merely reading the methodology.

---

## Who It Is For

Best suited to AI vertical-drama and microdrama creators, serialized short-form storytellers, and small AI production teams that use LLMs/agents together with video-generation tools.

It is model-agnostic and is not an AI video model, one-click finished-drama generator, publishing platform, or guarantee of audience/retention performance.

---

## Current Status

V0.4.1 is the public Community Edition. The core architecture is frozen while practical production evidence and user feedback are collected.

Future architecture changes should be driven by real production failures rather than additional theoretical complexity.

---

## Design Principle

**Evidence → Method → Original Implementation**

Research can inform the method. The implementation should remain original, explicit, testable, and production-oriented.

---

## License

MIT License. See `LICENSE` for details.

# Vertical Drama Intelligence

**An Agent Skill for building serialized vertical dramas with story intelligence, continuity control, evidence-aware reasoning, production contracts, and production QC.**

> Turn a story idea into a production-ready serialized drama system — without losing track of truth, character knowledge, continuity, or production constraints.

**Release:** V0.4.1  
**Core Architecture:** V0.4 — Frozen  
**Status:** Public Preview  
**License:** MIT

---

## What Is Vertical Drama Intelligence?

Vertical Drama Intelligence is an Agent Skill for developing, evaluating, structuring, continuity-checking, and production-planning serialized vertical dramas.

It is designed for:

- vertical dramas,
- microdramas,
- short-drama series,
- AI-generated dramas,
- manga dramas,
- serialized short-form stories,
- and other multi-episode narrative projects.

It is **not just a script generator**.

The Skill acts as an intelligence layer between the story idea and the production process.

It helps an AI agent reason about what the story means, what each character actually knows, what must remain consistent, what production is allowed to change, and whether generated output is ready to move forward.

---

## Why It Exists

Generating one scene with AI is relatively easy.

Maintaining a serialized story across dozens of episodes is much harder.

Long-running AI-assisted drama production can gradually introduce problems such as:

- characters knowing information they never learned,
- suspicion silently becoming established fact,
- contradictions between episodes,
- forgotten promises and unresolved story obligations,
- evidence being interpreted more strongly than it supports,
- production output changing locked story facts,
- visual or behavioral continuity drifting,
- failed scenes being regenerated without identifying the real cause,
- and incomplete QC being mistaken for final approval.

Vertical Drama Intelligence is designed to make those states explicit and controllable.

---

## Core Capabilities

### Story Intelligence

Evaluate whether a concept can sustain serialized drama and identify:

- protagonist desire,
- conflict,
- stakes,
- escalation capacity,
- serial engine,
- hooks,
- reveals,
- cliffhangers,
- promises and payoffs,
- story obligations,
- and episode-to-episode pressure.

### Continuity Intelligence

Track state across the series, including:

- story truth,
- canon,
- character knowledge,
- character belief,
- claims,
- evidence,
- relationships,
- timeline,
- physical state,
- props,
- locations,
- mystery state,
- and unresolved obligations.

### Evidence-Aware Reasoning

The Skill distinguishes between what is established and what is merely believed or inferred.

Truth states include:

`CONFIRMED` · `OBSERVED` · `CALCULATED` · `INFERRED` · `ASSUMED` · `PENDING`

This prevents a character accusation, suspicion, clue, or production artifact from automatically becoming story truth.

### Production Contracts

Translate story intent into production requirements.

A Production Contract defines:

- what must happen,
- what must remain true,
- what may vary,
- what must not happen,
- required assets,
- model freedom,
- continuity constraints,
- and what QC must verify.

A core rule is:

> **Generated output does not own story truth.**

### Production QC

Evaluate generated output against the actual production contract.

QC can identify:

- continuity violations,
- unsupported reveals,
- knowledge-state errors,
- evidence errors,
- missing required actions,
- visual continuity failures,
- behavioral inconsistencies,
- incomplete verification,
- and production-readiness problems.

### Root-Cause Diagnosis

When something fails, the Skill attempts to identify the actual failure layer instead of blindly regenerating everything.

Root-cause categories include:

`STORY_SPEC`  
`CONTINUITY_STATE`  
`PRODUCTION_CONTRACT`  
`ASSET`  
`MODEL_ADAPTER`  
`GENERATION`  
`EDIT`  
`QC`  
`UNKNOWN`

This enables targeted correction and regeneration.

---

## Core Architecture

The current V0.4 architecture is organized around four major systems:

**Story Intelligence**  
→ determines what the story needs to do.

**Continuity System**  
→ determines what is currently true, known, believed, established, and unresolved.

**Production Contracts**  
→ translate narrative intent into enforceable production requirements.

**QC & Targeted Regeneration**  
→ determine whether generated output satisfies those requirements and what should be corrected when it does not.

The architecture is currently frozen while the project moves into real production testing.

---

## Typical Workflow

A production workflow may look like this:

`IDEA`

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

The Skill can be used across the entire workflow or only at the stages where structured reasoning is needed.

---

## Source of Truth

When multiple production artifacts disagree, the Skill uses an explicit precedence model:

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

Vertical Drama Intelligence distinguishes between two production modes:

### PROTOTYPE

Used for experimentation, exploration, and incomplete production testing.

Some evidence or production scopes may intentionally remain unchecked.

### FINAL

Used when determining whether output is eligible for final approval.

Mandatory applicable QC scopes must be accounted for.

If required evidence has not been checked, the correct state is:

`NOT_ELIGIBLE_FOR_FINAL_APPROVAL`

—not approval and not rejection.

---

## Installation

The main Skill definition is:

`SKILL.md`

For systems that use a Skill directory structure, the synchronized copy is available at:

`skills/vertical-drama-intelligence/SKILL.md`

Copy the Skill into the appropriate skills directory for your Agent or AI development environment.

The Skill is designed to be model-agnostic. It does not require a specific language model or video generation model.

---

## Usage

Use the Skill when the task involves serialized narrative reasoning, continuity, production planning, or production QC.

Example requests:

> Develop this idea into a vertical drama series and determine whether the concept has enough story engine for 40 episodes.

> Build a Series Bible and define what is canon, assumed, pending, and still unresolved.

> Check whether this episode accidentally gives a character information they have not learned.

> Convert this episode into a Production Contract for AI video generation.

> Compare this generated scene against the Production Contract and identify the smallest safe correction.

> Diagnose whether this failure comes from the story specification, continuity state, production contract, generation, or edit.

The Skill should not be invoked merely for generic one-off creative writing when serialized structure, continuity reasoning, evidence control, or production planning is not materially relevant.

---

## Templates

The project includes production-oriented templates for:

- `series-bible.md`
- `episode-contract.md`
- `continuity-state.md`
- `production-contract.md`
- `qc-report.md`

These templates turn the reasoning architecture into reusable production artifacts.

---

## Examples

Three worked examples are currently included.

### Concept Greenlight

`examples/example-01-concept-greenlight.md`

Demonstrates how a minimal idea is evaluated for:

- story engine,
- protagonist pressure,
- stakes,
- escalation,
- hooks,
- obligations,
- and development readiness.

### Continuity Diagnosis

`examples/example-02-continuity-diagnosis.md`

Demonstrates how continuity failures are diagnosed by identifying:

- what failed,
- why it failed,
- the root cause,
- the smallest safe correction,
- and what must be preserved.

### Production QC

`examples/example-03-production-qc.md`

Demonstrates evaluation of generated output against a Production Contract, including:

- preservation requirements,
- flexible elements,
- forbidden changes,
- QC scope,
- root cause,
- targeted regeneration,
- regression control,
- and final approval eligibility.

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

V0.4.1 currently includes:

| Validation Area | Result |
|---|---:|
| Evaluation cases | 31 |
| Blind regression cases | 10 |
| Hard fail conditions | 15 |
| Validator PASS | 39 |
| Validator WARNING | 0 |
| Validator FAIL | 0 |
| Overall | **PASS** |

Regression testing covers areas including:

- truth versus belief,
- accusation versus knowledge,
- evidence integrity,
- identity uncertainty,
- semantic contract sufficiency,
- root-cause attribution,
- bluff semantics,
- final QC completeness,
- approval eligibility,
- and decision consistency.

See `scripts/validate-v04.ps1` for the current validator.

---

## Current Status

**V0.4.1** is the first release candidate prepared for public distribution.

The V0.4 core architecture is currently frozen.

The immediate goal is no longer to add more abstractions. The next phase is to test the Skill against real vertical-drama production workflows and determine which failures are architectural and which are model/runtime limitations.

---

## Roadmap

### Current

- Freeze V0.4 architecture
- Complete regression hardening
- Prepare public repository
- Publish V0.4.1

### Next

- Run real vertical-drama production tests
- Evaluate long-series continuity behavior
- Test production contracts against real generation workflows
- Collect failure cases from practical use
- Improve documentation and installation examples

### Future V0.5

V0.5 should be driven primarily by real production evidence rather than additional theoretical architecture.

Fundamental architecture changes should only be introduced when production testing demonstrates that the current system cannot safely represent or resolve a real class of failure.

---

## Design Principle

Vertical Drama Intelligence follows a simple development philosophy:

**Evidence → Method → Original Implementation**

Research can inform the method.

The implementation should remain original, explicit, testable, and production-oriented.

---

## License

MIT License.

See `LICENSE` for details.

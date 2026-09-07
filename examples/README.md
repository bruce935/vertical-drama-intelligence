# Examples

Version: 0.4

This directory contains worked examples for Vertical Drama Intelligence.

The purpose of these examples is not to demonstrate perfect storytelling.

The purpose is to demonstrate how the Skill applies its reasoning system in real production situations.

Each example should make visible:

- source input,
- assumptions,
- truth status,
- canon status,
- claims,
- evidence,
- knowledge,
- belief,
- continuity state,
- story obligations,
- production constraints,
- QC scope,
- violations,
- root cause,
- correction unit,
- and final decision.

Examples should follow the same vocabulary used by:

- `SKILL.md`
- `references/story-intelligence.md`
- `references/continuity-system.md`
- `references/production-contracts.md`
- `templates/`
- `evals/evals.json`

---

# Example Set

## Example 01 — Concept Greenlight

File:

`example-01-concept-greenlight.md`

Purpose:

Demonstrate Story Intelligence from a minimal creator idea.

Expected flow:

IDEA

→ SCOPE

→ CONCEPT QUALIFICATION

→ SERIAL ENGINE

→ CHARACTER PRESSURE

→ STORY OBLIGATIONS

→ GREENLIGHT DECISION

→ DEVELOPMENT RECOMMENDATIONS

Focus:

- concept strength,
- protagonist desire,
- conflict,
- stakes,
- escalation capacity,
- episode engine,
- reveal potential,
- cliffhanger potential,
- development risk.

This example must not invent:

- retention percentages,
- audience size,
- market demand numbers,
- conversion rates,
- or guaranteed virality.

---

## Example 02 — Continuity Diagnosis

File:

`example-02-continuity-diagnosis.md`

Purpose:

Demonstrate the continuity and evidence reasoning system.

Expected flow:

SCENE INPUT

→ CURRENT STATE

→ CLAIMS

→ EVIDENCE

→ KNOWLEDGE

→ BELIEF

→ TEMPORAL STATE

→ CONTINUITY CHECK

→ VIOLATION

→ ROOT CAUSE

→ CORRECTION

Focus:

- unavailable knowledge,
- belief vs truth,
- claims vs facts,
- physical consequences,
- prop ownership,
- timeline,
- identity uncertainty,
- negative evidence,
- evidence dependencies.

This example should demonstrate that:

truth known to the writer

does not automatically equal

knowledge available to the character.

---

## Example 03 — Production QC

File:

`example-03-production-qc.md`

Purpose:

Demonstrate production contracts and scoped QC.

Expected flow:

APPROVED STORY STATE

→ PRODUCTION CONTRACT

→ GENERATION OUTPUT

→ QC EVIDENCE

→ SCOPED CHECKS

→ VIOLATIONS

→ ROOT CAUSE

→ TARGETED CORRECTION

→ RE-QC

→ FINAL DECISION

Focus:

- Must Preserve,
- Flexible,
- Forbidden,
- production mode,
- asset status,
- character consistency,
- behavioral consequences,
- visual evidence,
- NOT_CHECKED semantics,
- scoped QC,
- final approval.

This example must demonstrate:

NOT_CHECKED

is not equal to

PASS.

---

# Evidence Integrity

Examples must distinguish:

CONFIRMED

OBSERVED

CALCULATED

INFERRED

ASSUMED

PENDING

They must also preserve Canon Status:

PROPOSED

APPROVED

LOCKED

SUPERSEDED

Do not upgrade weak information into stronger information merely to make the example appear complete.

---

# Claims

A character statement is not automatically external truth.

Record important statements as claims when appropriate.

Example:

Character statement:

"David killed my father."

Correct handling:

CLAIM

not automatically:

FACT.

---

# Compound Claims

When a statement contains materially independent assertions, separate them.

Example:

"David stole the file and gave it to Nora."

Possible subclaims:

1. David stole the file.
2. David gave the file to Nora.

Evidence for one subclaim must not automatically prove the other.

---

# Identity

Keep presence separate from identity.

Example:

A blurry person appears in security footage.

Possible observation:

A person wearing a dark coat entered the building.

Possible interpretation:

The person may be Nora.

Do not automatically write:

Nora entered the building.

unless identification is supported.

---

# Negative Evidence

No result found does not automatically prove non-occurrence.

Before using absence as evidence, check:

- expected trace,
- source relevance,
- source completeness,
- search scope,
- temporal scope,
- alternative channels.

---

# Evidence Dependency

Repeated reports may derive from the same original source.

Do not count:

ARTICLE A

ARTICLE B REPEATING ARTICLE A

ARTICLE C REPEATING ARTICLE A

as three independent confirmations.

Preserve source lineage.

---

# Production Mode

Examples must explicitly identify:

PROTOTYPE

or

FINAL.

Prototype output may tolerate incomplete assets when the purpose is testing.

Prototype output must not automatically receive FINAL approval.

---

# QC States

Individual checks use:

PASS

FAIL

NOT_CHECKED

NOT_APPLICABLE

Scoped decisions use:

PASS_FOR_SCOPE

PASS_FOR_SCOPE_WITH_WARNINGS

REVISE_FOR_SCOPE

BLOCK_FOR_SCOPE

Final approval uses:

FINAL_APPROVED

FINAL_REJECTED

NOT_ELIGIBLE_FOR_FINAL_APPROVAL

---

# Root Cause

The visible error may not be the root cause.

Example:

Generated scene reveals the villain too early.

Failure location:

generated scene

Possible root cause:

Episode Contract incorrectly required the reveal.

Fix the correct layer before regeneration.

---

# Correction Unit

Prefer the smallest safe correction unit.

Possible units:

FIELD

STATE

CLAIM

EVIDENCE_RECORD

DIALOGUE_LINE

ACTION_BEAT

ASSET

SHOT

SCENE

EPISODE

STORY_BLOCK

SERIES

Avoid regenerating large amounts of passing work when a smaller correction is valid.

---

# Example Quality Standard

A strong example should show:

1. What information entered the system.
2. What is known versus uncertain.
3. Which rules apply.
4. Which state changed.
5. Which violations were detected.
6. Which evidence supports the decision.
7. Where the root cause lives.
8. What the smallest correction is.
9. What remains unchecked.
10. Whether the output is eligible for final approval.

---

# Final Rule

Examples are executable demonstrations of the methodology.

They should prove that the Skill can reason consistently across:

STORY

TRUTH

CANON

CLAIMS

EVIDENCE

KNOWLEDGE

BELIEF

CONTINUITY

PRODUCTION

QC

and

STATE UPDATE.

Do not write examples as marketing copy.

Write them as reproducible reasoning traces.

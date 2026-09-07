---
name: vertical-drama-intelligence
description: Develop, evaluate, structure, continuity-check, and production-plan serialized vertical dramas. Use when a user wants to create, adapt, analyze, improve, or production-plan a vertical drama, microdrama, short-drama series, AI drama, manga-drama, serialized short-form story, or multi-episode narrative. Use for concept greenlight, series bibles, season and episode architecture, hooks, reveals, cliffhangers, story obligations, character and knowledge continuity, evidence-aware mystery logic, production contracts, prototype and final production readiness, QC, targeted regeneration, and long-running series state management. Do not use merely for generic one-off creative writing unless serialized drama structure, continuity, evidence reasoning, or production planning is materially relevant.
---

# Vertical Drama Intelligence

## Purpose

Vertical Drama Intelligence is an Agent Skill for developing, evaluating, structuring, continuity-checking, and production-planning serialized vertical drama.

It is not merely a script generator.

It is designed to help an Agent reason about:

1. whether a concept can sustain a serialized drama,
2. what keeps the audience moving from episode to episode,
3. what information can be revealed and when,
4. what each character knows and believes,
5. which story claims are actually established,
6. how story state changes across episodes,
7. what production must preserve,
8. what generated output is allowed to change,
9. whether an output actually passed the checks that were performed,
10. and what should be corrected when production fails.

The core architecture is:

SCOPE
→ STORY
→ CLAIMS
→ EVIDENCE
→ INTERPRETATION
→ TRUTH
→ CANON
→ KNOWLEDGE
→ BELIEF
→ TEMPORAL STATE
→ CONTINUITY
→ PRODUCTION CONTRACT
→ GENERATION
→ SCOPED QC
→ ROOT CAUSE
→ TARGETED CORRECTION
→ STATE UPDATE

---

# Core Principles

## 1. Story Before Generation

Do not begin with video-generation prompts unless the user specifically requests a narrow generation task.

First establish the story structure, state, constraints, and production objective required for reliable generation.

Generative media should execute story intent.

It should not define story truth by accident.

---

## 2. Continuity Is State Management

Treat important story events as state transitions.

Track persistent state when materially relevant, including:

- character state,
- knowledge state,
- belief state,
- relationship state,
- goal state,
- emotional state,
- injury and physical state,
- location state,
- timeline state,
- prop state,
- plot state,
- story obligations,
- visual state.

A later scene must not silently contradict an earlier locked state.

---

## 3. Production Uses Contracts

Convert story intent into inspectable production constraints before generation.

Use a hierarchy such as:

SERIES CONTRACT
→ EPISODE CONTRACT
→ SCENE CONTRACT
→ SHOT CONTRACT
→ GENERATION TASK
→ QC CONTRACT

Lower-level contracts inherit higher-level truth and must not silently contradict it.

---

## 4. Models Generate Media, Not Canon

Generated text, images, audio, and video are outputs.

They are not automatically story canon.

Generated output may be reviewed, approved, rejected, revised, or promoted into canon through an explicit workflow.

Never allow model output to silently rewrite locked story truth.

---

## 5. Truth Status and Canon Status Are Different

Truth Status answers:

How is this information supported?

Use:

- CONFIRMED
- OBSERVED
- CALCULATED
- INFERRED
- ASSUMED
- PENDING

Canon Status answers:

Has this become part of the approved story?

Use:

- PROPOSED
- APPROVED
- LOCKED
- SUPERSEDED

Do not silently promote:

PROPOSED
→ APPROVED
→ LOCKED

Generated output cannot promote canon automatically.

---

## 6. Knowledge Is Not Belief

A character may know one fact while believing a different conclusion.

Example:

Anna knows David accessed a file.

Anna believes David committed fraud.

Those are different states.

Track them separately whenever the distinction affects behavior, dialogue, mystery, relationships, or continuity.

Belief confidence states are a closed vocabulary:

- UNAWARE
- DOUBTFUL
- SUSPICIOUS
- LEANING
- CONVINCED
- DISPROVEN

Do not invent, substitute, or silently extend belief confidence states.

If none of the allowed states can be justified from available evidence, preserve the existing valid state or explicitly report that a justified state transition cannot yet be determined.
### Accusation vs Knowledge Guard

Dialogue surface form alone does not determine epistemic status.

A declarative accusation such as:

"You stole it."

must not automatically be classified as character KNOWLEDGE merely because it is grammatically phrased as a factual statement.

A character may make an accusation that is stronger than their formal knowledge state when:

- the accusation is consistent with the character's established BELIEF state,
- the character has a plausible emotional or dramatic reason to make the accusation,
- the surrounding scene still treats the statement as accusation, suspicion, pressure, bluff, or belief,
- the system does not promote the accusation into KNOWLEDGE, FACT, TRUTH, CANON, or production truth,
- downstream Production Contracts and QC preserve the underlying uncertainty.

Distinguish:

BELIEF-DRIVEN ACCUSATION
from
KNOWLEDGE CLAIM
from
STORY TRUTH
from
PRODUCTION REQUIREMENT.

Examples:

"I think you stole it."
- explicit belief-driven accusation.

"You stole it!"
- may be an allowed belief-driven accusation depending on context.
- do not automatically treat this as KNOWLEDGE.

"I know you stole it."
- explicit knowledge claim and must be supported by the character's established knowledge.

"The badge proves you stole it."
- evidence-to-knowledge claim and must be supported by the evidence.

A violation occurs when the system infers character knowledge solely from the grammatical certainty of accusatory dialogue, or when an accusation is later encoded as established knowledge, truth, canon, or mandatory production state without sufficient support.

Production Contracts must preserve the distinction between what a character accuses someone of and what that character actually knows.

QC must evaluate the function and context of accusatory dialogue rather than mechanically converting declarative accusations into knowledge claims.

Violation code: ACCUSATION_KNOWLEDGE_CONFLATION.

### Bluff Semantic Sufficiency Guard

A deliberate bluff may contain surface language that appears to assert KNOWLEDGE, FACT, or EVIDENCE without changing the character's actual epistemic state.

For example:

"I know you stole it."
"I watched you take it."
"I have proof."

may function as deliberate bluffing when the surrounding story state and Production Contract clearly establish that:

- the character does not actually possess the claimed knowledge,
- the character does not actually possess the claimed evidence,
- the statement is being used as pressure, deception, manipulation, testing, or another intentional dramatic tactic,
- actual KNOWLEDGE state remains unchanged,
- actual BELIEF state is not silently strengthened,
- claimed evidence is not promoted into actual evidence,
- STORY TRUTH and CANON remain unchanged,
- downstream production does not treat the spoken claim as established production truth.

Semantic protection is sufficient.

Do not require a Production Contract to repeat a specific phrase, label, schema field, or implementation vocabulary when the required epistemic, evidence, truth, and continuity boundaries are already unambiguously preserved.

In particular, do not require labels such as:

- BELIEF-DRIVEN ACCUSATION
- corroboration_status: UNVERIFIED

merely because those exact labels would make the distinction more explicit.

Such labels may be useful when the distinction is otherwise ambiguous, but they are not mandatory when the existing contract already preserves the required semantics.

Do not infer:

specific label absent
=
semantic protection absent.

Do not infer:

surface knowledge claim used as a deliberate bluff
=
actual KNOWLEDGE state update.

Do not infer:

surface evidence claim used as a deliberate bluff
=
actual evidence exists.

Require contract revision only when the existing contract is genuinely missing, ambiguous, contradictory, or unsafe with respect to the required knowledge, belief, evidence, truth, canon, or continuity boundaries.

If the Production Contract already protects those boundaries, do not downgrade it merely to add redundant wording.

A violation occurs when the system demands unnecessary contract revision or invents a mandatory schema requirement solely because an otherwise semantically protected bluff lacks a preferred label or redundant explicit wording.

Violation code: BLUFF_CONTRACT_OVERCONSTRAINT.


Terms such as UNCERTAIN, UNKNOWN, PARTIALLY_CONVINCED, or other undeclared belief-confidence labels must not be used as belief confidence states.

Do not invent numerical confidence percentages.

---

## 7. Claim Is Not Fact

A statement made by a character, witness, document, recording, or other source is a claim until its relationship to truth is established.

Example:

The stranger says:

"Daniel is alive."

Canon may establish:

The stranger said Daniel is alive.

It does not automatically establish:

Daniel is alive.

Claim support may use:

- UNVERIFIED
- PARTIALLY_CORROBORATED
- CORROBORATED
- DISPROVEN
- CONTRADICTED
- UNRESOLVED

---

## 8. Decompose Compound Claims

A single sentence may contain multiple independently verifiable assertions.

Example:

"Nora started the fire and escaped."

This may contain:

- Nora started the fire.
- Nora survived the initial event.
- Nora left the hotel.

Evidence supporting one subclaim must not automatically support the others.

When materially necessary, decompose compound claims before evaluating them.

---

## 9. Evidence Is Not Interpretation

Separate:

WHAT WAS OBSERVED?

from:

WHAT DOES IT SUGGEST?

Example:

Observed:

A watch contains a repair date eight months after a disappearance.

Interpretation:

The missing person may have possessed the watch after disappearing.

The interpretation is not the same thing as the observation.

Preserve alternative explanations when materially plausible.

---

## 10. Preserve Evidence Provenance

Important evidence should preserve relevant source information.

Possible fields include:

- source episode,
- source scene,
- source character,
- source artifact,
- source version,
- origin source,
- chain of custody,
- integrity status,
- dependencies.

Evidence integrity may use:

- INTACT
- QUESTIONED
- TAMPERED
- INCOMPLETE
- UNKNOWN

Do not hide material provenance limitations.

---

## 11. Avoid False Independent Corroboration

Multiple documents do not necessarily mean multiple independent sources.

Example:

A witness makes a claim.

A police report repeats the witness.

Three news articles repeat the police report.

This may still represent one underlying factual source.

Preserve source lineage.

Do not count circular repetition as independent corroboration.

---

## 12. Identity Requires Its Own Confidence

Evidence may show a person resembling a character without proving identity.

Use:

- IDENTIFIED
- LIKELY_MATCH
- POSSIBLE_MATCH
- UNKNOWN
- EXCLUDED

Do not collapse:

RESEMBLANCE
→ IDENTIFICATION

The same principle applies to faces, voices, objects, locations, and other entity-resolution tasks when identity is uncertain.

---

## 13. Negative Evidence Requires Source Completeness

Absence of evidence is not automatically evidence of absence.

Before relying on a missing record, consider:

- whether the event should have created a record,
- whether the correct source was searched,
- whether the source is complete,
- whether the relevant time range was checked,
- whether the event could have occurred another way.

Do not claim that an event did not happen merely because one incomplete source lacks a record.

---

## 14. Evidence Can Have Dependencies

Some conclusions rely on multiple upstream pieces of evidence.

Example:

A DNA identification may depend on:

- sample provenance,
- chain of custody,
- reference sample identity,
- laboratory process,
- comparison result.

Dependency status may use:

- VALID
- QUESTIONED
- BROKEN
- UNKNOWN

If a critical dependency fails, downstream conclusions must be reconsidered.

Do not automatically invalidate unrelated evidence.

---

## 15. Temporal Scope Matters

Past truth is not necessarily current truth.

Use temporal scope when materially important:

- CURRENT
- PAST
- FUTURE
- RANGE
- AT_EVENT
- UNKNOWN_TIME
- TIMELESS

Example:

Daniel was alive in 2023.

does not prove:

Daniel is alive now.

Do not silently convert historical evidence into current-state truth.

---

## 16. State Must Produce Observable Consequences

Important states should be translated into production consequences.

Example:

State:

right abdominal wound = ACTIVE

Possible production consequences:

- limited torso rotation,
- difficulty standing quickly,
- visible guarding of the injury,
- cannot sprint normally.

Do not over-constrain unrelated behavior.

Use conservative causal consequences.

---

## 17. Prototype and Final Production Are Different

Production Mode:

- PROTOTYPE
- FINAL

PROTOTYPE may allow:

- DRAFT assets,
- ASSUMED visual details,
- temporary references,
- incomplete production dependencies,

with explicit warnings.

Possible prototype decisions:

- PROTOTYPE_READY
- PROTOTYPE_READY_WITH_RISKS
- PROTOTYPE_BLOCKED

FINAL normally requires production-grade critical dependencies.

Possible final readiness decisions:

- READY
- READY_WITH_RISKS
- NOT_READY
- BLOCKED

A valid prototype should not be blocked merely because its assets are not final.

A final production should not silently proceed with unresolved critical DRAFT dependencies.

---

## 18. QC Must Be Evidence-Aware

Use check-level results:

- PASS
- FAIL
- NOT_CHECKED
- NOT_APPLICABLE

PASS means sufficient relevant evidence was inspected and no violation was found.

NOT_CHECKED means required evidence was unavailable or the check was not performed.

Never infer:

No contradiction detected
=
PASS

when the relevant evidence was never inspected.

---

## 19. QC Approval Is Scope-Specific

Possible QC scopes include:

- STORY
- CONTINUITY
- CANON
- CLAIMS_EVIDENCE
- PRE_PRODUCTION
- PERFORMANCE
- VISUAL
- TECHNICAL
- AUDIO
- COMPLIANCE
- FINAL
- CUSTOM

For partial QC use:

- PASS_FOR_SCOPE
- PASS_FOR_SCOPE_WITH_WARNINGS
- REVISE_FOR_SCOPE
- BLOCK_FOR_SCOPE

Do not collapse:

PASS_FOR_SCOPE
→ FINAL_APPROVED

Use:

- FINAL_APPROVED
- FINAL_REJECTED
- NOT_ELIGIBLE_FOR_FINAL_APPROVAL

These states are mutually exclusive outcomes of the final-approval state machine.

NOT_ELIGIBLE_FOR_FINAL_APPROVAL means the Final Approval Gate must terminate before an approval or rejection decision is made.

Do not emit FINAL_APPROVED or FINAL_REJECTED after NOT_ELIGIBLE_FOR_FINAL_APPROVAL.

Use FINAL_REJECTED only when the work is eligible to enter the Final Approval Gate, the required final checks have been performed, and one or more checked final requirements fail.

Use FINAL_APPROVED only when the work is eligible to enter the Final Approval Gate and all required final requirements have been checked and passed.

NOT_CHECKED mandatory scopes do not automatically become FAIL. If required final scopes remain NOT_CHECKED, the correct result is normally NOT_ELIGIBLE_FOR_FINAL_APPROVAL.

### Final Scope Completeness Guard

#### Mandatory Final Gate Evaluation Order

In FINAL production mode, evaluate final approval in this exact order:

1. Enumerate every mandatory QC scope that materially applies.
2. Assign each mandatory scope one of:
   - PASS
   - FAIL
   - NOT_CHECKED
   - NOT_APPLICABLE
3. Before deciding FINAL_APPROVED or FINAL_REJECTED, check whether any mandatory applicable scope remains NOT_CHECKED.
4. If any mandatory applicable scope remains NOT_CHECKED:
   - the production is NOT_ELIGIBLE_FOR_FINAL_APPROVAL,
   - carry all NOT_CHECKED scopes into the Final Approval Gate,
   - terminate the final approval decision,
   - do not emit FINAL_APPROVED,
   - do not emit FINAL_REJECTED.
5. Only when no mandatory applicable scope remains NOT_CHECKED may checked failures determine FINAL_REJECTED.
6. Only when no mandatory applicable scope remains NOT_CHECKED and all required final checks pass may the result be FINAL_APPROVED.

A known FAIL does not override incomplete mandatory scope coverage.

Do not infer:

checked failure exists
=
eligible for FINAL_REJECTED.

Eligibility must be established before approval or rejection is decided.


In FINAL production mode, final approval must be based on the complete set of mandatory QC scopes, not only the scopes for which evidence happened to be available.

Before evaluating Final Approval eligibility:

1. Enumerate the mandatory QC scopes that materially apply to the final production.
2. Record the check state for every mandatory scope.
3. If required evidence is unavailable or the check was not performed, record that scope as NOT_CHECKED.
4. Carry every mandatory NOT_CHECKED scope into the Final Approval Gate.
5. Do not silently omit an unevaluated mandatory scope merely because no evidence for that scope was provided.

Depending on the production, mandatory FINAL-mode scopes may include:

- STORY
- CONTINUITY
- CANON
- CLAIMS_EVIDENCE
- PERFORMANCE
- VISUAL
- CHARACTER_IDENTITY
- WARDROBE
- PROP_APPEARANCE
- AUDIO
- SUBTITLES
- EDIT_TIMING
- TECHNICAL
- DELIVERY

The exact applicable scope set may vary by production, but any scope that is mandatory for final delivery must be explicitly accounted for.

A checked subset may receive PASS_FOR_SCOPE while the overall production remains NOT_ELIGIBLE_FOR_FINAL_APPROVAL.

Do not infer:

all currently inspected scopes passed
=
all mandatory final scopes were checked.

FINAL_APPROVED requires both:

- complete mandatory final-scope coverage, and
- PASS for every required final check.

If one or more applicable mandatory final scopes remain NOT_CHECKED, the production must not be presented as eligible for FINAL_APPROVED.

Use FINAL_SCOPE_COMPLETENESS_FAILURE only when the system violates this guard, for example by:

- silently omitting an applicable mandatory final scope,
- treating an unavailable mandatory scope as if it had passed,
- presenting the production as eligible for FINAL_APPROVED while applicable mandatory scopes remain NOT_CHECKED,
- collapsing PASS_FOR_SCOPE into final approval eligibility.

Do not emit FINAL_SCOPE_COMPLETENESS_FAILURE merely because mandatory scopes are correctly identified as NOT_CHECKED and the Final Approval state is correctly NOT_ELIGIBLE_FOR_FINAL_APPROVAL.

When the guard is correctly applied and the production is blocked from final approval for incomplete mandatory scope coverage, the violation code for this guard is NONE.

---

# When to Use

Use this Skill when the user wants help with one or more of the following:

- vertical drama,
- microdrama,
- short drama,
- serialized short-form fiction,
- AI drama,
- manga-drama,
- multi-episode narrative,
- novel-to-short-drama adaptation,
- series concept evaluation,
- concept greenlight,
- series bible,
- character bible,
- season architecture,
- episode architecture,
- hooks,
- escalations,
- reveals,
- cliffhangers,
- story obligations,
- continuity,
- mystery logic,
- evidence-aware story reasoning,
- production planning,
- production contracts,
- AI video workflow planning,
- prototype readiness,
- final production readiness,
- QC,
- targeted regeneration,
- long-running series state management.

---

# When Not to Use

Do not automatically invoke this Skill for:

- unrelated one-off creative writing,
- generic poetry,
- standalone social posts,
- non-serialized advertising copy,
- a single isolated scene when continuity and production structure do not matter,
- generic video prompts that do not require story or production intelligence.

If a one-off task becomes part of a serialized production, this Skill may become relevant.

---

# Operating Modes

Choose the smallest mode that satisfies the task.

## Concept Mode

Use for:

- idea evaluation,
- concept qualification,
- greenlight,
- premise improvement,
- serial-engine analysis.

## Build Mode

Use for:

- Series Bible,
- Character Bible,
- Story Blocks,
- season architecture,
- reveal architecture,
- story obligations.

## Episode Mode

Use for:

- Episode Contract,
- hook,
- conflict,
- escalation,
- reveal,
- cliffhanger,
- next-episode obligation.

## Continuity Mode

Use for:

- character state,
- knowledge,
- belief,
- relationships,
- injury,
- props,
- timeline,
- plot state,
- identity,
- claims and evidence.

## Production Mode

Use for:

- Scene Contracts,
- Shot Contracts,
- production constraints,
- assets,
- behavioral consequences,
- prototype/final readiness.

## QC Mode

Use for:

- story QC,
- continuity QC,
- canon QC,
- evidence reasoning QC,
- production QC,
- targeted correction,
- regression checking.

## Adaptation Mode

Use when converting existing source material into serialized vertical drama.

---

# Default Workflow

For substantial projects, use:

SCOPE
→ CONCEPT QUALIFICATION
→ GREENLIGHT
→ SERIES BIBLE
→ STORY BLOCKS / SEASON ARCHITECTURE
→ CHARACTER + SECRET ARCHITECTURE
→ EPISODE ARCHITECTURE
→ CLAIM / EVIDENCE MODEL WHEN NEEDED
→ CONTINUITY STATE
→ STORY READINESS GATE
→ PRODUCTION CONTRACTS
→ PRODUCTION READINESS GATE
→ GENERATION
→ SCOPED QC
→ ROOT CAUSE ANALYSIS
→ TARGETED CORRECTION
→ RE-QC
→ APPROVAL
→ STATE DELTA
→ NEXT EPISODE

Do not force every project through every stage when the user's task is narrower.

---

# Scope

Establish materially relevant inputs such as:

- genre,
- audience,
- platform,
- episode count,
- episode duration,
- language,
- market,
- source material,
- production model,
- budget constraints,
- tone,
- restrictions,
- business objective,
- current production stage.

Unknown information should remain:

PENDING

If a temporary assumption is necessary to continue, label it:

ASSUMED

Do not disguise assumptions as facts.

---

# Concept Qualification

Evaluate whether the concept has a viable serial engine.

Suggested dimensions:

- Clear Desire
- Active Conflict
- Immediate Stakes
- Serial Engine
- Escalation Capacity
- Information Asymmetry
- Character Pressure
- Production Feasibility

Use categorical assessments such as:

- STRONG
- WORKABLE
- WEAK
- MISSING

Do not fabricate numeric market or retention scores.

---

# Concept Formula

A useful concept often contains:

PROTAGONIST
+
DESIRE
+
OBSTACLE
+
UNUSUAL PRESSURE
+
SERIAL ENGINE

The exact formula is guidance, not a mandatory creative template.

---

# Greenlight

Use:

- GREENLIGHT
- GREENLIGHT_WITH_RISKS
- REVISE
- REJECT

Explain:

- what works,
- what does not,
- what remains uncertain,
- what must change before deeper production.

---

# Series Bible

A useful Series Bible may include:

- premise,
- genre,
- tone,
- target audience hypothesis,
- central desire,
- core conflict,
- serial engine,
- world rules,
- major characters,
- relationship architecture,
- central mystery,
- secrets,
- stakes,
- major series questions,
- ending direction,
- production constraints,
- continuity rules,
- canon registry.

Do not pretend unresolved creative choices are locked canon.

---

# Character Architecture

For important characters, consider:

- role,
- wants,
- needs,
- fears,
- secrets,
- leverage,
- risks,
- knowledge,
- beliefs,
- relationships,
- goals,
- physical state,
- narrative function.

Possible narrative functions include:

- PROTAGONIST
- ANTAGONIST
- ALLY
- RIVAL
- ROMANTIC_PRESSURE
- INFORMATION_HOLDER
- GATEKEEPER
- MIRROR
- CATALYST
- FALSE_ALLY

Use only when useful.

---

# Secret Architecture

Secrets may use lifecycle states such as:

- HIDDEN
- TEASED
- SUSPECTED
- PARTIALLY_REVEALED
- REVEALED
- REINTERPRETED
- PAID_OFF

A reveal should normally change understanding, pressure, relationships, goals, or future expectations.

Avoid twists that change nothing.

---

# Story Blocks

For longer series, group episodes into Story Blocks.

A Story Block should normally have:

- objective,
- dominant conflict,
- key information movement,
- escalation direction,
- major payoff,
- new obligation,
- transition into the next block.

Do not create episode counts merely to fill a quota.

---

# Episode Contract

For meaningful episode planning, track:

- Episode ID
- Opening State
- Episode Objective
- Primary Character Objective
- Primary Conflict
- Escalation
- Required Information
- Withheld Information
- Required Payoff
- Reveal
- Relationship Movement
- State Change
- Forbidden Outcome
- Cliffhanger
- Next-Episode Obligation
- Continuity Dependencies

The episode must inherit locked upstream truth.

---

# Hooks

Useful hook types may include:

- DANGER
- QUESTION
- CONTRADICTION
- RECOGNITION
- ACCUSATION
- DISCOVERY
- DEADLINE
- POWER_SHIFT
- UNEXPECTED_ACTION
- INCOMPLETE_INFORMATION

Do not use hook labels as formulas.

The hook must matter to the story.

---

# Escalation

Escalation should change at least one meaningful variable, such as:

- risk,
- knowledge,
- relationship,
- status,
- power,
- time pressure,
- commitment,
- cost,
- danger,
- uncertainty.

Repeating the same argument at greater volume is not meaningful escalation.

---

# Cliffhanger

A useful cliffhanger usually creates:

CLEAR UNRESOLVED QUESTION
+
IMMEDIATE CONSEQUENCE
+
NEXT-EPISODE OBLIGATION

Do not end every episode with an unrelated surprise.

---

# Story Obligations

Track unresolved promises and questions that the narrative owes the audience.

Lifecycle:

- CREATED
- ACTIVE
- DEFERRED
- PARTIALLY_PAID
- PAID
- TRANSFORMED
- CANCELLED_WITH_REASON

Priority:

- PRIMARY
- SECONDARY
- LOCAL

PRIMARY obligations may persist across long arcs if reinforced.

LOCAL obligations should generally resolve quickly.

Do not treat every unresolved detail as equally important.

---

# Story Debt

Story Debt means active unresolved obligations accumulated by the series.

Watch for:

- forgotten promises,
- abandoned mysteries,
- delayed local questions,
- repeated deferral without reinforcement,
- cliffhangers that never receive payoff.

Do not invent arbitrary numerical debt scores unless the task supplies a defined scoring model.

---

# Claims

When story reasoning depends on testimony or assertions, create Claim records.

Recommended fields:

- claim_id
- parent_claim_id
- speaker_or_source
- statement
- subject
- temporal_scope
- source_episode
- source_scene
- credibility
- corroboration_status
- truth_relationship
- canon_status
- subclaim_ids

Decompose compound claims only when materially necessary.

---

# Evidence

When mystery, investigation, causality, or factual inference matters, create Evidence records.

Recommended fields:

- evidence_id
- evidence_type
- object_or_source
- observation
- source_episode
- source_scene
- temporal_scope
- origin_source
- derived_from
- chain_of_custody
- integrity_status
- identity_status
- dependencies
- truth_status
- canon_status

Possible evidence types include:

- OBJECT
- DOCUMENT
- RECORDING
- IMAGE
- VIDEO
- TESTIMONY
- LOG
- PHYSICAL_TRACE
- DIGITAL_RECORD
- OBSERVATION
- DERIVED
- OTHER

---

# Interpretation

Separate conclusions from observations.

Recommended fields:

- interpretation_id
- conclusion
- based_on
- alternative_explanations
- confidence_category
- temporal_scope
- identity_assumptions
- dependency_assumptions
- status

Suggested confidence categories:

- WEAK
- PLAUSIBLE
- SUPPORTED
- STRONGLY_SUPPORTED
- DISPUTED

Do not use invented percentages.

---

# Identity Resolution

When identity is uncertain, use:

- IDENTIFIED
- LIKELY_MATCH
- POSSIBLE_MATCH
- UNKNOWN
- EXCLUDED

Do not treat resemblance as identification.

Do not silently promote identity because generated media makes two characters look similar.

---

# Negative Evidence

Before using missing records as evidence, determine whether:

- the event should have produced a record,
- the correct source was checked,
- the source is complete,
- the relevant period is covered,
- alternate channels remain possible.

Negative evidence strength may be described categorically.

Avoid absolute conclusions beyond what the checked source supports.

---

# Evidence Dependency

For evidence whose reliability depends on upstream inputs, record dependencies.

Possible dependency statuses:

- VALID
- QUESTIONED
- BROKEN
- UNKNOWN

Possible criticality:

- CRITICAL
- SUPPORTING
- OPTIONAL

If a critical dependency fails, reassess downstream conclusions.

---

# Knowledge State

Track:

WHO KNOWS WHAT
SINCE WHEN
HOW THEY LEARNED IT

A character must not act on information they have not acquired unless the story explicitly establishes another route.

Violation:

KNOWLEDGE_STATE_VIOLATION

---

# Belief State

Track character conclusions separately from knowledge.

Suggested fields:

- belief_id
- character_id
- belief
- target
- confidence_state
- source
- since_episode
- temporal_scope
- status

Belief transitions should have a causal trigger.

Violation:

BELIEF_STATE_VIOLATION

---

# Relationship State

Relationships should evolve through explicit story events.

Track relevant dimensions such as:

- trust,
- hostility,
- dependence,
- attraction,
- fear,
- leverage,
- loyalty.

Use categorical state when useful.

Do not invent precision.

---

# Physical State

Track persistent physical conditions when they affect later production.

Examples:

- injury,
- fatigue,
- intoxication,
- restricted movement,
- recovery,
- death,
- unconsciousness.

Translate important physical states into behavioral consequences.

---

# Prop State

Track important objects when ownership, location, condition, or visibility matters.

Possible transitions include:

- TRANSFERRED
- LOST
- FOUND
- HIDDEN
- DESTROYED
- DAMAGED
- STOLEN
- REVEALED

Do not silently move a prop between characters or locations.

---

# Timeline State

Distinguish:

STORY TIME

from:

EPISODE ORDER

Use temporal scope when necessary.

Do not treat flashbacks, memories, recordings, or historical evidence as current events.

---

# Plot State

Possible plot lifecycle:

- INTRODUCED
- ACTIVE
- ESCALATING
- PARTIALLY_RESOLVED
- RESOLVED
- ABANDONED
- DEFERRED

Avoid resolving a plot that upstream story state still marks as active.

---

# Scene State

Before production, define important scene truth.

A Scene State may contain:

- story time,
- location,
- characters present,
- character knowledge,
- character beliefs,
- relationships,
- physical state,
- props,
- active obligations,
- relevant canon,
- required visual state.

---

# State Delta

After an approved scene or episode, record only what changed.

Examples:

- character learns information,
- belief shifts,
- prop changes owner,
- injury worsens,
- relationship changes,
- obligation is created,
- secret is revealed.

Do not rewrite the entire state when only a few variables changed.

---

# Continuity Violations

Possible codes include:

- KNOWLEDGE_STATE_VIOLATION
- BELIEF_STATE_VIOLATION
- RELATIONSHIP_STATE_VIOLATION
- CHARACTER_GOAL_CONFLICT
- EMOTIONAL_CONTINUITY_WARNING
- PHYSICAL_STATE_CONFLICT
- PROP_OWNERSHIP_VIOLATION
- LOCATION_CONTINUITY_WARNING
- TIMELINE_CONFLICT
- TEMPORAL_SCOPE_VIOLATION
- PLOT_STATE_CONFLICT
- UNRESOLVED_EPISODE_PROMISE
- CHARACTER_AVAILABILITY_CONFLICT
- IDENTITY_CONTINUITY_ERROR
- IDENTITY_OVERCLAIM
- ENTITY_RESOLUTION_CONFLICT
- WARDROBE_CONTINUITY_ERROR
- VISUAL_PROP_CONTINUITY_ERROR
- SCENE_DIRECTION_WARNING
- TRUTH_STATUS_VIOLATION
- CANON_STATUS_VIOLATION
- UNAUTHORIZED_CANON_PROMOTION
- UNAUTHORIZED_STATE_CHANGE
- CLAIM_AS_FACT_VIOLATION
- CLAIM_ATTRIBUTION_ERROR
- COMPOUND_CLAIM_COLLAPSE
- EVIDENCE_INTERPRETATION_CONFLATION
- EVIDENCE_PROVENANCE_MISSING
- EVIDENCE_CHAIN_CONFLICT
- NEGATIVE_EVIDENCE_OVERCLAIM
- SOURCE_COMPLETENESS_UNKNOWN
- DEPENDENCY_INTEGRITY_FAILURE
- FALSE_INDEPENDENT_CORROBORATION
- DERIVED_EVIDENCE_SOURCE_LOSS
- STATE_BEHAVIOR_CONFLICT
- SCOPED_QC_OVERCLAIM

Use only codes relevant to the task.

---

# Continuity Severity

Use:

- HARD ERROR
- MAJOR WARNING
- MINOR WARNING
- ADVISORY

or, in production QC contexts:

- BLOCKER
- MAJOR
- MINOR
- ADVISORY

Do not inflate every issue into a blocker.

---

# Continuity Gate

Possible decisions:

- PASS
- PASS_WITH_WARNINGS
- REVISE
- BLOCK

A blocking contradiction should prevent downstream final production until resolved or explicitly overridden.

---

# Story Readiness Gate

Before deeper production, check whether the story has sufficient structure.

Possible decisions:

- PASS
- PASS_WITH_WARNINGS
- REVISE
- BLOCK

Possible issues include:

- MISSING_SERIAL_ENGINE
- UNCLEAR_PROTAGONIST_DESIRE
- WEAK_CONFLICT_ENGINE
- LOW_ESCALATION_CAPACITY
- PREMATURE_MAJOR_REVEAL
- FORBIDDEN_INFORMATION_RELEASE
- UNPAID_STORY_OBLIGATION
- OBLIGATION_AGING_WARNING
- STRUCTURAL_REPETITION_WARNING
- SERIAL_SUSTAINABILITY_RISK
- CHARACTER_FUNCTION_GAP
- ENDING_DIRECTION_MISSING

---

# Production Contract

A production contract should answer:

1. WHAT MUST HAPPEN?
2. WHAT MUST REMAIN TRUE?
3. WHAT MAY CHANGE?
4. WHAT MUST NOT HAPPEN?
5. HOW WILL WE KNOW THE OUTPUT PASSED?

A useful contract may include:

- Contract ID
- Production Mode
- Canon Dependencies
- Truth Dependencies
- Narrative Objective
- Required Outcome
- Forbidden Outcome
- Continuity Inheritance
- Must Preserve
- Flexible
- Forbidden
- Required Assets
- Behavioral Consequences
- Information Behavior
- Claim Constraints
- Evidence Constraints
- Temporal Constraints
- QC Requirements

---

# Behavioral Consequences

Translate persistent state into production constraints.

Possible fields:

- source state,
- affected character,
- behavioral constraints,
- visual indicators,
- forbidden behavior,
- flexible expression,
- severity.

Remain conservative.

Do not overderive consequences.

---

# Information Behavior

For important scenes, state:

- Character Knows
- Character Believes
- Character Does Not Know
- Character May Suspect
- Character May Claim
- External Truth
- Identity Confidence
- Forbidden Knowledge Behavior

This is especially useful for dialogue and performance.

---

# Asset Lifecycle

Possible asset states:

- PENDING
- DRAFT
- REVIEW
- APPROVED
- LOCKED
- RETIRED

Use stable asset IDs when helpful.

Example:

CHAR_ANNA_001

A FINAL workflow should not casually substitute a DRAFT asset for a LOCKED identity reference.

---

# Shot Contract

A Shot Contract may include:

- shot_id
- purpose
- subjects
- camera intent
- action
- character state
- required visual state
- must preserve
- forbidden
- estimated duration

Possible shot purposes:

- ESTABLISH
- REVEAL
- REACTION
- ESCALATE
- WITHHOLD
- TRANSITION
- PAYOFF
- CLIFFHANGER
- ACTION
- INSERT

Use only when production detail is required.

---

# Information Control

For mystery and reveal-heavy stories, distinguish:

- KNOWN TO AUDIENCE
- KNOWN TO CHARACTER
- WITHHELD

Do not leak forbidden information through dialogue, props, captions, generated imagery, or background details.

---

# Dialogue Constraints

When necessary, distinguish:

- REQUIRED MEANING
- OPTIONAL WORDING
- FORBIDDEN INFORMATION

This allows natural language variation without losing narrative control.

---

# Model-Agnostic Design

Core production contracts should remain independent of specific generation systems.

A later Prompt Adapter may convert contracts for tools such as:

- Kling
- Veo
- Seedance
- Sora
- Runway
- other image, video, or audio systems.

Do not bind story truth to one model's prompt syntax.

---

# Generation Tasks

Possible lifecycle:

- PENDING
- BLOCKED
- READY
- GENERATING
- GENERATED
- QC_FAILED
- QC_PASSED
- APPROVED
- REJECTED
- LOCKED

Before READY, check the requirements relevant to the production mode.

---

# Contract Versioning

Possible contract states:

- DRAFT
- REVIEW
- APPROVED
- LOCKED
- SUPERSEDED

Changing locked upstream truth requires explicit revision.

A revision flow may use:

REVISION REQUEST
→ IMPACT ANALYSIS
→ APPROVE / REJECT
→ NEW VERSION
→ DOWNSTREAM INVALIDATION

---

# Dependency Status

Downstream artifacts may become:

- VALID
- STALE
- INVALID
- REVIEW_REQUIRED

when upstream contracts or truth change.

Do not silently reuse stale output.

---

# Source-of-Truth Precedence

When conflicts occur, prefer:

USER-CONFIRMED TRUTH
→ LOCKED SERIES BIBLE
→ LOCKED CONTINUITY STATE
→ LOCKED EPISODE CONTRACT
→ LOCKED SCENE CONTRACT
→ SHOT CONTRACT
→ MODEL OUTPUT

Model output is evidence of what was generated.

It is not automatically canon.

---

# QC

Possible QC categories:

- NARRATIVE
- CONTINUITY
- CANON
- CLAIMS_EVIDENCE
- VISUAL
- PERFORMANCE
- TECHNICAL
- TIMING
- AUDIO
- COMPLIANCE

Every check should state whether it was:

- PASS
- FAIL
- NOT_CHECKED
- NOT_APPLICABLE

Never claim a visual PASS when no visual evidence was inspected.

---

# Root Cause Analysis

Distinguish:

OBSERVED FAILURE

from:

ROOT CAUSE

from:

CORRECTION LOCATION

Possible root-cause categories:

- STORY_SPEC
- CONTINUITY_STATE
- PRODUCTION_CONTRACT
- ASSET
- MODEL_ADAPTER
- GENERATION
- EDIT
- QC
- UNKNOWN

Do not assign GENERATION as the sole root cause merely because the visible failure appears in generated output.

Before assigning GENERATION, inspect or evaluate the relevant upstream Production Contract and inherited constraints when they are available.

Use PRODUCTION_CONTRACT when required story, continuity, evidence, knowledge, belief, asset, or forbidden constraints were missing, incorrect, ambiguous, or internally contradictory before generation.

Use GENERATION when the upstream Production Contract was valid and sufficiently specific, but the generated output failed to follow it.

If the relevant upstream Production Contract cannot be inspected or its adequacy cannot be established, qualify the attribution or use UNKNOWN rather than assuming GENERATION.

Root-cause attribution must identify the earliest supported failure point, not merely the stage where the defect became visible.

Primary Root Cause and Downstream Manifestation must be distinguished.

The Primary Root Cause is the earliest supported failure point that sufficiently explains the downstream defect.

A Downstream Manifestation is a later stage where the defect becomes visible, is reproduced, or is expressed.

When an upstream Production Contract defect already explains the generated failure, classify PRODUCTION_CONTRACT as the Primary Root Cause and GENERATION as a Downstream Manifestation rather than treating them as co-equal root causes.

Do not mechanically combine PRODUCTION_CONTRACT + GENERATION as co-equal root causes when the upstream contract defect is the earliest supported failure point.

Use GENERATION as the Primary Root Cause only when the relevant upstream Production Contract was valid, sufficiently specific, and correctly encoded, but the generated output still violated it.

### Decision DAG for Derived Decision Fields

Certain output fields are dependent decision fields and must not be independently recomputed after their upstream dependencies have been established.

Use the following dependency order whenever these fields are part of the same failure analysis:

1. Required Semantic Boundary Present
2. Additional Constraint Needed
3. Production Contract Semantically Sufficient
4. Scene / Generated Output Violation
5. Primary Root Cause
6. Downstream Manifestation
7. Production Contract Revision Required
8. Final Approval Eligibility
9. Final Approval State

Treat this as a directed decision graph, not as a set of independent judgments.

#### Semantic Sufficiency Dependency

Production Contract Semantically Sufficient is derived from the inspected Production Contract.

If:

- Required Semantic Boundary Present: YES
- Additional Constraint Needed: NO

then:

- Production Contract Semantically Sufficient: YES

Do not independently recompute semantic sufficiency later for the same boundary unless a separate actual contract defect is identified and stated.

#### Root-Cause Dependency

If:

- Production Contract Semantically Sufficient: YES
- generated output violates the existing Production Contract

then:

- Primary Root Cause: GENERATION

Do not assign PRODUCTION_CONTRACT merely because generation violated an otherwise sufficient contract.

#### Downstream Dependency

Downstream Manifestation is derived from Primary Root Cause and the existence of a later independently evaluated production stage.

If:

- Primary Root Cause: GENERATION
- no later independent production-stage manifestation is being evaluated

then:

- Downstream Manifestation: NONE

GENERATION must not simultaneously be both Primary Root Cause and Downstream Manifestation for the same failure instance.

If an earlier supported upstream defect exists, for example:

- Primary Root Cause: PRODUCTION_CONTRACT

and that defect causes a generation-stage failure, then:

- Downstream Manifestation: GENERATION

#### Contract Revision Dependency

Production Contract Revision Required is derived from the identified Primary Root Cause and the presence or absence of an actual Production Contract defect.

If:

- Production Contract Semantically Sufficient: YES
- Primary Root Cause: GENERATION
- no separate Production Contract defect is identified

then:

- Production Contract Revision Required: NO

A generated violation must not by itself create a requirement to restate an already protected semantic boundary.

Production Contract Revision Required may be YES only when an actual contract defect has been identified, such as:

- missing required constraint
- incorrect constraint
- ambiguous constraint
- contradictory constraint
- materially insufficient constraint

#### Final Approval Dependency

Final Approval Eligibility must be established before Final Approval State.

If any mandatory applicable FINAL scope is:

- NOT_CHECKED

then:

- Eligible For Final Approval Decision: NO
- Final Approval State: NOT_ELIGIBLE_FOR_FINAL_APPROVAL

A known PASS or FAIL in another checked scope does not override incomplete mandatory FINAL coverage.

#### Decision Consistency Rule

Once an upstream field has been established, downstream fields must be derived from it according to this Decision DAG.

#### Decision Lock

Each Decision DAG field must be evaluated once for the current failure instance.

After a field is established, treat its value as LOCKED for the remainder of that decision chain.

Later evaluation steps may read the locked value but must not independently reinterpret, reverse, or recompute it unless new evidence or a separately identified upstream defect is explicitly introduced.

In particular:

- Required Semantic Boundary Present must not change after contract inspection is complete.
- Additional Constraint Needed must not change after semantic sufficiency inspection is complete.
- Production Contract Semantically Sufficient must be derived from those locked upstream findings.
- Primary Root Cause must be derived from the locked contract findings and observed output violation.
- Downstream Manifestation must be derived from the locked Primary Root Cause.
- Production Contract Revision Required must be derived from the locked contract and root-cause findings.
- Final Approval State must be derived from the locked Final Approval Eligibility finding.

A later summary, synthesis, or final-output stage must not replace an earlier locked Decision DAG value merely because it is generating a concise narrative answer.

Do not produce mutually contradictory combinations such as:

- Production Contract Semantically Sufficient: YES
  together with
  Primary Root Cause: PRODUCTION_CONTRACT
  when no separate actual Production Contract defect has been identified.

  This combination is INVALID.

  If:
  - Production Contract Semantically Sufficient: YES
  - generated output violates the existing Production Contract
  - no separate actual Production Contract defect is identified

  then the only valid Primary Root Cause is:

  - Primary Root Cause: GENERATION

  Do not choose PRODUCTION_CONTRACT as an alternative valid interpretation in this state.

- Production Contract Semantically Sufficient: YES
  together with
  Production Contract Revision Required: YES
  when no actual contract defect was identified.

- Primary Root Cause: GENERATION
  together with
  Downstream Manifestation: GENERATION
  when no later production stage is being evaluated.

- Mandatory Unchecked Final Scopes Present: YES
  together with
  Eligible For Final Approval Decision: YES.

- Eligible For Final Approval Decision: NO
  together with
  FINAL_APPROVED or FINAL_REJECTED.

Dependent decision fields must be treated as derived outputs, not independent narrative judgments.

### Semantic Contract Root-Cause Guard

Do not retroactively declare an upstream Production Contract insufficient merely because generated output violated it.

When the inspected Production Contract already explicitly or semantically contains the relevant story, continuity, identity, evidence, knowledge, belief, asset, or forbidden constraint, treat that constraint as present.

A generated violation of an already present and sufficiently specific constraint does not by itself prove that the Production Contract was missing, ambiguous, or incorrect.

Do not require redundant wording, a duplicate prohibition, or a more literal restatement solely to move the Primary Root Cause upstream from GENERATION to PRODUCTION_CONTRACT.

If:

1. the relevant Production Contract can be inspected,
2. the required constraint is already semantically present,
3. the constraint is valid and sufficiently specific for the production task, and
4. generated output nevertheless violates that constraint,

then classify:

- Primary Root Cause: GENERATION
- Production Contract revision required solely for that violation: NO

#### Semantic Root-Cause Consistency Binding

When the conditions above are satisfied, these conclusions must remain mutually consistent:

- Production Contract Semantically Sufficient: YES
- Primary Root Cause: GENERATION
- Production Contract revision required solely for that violation: NO

Semantic sufficiency must be evaluated as a derived field, not as an independent later judgment.

Use this evaluation order for the same boundary:

1. Determine whether the required semantic boundary is already present in the inspected Production Contract.
2. Determine whether an additional constraint is needed to protect that same boundary.
3. Derive Production Contract Semantically Sufficient from those two findings.

Derivation rule:

If:
- Required Semantic Boundary Present: YES
- Additional Constraint Needed: NO

then:

- Production Contract Semantically Sufficient: YES

After this derivation, do not independently recompute semantic sufficiency for the same boundary.

Production Contract Semantically Sufficient may change to NO only if a separate missing, incorrect, ambiguous, contradictory, or materially insufficient constraint is actually identified and stated.

Downstream Manifestation must also be evaluated as a derived field after Primary Root Cause is established.

Derivation rule:

If:
- Primary Root Cause: GENERATION
- no later production stage is being evaluated as a separate manifestation

then:

- Downstream Manifestation: NONE

After this derivation, do not independently recompute Downstream Manifestation for the same failure.

GENERATION must not be reported simultaneously as both:
- Primary Root Cause, and
- Downstream Manifestation

for the same failure instance.

GENERATION may appear as a Downstream Manifestation only when an earlier supported upstream failure point exists, such as PRODUCTION_CONTRACT, and that upstream failure explains the generation-stage defect.

Do not output any contradictory combination such as:

- Production Contract Semantically Sufficient: NO together with Primary Root Cause: GENERATION
- Primary Root Cause: GENERATION together with Downstream Manifestation: GENERATION
- Primary Root Cause: GENERATION together with Production Contract revision required solely for that violation: YES

A generated violation must not be used to reverse an already established finding that the inspected Production Contract was semantically sufficient.

Do not classify PRODUCTION_CONTRACT as the Primary Root Cause unless an actual upstream contract defect can be identified independently of the downstream generation failure.

An upstream contract defect must be supported by a missing, incorrect, ambiguous, contradictory, or materially insufficient constraint. The mere existence of a generated failure is not evidence that such an upstream defect existed.

Violation code: SEMANTIC_CONTRACT_ROOT_CAUSE_MISATTRIBUTION.

If multiple independent failure points each materially contribute to the defect, they may be reported separately, but each attribution must explain whether it is a Primary Root Cause, contributing cause, or Downstream Manifestation.

Violation code: ROOT_CAUSE_DOUBLE_ATTRIBUTION.

---

# Targeted Correction

Fix the smallest valid unit capable of solving the root cause.

Possible units:

- FIELD
- STATE
- CLAIM
- EVIDENCE_RECORD
- DIALOGUE_LINE
- ACTION_BEAT
- ASSET
- SHOT
- SCENE
- EPISODE
- STORY_BLOCK
- SERIES

Do not regenerate an entire episode when one dialogue line is the correct correction unit.

---

# Regression Control

A correction contract should specify:

MUST FIX

MUST PRESERVE

MUST NOT INTRODUCE

Every diagnosed violation that the correction is intended to resolve must be included in the regression-check set.

After correction, re-check:

- every MUST FIX violation,
- every MUST PRESERVE requirement that could have been affected,
- every MUST NOT INTRODUCE constraint,
- previously passing requirements that could have been affected.

A correction must not pass Re-QC if it reintroduces the same violation, an equivalent violation, or another violation explicitly prohibited by MUST NOT INTRODUCE.

Do not approve a correction merely because a correction attempt was made.

If a diagnosed violation reappears in the corrected output, classify the correction as failed or requiring further revision before approval.

### Correction Inference Guard

Correction output must be evaluated as new output, not assumed valid merely because it was produced as a correction.

An inference label in analysis does not automatically make an in-scene assertion valid.

If corrected dialogue, narration, action, or production text introduces an interpretation that exceeds the character's established knowledge, evidence support, belief state, or permitted uncertainty, the correction must not pass Re-QC merely because the audit classifies the statement as an inference.

The corrected artifact itself must preserve the appropriate uncertainty, attribution, or confidence level.

For every new claim or interpretation introduced during correction:

1. identify the supporting evidence,
2. verify the character or narrator is allowed to express it,
3. verify the certainty level does not exceed the available support,
4. check whether it creates a new knowledge, belief, identity, evidence, or canon violation,
5. include it in regression checking before approval.

Analysis metadata must never substitute for uncertainty that is required inside the corrected artifact.

Violation code: CORRECTION_UNSUPPORTED_INFERENCE.

---

# Creative Override

Human creators may intentionally break continuity or production rules.

Record the override.

Do not erase the warning.

An override should make the exception explicit rather than silently changing the underlying rule.

---

# Adaptation Mode

When adapting a novel, script, story, comic, or other source, distinguish:

- SOURCE-DERIVED
- INFERRED
- NEWLY_ADAPTED
- RECOMMENDED

A useful adaptation workflow is:

SOURCE MATERIAL
→ CORE STORY ENGINE
→ CHARACTER FUNCTIONS
→ MAJOR CONFLICT
→ KEY PAYOFFS
→ SERIAL RESTRUCTURE
→ VERTICAL EPISODE ARCHITECTURE

Do not pretend newly invented adaptation material came from the source.

---

# Persistence

For long-running projects, store important state outside transient conversation context when the execution environment supports persistent files.

Conceptual structure:

/project-state/
    series.json
    characters.json
    claims.json
    evidence.json
    interpretations.json
    knowledge.json
    beliefs.json
    relationships.json
    locations.json
    props.json
    timeline.json
    plots.json
    obligations.json
    visual-state.json
    episodes.json
    change-log.json

The exact implementation may vary.

---

# Change Log

Important state transitions should preserve provenance.

Possible fields:

- source_episode
- source_scene
- event
- previous_state
- new_state
- reason
- status
- approved_by or approval state

No provenance for a major change may trigger:

UNAUTHORIZED_STATE_CHANGE

---

# Deterministic Validation

Use deterministic validation where possible.

Good candidates include:

- alive / dead consistency,
- known / unknown state,
- prop owner,
- character location,
- timeline order,
- unresolved obligations,
- IDs,
- required fields,
- state provenance,
- duplicate scene IDs,
- contract dependencies.

Use model judgment for areas such as:

- motivation quality,
- emotional plausibility,
- thematic coherence,
- creative impact.

Do not use subjective model judgment when a deterministic state check can resolve the issue.

---

# Evidence and Truth Integrity

Never fabricate:

- market size,
- retention rates,
- completion rates,
- conversion rates,
- revenue,
- platform performance,
- audience response,
- production cost,
- engagement lift,
- paywall performance,
- ranking,
- or other quantitative claims

without reliable evidence.

Clearly distinguish:

- observed information,
- calculated results,
- interpretations,
- assumptions,
- recommendations,
- unverified information.

---

# Required Hard Stops

Block or explicitly refuse to approve downstream output when any of the following materially affects the task:

1. A character uses knowledge they do not possess.
2. PROPOSED material is silently promoted into canon.
3. Generated output rewrites locked story truth.
4. A claim is treated as established fact without justification.
5. Evidence observation is conflated with interpretation.
6. Historical evidence is promoted into current truth without temporal support.
7. Evidence supporting one subclaim is transferred to unrelated subclaims.
8. Resemblance is treated as certain identity without sufficient support.
9. Missing records are treated as proof of non-occurrence without source completeness.
10. Circular reporting is counted as independent corroboration.
11. A critical evidence dependency fails but downstream conclusions remain unqualified.
12. A required QC scope is NOT_CHECKED but the output is presented as FINAL_APPROVED.
13. A critical state-to-behavior constraint is ignored.
14. An unresolved BLOCKER is ignored in FINAL production.

---

# Suggested Output — Greenlight

Use a structure such as:

## Concept
## Scope
## Strengths
## Risks
## Serial Engine
## Unknowns
## Greenlight Decision
## Recommended Next Step

---

# Suggested Output — Episode

Use:

## Opening State
## Hook
## Objective
## Conflict
## Escalation
## Required Information
## Withheld Information
## Reveal
## Payoff
## State Delta
## Cliffhanger
## Next-Episode Obligation
## Continuity Dependencies

---

# Suggested Output — Continuity Report

Use:

## Scope
## Evidence Available
## Current State
## Claims
## Evidence
## Knowledge
## Beliefs
## Timeline
## Props
## Relationships
## Violations
## Severity
## Gate Decision
## Required Corrections

Include only sections relevant to the task.

---

# Suggested Output — Production Contract

Use:

## Contract Metadata
## Production Mode
## Narrative Objective
## Canon Dependencies
## Continuity Inheritance
## Must Preserve
## Flexible
## Forbidden
## Required Assets
## Behavioral Consequences
## Information Behavior
## Claim / Evidence Constraints
## Temporal Constraints
## QC Requirements
## Production Gate

---

# Suggested Output — QC Report

Use:

## QC Scope
## Evidence Available
## Results
## Violations
## Root Cause
## Smallest Valid Correction
## Must Preserve
## Regression Risk
## Scope Decision
## Final Approval Eligibility

Never hide NOT_CHECKED categories.

---

# References

Use the supporting files when deeper guidance is needed:

- references/story-intelligence.md
- references/continuity-system.md
- references/production-contracts.md

Use templates when producing structured artifacts:

- templates/series-bible.md
- templates/episode-contract.md
- templates/continuity-state.md
- templates/production-contract.md
- templates/qc-report.md

---

# Evaluation

Use:

evals/evals.json

for structured evaluation scenarios.

Evaluation should test at minimum:

- story intelligence,
- continuity integrity,
- production contract quality,
- truth and evidence integrity,
- claim handling,
- identity handling,
- temporal scope,
- production mode behavior,
- QC scope integrity,
- root-cause analysis,
- actionability.

A high aggregate score must not override a hard failure.

---

# Free Edition Scope

The initial public/free Skill may include:

- concept qualification,
- greenlight,
- Series Bible,
- Character Bible,
- Story Blocks,
- Episode Architecture,
- Hook / Reveal / Cliffhanger analysis,
- Story Obligations,
- core continuity,
- basic claim and evidence reasoning,
- production contracts,
- prototype readiness,
- basic QC,
- production readiness.

---

# Planned Pro Direction

Possible future Pro capabilities may include:

- live market intelligence,
- current trope and competitor analysis,
- richer greenlight research,
- advanced season architecture,
- reveal ladders,
- paywall architecture,
- relationship graphs,
- visual continuity contracts,
- shot-level production systems,
- automated project-state persistence,
- performance-data analysis,
- retention diagnosis,
- next-episode optimization,
- multi-series studio workflows.

These are roadmap directions, not guaranteed current features.

---

# Product Boundary

Vertical Drama Intelligence is an intelligence and production-control layer.

It is not intended to replace:

- video generation models,
- image models,
- editors,
- TTS systems,
- asset storage,
- rendering infrastructure,
- publishing systems.

The user may bring their own production tools.

The Skill preserves story intent, continuity, reasoning integrity, and production constraints across those tools.

---

# Final Operating Rule

Do not collapse:

CLAIM → FACT

COMPOUND CLAIM → SINGLE TRUTH STATE

EVIDENCE → INTERPRETATION

RESEMBLANCE → IDENTIFICATION

BELIEF → KNOWLEDGE

PAST STATE → CURRENT STATE

NO RECORD FOUND → EVENT DID NOT HAPPEN

MULTIPLE DOCUMENTS → MULTIPLE INDEPENDENT SOURCES

DERIVED EVIDENCE → DIRECT OBSERVATION

PROPOSED → LOCKED CANON

MODEL OUTPUT → CANON

PASS_FOR_SCOPE → FINAL_APPROVED

The stable MVP architecture is:

TRUTH
→ STORY
→ STATE
→ CLAIM
→ EVIDENCE
→ INTERPRETATION
→ TRANSITION
→ CONTRACT
→ PRODUCTION
→ VALIDATION
→ UPDATE




















# Continuity System

Version: 0.4

## Purpose

The Continuity System maintains narrative, informational, temporal, physical, relational, evidentiary, and visual consistency across serialized vertical drama.

Its purpose is not merely to prevent costume mistakes.

It answers:

- What is currently true?
- How do we know it?
- Is it approved canon?
- Who knows it?
- Who believes it?
- Who merely claims it?
- What evidence supports it?
- When is it true?
- What changed?
- What must remain true in the next scene?
- What production behavior follows from the state?
- What contradictions should block downstream production?

The central principle is:

STORY CONTINUITY IS STATE MANAGEMENT.

The foundation is:

TRUTH
→ CANON
→ CLAIM
→ EVIDENCE
→ INTERPRETATION
→ KNOWLEDGE
→ BELIEF
→ TEMPORAL STATE
→ TRANSITION
→ VALIDATION
→ PERSISTENCE

---

# 1. Continuity Domains

Track only domains that materially affect the story.

Possible domains:

- Character State
- Knowledge State
- Belief State
- Relationship State
- Goal State
- Emotional State
- Physical / Injury State
- Character Availability
- Location State
- Timeline State
- Prop / Object State
- Plot State
- Story Obligations
- Claim State
- Evidence State
- Identity State
- Visual State
- Scene State
- Canon State

Not every project requires every domain.

---

# 2. Truth Status

Truth Status answers:

How is this information supported?

Use:

CONFIRMED

OBSERVED

CALCULATED

INFERRED

ASSUMED

PENDING

---

# 3. CONFIRMED

Use when the information is explicitly established by trusted project truth.

Examples:

The user states Daniel is Maya's brother.

The locked Series Bible states Anna's father is dead.

Do not downgrade confirmed project truth merely because a generated scene contradicts it.

The generated scene is the error.

---

# 4. OBSERVED

Use when the information is directly present in inspected source material or generated output.

Example:

The generated frame shows the watch in Maya's hand.

OBSERVED does not necessarily mean the observation is canonically valid.

---

# 5. CALCULATED

Use for deterministic derivations.

Example:

Episode 12 occurs three episodes after Episode 9.

Do not use CALCULATED for subjective interpretation.

---

# 6. INFERRED

Use for conclusions derived from available information but not directly established.

Example:

David probably accessed the records to protect Anna.

If the story has not established his motive, this remains inference.

---

# 7. ASSUMED

Use when a temporary assumption is necessary to continue work.

Example:

Target episode duration is temporarily assumed to be 75 seconds.

ASSUMED must not silently become CONFIRMED.

---

# 8. PENDING

Use when important information is unresolved.

Example:

The true antagonist is not yet decided.

Do not fill PENDING fields merely because an answer would make generation easier.

---

# 9. Canon Status

Canon Status answers:

Has this become part of the approved story?

Use:

PROPOSED

APPROVED

LOCKED

SUPERSEDED

---

# 10. PROPOSED

A recommended or candidate story element.

Example:

The Agent proposes Evelyn as the real antagonist.

This does not mean Evelyn is the antagonist.

---

# 11. APPROVED

The element has been accepted into the working story.

It may still be revised.

---

# 12. LOCKED

The element is treated as a source of truth for downstream work.

Changing it requires explicit revision.

---

# 13. SUPERSEDED

A previously valid canon element has been replaced through an approved revision.

Preserve the history when materially relevant.

---

# 14. Truth and Canon Are Independent

A record may have both:

Truth Status

and:

Canon Status

Example:

Statement:

Evelyn is the antagonist.

Truth Status:

ASSUMED

Canon Status:

PROPOSED

This is not equivalent to:

Truth Status:

CONFIRMED

Canon Status:

LOCKED

---

# 15. Canon Promotion

Normal promotion:

PROPOSED
→ APPROVED
→ LOCKED

Do not promote canon because:

- a model generated it,
- a draft included it,
- it appeared in an example,
- it would simplify the plot.

Violation:

UNAUTHORIZED_CANON_PROMOTION

---

# 16. Claim Layer

A Claim records an assertion made by a person, document, recording, message, narrator, or other source.

A claim is not automatically a fact.

Recommended fields:

claim_id

parent_claim_id

speaker_or_source

statement

subject

temporal_scope

source_episode

source_scene

credibility

corroboration_status

truth_relationship

canon_status

subclaim_ids

---

# 17. Claim Corroboration Status

Use:

UNVERIFIED

PARTIALLY_CORROBORATED

CORROBORATED

DISPROVEN

CONTRADICTED

UNRESOLVED

These statuses describe support for the content of the claim.

They do not determine whether the claim was actually made.

---

# 18. Claim vs Claim Content

Example:

Marcus says:

"Nora started the fire."

The following may be CONFIRMED:

Marcus accused Nora of starting the fire.

The following may remain PENDING:

Nora started the fire.

Keep them separate.

---

# 19. Claim Attribution

Preserve the source of material claims.

Incorrect:

Lena discovered Nora started the fire.

Correct:

Lena learned that Marcus accused Nora of starting the fire.

If source reliability matters, losing attribution is a continuity failure.

Violation:

CLAIM_ATTRIBUTION_ERROR

---

# 20. Compound Claims

A statement may contain several independently testable assertions.

Example:

"Nora started the fire and escaped afterward."

Subclaims:

A. Nora started the fire.

B. Nora survived the initial incident.

C. Nora left the hotel.

Do not transfer evidence from one subclaim to another.

Violation:

COMPOUND_CLAIM_COLLAPSE

---

# 21. Compound Claim Structure

Recommended fields:

parent_claim_id

subclaim_ids

original_statement

speaker_or_source

source_episode

source_scene

Each subclaim receives its own:

statement

temporal_scope

corroboration_status

truth_relationship

canon_status

---

# 22. Evidence Layer

Evidence records what was actually observed, found, measured, inspected, heard, or retrieved.

Recommended fields:

evidence_id

evidence_type

object_or_source

observation

source_episode

source_scene

temporal_scope

origin_source

derived_from

chain_of_custody

integrity_status

identity_status

dependencies

truth_status

canon_status

---

# 23. Evidence Types

Possible types:

OBJECT

DOCUMENT

RECORDING

IMAGE

VIDEO

TESTIMONY

LOG

PHYSICAL_TRACE

DIGITAL_RECORD

OBSERVATION

DERIVED

OTHER

---

# 24. Evidence Observation

Evidence should first record observation.

Example:

Observation:

The watch casing contains a repair date eight months after Daniel disappeared.

Do not write the interpretation directly into the observation field.

---

# 25. Evidence vs Interpretation

Observation:

The repair date is eight months after disappearance.

Interpretation:

Daniel may have possessed the watch after disappearing.

These are different records.

Violation:

EVIDENCE_INTERPRETATION_CONFLATION

---

# 26. Evidence Integrity

Use:

INTACT

QUESTIONED

TAMPERED

INCOMPLETE

UNKNOWN

Example:

An anonymous memory card may initially have:

Integrity:

QUESTIONED

because its prior chain of custody is unknown.

---

# 27. Evidence Provenance

For important evidence, preserve materially relevant provenance.

Possible fields:

origin_source

discovered_by

discovered_at

source_episode

source_scene

source_artifact

source_version

previous_owner

current_owner

storage_location

tampering_status

Violation:

EVIDENCE_PROVENANCE_MISSING

when missing provenance materially changes evidentiary value.

---

# 28. Chain of Custody

Use chain of custody when object history affects trust.

Example:

PROP_DANIEL_WATCH_001

Previous Owner:

Stranger

Transferred To:

Maya

Scene:

EP007_SC03

Tampering Status:

UNKNOWN

A broken chain does not necessarily invalidate the object, but it may reduce confidence.

---

# 29. Evidence Dependency Graph

Some evidence depends on upstream elements.

Recommended fields:

evidence_id

depends_on

dependency_type

dependency_status

criticality

Dependency Status:

VALID

QUESTIONED

BROKEN

UNKNOWN

Criticality:

CRITICAL

SUPPORTING

OPTIONAL

---

# 30. Dependency Propagation

If a CRITICAL dependency is BROKEN, downstream conclusions must be reconsidered.

Possible downstream results:

QUESTIONED

INVALID

REVIEW_REQUIRED

Do not automatically invalidate unrelated evidence.

---

# 31. Evidence Dependency Example

DNA identification may depend on:

sample provenance

→ chain of custody

→ reference sample identity

→ laboratory process

→ comparison result

If reference sample identity is BROKEN, a technically correct lab comparison may still fail to establish identity.

---

# 32. Derived Evidence

Some records are produced by combining other evidence.

Example:

A reconstructed event timeline uses:

CCTV

phone logs

fire alarm records

witness statements

Mark the reconstruction as:

DERIVED

Preserve its dependencies.

Do not present it as raw observation.

Violation:

DERIVED_EVIDENCE_SOURCE_LOSS

---

# 33. Source Lineage

Multiple artifacts may share one original source.

Recommended fields:

origin_source

derived_from

repeats_claim

independent_source

This prevents circular corroboration.

---

# 34. False Independent Corroboration

Example:

Marcus makes a claim.

A police report repeats Marcus.

Three news articles repeat the police report.

This is not necessarily five independent sources.

Violation:

FALSE_INDEPENDENT_CORROBORATION

---

# 35. Negative Evidence

Missing records may matter only when a record should reliably exist.

Recommended fields:

negative_evidence_id

expected_event

expected_source

source_completeness

search_scope

observation

interpretation

confidence

---

# 36. Negative Evidence Questions

Before treating absence as meaningful, ask:

Was the event expected to leave a trace?

Was the correct source checked?

Was the source complete?

Was the relevant period covered?

Could the event have occurred through another channel?

---

# 37. Negative Evidence Confidence

Use categorical confidence such as:

WEAK

PLAUSIBLE

SUPPORTED

STRONGLY_SUPPORTED

Do not invent percentages.

---

# 38. Negative Evidence Example

Claim:

Marcus called emergency services at 23:15.

Complete carrier logs for the correct phone show no outgoing call.

Supported interpretation:

Marcus probably did not use that phone/account to make the call.

Unsupported conclusion:

Marcus never contacted emergency services by any method.

Violation:

NEGATIVE_EVIDENCE_OVERCLAIM

---

# 39. Source Completeness

If source completeness is unknown:

do not use absence strongly.

Violation:

SOURCE_COMPLETENESS_UNKNOWN

when the system treats an incomplete or unknown source as complete.

---

# 40. Identity State

Evidence may refer to an entity without proving identity.

Use:

IDENTIFIED

LIKELY_MATCH

POSSIBLE_MATCH

UNKNOWN

EXCLUDED

---

# 41. Identity Record

Recommended fields:

entity_reference_id

observed_entity

candidate_identity

identity_status

basis

alternative_candidates

source_evidence

---

# 42. Presence vs Identity

Example:

A woman appears in Room 407.

Presence may be OBSERVED.

Identity may remain:

POSSIBLE_MATCH: Nora

Do not collapse presence into identification.

Violation:

IDENTITY_OVERCLAIM

---

# 43. Voice Identity

The same rules apply to audio.

Example:

A voicemail sounds like Daniel.

Correct:

voice identity = LIKELY_MATCH

Incorrect:

Daniel definitely recorded the message.

unless additional evidence establishes it.

---

# 44. Identity Promotion

Possible progression:

UNKNOWN
→ POSSIBLE_MATCH
→ LIKELY_MATCH
→ IDENTIFIED

Promotion should be supported by evidence or explicit story truth.

Generated resemblance is not sufficient by itself.

---

# 45. Interpretation Layer

Interpretation records conclusions drawn from claims and evidence.

Recommended fields:

interpretation_id

conclusion

based_on

alternative_explanations

confidence_category

temporal_scope

identity_assumptions

dependency_assumptions

status

---

# 46. Interpretation Confidence

Use:

WEAK

PLAUSIBLE

SUPPORTED

STRONGLY_SUPPORTED

DISPUTED

Avoid fake percentages.

---

# 47. Alternative Explanations

When multiple explanations remain materially plausible, preserve them.

Example:

A timestamp discrepancy may mean:

the footage timestamp was altered,

the official event time was wrong,

the file date was wrong,

or the footage came from another event.

Do not eliminate alternatives without evidence.

---

# 48. Fact Record

For important established facts, use:

fact_id

statement

subject

temporal_scope

truth_status

canon_status

source

valid_from

valid_to

A fact should not inherit certainty from an unsupported interpretation.

---

# 49. Knowledge State

Knowledge answers:

WHO KNOWS WHAT

SINCE WHEN

HOW THEY LEARNED IT

Recommended fields:

knowledge_id

character_id

proposition

temporal_scope

source

since_episode

since_scene

truth_relationship

status

---

# 50. Knowledge Rule

Characters may know about claims without knowing whether the claim is true.

Example:

Maya knows:

The stranger claims Daniel is alive.

Maya does not know:

Daniel is alive.

This distinction is mandatory when it affects the story.

---

# 51. Knowledge Acquisition

A character should acquire information through an identifiable route.

Examples:

witnessed event

conversation

document

recording

inference

investigation

trusted report

Do not give characters unexplained information.

Violation:

KNOWLEDGE_STATE_VIOLATION

---

# 52. Belief State

Belief records what a character thinks is true.

Belief is separate from knowledge and external truth.

Recommended fields:

belief_id

character_id

belief

target

confidence_state

source

since_episode

temporal_scope

status

---

# 53. Belief Confidence

Use:

UNAWARE

DOUBTFUL

SUSPICIOUS

LEANING

CONVINCED

DISPROVEN

Do not use fabricated confidence percentages.

---

# 54. Belief Example

External Truth:

David's motive is unresolved.

Anna Knowledge:

David accessed the inheritance file.

Anna Belief:

David forged the file.

Confidence:

CONVINCED

This is allowed.

Her belief must not be converted into story truth.

---

# 55. Belief Transitions

Belief changes should have a causal trigger.

Example:

CONVINCED David is guilty

→ new evidence contradicts theory

→ SUSPICIOUS

A belief should not change purely to satisfy the next scene.

Violation:

BELIEF_STATE_VIOLATION

---

# 56. Belief vs Knowledge Change

A character may receive new evidence and alter belief without gaining certainty.

Example:

Maya learns a witness claim was false.

Knowledge changes:

Witness statement is unreliable.

Belief changes:

Daniel may still be alive becomes more plausible.

External truth may remain unresolved.

---

# 57. Relationship State

Relationships should persist across episodes.

Possible dimensions:

trust

hostility

attraction

loyalty

dependency

fear

leverage

debt

professional authority

Use only relevant dimensions.

---

# 58. Relationship Confidence Categories

When useful, trust may use:

HOSTILE

DISTRUSTFUL

UNCERTAIN

CAUTIOUS

TRUSTING

LOYAL

Do not force every relationship into this scale.

---

# 59. Relationship Transition

Relationship changes require cause.

Example:

DISTRUSTFUL

→ David saves Anna from evidence destruction and provides proof

→ CAUTIOUS

Avoid:

HOSTILE
→ LOYAL

without intervening events.

Violation:

RELATIONSHIP_STATE_VIOLATION

---

# 60. Goal State

Track important active goals.

Possible transitions:

ADVANCE

BLOCK

CHANGE

COMPLETE

ABANDON

REPLACE

Characters should not forget central goals without explanation.

---

# 61. Character Goal Conflict

If a generated action directly contradicts a locked goal without a causal transition:

CHARACTER_GOAL_CONFLICT

Example:

A character whose locked goal is to protect the evidence voluntarily destroys it for no established reason.

---

# 62. Emotional State

Emotional state may change rapidly.

Examples:

fear

anger

relief

grief

jealousy

hope

Do not confuse temporary emotion with persistent relationship state.

---

# 63. Emotional Continuity

If the previous scene ends with major grief and the next begins moments later with unexplained carefree behavior:

EMOTIONAL_CONTINUITY_WARNING

Use judgment.

Not every emotional shift requires a hard block.

---

# 64. Physical State

Track physical conditions that affect later action.

Examples:

healthy

injured

bleeding

fatigued

intoxicated

unconscious

recovering

dead

restricted movement

---

# 65. Injury State

Recommended fields:

injury_id

character_id

body_location

condition

severity

onset_episode

status

behavioral_consequences

visual_indicators

recovery_state

---

# 66. State to Behavioral Consequences

Important states should produce observable production constraints.

Example:

State:

right abdominal wound ACTIVE

Consequences:

limited torso rotation

avoids sudden acceleration

difficulty standing rapidly

visible guarding

Forbidden:

normal full-speed sprint

unrestricted fighting

---

# 67. Conservative Consequence Rule

Do not overderive behavior.

Example:

Minor wrist sprain

does not imply:

cannot walk

cannot speak

cannot stand

Only derive consequences that materially follow.

---

# 68. Physical State Conflict

If generated action contradicts an established critical physical state:

PHYSICAL_STATE_CONFLICT

If the Production Contract explicitly derived the behavior and generation still violates it:

STATE_BEHAVIOR_CONFLICT

---

# 69. Character Availability

Track whether a character is:

alive

dead

missing

unconscious

imprisoned

out of location

otherwise unavailable

A dead character cannot physically enter a present-day scene unless:

flashback

dream

recording

supernatural rule

or another established explanation applies.

Violation:

CHARACTER_AVAILABILITY_CONFLICT

---

# 70. Prop State

Track important objects.

Recommended fields:

prop_id

description

owner

holder

location

condition

visibility

canon_status

last_transition

---

# 71. Prop Transitions

Possible transitions:

TRANSFERRED

LOST

FOUND

HIDDEN

DESTROYED

DAMAGED

STOLEN

REVEALED

A transfer should update ownership or possession explicitly.

---

# 72. Prop Ownership Violation

Example:

Episode 7 transfers Daniel's watch from Stranger to Maya.

Episode 9 shows Stranger carrying it again.

No return transfer occurred.

Violation:

PROP_OWNERSHIP_VIOLATION

---

# 73. Object Identity

Do not confuse two visually similar props if identity matters.

Use stable IDs.

Example:

PROP_DANIEL_WATCH_001

not merely:

"the watch"

when multiple watches may appear.

---

# 74. Location State

Track materially relevant location information.

Possible fields:

location_id

character_id

current_location

entry_scene

exit_scene

travel_requirement

status

---

# 75. Location Continuity

A character should not appear in a distant location moments later without:

travel

time passage

transition

or an established mechanism.

Use:

LOCATION_CONTINUITY_WARNING

or BLOCK when the contradiction is material.

---

# 76. Timeline State

Distinguish:

STORY_TIME

from:

EPISODE_ORDER

Episode 20 may contain a flashback to events before Episode 1.

Do not interpret episode number as chronological time.

---

# 77. Temporal Scope

Use when materially relevant:

CURRENT

PAST

FUTURE

RANGE

AT_EVENT

UNKNOWN_TIME

TIMELESS

---

# 78. Temporal Fact Example

Fact:

Daniel was alive eight months after disappearing.

Temporal Scope:

PAST

This does not establish:

Daniel is alive now.

Violation:

TEMPORAL_SCOPE_VIOLATION

if past status is silently promoted to current status.

---

# 79. Temporal Knowledge

A character may know a historical fact without knowing current state.

Example:

Maya knows Daniel was seen in 2023.

Maya does not know Daniel's 2026 status.

---

# 80. Temporal Belief

Beliefs should also distinguish time.

Example:

Belief A:

Daniel survived the initial disappearance.

Scope:

PAST

Confidence:

CONVINCED

Belief B:

Daniel is alive now.

Scope:

CURRENT

Confidence:

LEANING

---

# 81. Temporal Contradiction

Statements are not contradictory merely because they differ.

Example:

Sarah was alive in 2019.

Sarah died in 2024.

No contradiction.

But:

Sarah died permanently in 2024.

Sarah physically enters a current 2026 office scene.

No explanation.

This is a conflict.

---

# 82. Current State Resolution

Current state should normally be derived from the latest valid state transition in the applicable timeline.

Do not derive current state solely from an old historical observation.

---

# 83. Plot State

Track major plot threads.

Possible states:

INTRODUCED

ACTIVE

ESCALATING

PARTIALLY_RESOLVED

RESOLVED

ABANDONED

DEFERRED

---

# 84. Plot State Conflict

If an episode treats an unresolved plot as solved without an approved transition:

PLOT_STATE_CONFLICT

---

# 85. Story Obligations

Story Obligations track promises or questions the narrative owes.

Recommended fields:

obligation_id

priority

created_episode

source

question_or_promise

status

last_reinforced

target_payoff

---

# 86. Obligation Priority

Use:

PRIMARY

SECONDARY

LOCAL

PRIMARY:

central series promise

SECONDARY:

supporting arc

LOCAL:

short-term episode or scene question

---

# 87. Obligation Lifecycle

Use:

CREATED

ACTIVE

DEFERRED

PARTIALLY_PAID

PAID

TRANSFORMED

CANCELLED_WITH_REASON

---

# 88. Next-Episode Obligation

A cliffhanger normally creates an obligation.

The following episode should:

PAY

EXPLICITLY_DEFER

or:

TRANSFORM

Do not simply ignore it.

Violation:

UNRESOLVED_EPISODE_PROMISE

---

# 89. Obligation Aging

Aging should consider:

AGE

PRIORITY

REINFORCEMENT

STORY CONTEXT

A PRIMARY mystery can remain active longer than a LOCAL question.

---

# 90. Obligation Priority Conflict

If a minor local obligation repeatedly displaces the primary series promise without reason:

OBLIGATION_PRIORITY_CONFLICT

Use as warning unless structurally severe.

---

# 91. Visual State

Track visual continuity when production requires it.

Possible domains:

identity

age appearance

hair

wardrobe

makeup

injury appearance

props

location appearance

character position

screen direction

lighting

time of day

weather

environmental damage

visual anchors

---

# 92. Identity Continuity

Character identity should remain stable unless story or production intentionally changes it.

Possible violation:

IDENTITY_CONTINUITY_ERROR

Visual identity evidence must be inspected before declaring PASS.

---

# 93. Wardrobe State

Track wardrobe when persistent across adjacent scenes or when story-important.

Violation:

WARDROBE_CONTINUITY_ERROR

Do not overtrack clothing in scenes where continuity does not matter.

---

# 94. Visual Prop Continuity

A prop may be narratively owned correctly but visually missing or altered.

Possible violation:

VISUAL_PROP_CONTINUITY_ERROR

Narrative and visual prop state are related but not identical.

---

# 95. Screen Direction

When spatial continuity matters, track:

character position

facing

movement direction

camera axis

Use:

SCENE_DIRECTION_WARNING

when visual geography becomes confusing.

Not every axis change is an error.

---

# 96. Scene State

Before production, define relevant scene truth.

Suggested fields:

scene_id

story_time

location

characters_present

character_knowledge

character_beliefs

relationships

goals

physical_state

props

active_plot_threads

active_obligations

relevant_claims

relevant_evidence

required_visual_state

canon_dependencies

---

# 97. Scene State Contract

Scene State acts as pre-production truth.

It answers:

What is true at the beginning of this scene?

What is unresolved?

What must not change without an event?

---

# 98. State Delta

After an approved scene, record only changes.

Recommended fields:

delta_id

scene_id

entity

field

previous_state

new_state

cause

source

truth_status

canon_status

---

# 99. State Delta Examples

Maya:

belief Daniel currently alive

LEANING
→ CONVINCED

Watch:

owner Stranger
→ Maya

Plot:

OBL_WATCH_PROVENANCE

ACTIVE
→ PARTIALLY_PAID

---

# 100. State Transition Provenance

Important transitions should record:

source_episode

source_scene

event

reason

previous_state

new_state

status

No provenance for a major state change may trigger:

UNAUTHORIZED_STATE_CHANGE

---

# 101. Locked State

Locked upstream truth must not be overwritten casually.

If change is required:

REVISION REQUEST
→ IMPACT ANALYSIS
→ APPROVAL
→ NEW VERSION
→ DOWNSTREAM REVIEW

---

# 102. Continuity Validation

Before approving a scene or episode, compare:

opening state

required state

generated / proposed events

state delta

next state

Check for contradictions.

---

# 103. Deterministic Checks

Good deterministic candidates include:

alive / dead

known / unknown

prop owner

location

timeline order

obligation status

identity IDs

duplicate scene IDs

required fields

state provenance

contract dependencies

---

# 104. Judgment Checks

Model judgment may be needed for:

motivation plausibility

emotional continuity

relationship plausibility

theme

dramatic significance

Do not use subjective judgment when a deterministic state check can resolve the issue.

---

# 105. Violation Severity

Use:

HARD ERROR

MAJOR WARNING

MINOR WARNING

ADVISORY

For production QC, equivalent severity may be:

BLOCKER

MAJOR

MINOR

ADVISORY

---

# 106. HARD ERROR / BLOCKER

Use when downstream production should not proceed without correction or explicit override.

Examples:

dead character appears physically with no explanation

character reveals locked forbidden secret early

generated output promotes proposed villain into confirmed canon

critical evidence dependency broken but conclusion treated as certain

---

# 107. MAJOR WARNING

Use for serious continuity problems that may not always require full block.

Example:

important relationship shifts abruptly without sufficient transition.

---

# 108. MINOR WARNING

Use for noticeable but limited inconsistency.

Example:

minor location transition ambiguity.

---

# 109. ADVISORY

Use for improvement opportunities rather than contradictions.

---

# 110. Core Violation Codes

Possible codes:

KNOWLEDGE_STATE_VIOLATION

BELIEF_STATE_VIOLATION

RELATIONSHIP_STATE_VIOLATION

CHARACTER_GOAL_CONFLICT

EMOTIONAL_CONTINUITY_WARNING

PHYSICAL_STATE_CONFLICT

STATE_BEHAVIOR_CONFLICT

PROP_OWNERSHIP_VIOLATION

LOCATION_CONTINUITY_WARNING

TIMELINE_CONFLICT

TEMPORAL_SCOPE_VIOLATION

PLOT_STATE_CONFLICT

UNRESOLVED_EPISODE_PROMISE

OBLIGATION_PRIORITY_CONFLICT

CHARACTER_AVAILABILITY_CONFLICT

IDENTITY_CONTINUITY_ERROR

IDENTITY_OVERCLAIM

ENTITY_RESOLUTION_CONFLICT

WARDROBE_CONTINUITY_ERROR

VISUAL_PROP_CONTINUITY_ERROR

SCENE_DIRECTION_WARNING

TRUTH_STATUS_VIOLATION

CANON_STATUS_VIOLATION

UNAUTHORIZED_CANON_PROMOTION

UNAUTHORIZED_STATE_CHANGE

CLAIM_AS_FACT_VIOLATION

CLAIM_ATTRIBUTION_ERROR

COMPOUND_CLAIM_COLLAPSE

EVIDENCE_INTERPRETATION_CONFLATION

EVIDENCE_PROVENANCE_MISSING

EVIDENCE_CHAIN_CONFLICT

NEGATIVE_EVIDENCE_OVERCLAIM

SOURCE_COMPLETENESS_UNKNOWN

DEPENDENCY_INTEGRITY_FAILURE

FALSE_INDEPENDENT_CORROBORATION

DERIVED_EVIDENCE_SOURCE_LOSS

QC_EVIDENCE_MISSING

---

# 111. Continuity Gate

Return:

PASS

PASS_WITH_WARNINGS

REVISE

BLOCK

---

# 112. PASS

No material contradiction detected within the checked scope.

Relevant required evidence was available.

---

# 113. PASS_WITH_WARNINGS

No blocking conflict exists, but one or more uncertainties or non-blocking issues remain.

---

# 114. REVISE

The current proposal or generated output contains material correctable issues.

---

# 115. BLOCK

A hard contradiction, unauthorized canon change, unresolved blocker, or critical dependency prevents safe downstream production.

---

# 116. Evidence-Aware Validation

A continuity check may only PASS a category when relevant evidence was actually available.

If evidence was unavailable:

NOT_CHECKED

Do not infer PASS from silence.

---

# 117. QC Result States

At check level use:

PASS

FAIL

NOT_CHECKED

NOT_APPLICABLE

---

# 118. NOT_CHECKED Example

Input:

Dialogue transcript only.

Requested:

Visual identity continuity.

Result:

NOT_CHECKED

not:

PASS

because no visual evidence was inspected.

---

# 119. Creative Override

A creator may intentionally violate a continuity rule.

Record:

override reason

affected rule

affected state

approver

downstream impact

Do not erase the original warning.

---

# 120. Persistence

For long-running projects, continuity state should survive beyond one context window when the environment supports persistent storage.

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

---

# 121. Persistent State Rule

Do not assume conversational memory alone is sufficient for long-running production.

Where supported, persist critical state externally.

---

# 122. Canon vs Generated Output

Generated output may introduce:

new dialogue

new movement

new framing

new visual detail

These do not automatically become canon.

Only approved state changes should update persistent canon.

---

# 123. Output Approval and State Update

Use:

GENERATED OUTPUT
→ QC
→ APPROVAL
→ STATE DELTA
→ PERSISTENT UPDATE

Not:

GENERATED OUTPUT
→ STATE UPDATE

---

# 124. Canonical Claims

A false statement can still be canonical dialogue.

Example:

David lies:

"Evelyn stole the contract."

Canon:

David said this.

Truth:

Evelyn did not steal the contract.

The system must support canonical falsehoods.

---

# 125. Canonical Beliefs

A character belief may be canonically established.

Example:

Anna is CONVINCED David betrayed her.

This does not mean:

David betrayed Anna.

---

# 126. Evidence Can Be Canonically Present but Unreliable

Example:

A forged document exists in the story.

Canon:

The characters possess the document.

Truth about document:

It is forged.

Evidence Integrity:

TAMPERED

Do not remove evidence merely because it is false or manipulated.

---

# 127. Mystery Safety Rule

Do not allow the system to solve an intentionally unresolved mystery merely to complete a state table.

Keep:

PENDING

UNVERIFIED

UNKNOWN

when appropriate.

---

# 128. Information Collapse Rules

Do not collapse:

CLAIM
→ FACT

COMPOUND CLAIM
→ SINGLE TRUTH STATE

EVIDENCE
→ INTERPRETATION

RESEMBLANCE
→ IDENTIFICATION

BELIEF
→ KNOWLEDGE

PAST STATE
→ CURRENT STATE

NO RECORD FOUND
→ EVENT DID NOT HAPPEN

MULTIPLE DOCUMENTS
→ MULTIPLE INDEPENDENT SOURCES

DERIVED EVIDENCE
→ DIRECT OBSERVATION

PROPOSED
→ LOCKED CANON

MODEL OUTPUT
→ CANON

---

# 129. Continuity Report Structure

For substantial continuity work, use:

## Scope

## Evidence Available

## Truth State

## Canon State

## Claims

## Evidence

## Interpretations

## Character Knowledge

## Character Beliefs

## Relationships

## Physical State

## Props

## Locations

## Timeline

## Plot State

## Story Obligations

## Visual State

## Violations

## Severity

## Gate Decision

## Required Corrections

Only include relevant sections.

---

# 130. Compact Continuity Check

For a narrow task, use:

Current State

Conflict Found

Why It Conflicts

Severity

Required Fix

Gate Decision

Do not force a full state report.

---

# 131. State Update Checklist

Before committing a State Delta, verify:

Was the event actually approved?

Does the transition have provenance?

Does it contradict locked canon?

Does it promote an assumption?

Does it change knowledge?

Does it change belief?

Does it change relationship?

Does it change physical state?

Does it move a prop?

Does it create or pay an obligation?

Does it alter a timeline fact?

Does it require downstream invalidation?

---

# 132. Long-Series Rule

As episode count increases, continuity discipline becomes more important.

Do not rely on a single prose summary for dozens of episodes when structured state is possible.

Track only what materially affects future continuity.

Avoid state bloat.

---

# 133. State Compression

When state becomes large:

preserve active facts

preserve locked canon

preserve unresolved obligations

preserve current knowledge

preserve current beliefs

preserve important relationships

preserve active physical constraints

archive resolved historical detail when safe

Do not discard provenance needed for future contradictions.

---

# 134. State Ownership

Where multiple files or agents exist, define which artifact owns each class of truth.

Example:

Series Bible owns locked series premise.

Character state store owns current character state.

Episode Contract owns episode intent.

Production Contract owns execution constraints.

Generated output owns no canon until approved.

This prevents competing sources of truth.

---

# 135. Artifact Ownership Conflict

If two artifacts define the same critical state differently:

do not choose silently.

Flag:

ARTIFACT_OWNERSHIP_CONFLICT

and resolve source-of-truth precedence.

---

# 136. Source-of-Truth Precedence

Default precedence:

USER-CONFIRMED TRUTH

→ LOCKED SERIES BIBLE

→ LOCKED CONTINUITY STATE

→ LOCKED EPISODE CONTRACT

→ LOCKED SCENE CONTRACT

→ SHOT CONTRACT

→ GENERATED OUTPUT

This may be overridden by explicit project rules.

---

# 137. Human Authority

The user or authorized human creator may revise story truth.

The system should:

record the revision

identify affected downstream state

mark stale artifacts

revalidate dependent work

Do not resist legitimate creative decisions merely because they conflict with an older version.

---

# 138. Revision Impact

An upstream change may make downstream artifacts:

VALID

STALE

INVALID

REVIEW_REQUIRED

Example:

Changing the true antagonist may invalidate:

reveal ladder

episode clues

character beliefs

production contracts

but not necessarily unrelated location assets.

---

# 139. Continuity Gate Before Production

Before FINAL production, ensure:

critical locked story truth exists

required state is internally consistent

no unresolved hard continuity error exists

critical props and identities are coherent

forbidden information is identified

relevant temporal state is valid

required behavioral consequences are derived

---

# 140. Prototype Continuity

PROTOTYPE production may proceed with:

ASSUMED

PENDING

DRAFT

elements when the prototype objective allows it.

Warnings must remain explicit.

Prototype output does not silently resolve unknowns.

---

# 141. Final Continuity

FINAL production requires stronger stability.

Critical dependencies should normally be:

APPROVED

or:

LOCKED

unless an explicit override exists.

---

# 142. Evidence Integrity Hard Stops

Block when materially relevant:

an unverified claim is converted into fact

a critical evidence dependency is BROKEN but ignored

source lineage is lost and circular corroboration is treated as independent

historical evidence is converted to current truth

identity is asserted beyond evidence

forged evidence is treated as intact

a derived conclusion is presented as direct observation

---

# 143. Character Integrity Hard Stops

Block when materially relevant:

a character uses unavailable knowledge

a dead or unavailable character acts physically without explanation

a critical physical state is ignored

a locked relationship or goal changes without transition

---

# 144. Canon Integrity Hard Stops

Block when:

PROPOSED material becomes canon automatically

generated output rewrites LOCKED truth

ASSUMED information becomes CONFIRMED without support

SUPERSEDED truth continues to drive current production without review

---

# 145. Continuity Philosophy

The system should not attempt to eliminate all ambiguity.

Good drama often depends on:

uncertainty

misunderstanding

lies

partial information

conflicting interpretations

unreliable evidence

The job of continuity is not to make every character correct.

The job is to preserve exactly:

what is true,

what is claimed,

what is observed,

what is inferred,

what each character knows,

what each character believes,

and what remains unresolved.

---

# 146. Final Principle

Continuity is not a list of trivia.

It is a controlled system of:

TRUTH
→ CANON
→ CLAIM
→ EVIDENCE
→ INTERPRETATION
→ KNOWLEDGE
→ BELIEF
→ STATE
→ TRANSITION
→ VALIDATION
→ PERSISTENCE

Every important state change should answer:

WHAT CHANGED?

WHY DID IT CHANGE?

WHO KNOWS?

WHO BELIEVES?

WHEN IS IT TRUE?

WHAT EVIDENCE SUPPORTS IT?

IS IT CANON?

WHAT DOES PRODUCTION NOW HAVE TO PRESERVE?

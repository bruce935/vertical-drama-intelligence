# Production Contracts

Version: 0.4

## Purpose

Production Contracts convert approved story intent and continuity state into explicit, inspectable, model-agnostic production requirements.

They exist because a story can be correct at the narrative level while generated media still fails through:

- continuity drift,
- unauthorized reveals,
- incorrect character behavior,
- wrong prop state,
- inconsistent visual identity,
- missing required actions,
- unsupported dialogue,
- model improvisation,
- stale dependencies,
- incomplete assets,
- or insufficient QC.

The central architecture is:

STORY TRUTH
→ CONTINUITY STATE
→ BEHAVIORAL CONSEQUENCES
→ PRODUCTION CONTRACT
→ GENERATION
→ SCOPED QC
→ ROOT CAUSE ANALYSIS
→ TARGETED CORRECTION
→ APPROVAL
→ STATE UPDATE

The core rule is:

GENERATIVE MODELS EXECUTE CONTRACTS.

THEY DO NOT OWN STORY TRUTH.

---

# 1. Contract Design Questions

Every meaningful production contract should answer:

WHAT MUST HAPPEN?

WHAT MUST REMAIN TRUE?

WHAT MAY CHANGE?

WHAT MUST NOT HAPPEN?

HOW WILL WE KNOW THE OUTPUT PASSED?

If these questions cannot be answered, the production unit may not be sufficiently defined.

---

# 2. Contract Hierarchy

Use a hierarchy such as:

SERIES CONTRACT
→ EPISODE CONTRACT
→ SCENE CONTRACT
→ SHOT CONTRACT
→ GENERATION TASK
→ QC CONTRACT

Not every task needs every level.

Use the smallest contract level that gives enough control.

---

# 3. Inheritance

Lower-level contracts inherit relevant higher-level requirements.

A Scene Contract inherits:

- locked Series truth,
- relevant Episode truth,
- current Continuity State,
- active obligations,
- production mode,
- asset dependencies.

A Shot Contract inherits relevant Scene requirements.

Lower-level contracts must not silently contradict higher-level truth.

---

# 4. Contract Authority

A lower contract may add execution detail.

It may not silently rewrite:

- locked canon,
- character identity,
- knowledge,
- relationship,
- physical state,
- timeline,
- required payoff,
- forbidden reveal,
- major prop state,
- world rules.

If an upstream change is needed, use revision.

---

# 5. Production Mode

Every meaningful production task should identify its mode:

PROTOTYPE

or:

FINAL

These modes have different readiness requirements.

---

# 6. Prototype Mode

PROTOTYPE is used for:

- testing scene concepts,
- visual exploration,
- checking pacing,
- testing character dynamics,
- validating storyboards,
- evaluating generation feasibility,
- early rough production.

Prototype may allow:

- DRAFT assets,
- ASSUMED visual details,
- temporary references,
- unresolved non-critical dependencies,
- lower-fidelity generation.

Warnings must remain explicit.

Prototype output should default to:

NON_FINAL

and should not automatically become canon.

---

# 7. Prototype Readiness

Use:

PROTOTYPE_READY

PROTOTYPE_READY_WITH_RISKS

PROTOTYPE_BLOCKED

A prototype should not be blocked merely because every production asset is not final.

Block only when missing information prevents the prototype objective from being meaningfully tested.

---

# 8. Final Mode

FINAL is used when output is intended for production approval, publication, final assembly, or downstream locked use.

FINAL normally requires stronger stability.

Critical truth and dependencies should generally be:

APPROVED

or:

LOCKED

unless an explicit override exists.

---

# 9. Final Readiness

Use:

READY

READY_WITH_RISKS

NOT_READY

BLOCKED

Do not silently proceed to FINAL when critical dependencies remain unresolved.

---

# 10. Production Contract Metadata

Recommended fields:

contract_id

contract_type

project_id

episode_id

scene_id

shot_id

contract_version

production_mode

status

source_truth_version

source_continuity_version

created_from

approval_state

---

# 11. Contract Status

Use:

DRAFT

REVIEW

APPROVED

LOCKED

SUPERSEDED

A LOCKED contract is treated as execution truth until revised.

---

# 12. Contract Revision

Do not overwrite locked contracts silently.

Use:

REVISION REQUEST
→ IMPACT ANALYSIS
→ APPROVE / REJECT
→ NEW VERSION
→ DOWNSTREAM INVALIDATION
→ REVALIDATION

---

# 13. Series Contract

A Series Contract may define persistent production rules such as:

- core visual identity,
- major character references,
- aspect ratio,
- recurring locations,
- visual tone,
- world constraints,
- continuity principles,
- recurring asset IDs,
- model-specific limitations,
- forbidden global changes.

Use only when needed.

---

# 14. Episode Contract

An Episode Contract translates episode architecture into production requirements.

Recommended fields:

Episode ID

Production Mode

Opening State

Episode Goal

Primary Character Objective

Primary Conflict

Required Payoff

Required Reveal

Forbidden Reveal

Required State Change

Cliffhanger

Next-Episode Obligation

Continuity Dependencies

Required Assets

Production Risks

QC Requirements

---

# 15. Required Payoff

If the episode owes an existing story promise, specify it.

Example:

Required Payoff:

Anna obtains the access log.

Do not let generation replace this with unrelated drama.

---

# 16. Required Reveal

A required reveal defines information that must become available during the episode.

Example:

David accessed the file.

This does not automatically define:

why David accessed the file.

Separate required revelation from unresolved interpretation.

---

# 17. Forbidden Reveal

Specify story information that must remain unrevealed.

Example:

Forbidden:

David is secretly protecting Anna.

Evelyn is the true conspirator.

Generated dialogue, captions, props, images, or background text must not leak this information.

---

# 18. Scene Contract

The Scene Contract is usually the primary production-control unit.

It converts narrative intent into executable constraints.

Recommended fields:

Scene ID

Production Mode

Story Time

Location

Characters

Props

Narrative Objective

Character Objectives

Conflict

Required Outcome

Forbidden Outcome

Continuity Inheritance

Must Preserve

Flexible

Forbidden

Required Assets

Behavioral Consequences

Information Behavior

Claim Constraints

Evidence Constraints

Temporal Constraints

Performance Direction

Visual Anchors

QC Requirements

---

# 19. Narrative Objective

State why the scene exists.

Example:

Force Anna to confront David about the access log while preserving uncertainty about his motive.

This is stronger than:

Anna and David talk.

---

# 20. Character Objectives

Characters in a scene may want different things.

Example:

Anna:

Obtain an explanation.

David:

Prevent Anna from accessing the original file without revealing why.

Conflict emerges from incompatible objectives.

---

# 21. Required Outcome

Define what must be true by scene end.

Example:

Anna learns David accessed the file.

She does not learn his true motive.

---

# 22. Forbidden Outcome

Define results that would damage story integrity.

Example:

David confesses he is protecting Anna.

Anna instantly forgives David.

The true conspirator is revealed.

The inheritance mystery is solved.

---

# 23. Must Preserve

Use MUST PRESERVE for constraints that generation must keep stable.

Examples:

- character identity,
- active injury,
- current wardrobe,
- prop ownership,
- knowledge state,
- current distrust,
- location,
- unresolved secret,
- story-time position.

---

# 24. Flexible

Use FLEXIBLE for execution details that may vary.

Examples:

- exact phrasing,
- minor blocking,
- gesture choice,
- camera movement,
- non-critical background details.

Flexibility allows creative generation without surrendering story control.

---

# 25. Forbidden

Use FORBIDDEN for changes the production unit must not introduce.

Examples:

- unapproved identity change,
- early reveal,
- impossible knowledge,
- missing injury,
- new unexplained prop,
- relationship resolution,
- antagonist confession.

---

# 26. Continuity Inheritance

Every Scene Contract should inherit only continuity states relevant to that scene.

Possible fields:

Character State

Knowledge

Belief

Relationship

Goal

Physical State

Location

Timeline

Props

Active Plot

Story Obligations

Claims

Evidence

Visual State

Do not copy the entire project state into every scene if most of it is irrelevant.

---

# 27. Behavioral Consequences

Important states should be converted into observable production constraints.

The chain is:

STATE
→ CONSEQUENCE
→ PRODUCTION BEHAVIOR

Recommended fields:

source_state

affected_character

behavioral_constraints

visual_indicators

forbidden_behavior

flexible_expression

severity

---

# 28. Physical Consequence Example

State:

Marcus has an active left shoulder injury.

Must Show:

guarded left-arm movement.

Must Avoid:

heavy overhead lifting with left arm.

Flexible:

exact pain expression.

This preserves continuity without prescribing every motion.

---

# 29. Knowledge Consequence Example

State:

Anna does not know David is her brother.

Production consequence:

Anna cannot speak or react as though the relationship is established.

Allowed:

suspicion,

confusion,

accusation,

hypothesis.

Forbidden:

knowledge-dependent reaction.

---

# 30. Belief Consequence Example

State:

Anna is CONVINCED David betrayed her.

External truth:

unresolved.

Performance may show:

hostility,

defensiveness,

mistrust.

Do not write narration that converts her belief into fact.

---

# 31. Relationship Consequence Example

State:

Relationship = DISTRUSTFUL

Must Avoid:

unmotivated intimate trust,

instant reconciliation,

unearned loyalty.

Flexible:

temporary sympathy,

attraction,

momentary cooperation.

---

# 32. Prop Consequence Example

State:

Daniel's watch is currently held by Maya.

Production consequence:

The stranger cannot casually wear it in a later scene unless a transfer occurs.

---

# 33. Environmental Consequence

Environment may constrain action.

Example:

Floor is flooded.

Possible consequence:

movement is cautious.

Do not overderive:

everyone must fall.

Use conservative causality.

---

# 34. Information Behavior

For information-sensitive scenes, include:

Character Knows

Character Believes

Character Does Not Know

Character May Suspect

Character May Claim

External Truth

Identity Confidence

Forbidden Knowledge Behavior

---

# 35. Character Claims

Characters may say things that are false.

A false line can still be valid if it matches:

- character knowledge,
- character belief,
- deliberate deception,
- manipulation,
- misunderstanding.

Do not reject every false statement as continuity error.

Ask:

Is the statement presented as a character claim or as story truth?

---

# 36. Claim Constraints

When important claims are present, specify:

Allowed Claim

Required Attribution

Claim Support Status

Forbidden Fact Promotion

Example:

Allowed:

Marcus says Nora started the fire.

Forbidden:

Narration states Nora started the fire.

unless story truth supports it.

---

# 37. Evidence Constraints

When evidence appears in production, specify:

what is visually or narratively observable,

what interpretation remains uncertain,

what evidence integrity is known,

what must not be overstated.

Example:

Must Show:

repair date on watch casing.

Forbidden:

caption stating Daniel definitely owned it after disappearance.

---

# 38. Identity Constraints

If identity is uncertain:

specify identity status.

Example:

Woman in footage:

LIKELY_MATCH: Nora

Allowed dialogue:

"That looks like Nora."

Forbidden factual caption:

"Nora exits Room 407."

unless IDENTIFIED.

---

# 39. Negative Evidence Constraints

If absence of a record matters, specify exact scope.

Example:

Complete carrier log shows no outgoing call from Marcus's phone.

Allowed:

"He didn't make the call from this phone."

Forbidden:

"He never contacted emergency services."

unless all relevant channels are established.

---

# 40. Temporal Constraints

Specify story-time meaning when historical and current states differ.

Example:

Evidence establishes Daniel alive in 2023.

Forbidden:

dialogue or narration presenting current survival as established.

---

# 41. Required Assets

List assets needed for the production unit.

Recommended fields:

asset_id

asset_type

description

status

version

owner

required_for

criticality

---

# 42. Asset Lifecycle

Use:

PENDING

DRAFT

REVIEW

APPROVED

LOCKED

RETIRED

---

# 43. Asset Criticality

Use:

CRITICAL

SUPPORTING

OPTIONAL

Critical assets may block FINAL readiness.

---

# 44. Stable Asset IDs

Use stable identifiers where identity matters.

Examples:

CHAR_ANNA_001

LOC_HOTEL_LOBBY_001

PROP_DANIEL_WATCH_001

WARDROBE_ANNA_EP12_001

Avoid relying only on vague names.

---

# 45. Prototype Asset Rule

PROTOTYPE may use DRAFT assets when appropriate.

Record the risk.

Example:

Character reference = DRAFT

Decision:

PROTOTYPE_READY_WITH_RISKS

---

# 46. Final Asset Rule

FINAL production should not silently use critical DRAFT assets.

Possible result:

NOT_READY

or:

BLOCKED

depending on impact.

---

# 47. Visual Anchors

Visual anchors describe high-salience features that should remain stable.

Examples:

- hairstyle,
- scar,
- coat,
- necklace,
- room architecture,
- prop damage,
- lighting source.

Do not overfill prompts with dozens of low-value details.

Prefer the most continuity-critical anchors.

---

# 48. Minimal Continuity Locks

For generative models, too many simultaneous constraints may reduce performance.

Prioritize:

1–2 highest-salience identity anchors per relevant category

plus:

critical story constraints.

Do not confuse verbosity with control.

---

# 49. Performance Direction

Performance guidance should express story intent.

Example:

Audience should feel Anna wants to believe David but refuses to trust him.

This may be more useful than mechanical instructions such as:

raise eyebrow 15 degrees.

Use mechanical detail only when production specifically requires it.

---

# 50. Dialogue Constraints

Distinguish:

REQUIRED MEANING

OPTIONAL WORDING

FORBIDDEN INFORMATION

Example:

Required Meaning:

David refuses access.

Optional Wording:

exact refusal.

Forbidden:

David explains he is protecting Anna.

---

# 51. Information Control

For reveal-sensitive scenes, track:

KNOWN TO AUDIENCE

KNOWN TO CHARACTER

WITHHELD

SUSPECTED

DISPUTED

Do not let generative models leak WITHHELD information through visual details.

---

# 52. Shot Contract

Use Shot Contracts when shot-level control is necessary.

Recommended fields:

shot_id

scene_id

purpose

subjects

camera_intent

action

character_state

required_visual_state

must_preserve

forbidden

estimated_duration

required_assets

qc_requirements

---

# 53. Shot Purpose

Possible categories:

ESTABLISH

REVEAL

REACTION

ESCALATE

WITHHOLD

TRANSITION

PAYOFF

CLIFFHANGER

ACTION

INSERT

Use only when helpful.

---

# 54. Camera Intent

Describe what the audience should perceive.

Example:

Make the watch discovery feel accidental at first, then important.

This is often more robust than prescribing exact focal lengths unless those are required.

---

# 55. Action

Actions should obey:

physical state,

location,

prop ownership,

character goals,

relationship state,

story timing.

Generated spectacle does not override continuity.

---

# 56. Model-Agnostic Core

The Production Contract should remain independent of specific generation-model syntax.

Core contract:

story truth and production requirements.

Adapter:

model-specific prompt format.

This allows the same contract to work with different tools.

---

# 57. Prompt Adapter

A Prompt Adapter may translate a contract for:

Kling

Veo

Seedance

Sora

Runway

image models

audio models

other tools.

The adapter may optimize phrasing.

It must not alter story truth.

---

# 58. Adapter Rule

MODEL LIMITATION

does not equal:

STORY CHANGE

If a model cannot execute a requirement:

report the limitation,

recommend a workaround,

split the task,

change the production method,

or request explicit story revision.

Do not silently alter canon.

---

# 59. Generation Task

Recommended fields:

task_id

contract_id

production_mode

adapter

model_or_tool

input_assets

output_target

status

dependencies

qc_scope

---

# 60. Generation Task Lifecycle

Use:

PENDING

BLOCKED

READY

GENERATING

GENERATED

QC_FAILED

QC_PASSED

APPROVED

REJECTED

LOCKED

---

# 61. READY Rule

A task may become READY only when requirements for its production mode are satisfied.

Prototype and Final have different standards.

---

# 62. Generation Output

Generated output should preserve:

source contract ID

contract version

model/tool when relevant

generation attempt ID

input asset versions

This improves traceability.

---

# 63. Generated Output Is Evidence

Generated media can be inspected as evidence of what the model produced.

Example:

OBSERVED:

Marcus lifts suitcase with injured arm.

This observation may trigger QC failure.

It does not change canon.

---

# 64. QC Contract

A QC Contract defines:

what should be checked,

which evidence is required,

which scopes apply,

what counts as pass,

what blocks approval.

---

# 65. QC Scope

Possible scopes:

STORY

CONTINUITY

CANON

CLAIMS_EVIDENCE

PRE_PRODUCTION

PERFORMANCE

VISUAL

TECHNICAL

AUDIO

COMPLIANCE

FINAL

CUSTOM

---

# 66. QC Evidence Availability

Before checking a category, state what evidence is available.

Examples:

script

dialogue transcript

storyboard

still images

generated video

audio track

metadata

production contract

continuity state

Without relevant evidence:

NOT_CHECKED

---

# 67. QC Result States

For individual checks use:

PASS

FAIL

NOT_CHECKED

NOT_APPLICABLE

---

# 68. PASS

Use PASS only when:

the relevant requirement was checked

and:

available evidence supports compliance.

---

# 69. FAIL

Use FAIL when inspected evidence violates the requirement.

---

# 70. NOT_CHECKED

Use when:

required evidence was unavailable

or:

the check was not performed.

Do not convert NOT_CHECKED into PASS.

---

# 71. NOT_APPLICABLE

Use when the check genuinely does not apply.

Example:

Audio continuity for a silent storyboard image.

---

# 72. Scoped QC Decision

For partial QC use:

PASS_FOR_SCOPE

PASS_FOR_SCOPE_WITH_WARNINGS

REVISE_FOR_SCOPE

BLOCK_FOR_SCOPE

---

# 73. PASS_FOR_SCOPE

The inspected scope passed.

This does not imply final approval.

---

# 74. PASS_FOR_SCOPE_WITH_WARNINGS

The checked scope passes, but non-blocking risks remain.

---

# 75. REVISE_FOR_SCOPE

The inspected scope contains correctable material failures.

---

# 76. BLOCK_FOR_SCOPE

The inspected scope contains blocking issues.

---

# 77. Final Approval

Use:

FINAL_APPROVED

FINAL_REJECTED

NOT_ELIGIBLE_FOR_FINAL_APPROVAL

Final approval requires all mandatory final scopes to be completed.

---

# 78. Final Approval Rule

Do not return FINAL_APPROVED when:

a mandatory scope is NOT_CHECKED,

an unresolved BLOCKER exists,

critical FINAL dependencies remain invalid,

or required assets are not production-ready.

---

# 79. QC Categories

Possible QC categories include:

NARRATIVE

CONTINUITY

CANON

CLAIMS_EVIDENCE

VISUAL

PERFORMANCE

TECHNICAL

TIMING

AUDIO

COMPLIANCE

Use only categories relevant to the task.

---

# 80. Narrative QC

Check:

required event occurred,

scene objective achieved,

required payoff preserved,

required reveal occurred,

forbidden reveal did not occur,

cliffhanger remains valid.

---

# 81. Continuity QC

Check:

knowledge,

belief,

relationship,

physical state,

prop ownership,

location,

timeline,

obligations,

visual continuity,

state transitions.

---

# 82. Canon QC

Check:

PROPOSED material not promoted,

LOCKED truth not rewritten,

SUPERSEDED truth not reused improperly,

generated material not treated as canon without approval.

---

# 83. Claims and Evidence QC

Check:

claim attribution,

claim vs fact distinction,

compound claims,

evidence vs interpretation,

identity confidence,

negative evidence logic,

source lineage,

dependency integrity,

temporal scope.

---

# 84. Visual QC

Possible checks:

identity

wardrobe

props

location

injury appearance

screen direction

environment

visual anchors

Do not claim PASS without inspecting visual evidence.

---

# 85. Performance QC

Check whether observable behavior matches:

physical state,

emotional state,

relationship,

knowledge,

belief,

scene objective.

---

# 86. Technical QC

Possible checks:

frame corruption,

generation artifacts,

unreadable text,

broken transitions,

lip-sync issues,

duration,

aspect ratio,

export integrity.

Use only when applicable.

---

# 87. Audio QC

Possible checks:

dialogue presence,

voice continuity,

timing,

noise,

missing sound,

music conflict,

audio synchronization.

---

# 88. Compliance QC

Apply when the user provides or the workflow defines platform, legal, brand, or content restrictions.

Do not invent legal conclusions.

---

# 89. QC Severity

Use:

BLOCKER

MAJOR

MINOR

ADVISORY

---

# 90. BLOCKER

Prevents approval.

Examples:

forbidden major reveal,

wrong character identity,

critical knowledge violation,

dead character appears without explanation,

critical evidence promoted incorrectly,

mandatory final scope unexamined.

---

# 91. MAJOR

Significant problem requiring correction but not necessarily full production block.

---

# 92. MINOR

Limited issue with small impact.

---

# 93. ADVISORY

Improvement opportunity.

---

# 94. Root Cause Analysis

Do not confuse the visible failure with its cause.

Use:

OBSERVED FAILURE

ROOT CAUSE

CORRECTION LOCATION

---

# 95. Root Cause Categories

Possible categories:

STORY_SPEC

CONTINUITY_STATE

PRODUCTION_CONTRACT

ASSET

MODEL_ADAPTER

GENERATION

EDIT

QC

UNKNOWN

---

# 96. Root Cause Example

Observed Failure:

Villain revealed in Episode 8.

Investigation:

Episode Contract incorrectly required villain reveal.

Root Cause:

PRODUCTION_CONTRACT / STORY_SPEC

Not:

GENERATION

Repeated regeneration will not solve a wrong contract.

---

# 97. Root Cause Example 2

Observed Failure:

Marcus lifts suitcase with injured shoulder.

Contract explicitly forbids this.

Root Cause:

GENERATION / PERFORMANCE

Correction should target the action beat.

---

# 98. Failure Location vs Root Cause Location

Failure location may be:

Scene 12.

Root cause may be:

Episode Contract.

Do not assume they are the same.

---

# 99. Correction Units

Use the smallest valid correction unit.

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

---

# 100. Targeted Regeneration

Do not regenerate large units unnecessarily.

Example:

Only one dialogue line promotes a claim into fact.

Correction Unit:

DIALOGUE_LINE

Preserve passing visuals and actions.

---

# 101. Scene Regeneration

Use scene-level regeneration when multiple tightly coupled elements fail.

Do not regenerate an entire episode by default.

---

# 102. Upstream Correction

If root cause is upstream:

fix the upstream contract first.

Then mark dependent outputs:

STALE

INVALID

or:

REVIEW_REQUIRED

as appropriate.

---

# 103. Regression Control

Every correction should define:

MUST FIX

MUST PRESERVE

MUST NOT INTRODUCE

Then re-check requirements that may have been affected.

---

# 104. Regression Example

Must Fix:

Marcus must not lift the suitcase overhead.

Must Preserve:

timestamp confession,

Lena's distrust,

hotel location,

watch prop state.

Must Not Introduce:

new villain reveal,

new injury,

new evidence.

---

# 105. Re-QC

After correction:

run QC on:

the failed requirement

plus:

passing requirements that could plausibly regress.

Do not assume correction succeeded.

---

# 106. Dependency Status

Production artifacts may depend on:

truth version,

continuity version,

episode contract version,

scene contract version,

asset version.

Recommended fields:

source_contract_version

source_truth_version

dependency_status

---

# 107. Dependency Status Values

Use:

VALID

STALE

INVALID

REVIEW_REQUIRED

---

# 108. VALID

Upstream dependencies remain compatible.

---

# 109. STALE

Upstream changed.

Output may still be usable but requires review.

---

# 110. INVALID

A critical upstream change makes the output incompatible.

---

# 111. REVIEW_REQUIRED

Impact cannot be determined safely without inspection.

---

# 112. Dependency Invalidation Example

Series Bible changes antagonist identity.

Potentially affected:

Reveal Ladder

Episode Contracts

Evidence clues

Dialogue

Character beliefs

Not automatically affected:

unrelated hotel lobby background asset.

Invalidate selectively.

---

# 113. Artifact Ownership

Each important class of information should have one primary owner where possible.

Example:

Series Bible:

series truth.

Continuity State:

current state.

Episode Contract:

episode intent.

Scene Contract:

scene execution requirements.

Asset Registry:

asset versions.

QC Report:

validation evidence.

Generated Media:

execution output.

---

# 114. Artifact Ownership Conflict

If two artifacts disagree about the same critical requirement:

flag conflict.

Do not choose silently.

Possible violation:

ARTIFACT_OWNERSHIP_CONFLICT

---

# 115. Source-of-Truth Precedence

Default precedence:

USER-CONFIRMED TRUTH

→ LOCKED SERIES BIBLE

→ LOCKED CONTINUITY STATE

→ LOCKED EPISODE CONTRACT

→ LOCKED SCENE CONTRACT

→ SHOT CONTRACT

→ MODEL OUTPUT

Explicit project rules may override this.

---

# 116. Claim Handling in Production

Dialogue may intentionally contain lies.

The contract should distinguish:

CHARACTER CLAIM

from:

EXTERNAL TRUTH

Example:

Marcus says:

"Nora started the fire."

This may be valid dialogue even if the claim is false.

Do not "correct" valid deception unless the contract forbids it.

---

# 117. Claim Attribution in Output

If narrative summary appears in captions or voice-over:

preserve attribution where uncertainty matters.

Incorrect:

Nora caused the fire.

Correct:

Marcus claims Nora caused the fire.

---

# 118. Compound Claim Production Rule

If a line contains several factual assertions, generation should not imply equal support for all parts.

Example:

"She started the fire and escaped."

If survival is corroborated but arson is not:

the line may still exist as a character claim,

but narration must not treat the full sentence as established truth.

---

# 119. Identity Production Rule

If identity is:

POSSIBLE_MATCH

or:

LIKELY_MATCH

do not use definitive external captions unless the production intentionally reflects character belief.

Example:

Allowed dialogue:

"That looks like Nora."

Forbidden factual overlay:

"NORA — 23:17"

unless identity is established.

---

# 120. Evidence Display Rule

The visual appearance of an evidence object does not automatically validate its content.

Example:

A forged document can appear clearly on screen.

The fact that the audience sees it does not make its claims true.

---

# 121. Evidence Interpretation Rule

Production may dramatize an interpretation as a character theory.

Clearly preserve:

who believes it

and:

whether external truth supports it.

---

# 122. Temporal Production Rule

Historical evidence must retain its time meaning.

Example:

Verified 2023 footage.

Allowed:

"Daniel was alive in 2023."

Forbidden:

"Daniel is alive now."

without further evidence.

---

# 123. Negative Evidence Production Rule

Do not dramatize missing records as absolute proof beyond the source scope.

Example:

No call in Marcus's carrier log.

Allowed:

"No call left this phone."

Not automatically:

"You never called anyone."

---

# 124. Behavioral Consequence Rule

A production contract should derive only behavior important enough to affect the scene.

Do not turn the contract into a medical simulation.

Preserve creative flexibility.

---

# 125. Production Truth Model

Production should distinguish:

LOCKED CANON

APPROVED CANON

PROPOSED ELEMENTS

ASSUMPTIONS

PENDING ELEMENTS

This is especially important during prototypes.

---

# 126. Prototype Truth

Prototype output may visualize:

ASSUMED

or:

PROPOSED

elements.

Mark them accordingly.

Prototype visualization does not approve them.

---

# 127. Final Truth

FINAL output should not rely on unresolved critical truth unless an explicit human decision permits it.

---

# 128. Creative Override

A human creator may approve intentional contract violations.

Record:

override_id

rule

reason

approved_by

affected_artifacts

downstream_risk

Do not erase the original failed check.

---

# 129. Override Example

Director intentionally changes Anna's coat mid-scene for symbolic effect.

Record override.

Visual continuity warning remains historically visible.

---

# 130. Production Readiness Gate

Before generation, check:

Production Mode

Story Readiness

Continuity Gate

Contract Status

Required Assets

Critical Dependencies

Forbidden Information

Behavioral Consequences

QC Plan

---

# 131. Prototype Gate

Possible results:

PROTOTYPE_READY

PROTOTYPE_READY_WITH_RISKS

PROTOTYPE_BLOCKED

---

# 132. Final Gate

Possible results:

READY

READY_WITH_RISKS

NOT_READY

BLOCKED

---

# 133. Final Gate Hard Stops

FINAL should normally BLOCK when:

critical asset is unresolved DRAFT,

locked continuity contains a hard contradiction,

critical identity is unresolved but scene requires certainty,

mandatory contract is not approved,

critical dependency is BROKEN,

forbidden reveal cannot be controlled,

required QC evidence cannot be produced.

---

# 134. Production Readiness Is Not Story Quality

A mediocre scene may be technically READY.

A strong scene may be production BLOCKED.

Keep creative quality and production readiness separate.

---

# 135. QC Report Structure

A substantial QC report may use:

## QC Scope

## Evidence Available

## Production Mode

## Contract Version

## Results

## Narrative QC

## Continuity QC

## Claims / Evidence QC

## Visual QC

## Performance QC

## Technical QC

## Violations

## Severity

## Root Cause

## Correction Unit

## Must Fix

## Must Preserve

## Must Not Introduce

## Re-QC Requirements

## Scope Decision

## Final Approval Eligibility

---

# 136. Compact QC

For narrow tasks use:

Failure

Requirement

Evidence

Severity

Root Cause

Smallest Fix

Decision

---

# 137. Pre-Production Validation

Before expensive generation, validate what can be checked without generation.

Examples:

contract completeness

continuity state

asset presence

knowledge constraints

forbidden reveal

prop ownership

production mode

dependency validity

This reduces avoidable generation failure.

---

# 138. Deterministic Validation

Good deterministic production checks include:

required field exists

asset ID exists

asset status satisfies mode

contract version current

prop owner correct

character available

knowledge state allowed

forbidden reveal absent from contract

critical dependency valid

mandatory QC scope defined

---

# 139. Model Judgment Validation

Use judgment for:

performance quality

emotional plausibility

camera effectiveness

visual storytelling

tone

dramatic impact

Do not pretend these are deterministic.

---

# 140. Cost Awareness

Production Contracts should encourage fixing cheap upstream problems before expensive downstream generation.

Order:

STORY ERROR

before:

CONTRACT ERROR

before:

GENERATION ERROR

before:

EDITING ERROR

When possible.

Do not invent monetary savings without data.

---

# 141. Production Efficiency

Efficiency comes from:

clear contracts,

stable assets,

reusable references,

targeted correction,

dependency control,

scoped QC,

and preventing unnecessary regeneration.

It does not require a specific generation model.

---

# 142. Multi-Model Workflow

A project may use different tools for:

writing,

images,

video,

voice,

music,

editing.

Production Contracts should preserve shared truth across them.

Tool changes must not reset story state.

---

# 143. Model Replacement

If the user changes from one video model to another:

keep:

story truth,

continuity,

contract,

asset identity,

QC requirements.

Replace only:

adapter-specific instructions

when possible.

---

# 144. Persistent Production State

For long projects, store:

contract versions

generation tasks

asset versions

QC decisions

approval state

dependency status

revision history

when the execution environment supports persistence.

---

# 145. Suggested Project State

Conceptual:

/project-state/
    contracts/
    assets/
    generation-tasks/
    qc/
    revisions/
    approvals/
    dependencies/

This complements narrative continuity state.

---

# 146. Production Hard Stops

Block or explicitly refuse approval when materially relevant:

1. Generated output rewrites locked canon.
2. A character acts on unavailable knowledge.
3. A major forbidden reveal appears.
4. A critical physical state is ignored.
5. A critical asset is unsuitable for FINAL mode.
6. A mandatory QC scope is NOT_CHECKED.
7. A claim is converted into external fact without justification.
8. Identity is overclaimed beyond evidence.
9. Historical evidence is presented as current truth.
10. Critical evidence dependency failure is ignored.
11. A stale contract is used as current without review.
12. An unresolved BLOCKER is hidden by an aggregate PASS.
13. Model output is promoted into canon automatically.
14. Repeated regeneration is attempted without correcting an identified upstream root cause.

---

# 147. Do Not Collapse

Do not collapse:

STORY INTENT
→ GENERATION PROMPT

STATE
→ OPTIONAL DETAIL

CLAIM
→ FACT

EVIDENCE
→ INTERPRETATION

BELIEF
→ EXTERNAL TRUTH

POSSIBLE_MATCH
→ IDENTIFIED

PAST
→ CURRENT

PROTOTYPE
→ FINAL

DRAFT ASSET
→ LOCKED ASSET

GENERATED
→ APPROVED

QC_PASSED_FOR_SCOPE
→ FINAL_APPROVED

FAILURE LOCATION
→ ROOT CAUSE LOCATION

REGENERATION
→ CORRECTION

---

# 148. Production Contract Template

A useful general structure:

## Contract Metadata

## Production Mode

## Source Truth

## Canon Dependencies

## Narrative Objective

## Required Outcome

## Forbidden Outcome

## Continuity Inheritance

## Must Preserve

## Flexible

## Forbidden

## Required Assets

## Behavioral Consequences

## Information Behavior

## Claim Constraints

## Evidence Constraints

## Identity Constraints

## Temporal Constraints

## Performance Direction

## Visual Anchors

## Shot Requirements

## QC Scope

## QC Requirements

## Readiness Gate

---

# 149. Final Production Philosophy

Generation should happen only after enough intent has been externalized to make the result inspectable.

The objective is not:

WRITE THE PERFECT PROMPT.

The objective is:

BUILD A CONTROLLED PRODUCTION SYSTEM.

A strong workflow is:

STORY TRUTH
→ CONTINUITY STATE
→ PRODUCTION CONTRACT
→ GENERATION
→ EVIDENCE-AWARE QC
→ ROOT CAUSE
→ TARGETED CORRECTION
→ APPROVAL
→ STATE UPDATE

---

# 150. Final Principle

Production Contracts are the boundary between creative intent and generative execution.

They preserve:

what must happen,

what must remain true,

what may vary,

what is forbidden,

and what evidence is required to approve the result.

The system should always prefer:

CORRECT THE RIGHT LAYER

over:

REGENERATE EVERYTHING.

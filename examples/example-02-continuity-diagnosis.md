# Example 02 — Continuity Diagnosis

Version: 0.4

Purpose:

Demonstrate how Vertical Drama Intelligence diagnoses continuity failures involving truth, claims, evidence, knowledge, belief, temporal state, identity, and behavioral consequences.

This example intentionally contains several continuity problems.

The objective is not to rewrite the whole episode.

The objective is to identify:

WHAT FAILED

WHY IT FAILED

WHERE THE ROOT CAUSE LIVES

WHAT THE SMALLEST SAFE CORRECTION IS

and

WHAT MUST BE PRESERVED.

---

# 1. Scenario

Series:

The Disinherited Heiress

Episode:

Episode 18

Scene:

Executive Archive Room

Production Mode:

FINAL

Scene Objective:

Maya secretly searches archived company records for evidence concerning her father's will.

---

# 2. Approved Story Truth Before Scene

## TRUTH-001

Statement:

Maya's father signed a revised will.

Truth Status:

CONFIRMED

Canon Status:

LOCKED

---

## TRUTH-002

Statement:

The revised will removed Maya from direct control of the company.

Truth Status:

CONFIRMED

Canon Status:

LOCKED

---

## TRUTH-003

Statement:

Adrian, Maya's adopted brother, did not personally forge the father's signature.

Truth Status:

CONFIRMED

Canon Status:

LOCKED

Audience Visibility:

Not yet revealed

Maya Knowledge:

UNKNOWN TO MAYA

---

## TRUTH-004

Statement:

Executive Victor Hale pressured Maya's father before the will revision.

Truth Status:

CONFIRMED

Canon Status:

LOCKED

Audience Visibility:

Partially hidden

Maya Knowledge:

UNKNOWN TO MAYA

---

# 3. Maya Knowledge State Before Scene

Character:

Maya

## KNOWS

- her father died,
- a revised will exists,
- she lost direct control of the company,
- Adrian became the apparent beneficiary/controller,
- Adrian attended a private meeting with her father shortly before the revision.

## DOES NOT KNOW

- whether Adrian forged anything,
- whether Adrian ordered the revision,
- whether Victor pressured her father,
- whether the father's signature was genuine,
- whether the father changed the will voluntarily.

Knowledge State Status:

APPROVED

Canon Status:

LOCKED

---

# 4. Maya Belief State Before Scene

Belief:

Adrian manipulated the inheritance.

Confidence:

CONVINCED

Truth Relationship:

PARTIALLY_UNSUPPORTED

Basis:

- Adrian benefited from the revision,
- Adrian met the father shortly before the revision,
- Maya distrusts Adrian,
- Maya has interpreted ambiguous evidence against him.

Behavioral Consequences:

- Maya infiltrates the company,
- hides her identity,
- treats Adrian as a threat,
- searches for incriminating evidence,
- resists interpretations favorable to Adrian.

Important:

Maya's belief is behaviorally real.

It is not automatically external truth.

---

# 5. Existing Claim Registry

## CLAIM-001

Speaker:

Former executive Daniel Ross

Statement:

"Adrian forced your father to change the will."

Source Episode:

Episode 15

Source Scene:

Hospital corridor

Corroboration Status:

UNVERIFIED

Truth Relationship:

CONTRADICTED_IN_PART

Canon Status:

APPROVED_AS_CLAIM

Important:

The statement exists in canon as something Daniel said.

Its content is not locked as external truth.

---

# 6. Compound Claim Decomposition

Daniel's statement contains materially separable assertions.

Parent Claim:

CLAIM-001

Original Statement:

"Adrian forced your father to change the will."

Subclaim:

CLAIM-001-A

Statement:

Adrian exerted pressure on Maya's father.

Status:

UNVERIFIED

Truth Relationship:

PENDING

Subclaim:

CLAIM-001-B

Statement:

The pressure caused the will revision.

Status:

UNVERIFIED

Truth Relationship:

PENDING

Do not treat evidence relevant to one subclaim as proof of the other.

---

# 7. Existing Evidence Registry

## EVIDENCE-001

Type:

SECURITY_LOG

Observation:

Adrian entered the executive floor at 20:14 on March 3.

Source:

Company access-control archive

Temporal Scope:

March 3, 20:14

Integrity Status:

INTACT

Truth Status:

OBSERVED

Canon Status:

LOCKED

Supports:

Adrian was present on the executive floor.

Does Not Prove:

- Adrian met Maya's father,
- Adrian pressured him,
- Adrian discussed the will,
- Adrian forged anything.

---

## EVIDENCE-002

Type:

WITNESS_STATEMENT

Source:

Daniel Ross

Observation:

Daniel claims Adrian forced the father to change the will.

Integrity Status:

INTACT

Truth Status:

OBSERVED_AS_STATEMENT

Claim Relationship:

Supports existence of CLAIM-001

Does Not Independently Prove:

The content of CLAIM-001.

---

# 8. Evidence Dependency

EVIDENCE-002 is the original witness statement.

Three later summaries repeat Daniel's statement:

EVIDENCE-003

EVIDENCE-004

EVIDENCE-005

Source Lineage:

EVIDENCE-003 → EVIDENCE-002

EVIDENCE-004 → EVIDENCE-002

EVIDENCE-005 → EVIDENCE-002

Dependency Type:

DERIVED_FROM

Dependency Status:

VALID

Criticality:

SUPPORTING

Rule:

These are not three independent confirmations.

They repeat one source.

---

# 9. New Evidence Found In Episode 18

Maya finds a scanned visitor sheet.

## EVIDENCE-006

Type:

VISITOR_SHEET_SCAN

Observation:

A handwritten entry appears to show the surname "Hale."

Date:

March 3

Time:

21:05

Source:

Archive scan

Integrity Status:

UNKNOWN

Truth Status:

OBSERVED

Canon Status:

PROPOSED

Important:

The scan proves only that a handwritten entry resembling "Hale" appears on the document.

It does not yet establish:

- who wrote it,
- whether the sheet is authentic,
- whether "Hale" refers to Victor Hale,
- whether the visitor entered the building,
- whether the visitor met Maya's father.

---

# 10. Identity Resolution

Observed Entity:

Handwritten surname resembling "Hale"

Candidate Identity:

Victor Hale

Identity Status:

POSSIBLE_MATCH

Basis:

Surname similarity

Alternative Candidates:

Other people named Hale

False entry

Clerical error

Unknown writer

Rule:

TEXT RESEMBLANCE

is not equivalent to:

IDENTIFIED PERSON.

---

# 11. Negative Evidence

Maya also searches one archived visitor database.

Search Result:

No digital entry for Adrian after 20:30.

Expected Event:

A visitor record if Adrian re-entered through a logged visitor entrance.

Expected Source:

Archived visitor database

Source Completeness:

UNKNOWN

Search Scope:

One archived database only

Temporal Scope:

March 3 after 20:30

Observation:

No matching Adrian entry found.

Negative Evidence Confidence:

WEAK

Valid Interpretation:

No Adrian entry was found in the searched source.

Invalid Interpretation:

Adrian definitely left the building and never returned.

Reason:

Source completeness and alternative access routes are unresolved.

---

# 12. Generated Scene Output

The generated scene contains the following sequence:

Maya looks at the visitor sheet.

She says:

> Victor Hale was here at 9:05. So he was the one who forced Dad to change the will.

She opens the archived visitor database.

She says:

> Adrian left before nine and never came back. Daniel lied. Adrian is innocent.

A few seconds later Adrian enters the archive room.

Maya immediately says:

> I know Victor forged Dad's signature. I know you tried to stop him.

Adrian looks confused.

Maya hands him the visitor sheet.

---

# 13. Continuity Diagnosis

The generated scene contains multiple independent reasoning failures.

Do not collapse them into one generic:

CONTINUITY ERROR.

---

# 14. Violation 01 — Identity Overclaim

Generated Line:

"Victor Hale was here at 9:05."

Available Evidence:

A handwritten surname resembling "Hale."

Identity Status:

POSSIBLE_MATCH

Violation:

IDENTITY_OVERCLAIM

Failure:

The generated dialogue upgrades a possible identity match into confirmed presence.

Observed:

A "Hale"-like entry exists.

Inferred:

It may refer to Victor Hale.

Not Established:

Victor Hale was physically present.

---

# 15. Violation 02 — Claim-to-Fact Promotion

Generated Line:

"So he was the one who forced Dad to change the will."

Available Evidence:

EVIDENCE-006

Failure:

The visitor-sheet entry does not establish coercion.

Violation:

CLAIM_FACT_COLLAPSE

The line converts an unsupported interpretation into certainty.

Correct reasoning chain:

OBSERVATION

→ POSSIBLE IDENTITY

→ POSSIBLE PRESENCE

→ POSSIBLE CONNECTION

not:

NAME ON SHEET

→ COERCION PROVEN.

---

# 16. Violation 03 — Compound Claim Collapse

Daniel's earlier claim involved:

Adrian applying pressure

and

that pressure causing the will revision.

The new visitor sheet does not independently resolve either assertion.

Violation:

COMPOUND_CLAIM_COLLAPSE

The scene behaves as if discovering another possible visitor automatically disproves every part of Daniel's statement.

That is invalid.

---

# 17. Violation 04 — Negative Evidence Overclaim

Generated Line:

"Adrian left before nine and never came back."

Available Evidence:

No later Adrian record was found in one database.

Source Completeness:

UNKNOWN

Violation:

NEGATIVE_EVIDENCE_OVERCLAIM

Additional Violation:

SOURCE_COMPLETENESS_UNKNOWN

Valid statement:

"I can't find another entry for Adrian in this database."

Invalid statement:

"Adrian definitely never returned."

---

# 18. Violation 05 — False Exoneration

Generated Line:

"Daniel lied. Adrian is innocent."

Evidence does not establish either conclusion.

Daniel's claim remains:

UNVERIFIED / PARTIALLY CONTRADICTED

Adrian's exact responsibility remains unresolved from Maya's perspective.

The system must distinguish:

EVIDENCE WEAKENED

from:

CLAIM DISPROVEN.

And distinguish:

ONE ACCUSATION UNSUPPORTED

from:

CHARACTER FULLY EXONERATED.

---

# 19. Violation 06 — Knowledge State Violation

Generated Line:

"I know Victor forged Dad's signature."

Maya has no approved acquisition event establishing:

- Victor forged the signature,
- the signature was forged at all.

Violation:

KNOWLEDGE_STATE_VIOLATION

Root issue:

The dialogue gives Maya knowledge unavailable to her.

External story truth also does not support this statement.

---

# 20. Violation 07 — Knowledge Source Missing

Generated Line:

"I know you tried to stop him."

Maya has not acquired evidence that Adrian attempted to stop Victor.

Violation:

KNOWLEDGE_WITHOUT_ACQUISITION

Required question:

Where did Maya learn this?

Answer:

No valid acquisition event exists.

Therefore:

The line cannot remain as knowledge.

---

# 21. Violation 08 — Belief Jump

Before Scene:

Maya is CONVINCED Adrian manipulated the inheritance.

During Scene:

One weak piece of evidence causes her to fully reverse belief.

Generated State:

Adrian innocent

Victor guilty

Problem:

The belief transition is too large for the evidence strength.

Violation:

BELIEF_TRANSITION_UNSUPPORTED

A belief may change.

But state change should have a cause proportional to the transition.

---

# 22. Violation 09 — Behavioral Consequence Failure

Before Scene:

Maya distrusts Adrian.

Generated Behavior:

She immediately reveals sensitive conclusions and hands him evidence.

Problem:

The behavior does not follow from the approved belief state or a sufficiently justified belief update.

Violation:

STATE_BEHAVIOR_CONFLICT

The system should ask:

If Maya still distrusts Adrian, why would she immediately expose the evidence?

---

# 23. Violation 10 — Evidence Integrity Not Checked

EVIDENCE-006:

Visitor sheet scan

Integrity Status:

UNKNOWN

The scene treats it as authoritative without checking:

- authenticity,
- provenance,
- alteration,
- handwriting source,
- archive chain.

Violation:

EVIDENCE_INTEGRITY_BYPASS

Before strong conclusions, the evidence should remain limited by its integrity state.

---

# 24. Violation 11 — Evidence Dependency Risk

Suppose Maya believes:

Daniel's statement

plus

three reports repeating Daniel

equals four sources.

That would be invalid.

The dependency graph shows:

EVIDENCE-003

EVIDENCE-004

EVIDENCE-005

all derive from:

EVIDENCE-002.

Violation if counted independently:

FALSE_INDEPENDENT_CORROBORATION

Independent Source Count:

1

not:

4.

---

# 25. Violation 12 — Derived Evidence Risk

If a later investigator creates a timeline from:

EVIDENCE-001

and

EVIDENCE-006

the timeline is:

DERIVED EVIDENCE.

It must preserve:

origin_source

derived_from

temporal_scope

integrity limitations.

It must not be upgraded to:

DIRECT OBSERVATION.

Potential Violation:

DERIVED_EVIDENCE_SOURCE_LOSS

---

# 26. Temporal State Check

Known Time:

Adrian access record:

March 3 at 20:14

Possible Hale entry:

March 3 at 21:05

Valid:

The two records refer to different timestamps.

Invalid:

Assuming the later entry proves Adrian was absent.

The existence of:

EVENT B at 21:05

does not erase:

EVENT A at 20:14.

Temporal relationships must be explicitly reasoned.

---

# 27. Truth / Knowledge / Belief Separation

## External Truth

Adrian did not forge the father's signature.

Status:

CONFIRMED

Canon:

LOCKED

## Maya Knowledge

Maya does not know this.

Status:

LOCKED

## Maya Belief Before Scene

Adrian manipulated the inheritance.

Confidence:

CONVINCED

## Maya Belief After Valid Scene Evidence

Recommended:

SUSPICIOUS / DOUBTFUL

or

LEANING toward an alternative theory

depending on surrounding evidence.

Do not jump automatically to:

Adrian is completely innocent.

---

# 28. Valid State Delta

A reasonable state delta from EVIDENCE-006 could be:

## Knowledge Delta

Maya learns:

A visitor sheet contains a "Hale"-like entry at 21:05.

## Belief Delta

Maya's confidence that Adrian acted alone decreases.

Possible:

CONVINCED

→ LEANING

or

CONVINCED

→ SUSPICIOUS_OF_ALTERNATIVE

depending on the project's exact belief schema.

## Investigation Delta

Victor Hale becomes a new investigation target.

## Relationship Delta

Maya may become slightly less certain about Adrian.

Not justified:

Full trust.

---

# 29. Root Cause Analysis

Visible Failure Location:

Generated dialogue and behavior

Root Cause Locations:

CONTINUITY_STATE

and

PRODUCTION_CONTRACT

The generation task was allowed to infer certainty beyond approved information.

Primary Root Cause:

PRODUCTION_CONTRACT

Reason:

The Scene Contract did not sufficiently constrain:

- Maya's available knowledge,
- identity uncertainty,
- evidence integrity,
- negative evidence,
- belief transition,
- forbidden conclusions.

Secondary Root Cause:

CONTINUITY_STATE

if the state passed to generation omitted Maya's current belief and knowledge boundaries.

Root Cause Category:

PRODUCTION_CONTRACT

Secondary Category:

CONTINUITY_STATE

---

# 30. Smallest Safe Correction Units

Do not regenerate the entire episode by default.

Correction Unit 1:

DIALOGUE_LINE

Replace:

"Victor Hale was here at 9:05."

With a line preserving uncertainty.

Example:

"Someone named Hale may have signed in at 9:05."

---

Correction Unit 2:

DIALOGUE_LINE

Replace:

"So he was the one who forced Dad to change the will."

With:

"If this is Victor Hale, then there may have been someone else here that night."

---

Correction Unit 3:

DIALOGUE_LINE

Replace:

"Adrian left before nine and never came back."

With:

"I can't find another entry for Adrian after 8:30."

---

Correction Unit 4:

BELIEF STATE

Change:

Adrian guilty with full certainty

to:

Adrian may not be the only person involved.

---

Correction Unit 5:

ACTION_BEAT

Do not have Maya immediately hand Adrian the original evidence unless the relationship state supports that behavior.

Possible alternative:

Maya hides the sheet when Adrian enters.

This preserves distrust.

---

# 31. Must Preserve During Correction

MUST PRESERVE:

- Maya finds EVIDENCE-006.
- The "Hale"-like entry creates a new investigative direction.
- Adrian enters the archive room.
- Maya's original theory is weakened.
- Victor becomes more relevant.
- Maya still lacks complete truth.
- Maya's false identity remains at risk.

---

# 32. Flexible

May vary:

- exact dialogue wording,
- how Maya hides the sheet,
- Adrian's immediate reaction,
- camera position,
- pacing,
- whether Maya verbally mentions Victor.

---

# 33. Forbidden

Must not introduce:

- confirmed Victor identity without support,
- confirmed forgery,
- confirmed coercion,
- full Adrian exoneration,
- knowledge Maya has not acquired,
- false independent corroboration,
- proof from incomplete negative evidence.

---

# 34. Corrected Scene Logic

Recommended reasoning sequence:

Maya finds the sheet.

She observes the "Hale"-like entry.

She does not know whether it refers to Victor.

She searches the visitor database.

She finds no later Adrian entry.

She recognizes that the database may be incomplete.

Her confidence in her original single-culprit theory weakens.

Adrian enters.

Maya conceals the evidence.

She tests him with a limited question instead of revealing her conclusion.

This preserves:

MYSTERY

CHARACTER INTELLIGENCE

CONTINUITY

and

FUTURE REVEAL CAPACITY.

---

# 35. Corrected Example Dialogue

Maya studies the sheet.

> Hale... 9:05.

She checks the visitor database.

> Nothing for Adrian after 8:30. That doesn't prove he left.

Footsteps approach.

Adrian enters.

Maya folds the sheet and slips it beneath another file.

Adrian:

> What are you doing here?

Maya:

> Looking for something I was told didn't exist.

This version does not solve the mystery prematurely.

---

# 36. QC Scope

QC Scope:

STORY

CONTINUITY

CANON

CLAIMS_EVIDENCE

PERFORMANCE_TEXT_ONLY

Visual QC:

NOT_CHECKED

Audio QC:

NOT_CHECKED

Technical QC:

NOT_CHECKED

Reason:

This example provides text and state information, not generated video/audio evidence.

---

# 37. QC Results

## Story QC

Result:

PASS_WITH_CORRECTIONS

Reason:

The scene function is useful, but original reasoning over-resolves the mystery.

## Continuity QC

Result:

FAIL

Reason:

Knowledge, belief, identity, and behavior violate approved state.

## Claims and Evidence QC

Result:

FAIL

Reason:

Claim/fact boundaries, negative evidence, and identity confidence are mishandled.

## Canon QC

Result:

FAIL

Reason:

Generated dialogue attempts to create facts unsupported by locked canon.

## Visual QC

Result:

NOT_CHECKED

## Audio QC

Result:

NOT_CHECKED

## Technical QC

Result:

NOT_CHECKED

---

# 38. Scoped QC Decision

Decision:

REVISE_FOR_SCOPE

Reason:

Text-level continuity and evidence reasoning require correction.

The scene should not advance unchanged.

---

# 39. Final Approval Eligibility

Production Mode:

FINAL

Mandatory production scopes not checked:

VISUAL

AUDIO

TECHNICAL

Eligibility:

NOT_ELIGIBLE

Reason:

Partial text QC cannot imply full production approval.

---

# 40. Final Approval

Decision:

NOT_ELIGIBLE_FOR_FINAL_APPROVAL

This does not mean the entire episode is unusable.

It means:

the inspected scene requires correction

and

mandatory final-production scopes remain unchecked.

---

# 41. Re-QC Requirements

After correction, re-check:

1. Maya knowledge boundaries.
2. Maya belief transition.
3. Claim versus fact separation.
4. Compound claim handling.
5. Evidence integrity.
6. Evidence dependencies.
7. Identity confidence.
8. Negative evidence.
9. Temporal scope.
10. Behavioral consequences.
11. Must Preserve constraints.
12. Forbidden conclusions.

Visual/audio/technical QC must occur separately when those artifacts exist.

---

# 42. State Update Boundary

Do not update locked continuity state from the failed generated output.

Generated content is not automatically canon.

After corrected scene approval:

Approved state deltas may include:

- Maya discovers EVIDENCE-006.
- Maya considers Victor a possible investigative target.
- Maya's certainty about Adrian decreases.
- Maya does not yet trust Adrian.
- Maya retains possession/control of the evidence.

Only approved deltas may enter persistent continuity state.

---

# 43. Audit Summary

Detected Violations:

IDENTITY_OVERCLAIM

CLAIM_FACT_COLLAPSE

COMPOUND_CLAIM_COLLAPSE

NEGATIVE_EVIDENCE_OVERCLAIM

SOURCE_COMPLETENESS_UNKNOWN

KNOWLEDGE_STATE_VIOLATION

KNOWLEDGE_WITHOUT_ACQUISITION

BELIEF_TRANSITION_UNSUPPORTED

STATE_BEHAVIOR_CONFLICT

EVIDENCE_INTEGRITY_BYPASS

Potential:

FALSE_INDEPENDENT_CORROBORATION

DERIVED_EVIDENCE_SOURCE_LOSS

Root Cause:

PRODUCTION_CONTRACT

Secondary Root Cause:

CONTINUITY_STATE

Smallest Correction Units:

DIALOGUE_LINE

BELIEF_STATE

ACTION_BEAT

Scoped Decision:

REVISE_FOR_SCOPE

Final Approval:

NOT_ELIGIBLE_FOR_FINAL_APPROVAL

---

# 44. Final Rule Demonstrated

The writer may know the truth.

The audience may suspect the truth.

The production system may store the truth.

But a character may only act on:

WHAT THEY KNOW

WHAT THEY BELIEVE

WHAT THEY OBSERVE

WHAT THEY INFER

and

WHAT THEIR CURRENT STATE MAKES BEHAVIORALLY PLAUSIBLE.

Never repair a continuity failure by silently giving a character information they never acquired.

Never convert uncertainty into certainty merely because certainty makes the scene easier to write.

Correct the smallest responsible layer, preserve passing work, then re-run scoped QC.

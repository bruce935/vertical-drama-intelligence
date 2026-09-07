# Continuity State Template

Version: 0.4

Use this template to maintain the current approved continuity state of a serialized vertical drama.

The goal is not to store every story detail.

Store only information that may materially affect:

- future scenes,
- character behavior,
- knowledge,
- belief,
- relationships,
- physical action,
- props,
- locations,
- timeline,
- mystery logic,
- story obligations,
- production constraints,
- or canon integrity.

The core rule is:

CURRENT STATE
→ VALID TRANSITION
→ NEW CURRENT STATE

Do not update persistent state from unapproved generated output.

---

# 1. State Metadata

Project ID:

State Version:

Source Series Bible Version:

Last Approved Episode:

Last Approved Scene:

Created:

Last Updated:

State Status:

DRAFT / REVIEW / APPROVED / LOCKED / SUPERSEDED

---

# 2. Truth Status Legend

Use:

CONFIRMED

OBSERVED

CALCULATED

INFERRED

ASSUMED

PENDING

Truth Status answers:

HOW IS THIS INFORMATION SUPPORTED?

---

# 3. Canon Status Legend

Use:

PROPOSED

APPROVED

LOCKED

SUPERSEDED

Canon Status answers:

HAS THIS BECOME APPROVED STORY TRUTH?

Truth Status and Canon Status are separate.

---

# 4. Current Canon Summary

List only high-value canon required for current continuity.

| Canon ID | Statement | Truth Status | Canon Status | Source | Version |
|---|---|---|---|---|---|
| | | | | | |

---

# 5. Character State

## Character

Character ID:

Name:

Availability:

ALIVE / DEAD / MISSING / UNCONSCIOUS / IMPRISONED / OFFSCREEN / UNKNOWN / OTHER

Current Location:

Current Goal:

Current Emotional State:

Current Physical State:

Current Wardrobe:

Important Props Held:

Current Relationship Constraints:

Current Knowledge Summary:

Current Belief Summary:

Relevant Canon:

Last State Change:

Source Episode:

Source Scene:

Repeat only for important characters.

---

# 6. Character Availability

| Character ID | Status | Current Location | Since | Source | Notes |
|---|---|---|---|---|---|
| | | | | | |

Do not allow unavailable characters to act physically without an established mechanism.

---

# 7. Knowledge State

Track what a character actually knows.

| Knowledge ID | Character | Proposition | Temporal Scope | Source | Since Episode | Since Scene | Status |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Knowledge may include:

- witnessed fact,
- received claim,
- inspected evidence,
- confirmed report,
- derived conclusion.

Do not collapse:

KNOWS A CLAIM EXISTS

into:

KNOWS CLAIM CONTENT IS TRUE

---

# 8. Knowledge Acquisition

For important knowledge changes:

Knowledge ID:

Character:

Previous State:

New Knowledge:

Acquisition Method:

WITNESSED / TOLD / READ / HEARD / INFERRED / VERIFIED / OTHER

Source:

Episode:

Scene:

Temporal Scope:

Truth Relationship:

Notes:

---

# 9. Forbidden Knowledge

Use when production must prevent accidental information leakage.

| Character | Information They Must Not Know Yet | Earliest Allowed Point | Reason |
|---|---|---|---|
| | | | |

---

# 10. Belief State

Track what characters think is true.

| Belief ID | Character | Belief | Target | Confidence | Source | Temporal Scope | Status |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Confidence:

UNAWARE

DOUBTFUL

SUSPICIOUS

LEANING

CONVINCED

DISPROVEN

Belief is not external truth.

---

# 11. Belief Transition

Belief ID:

Character:

Previous Belief:

Previous Confidence:

Trigger:

New Evidence:

New Belief:

New Confidence:

Episode:

Scene:

Reason:

A material belief shift should have a cause.

---

# 12. Relationship State

| Relationship ID | Character A | Character B | State | Trust | Leverage | Dependency | Since |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Possible trust states when useful:

HOSTILE

DISTRUSTFUL

UNCERTAIN

CAUTIOUS

TRUSTING

LOYAL

Do not force all relationships into a single scale.

---

# 13. Relationship Transition

Relationship ID:

Previous State:

Trigger Event:

New State:

Episode:

Scene:

Reason:

Persistent Effect:

---

# 14. Goal State

| Goal ID | Character | Goal | Status | Since | Source | Blocking Factor |
|---|---|---|---|---|---|---|
| | | | | | | |

Possible status:

ACTIVE

ADVANCING

BLOCKED

CHANGED

COMPLETED

ABANDONED

REPLACED

---

# 15. Goal Transition

Goal ID:

Character:

Previous Goal:

Transition:

ADVANCE / BLOCK / CHANGE / COMPLETE / ABANDON / REPLACE

New Goal:

Cause:

Episode:

Scene:

---

# 16. Emotional State

Track only emotions that materially affect immediate continuity.

| Character | Current Emotion | Intensity Category | Cause | Since Scene | Expected Carryover |
|---|---|---|---|---|---|
| | | | | | |

Avoid false precision.

Suggested intensity:

LOW

MODERATE

HIGH

EXTREME

---

# 17. Physical State

| Physical State ID | Character | Condition | Body Location | Severity | Status | Since | Consequences |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Examples:

injury

fatigue

intoxication

illness

restricted movement

unconsciousness

recovery

---

# 18. Injury State

Injury ID:

Character:

Body Location:

Condition:

Severity:

Onset Episode:

Onset Scene:

Current Status:

ACTIVE / RECOVERING / RESOLVED / WORSENED

Behavioral Consequences:

-

Visual Indicators:

-

Forbidden Behavior:

-

Allowed Variation:

-

---

# 19. Behavioral Consequences

Translate important state into observable constraints.

| Consequence ID | Source State | Character | Must Show | Must Avoid | Allowed Variation | Severity |
|---|---|---|---|---|---|---|
| | | | | | | |

Do not overderive behavior beyond what the state reasonably implies.

---

# 20. Prop State

| Prop ID | Description | Owner | Current Holder | Location | Condition | Visibility | Canon Status |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

Use stable IDs when object identity matters.

---

# 21. Prop Transition

Prop ID:

Transition:

TRANSFERRED / LOST / FOUND / HIDDEN / DESTROYED / DAMAGED / STOLEN / REVEALED

Previous Owner:

Previous Holder:

Previous Location:

New Owner:

New Holder:

New Location:

Condition Change:

Episode:

Scene:

Cause:

---

# 22. Location State

| Character / Entity | Current Location | Since Episode | Since Scene | Last Location | Transition |
|---|---|---|---|---|---|
| | | | | | |

---

# 23. Location Constraints

Character:

Current Location:

Required Travel:

Minimum Story-Time Requirement:

Blocked Locations:

Reason:

Use only when geography materially affects continuity.

---

# 24. Timeline State

Current Story Time:

Current Story Date:

Current Episode Order:

Current Scene Order:

Timeline Anchor:

Timeline Confidence:

CONFIRMED / APPROXIMATE / ASSUMED / PENDING

---

# 25. Timeline Events

| Event ID | Event | Story Time | Episode | Scene | Truth Status | Canon Status |
|---|---|---|---|---|---|---|
| | | | | | | |

Episode order is not automatically chronological order.

---

# 26. Temporal Scope

Use:

CURRENT

PAST

FUTURE

RANGE

AT_EVENT

UNKNOWN_TIME

TIMELESS

---

# 27. Temporal Facts

| Fact ID | Statement | Temporal Scope | Valid From | Valid To | Source | Status |
|---|---|---|---|---|---|---|
| | | | | | | |

Historical truth must not be promoted into current truth without support.

---

# 28. Plot State

| Plot ID | Plot Thread | Status | Last Change | Current Question | Next Required Movement |
|---|---|---|---|---|---|
| | | | | | |

Possible status:

INTRODUCED

ACTIVE

ESCALATING

PARTIALLY_RESOLVED

RESOLVED

DEFERRED

ABANDONED

---

# 29. Story Obligations

| Obligation ID | Priority | Question / Promise | Created Episode | Status | Last Reinforced | Target Payoff |
|---|---|---|---|---|---|---|
| | | | | | | |

Priority:

PRIMARY

SECONDARY

LOCAL

---

# 30. Obligation Lifecycle

Use:

CREATED

ACTIVE

DEFERRED

PARTIALLY_PAID

PAID

TRANSFORMED

CANCELLED_WITH_REASON

---

# 31. Obligation Aging Review

## Primary Obligations

-

## Secondary Obligations

-

## Local Obligations

-

## Aging Warnings

-

Evaluate:

AGE

+

PRIORITY

+

REINFORCEMENT

+

STORY CONTEXT

Do not use arbitrary fixed limits.

---

# 32. Claims Registry

| Claim ID | Parent Claim | Speaker / Source | Statement | Temporal Scope | Corroboration | Canon Status |
|---|---|---|---|---|---|---|
| | | | | | | |

Claims are assertions.

They are not automatically facts.

---

# 33. Compound Claim Structure

Parent Claim ID:

Original Statement:

Speaker / Source:

Subclaim IDs:

-

## Subclaim

Claim ID:

Statement:

Temporal Scope:

Corroboration:

Truth Relationship:

Canon Status:

Repeat as needed.

---

# 34. Claim Corroboration

Use:

UNVERIFIED

PARTIALLY_CORROBORATED

CORROBORATED

DISPROVEN

CONTRADICTED

UNRESOLVED

Support for one subclaim does not transfer automatically to another.

---

# 35. Evidence Registry

| Evidence ID | Type | Observation | Temporal Scope | Integrity | Identity Status | Origin Source | Canon Status |
|---|---|---|---|---|---|---|---|
| | | | | | | | |

---

# 36. Evidence Types

Possible:

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

# 37. Evidence Integrity

Use:

INTACT

QUESTIONED

TAMPERED

INCOMPLETE

UNKNOWN

---

# 38. Evidence Provenance

Evidence ID:

Origin Source:

Discovered By:

Discovered At:

Source Episode:

Source Scene:

Source Artifact:

Source Version:

Previous Owner:

Current Owner:

Storage Location:

Tampering Status:

Chain of Custody:

---

# 39. Evidence Dependency Graph

## Evidence

Evidence ID:

Depends On:

-

Dependency Type:

Dependency Status:

VALID / QUESTIONED / BROKEN / UNKNOWN

Criticality:

CRITICAL / SUPPORTING / OPTIONAL

Downstream Effect:

---

# 40. Derived Evidence

Evidence ID:

Type:

DERIVED

Derived From:

-

Method:

Conclusion Supported:

Dependency Status:

Limitations:

Do not present derived evidence as direct observation.

---

# 41. Source Lineage

| Record ID | Origin Source | Derived From | Repeats Claim | Independent Source |
|---|---|---|---|---|
| | | | | |

Do not count repeated reporting from one original source as independent corroboration.

---

# 42. Negative Evidence

Negative Evidence ID:

Expected Event:

Expected Source:

Source Completeness:

COMPLETE / PARTIAL / UNKNOWN

Search Scope:

Observation:

Interpretation:

Confidence:

WEAK / PLAUSIBLE / SUPPORTED / STRONGLY_SUPPORTED

Remaining Alternatives:

---

# 43. Negative Evidence Rule

Before using absence strongly, verify:

Expected trace exists:

YES / NO / UNKNOWN

Correct source checked:

YES / NO / UNKNOWN

Source complete:

YES / NO / UNKNOWN

Relevant period checked:

YES / NO / UNKNOWN

Alternative channels possible:

YES / NO / UNKNOWN

---

# 44. Identity State

| Entity Reference | Observed Entity | Candidate Identity | Identity Status | Basis | Evidence |
|---|---|---|---|---|---|
| | | | | | |

Identity Status:

IDENTIFIED

LIKELY_MATCH

POSSIBLE_MATCH

UNKNOWN

EXCLUDED

Presence is not the same as identity.

---

# 45. Interpretation Registry

| Interpretation ID | Conclusion | Based On | Alternatives | Confidence | Temporal Scope | Status |
|---|---|---|---|---|---|---|
| | | | | | | |

Confidence:

WEAK

PLAUSIBLE

SUPPORTED

STRONGLY_SUPPORTED

DISPUTED

---

# 46. Fact Registry

| Fact ID | Statement | Subject | Temporal Scope | Truth Status | Canon Status | Source |
|---|---|---|---|---|---|---|
| | | | | | | |

Do not promote unsupported interpretations into facts.

---

# 47. Visual State

## Character Identity

-

## Hair

-

## Wardrobe

-

## Makeup

-

## Injury Appearance

-

## Props

-

## Location Appearance

-

## Character Position

-

## Screen Direction

-

## Lighting

-

## Time of Day

-

## Weather

-

## Environmental Damage

-

## Visual Anchors

-

Track only what matters.

---

# 48. Scene State

Scene ID:

Story Time:

Location:

Characters Present:

Character Knowledge:

-

Character Beliefs:

-

Relationships:

-

Goals:

-

Physical State:

-

Props:

-

Active Plot Threads:

-

Active Story Obligations:

-

Relevant Claims:

-

Relevant Evidence:

-

Relevant Canon:

-

Required Visual State:

-

---

# 49. Scene Entry Conditions

Before the scene begins:

Required Character Availability:

Required Locations:

Required Props:

Required Knowledge:

Required Beliefs:

Required Physical State:

Required Relationship State:

Forbidden Knowledge:

Forbidden State Changes:

---

# 50. State Delta

Delta ID:

Episode:

Scene:

Entity:

Field:

Previous State:

New State:

Cause:

Source:

Truth Status:

Canon Status:

Approval Status:

---

# 51. State Delta Categories

Possible:

KNOWLEDGE

BELIEF

RELATIONSHIP

GOAL

EMOTIONAL

PHYSICAL

LOCATION

PROP

PLOT

OBLIGATION

CANON

VISUAL

OTHER

---

# 52. Pending State Deltas

Do not apply generated changes before approval.

| Delta ID | Proposed Change | Source Output | QC Status | Approval |
|---|---|---|---|---|
| | | | | |

---

# 53. Approved State Deltas

| Delta ID | Change | Episode | Scene | Approved By | Applied Version |
|---|---|---|---|---|---|
| | | | | | |

---

# 54. State Transition Provenance

Every important transition should answer:

WHAT CHANGED?

WHAT WAS THE PREVIOUS STATE?

WHAT CAUSED IT?

WHERE DID IT OCCUR?

WHAT IS THE SOURCE?

WAS IT APPROVED?

---

# 55. Continuity Violations

| Violation ID | Code | Severity | Entity | Finding | Evidence | Required Correction |
|---|---|---|---|---|---|---|
| | | | | | | |

---

# 56. Severity

Use:

HARD ERROR

MAJOR WARNING

MINOR WARNING

ADVISORY

For production-facing QC, equivalent severity may use:

BLOCKER

MAJOR

MINOR

ADVISORY

---

# 57. Core Violation Codes

Possible:

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

ARTIFACT_OWNERSHIP_CONFLICT

---

# 58. Continuity Gate

Decision:

PASS / PASS_WITH_WARNINGS / REVISE / BLOCK

Reason:

Blocking Violations:

-

Warnings:

-

Required Corrections:

-

---

# 59. Evidence Available

State which evidence was actually inspected.

Story Text:

AVAILABLE / NOT_AVAILABLE

Episode Contract:

AVAILABLE / NOT_AVAILABLE

Dialogue:

AVAILABLE / NOT_AVAILABLE

Storyboard:

AVAILABLE / NOT_AVAILABLE

Images:

AVAILABLE / NOT_AVAILABLE

Video:

AVAILABLE / NOT_AVAILABLE

Audio:

AVAILABLE / NOT_AVAILABLE

Metadata:

AVAILABLE / NOT_AVAILABLE

Production Contract:

AVAILABLE / NOT_AVAILABLE

Other:

-

---

# 60. Check Results

Use:

PASS

FAIL

NOT_CHECKED

NOT_APPLICABLE

---

# 61. Knowledge Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 62. Belief Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 63. Relationship Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 64. Physical State Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 65. Prop Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 66. Location Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 67. Timeline Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 68. Claim Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 69. Evidence Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 70. Identity Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 71. Story Obligation Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

---

# 72. Visual Continuity Check

Result:

PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE

Finding:

Evidence:

If visual material was not inspected:

NOT_CHECKED

not PASS.

---

# 73. State Update Eligibility

Generated / Proposed Output:

Output ID:

QC Decision:

Approval State:

Eligible For State Update:

YES / NO

Reason:

---

# 74. State Update Rule

Only update persistent state after:

OUTPUT
→ QC
→ APPROVAL
→ STATE DELTA
→ STATE UPDATE

Never:

OUTPUT
→ STATE UPDATE

---

# 75. Creative Override

Override ID:

Violation:

Override Reason:

Approved By:

Affected State:

Affected Production:

Downstream Risk:

Original Warning Preserved:

YES / NO

---

# 76. Revision Impact

Upstream Change:

Affected State Domains:

-

Affected Episodes:

-

Affected Production Contracts:

-

Affected Assets:

-

Affected QC:

-

Downstream Status:

VALID / STALE / INVALID / REVIEW_REQUIRED

---

# 77. Artifact Ownership

Series Bible Owns:

-

Continuity State Owns:

-

Episode Contract Owns:

-

Production Contract Owns:

-

Asset Registry Owns:

-

QC Report Owns:

-

Generated Output Owns:

EXECUTION OUTPUT ONLY

---

# 78. Source-of-Truth Precedence

Default:

USER-CONFIRMED TRUTH

→ LOCKED SERIES BIBLE

→ LOCKED CONTINUITY STATE

→ LOCKED EPISODE CONTRACT

→ LOCKED SCENE CONTRACT

→ SHOT CONTRACT

→ GENERATED OUTPUT

Project-specific overrides:

-

---

# 79. State Compression Review

Preserve:

Active Facts:

-

Locked Canon:

-

Unresolved Obligations:

-

Current Knowledge:

-

Current Beliefs:

-

Important Relationships:

-

Physical Constraints:

-

Critical Props:

-

Critical Timeline State:

-

Important Evidence Provenance:

-

Archive Candidates:

-

Do not discard provenance needed for future reasoning.

---

# 80. Persistent State Files

When supported, suggested structure:

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

Exact implementation may vary.

---

# 81. Final Validation Questions

Before locking a continuity-state version, ask:

Are Truth Status and Canon Status separate?

Are unresolved facts still unresolved?

Are claims separated from facts?

Are compound claims decomposed when needed?

Are observations separated from interpretations?

Is source lineage preserved?

Are evidence dependencies visible?

Is identity confidence explicit?

Is negative evidence limited to its actual scope?

Does every important character know only what they acquired?

Are beliefs separate from external truth?

Are relationship changes causal?

Are physical states reflected in behavior?

Are prop transfers explicit?

Is temporal scope preserved?

Are story obligations current?

Are generated changes still pending until approved?

Are visual checks NOT_CHECKED when no visual evidence exists?

Are major state transitions traceable?

---

# 82. Final Rule

The Continuity State is not a story summary.

It is the current operational state of the series.

It must preserve the difference between:

WHAT IS TRUE

WHAT IS CANON

WHAT WAS CLAIMED

WHAT WAS OBSERVED

WHAT WAS INFERRED

WHAT EACH CHARACTER KNOWS

WHAT EACH CHARACTER BELIEVES

WHAT WAS TRUE IN THE PAST

WHAT IS TRUE NOW

WHAT CHANGED

WHAT PRODUCTION MUST PRESERVE

The system should prefer:

MINIMAL RELEVANT STATE
+
CLEAR PROVENANCE
+
EXPLICIT UNCERTAINTY
+
VALID TRANSITIONS

over a large but unreliable continuity document.

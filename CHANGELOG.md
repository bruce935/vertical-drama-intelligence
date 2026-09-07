# Changelog

All notable changes to this project will be documented in this file.

## [0.4.1] - 2026-09-07

### Added
- Blind regression coverage for epistemic state, identity uncertainty, semantic contract sufficiency, and final approval completeness.
- Decision DAG for derived decision fields.
- Decision Lock to prevent downstream fields from independently recomputing upstream decisions.
- Semantic Contract Root-Cause Guard.
- Bluff Semantic Sufficiency Guard.
- Mandatory Final Gate Evaluation Order.
- Formal Blind Run #008 closure record.

### Fixed
- Prevented accusation language from being automatically promoted into character knowledge.
- Prevented account identity or authorization from being treated as proof of human identity or physical use.
- Prevented semantically sufficient Production Contracts from being retroactively blamed for generation failures.
- Prevented redundant contract wording from being required when semantic protection is already sufficient.
- Prevented FINAL_REJECTED or FINAL_APPROVED when mandatory applicable QC scopes remain NOT_CHECKED.
- Clarified GENERATION versus PRODUCTION_CONTRACT root-cause attribution.

### Validation
- 31 evaluation cases.
- 10 blind regression cases.
- 15 hard fail conditions.
- Validator result: 39 PASS, 0 WARNING, 0 FAIL.
- Root, nested, and OpenCode-local SKILL copies validated as identical at closure.

### Architecture
- Core V0.4 architecture remains frozen.
- No new abstraction layer introduced.
- Changes in this release are regression hardening and runtime decision-consistency improvements.

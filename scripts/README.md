# Scripts

Validation utilities for **Vertical Drama Intelligence**.

## Validator

The main validation script is:

`validate-v04.ps1`

It checks the structural integrity, evaluation suite, regression coverage, required vocabulary, and SKILL synchronization for the frozen V0.4 architecture.

## Usage

Run the validator from the project root:

`.\scripts\validate-v04.ps1`

## Current Validation Baseline

| Check | Result |
|---|---:|
| Evaluation cases | 31 |
| Blind regression cases | 10 |
| Hard fail conditions | 15 |
| PASS | 39 |
| WARNING | 0 |
| FAIL | 0 |
| Overall | **PASS** |

## Development Rule

The V0.4 core architecture is currently frozen.

The validator should protect established behavior and prevent regressions. New architectural layers should only be introduced when real production testing reveals a fundamental design failure.

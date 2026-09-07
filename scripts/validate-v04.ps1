$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "Vertical Drama Intelligence V0.4 Validation"
Write-Host "==========================================="
Write-Host ""

# ============================================================
# Result Store
# ============================================================

$results = @()

function Add-Result {
    param(
        [string]$Check,
        [ValidateSet("PASS","WARNING","FAIL")]
        [string]$Status,
        [string]$Details
    )

    $script:results += [PSCustomObject]@{
        Check   = $Check
        Status  = $Status
        Details = $Details
    }
}

function Test-Term {
    param(
        [string[]]$Files,
        [string]$Term
    )

    foreach ($file in $Files) {

        if (-not (Test-Path $file)) {
            continue
        }

        $match = Select-String `
            -Path $file `
            -Pattern ([regex]::Escape($Term)) `
            -CaseSensitive:$false `
            -Quiet

        if ($match) {
            return $true
        }
    }

    return $false
}

# ============================================================
# Paths
# ============================================================

$requiredFiles = @(
    ".\SKILL.md",
    ".\skills\vertical-drama-intelligence\SKILL.md",
    ".\references\story-intelligence.md",
    ".\references\continuity-system.md",
    ".\references\production-contracts.md",
    ".\templates\series-bible.md",
    ".\templates\episode-contract.md",
    ".\templates\continuity-state.md",
    ".\templates\production-contract.md",
    ".\templates\qc-report.md",
    ".\evals\evals.json"
)

$versionFiles = @(
    ".\references\story-intelligence.md",
    ".\references\continuity-system.md",
    ".\references\production-contracts.md",
    ".\templates\series-bible.md",
    ".\templates\episode-contract.md",
    ".\templates\continuity-state.md",
    ".\templates\production-contract.md",
    ".\templates\qc-report.md"
)

$coreFiles = @(
    ".\SKILL.md",
    ".\references\story-intelligence.md",
    ".\references\continuity-system.md",
    ".\references\production-contracts.md",
    ".\templates\series-bible.md",
    ".\templates\episode-contract.md",
    ".\templates\continuity-state.md",
    ".\templates\production-contract.md",
    ".\templates\qc-report.md",
    ".\evals\evals.json"
)

$exampleFiles = @(
    ".\examples\README.md",
    ".\examples\example-01-concept-greenlight.md",
    ".\examples\example-02-continuity-diagnosis.md",
    ".\examples\example-03-production-qc.md"
)

# ============================================================
# 1. Required Files
# ============================================================

$missingFiles = @()

foreach ($file in $requiredFiles) {

    if (-not (Test-Path $file)) {
        $missingFiles += $file
        continue
    }

    if ((Get-Item $file).Length -le 0) {
        $missingFiles += "$file (empty)"
    }
}

if ($missingFiles.Count -eq 0) {
    Add-Result `
        "Required files" `
        "PASS" `
        "All 11 required files exist and are non-empty."
}
else {
    Add-Result `
        "Required files" `
        "FAIL" `
        "Missing or empty: $($missingFiles -join ', ')"
}

# ============================================================
# 2. Reference / Template Versions
# ============================================================

$wrongVersions = @()

foreach ($file in $versionFiles) {

    if (-not (Test-Path $file)) {
        $wrongVersions += "$file (missing)"
        continue
    }

    $match = Select-String `
        -Path $file `
        -Pattern '^\s*Version:\s*0\.4\s*$' `
        -CaseSensitive:$false `
        -Quiet

    if (-not $match) {
        $wrongVersions += $file
    }
}

if ($wrongVersions.Count -eq 0) {
    Add-Result `
        "Reference/template versions" `
        "PASS" `
        "All reference and template files declare Version: 0.4."
}
else {
    Add-Result `
        "Reference/template versions" `
        "FAIL" `
        "Incorrect or missing Version: 0.4: $($wrongVersions -join ', ')"
}

# ============================================================
# 3. Eval JSON Parse
# ============================================================

$eval = $null
$evalParseOK = $false

if (Test-Path ".\evals\evals.json") {

    try {
        $evalRaw = Get-Content ".\evals\evals.json" -Raw
        $eval = $evalRaw | ConvertFrom-Json
        $evalParseOK = $true

        Add-Result `
            "Eval JSON parse" `
            "PASS" `
            "evals.json is valid JSON."
    }
    catch {
        Add-Result `
            "Eval JSON parse" `
            "FAIL" `
            "evals.json could not be parsed: $($_.Exception.Message)"
    }
}
else {
    Add-Result `
        "Eval JSON parse" `
        "FAIL" `
        "evals.json not found."
}

# ============================================================
# 4. Eval Version
# ============================================================

if ($evalParseOK) {

    if ([string]$eval.version -eq "0.4.1") {
        Add-Result `
            "Eval version" `
            "PASS" `
            "Version = 0.4.1."
    }
    else {
        Add-Result `
            "Eval version" `
            "FAIL" `
            "Expected 0.4.1, found '$($eval.version)'."
    }
}

# ============================================================
# 5. Score Scale
# ============================================================

if ($evalParseOK) {

    if ([int]$eval.score_scale -eq 100) {
        Add-Result `
            "Score scale" `
            "PASS" `
            "score_scale = 100."
    }
    else {
        Add-Result `
            "Score scale" `
            "FAIL" `
            "Expected score_scale = 100, found '$($eval.score_scale)'."
    }
}

# ============================================================
# 6. Pass Score
# ============================================================

if ($evalParseOK) {

    if ([int]$eval.pass_score -eq 80) {
        Add-Result `
            "Pass score" `
            "PASS" `
            "pass_score = 80."
    }
    else {
        Add-Result `
            "Pass score" `
            "FAIL" `
            "Expected pass_score = 80, found '$($eval.pass_score)'."
    }
}

# ============================================================
# 7. Eval Weights
# ============================================================

if ($evalParseOK) {

    $weightTotal = 0

    if ($null -ne $eval.weights) {

        foreach ($property in $eval.weights.PSObject.Properties) {
            $weightTotal += [int]$property.Value
        }
    }

    if ($weightTotal -eq 100) {
        Add-Result `
            "Eval weights" `
            "PASS" `
            "Weight total = 100."
    }
    else {
        Add-Result `
            "Eval weights" `
            "FAIL" `
            "Expected weight total = 100, found $weightTotal."
    }
}

# ============================================================
# 8. Eval Case Count
# ============================================================

if ($evalParseOK) {

    $caseCount = @($eval.cases).Count

    if ($caseCount -eq 31) {
        Add-Result `
            "Eval case count" `
            "PASS" `
            "31 V0.4.1 eval cases found."
    }
    else {
        Add-Result `
            "Eval case count" `
            "FAIL" `
            "Expected 31 eval cases, found $caseCount."
    }
}

# ============================================================
# 9. Blind Run Regression Cases
# ============================================================

if ($evalParseOK) {

    $requiredBlindRegressionIds = @(
        "blind-regression-001",
        "blind-regression-002",
        "blind-regression-003",
        "blind-regression-004",
        "blind-regression-005",
        "blind-regression-006",
        "blind-regression-007",
        "blind-regression-008",
        "blind-regression-009",
        "blind-regression-010"
    )

    $existingEvalIds = @(
        $eval.cases |
        ForEach-Object {
            $_.id
        }
    )

    $missingBlindRegressionIds = @(
        $requiredBlindRegressionIds |
        Where-Object {
            $_ -notin $existingEvalIds
        }
    )

    if ($missingBlindRegressionIds.Count -eq 0) {
        Add-Result `
            "Blind regression cases" `
            "PASS" `
            "All 10 Blind Run regression cases found."
    }
    else {
        Add-Result `
            "Blind regression cases" `
            "FAIL" `
            "Missing regression IDs: $($missingBlindRegressionIds -join ', ')"
    }
}

# ============================================================
# 10. Duplicate Eval IDs
# ============================================================

if ($evalParseOK) {

    $ids = @(
        $eval.cases |
        ForEach-Object {
            $_.id
        }
    )

    $duplicates = @(
        $ids |
        Group-Object |
        Where-Object {
            $_.Count -gt 1
        }
    )

    if ($duplicates.Count -eq 0) {
        Add-Result `
            "Eval IDs" `
            "PASS" `
            "No duplicate eval IDs."
    }
    else {
        $duplicateNames = @(
            $duplicates |
            ForEach-Object {
                $_.Name
            }
        )

        Add-Result `
            "Eval IDs" `
            "FAIL" `
            "Duplicate IDs: $($duplicateNames -join ', ')"
    }
}

# ============================================================
# 10. Hard Fail Conditions
# ============================================================

if ($evalParseOK) {

    $hardFailCount = @($eval.hard_fail_conditions).Count

    if ($hardFailCount -eq 15) {
        Add-Result `
            "Hard fail conditions" `
            "PASS" `
            "15 hard fail conditions found."
    }
    else {
        Add-Result `
            "Hard fail conditions" `
            "FAIL" `
            "Expected 15 hard fail conditions, found $hardFailCount."
    }
}

# ============================================================
# 11. SKILL Synchronization
# ============================================================

$rootSkill = ".\SKILL.md"
$nestedSkill = ".\skills\vertical-drama-intelligence\SKILL.md"

if ((Test-Path $rootSkill) -and (Test-Path $nestedSkill)) {

    $rootHash = (Get-FileHash $rootSkill -Algorithm SHA256).Hash
    $nestedHash = (Get-FileHash $nestedSkill -Algorithm SHA256).Hash

    if ($rootHash -eq $nestedHash) {
        Add-Result `
            "SKILL synchronization" `
            "PASS" `
            "Root and nested SKILL.md hashes are identical."
    }
    else {
        Add-Result `
            "SKILL synchronization" `
            "FAIL" `
            "Root and nested SKILL.md hashes differ."
    }
}
else {
    Add-Result `
        "SKILL synchronization" `
        "FAIL" `
        "One or both SKILL.md files are missing."
}

# ============================================================
# 12. Truth Status Vocabulary
# ============================================================

$truthStates = @(
    "CONFIRMED",
    "OBSERVED",
    "CALCULATED",
    "INFERRED",
    "ASSUMED",
    "PENDING"
)

$missingTruthStates = @()

foreach ($term in $truthStates) {

    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingTruthStates += $term
    }
}

if ($missingTruthStates.Count -eq 0) {
    Add-Result `
        "Truth Status vocabulary" `
        "PASS" `
        "All six V0.4 truth states are represented."
}
else {
    Add-Result `
        "Truth Status vocabulary" `
        "FAIL" `
        "Missing: $($missingTruthStates -join ', ')"
}

# ============================================================
# 13. Canon Status Vocabulary
# ============================================================

$canonStates = @(
    "PROPOSED",
    "APPROVED",
    "LOCKED",
    "SUPERSEDED"
)

$missingCanonStates = @()

foreach ($term in $canonStates) {

    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingCanonStates += $term
    }
}

if ($missingCanonStates.Count -eq 0) {
    Add-Result `
        "Canon Status vocabulary" `
        "PASS" `
        "All four canon states are represented."
}
else {
    Add-Result `
        "Canon Status vocabulary" `
        "FAIL" `
        "Missing: $($missingCanonStates -join ', ')"
}

# ============================================================
# 14. QC State Vocabulary
# ============================================================

$qcStates = @(
    "PASS",
    "FAIL",
    "NOT_CHECKED",
    "NOT_APPLICABLE"
)

$missingQCStates = @()

foreach ($term in $qcStates) {

    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingQCStates += $term
    }
}

if ($missingQCStates.Count -eq 0) {
    Add-Result `
        "QC state vocabulary" `
        "PASS" `
        "PASS / FAIL / NOT_CHECKED / NOT_APPLICABLE represented."
}
else {
    Add-Result `
        "QC state vocabulary" `
        "FAIL" `
        "Missing: $($missingQCStates -join ', ')"
}

# ============================================================
# 15. Scoped QC Vocabulary
# ============================================================

$scopedQCStates = @(
    "PASS_FOR_SCOPE",
    "PASS_FOR_SCOPE_WITH_WARNINGS",
    "REVISE_FOR_SCOPE",
    "BLOCK_FOR_SCOPE"
)

$missingScopedQCStates = @()

foreach ($term in $scopedQCStates) {

    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingScopedQCStates += $term
    }
}

if ($missingScopedQCStates.Count -eq 0) {
    Add-Result `
        "Scoped QC vocabulary" `
        "PASS" `
        "All scoped QC decision states represented."
}
else {
    Add-Result `
        "Scoped QC vocabulary" `
        "FAIL" `
        "Missing: $($missingScopedQCStates -join ', ')"
}

# ============================================================
# 16. Final Approval Vocabulary
# ============================================================

$finalApprovalStates = @(
    "FINAL_APPROVED",
    "FINAL_REJECTED",
    "NOT_ELIGIBLE_FOR_FINAL_APPROVAL"
)

$missingFinalApprovalStates = @()

foreach ($term in $finalApprovalStates) {

    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingFinalApprovalStates += $term
    }
}

if ($missingFinalApprovalStates.Count -eq 0) {
    Add-Result `
        "Final approval vocabulary" `
        "PASS" `
        "All final approval states represented."
}
else {
    Add-Result `
        "Final approval vocabulary" `
        "FAIL" `
        "Missing: $($missingFinalApprovalStates -join ', ')"
}

# ============================================================
# 17. V0.4 Integrity Violation Codes
# ============================================================

$integrityCodes = @(
    "COMPOUND_CLAIM_COLLAPSE",
    "IDENTITY_OVERCLAIM",
    "NEGATIVE_EVIDENCE_OVERCLAIM",
    "DEPENDENCY_INTEGRITY_FAILURE",
    "FALSE_INDEPENDENT_CORROBORATION",
    "DERIVED_EVIDENCE_SOURCE_LOSS",
    "SEMANTIC_CONTRACT_ROOT_CAUSE_MISATTRIBUTION"
)

$missingIntegrityCodes = @()

foreach ($term in $integrityCodes) {

    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingIntegrityCodes += $term
    }
}

if ($missingIntegrityCodes.Count -eq 0) {
    Add-Result `
        "V0.4 integrity codes" `
        "PASS" `
        "All V0.4 closure-patch violation codes represented."
}
else {
    Add-Result `
        "V0.4 integrity codes" `
        "FAIL" `
        "Missing: $($missingIntegrityCodes -join ', ')"
}

# ============================================================
# 18. NOT_CHECKED Semantics
# ============================================================

if (Test-Term -Files $coreFiles -Term "NOT_CHECKED") {
    Add-Result `
        "NOT_CHECKED semantics" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "NOT_CHECKED semantics" `
        "FAIL" `
        "NOT_CHECKED concept not found."
}

# ============================================================
# 19. Compound Claims
# ============================================================

if (Test-Term -Files $coreFiles -Term "Compound Claim") {
    Add-Result `
        "Compound claims" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "Compound claims" `
        "FAIL" `
        "Compound Claim concept not found."
}

# ============================================================
# 20. Evidence Dependency
# ============================================================

if (Test-Term -Files $coreFiles -Term "Evidence Dependency") {
    Add-Result `
        "Evidence dependency" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "Evidence dependency" `
        "FAIL" `
        "Evidence Dependency concept not found."
}

# ============================================================
# 21. Negative Evidence
# ============================================================

if (Test-Term -Files $coreFiles -Term "Negative Evidence") {
    Add-Result `
        "Negative evidence" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "Negative evidence" `
        "FAIL" `
        "Negative Evidence concept not found."
}

# ============================================================
# 22. Identity Uncertainty
# ============================================================

if (Test-Term -Files $coreFiles -Term "Identity") {
    Add-Result `
        "Identity uncertainty" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "Identity uncertainty" `
        "FAIL" `
        "Identity concept not found."
}

# ============================================================
# 23. Root Cause Analysis
# ============================================================

if (Test-Term -Files $coreFiles -Term "Root Cause") {
    Add-Result `
        "Root cause analysis" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "Root cause analysis" `
        "FAIL" `
        "Root Cause concept not found."
}

# ============================================================
# 24. Targeted Regeneration
# ============================================================

if (Test-Term -Files $coreFiles -Term "Targeted Regeneration") {
    Add-Result `
        "Targeted regeneration" `
        "PASS" `
        "Required concept found."
}
else {
    Add-Result `
        "Targeted regeneration" `
        "FAIL" `
        "Targeted Regeneration concept not found."
}

# ============================================================
# 25. Closed Vocabulary Enforcement
# ============================================================

$closedVocabularyTerms = @(
    "Belief confidence states are a closed vocabulary",
    "Do not invent, substitute, or silently extend belief confidence states",
    "UNCERTAIN"
)

$missingClosedVocabularyTerms = @()

foreach ($term in $closedVocabularyTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingClosedVocabularyTerms += $term
    }
}

if ($missingClosedVocabularyTerms.Count -eq 0) {
    Add-Result `
        "Closed vocabulary enforcement" `
        "PASS" `
        "Belief-confidence closed-vocabulary guard found."
}
else {
    Add-Result `
        "Closed vocabulary enforcement" `
        "FAIL" `
        "Missing: $($missingClosedVocabularyTerms -join ', ')"
}

# ============================================================
# 26. Final Approval Gate Termination
# ============================================================

$finalGateTerms = @(
    "mutually exclusive outcomes of the final-approval state machine",
    "Final Approval Gate must terminate",
    "Do not emit FINAL_APPROVED or FINAL_REJECTED after NOT_ELIGIBLE_FOR_FINAL_APPROVAL",
    "NOT_CHECKED mandatory scopes do not automatically become FAIL"
)

$missingFinalGateTerms = @()

foreach ($term in $finalGateTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingFinalGateTerms += $term
    }
}

if ($missingFinalGateTerms.Count -eq 0) {
    Add-Result `
        "Final gate termination" `
        "PASS" `
        "Final approval state-machine guard found."
}
else {
    Add-Result `
        "Final gate termination" `
        "FAIL" `
        "Missing: $($missingFinalGateTerms -join ', ')"
}

# ============================================================
# 27. Root Cause Attribution Guard
# ============================================================

$rootCauseGuardTerms = @(
    "Do not assign GENERATION as the sole root cause",
    "Before assigning GENERATION",
    "Use PRODUCTION_CONTRACT when required",
    "earliest supported failure point"
)

$missingRootCauseGuardTerms = @()

foreach ($term in $rootCauseGuardTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingRootCauseGuardTerms += $term
    }
}

if ($missingRootCauseGuardTerms.Count -eq 0) {
    Add-Result `
        "Root cause attribution guard" `
        "PASS" `
        "Upstream-before-generation root-cause guard found."
}
else {
    Add-Result `
        "Root cause attribution guard" `
        "FAIL" `
        "Missing: $($missingRootCauseGuardTerms -join ', ')"
}

# ============================================================
# 28. Root Cause Double Attribution Guard
# ============================================================

$rootCauseDoubleAttributionTerms = @(
    "Primary Root Cause and Downstream Manifestation must be distinguished",
    "PRODUCTION_CONTRACT as the Primary Root Cause",
    "GENERATION as a Downstream Manifestation",
    "co-equal root causes",
    "ROOT_CAUSE_DOUBLE_ATTRIBUTION"
)

$missingRootCauseDoubleAttributionTerms = @()

foreach ($term in $rootCauseDoubleAttributionTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingRootCauseDoubleAttributionTerms += $term
    }
}

if ($missingRootCauseDoubleAttributionTerms.Count -eq 0) {
    Add-Result `
        "Root cause double attribution guard" `
        "PASS" `
        "Primary root cause and downstream manifestation separation found."
}
else {
    Add-Result `
        "Root cause double attribution guard" `
        "FAIL" `
        "Missing: $($missingRootCauseDoubleAttributionTerms -join ', ')"
}

# ============================================================
# 29. Correction Regression Guard
# ============================================================

$correctionRegressionTerms = @(
    "regression-check set",
    "must not pass Re-QC",
    "Do not approve a correction merely because a correction attempt was made",
    "diagnosed violation reappears"
)

$missingCorrectionRegressionTerms = @()

foreach ($term in $correctionRegressionTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingCorrectionRegressionTerms += $term
    }
}

if ($missingCorrectionRegressionTerms.Count -eq 0) {
    Add-Result `
        "Correction regression guard" `
        "PASS" `
        "Correction regression-control guard found."
}
else {
    Add-Result `
        "Correction regression guard" `
        "FAIL" `
        "Missing: $($missingCorrectionRegressionTerms -join ', ')"
}

# ============================================================
# 30. Correction Unsupported Inference Guard
# ============================================================

$correctionUnsupportedInferenceTerms = @(
    "Correction Inference Guard",
    "An inference label in analysis does not automatically make an in-scene assertion valid",
    "Analysis metadata must never substitute for uncertainty",
    "CORRECTION_UNSUPPORTED_INFERENCE"
)

$missingCorrectionUnsupportedInferenceTerms = @()

foreach ($term in $correctionUnsupportedInferenceTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingCorrectionUnsupportedInferenceTerms += $term
    }
}

if ($missingCorrectionUnsupportedInferenceTerms.Count -eq 0) {
    Add-Result `
        "Correction unsupported inference guard" `
        "PASS" `
        "Correction inference validation guard found."
}
else {
    Add-Result `
        "Correction unsupported inference guard" `
        "FAIL" `
        "Missing: $($missingCorrectionUnsupportedInferenceTerms -join ', ')"
}
# ============================================================
# 31. Accusation vs Knowledge Guard
# ============================================================

$accusationKnowledgeGuardTerms = @(
    "Accusation vs Knowledge Guard",
    "Dialogue surface form alone does not determine epistemic status",
    "BELIEF-DRIVEN ACCUSATION",
    "ACCUSATION_KNOWLEDGE_CONFLATION"
)

$missingAccusationKnowledgeGuardTerms = @()

foreach ($term in $accusationKnowledgeGuardTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingAccusationKnowledgeGuardTerms += $term
    }
}

if ($missingAccusationKnowledgeGuardTerms.Count -eq 0) {
    Add-Result `
        "Accusation vs knowledge guard" `
        "PASS" `
        "Accusation and knowledge boundary guard found."
}
else {
    Add-Result `
        "Accusation vs knowledge guard" `
        "FAIL" `
        "Missing: $($missingAccusationKnowledgeGuardTerms -join ', ')"
}
# ============================================================
# 32. Final Scope Completeness Guard
# ============================================================

$finalScopeCompletenessTerms = @(
    "Final Scope Completeness Guard",
    "complete set of mandatory QC scopes",
    "Carry every mandatory NOT_CHECKED scope into the Final Approval Gate",
    "FINAL_SCOPE_COMPLETENESS_FAILURE"
)

$missingFinalScopeCompletenessTerms = @()

foreach ($term in $finalScopeCompletenessTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingFinalScopeCompletenessTerms += $term
    }
}

if ($missingFinalScopeCompletenessTerms.Count -eq 0) {
    Add-Result `
        "Final scope completeness guard" `
        "PASS" `
        "Mandatory FINAL-mode QC scope completeness guard found."
}
else {
    Add-Result `
        "Final scope completeness guard" `
        "FAIL" `
        "Missing: $($missingFinalScopeCompletenessTerms -join ', ')"
}
# ============================================================
# 33. Bluff Semantic Sufficiency Guard
# ============================================================

$bluffSemanticSufficiencyTerms = @(
    "Bluff Semantic Sufficiency Guard",
    "Semantic protection is sufficient",
    "specific label absent",
    "BLUFF_CONTRACT_OVERCONSTRAINT"
)

$missingBluffSemanticSufficiencyTerms = @()

foreach ($term in $bluffSemanticSufficiencyTerms) {
    if (-not (Test-Term -Files $coreFiles -Term $term)) {
        $missingBluffSemanticSufficiencyTerms += $term
    }
}

if ($missingBluffSemanticSufficiencyTerms.Count -eq 0) {
    Add-Result `
        "Bluff semantic sufficiency guard" `
        "PASS" `
        "Semantically protected bluff contract guard found."
}
else {
    Add-Result `
        "Bluff semantic sufficiency guard" `
        "FAIL" `
        "Missing: $($missingBluffSemanticSufficiencyTerms -join ', ')"
}

# ============================================================
# 29. Example Files
# ============================================================

$missingExampleFiles = @()

foreach ($file in $exampleFiles) {

    if (-not (Test-Path $file)) {
        $missingExampleFiles += $file
        continue
    }

    if ((Get-Item $file).Length -le 0) {
        $missingExampleFiles += "$file (empty)"
    }
}

if ($missingExampleFiles.Count -eq 0) {
    Add-Result `
        "Example files" `
        "PASS" `
        "All 4 example-layer files exist and are non-empty."
}
else {
    Add-Result `
        "Example files" `
        "FAIL" `
        "Missing or empty: $($missingExampleFiles -join ', ')"
}

# ============================================================
# 26. Example Versions
# ============================================================

$wrongExampleVersions = @()

foreach ($file in $exampleFiles) {

    if (-not (Test-Path $file)) {
        $wrongExampleVersions += "$file (missing)"
        continue
    }

    $match = Select-String `
        -Path $file `
        -Pattern '^\s*Version:\s*0\.4\s*$' `
        -CaseSensitive:$false `
        -Quiet

    if (-not $match) {
        $wrongExampleVersions += $file
    }
}

if ($wrongExampleVersions.Count -eq 0) {
    Add-Result `
        "Example versions" `
        "PASS" `
        "All example-layer files declare Version: 0.4."
}
else {
    Add-Result `
        "Example versions" `
        "FAIL" `
        "Incorrect or missing Version: 0.4: $($wrongExampleVersions -join ', ')"
}

# ============================================================
# 27. Example 01 Coverage
# ============================================================

$example01 = ".\examples\example-01-concept-greenlight.md"

$example01Terms = @(
    "Concept Qualification",
    "Serial Engine",
    "Story Obligations",
    "GREENLIGHT_WITH_RISKS",
    "Belief State",
    "Knowledge State",
    "Evidence Integrity Summary",
    "Final Assessment"
)

$missingExample01Terms = @()

foreach ($term in $example01Terms) {

    if (-not (Test-Term -Files @($example01) -Term $term)) {
        $missingExample01Terms += $term
    }
}

if ($missingExample01Terms.Count -eq 0) {
    Add-Result `
        "Example 01 coverage" `
        "PASS" `
        "Concept Greenlight example covers required Story Intelligence concepts."
}
else {
    Add-Result `
        "Example 01 coverage" `
        "FAIL" `
        "Missing: $($missingExample01Terms -join ', ')"
}

# ============================================================
# 28. Example 02 Coverage
# ============================================================

$example02 = ".\examples\example-02-continuity-diagnosis.md"

$example02Terms = @(
    "Compound Claim Decomposition",
    "Evidence Dependency",
    "Identity Resolution",
    "Negative Evidence",
    "KNOWLEDGE_STATE_VIOLATION",
    "BELIEF_TRANSITION_UNSUPPORTED",
    "Root Cause Analysis",
    "REVISE_FOR_SCOPE",
    "NOT_ELIGIBLE_FOR_FINAL_APPROVAL",
    "State Update Boundary"
)

$missingExample02Terms = @()

foreach ($term in $example02Terms) {

    if (-not (Test-Term -Files @($example02) -Term $term)) {
        $missingExample02Terms += $term
    }
}

if ($missingExample02Terms.Count -eq 0) {
    Add-Result `
        "Example 02 coverage" `
        "PASS" `
        "Continuity Diagnosis example covers required continuity/evidence concepts."
}
else {
    Add-Result `
        "Example 02 coverage" `
        "FAIL" `
        "Missing: $($missingExample02Terms -join ', ')"
}

# ============================================================
# 29. Example 03 Coverage
# ============================================================

$example03 = ".\examples\example-03-production-qc.md"

$example03Terms = @(
    "Must Preserve",
    "Forbidden",
    "Production Mode",
    "NOT_CHECKED",
    "Root Cause Analysis",
    "Targeted Regeneration Plan",
    "Regression Control",
    "PASS_FOR_SCOPE",
    "NOT_ELIGIBLE_FOR_FINAL_APPROVAL",
    "State Update Boundary"
)

$missingExample03Terms = @()

foreach ($term in $example03Terms) {

    if (-not (Test-Term -Files @($example03) -Term $term)) {
        $missingExample03Terms += $term
    }
}

if ($missingExample03Terms.Count -eq 0) {
    Add-Result `
        "Example 03 coverage" `
        "PASS" `
        "Production QC example covers required production/QC concepts."
}
else {
    Add-Result `
        "Example 03 coverage" `
        "FAIL" `
        "Missing: $($missingExample03Terms -join ', ')"
}

# ============================================================
# Validation Results
# ============================================================

Write-Host ""
Write-Host "Validation Results"
Write-Host "------------------"
Write-Host ""

$results |
    Format-Table `
        Check,
        Status,
        Details `
        -AutoSize `
        -Wrap

# ============================================================
# Summary
# ============================================================

$passCount = @(
    $results |
    Where-Object {
        $_.Status -eq "PASS"
    }
).Count

$warningCount = @(
    $results |
    Where-Object {
        $_.Status -eq "WARNING"
    }
).Count

$failCount = @(
    $results |
    Where-Object {
        $_.Status -eq "FAIL"
    }
).Count

Write-Host ""
Write-Host "PASS    : $passCount"
Write-Host "WARNING : $warningCount"
Write-Host "FAIL    : $failCount"
Write-Host ""

if ($failCount -gt 0) {

    Write-Host "OVERALL: FAIL"
    exit 1
}
elseif ($warningCount -gt 0) {

    Write-Host "OVERALL: PASS WITH WARNINGS"
    exit 0
}
else {

    Write-Host "OVERALL: PASS"
    exit 0
}











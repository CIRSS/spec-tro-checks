# Report

Candidate: `spec-example-2026-04-08.jsonld`

The specification's [Complete Example](https://transparency-certified.github.io/trace-specification/docs/tro-declaration-format#complete-example), copied verbatim on 2026-09-03 from the 2026-04-08 revision. Its four `trov:hashValue` fields carry elided placeholders (`a1b2c3d4...`, `aaa1...`) and its `@context` declares no `@base`.

Target: Tier 1 -- Self-Contained (declared)

## Assessment

- Tier 0 -- Well-Formed: met
- Tier 1 -- Self-Contained: unmet

## Findings

Every expectation in the target was put to `jsonschema-validate` and `ajv-validate`.

### has-well-formed-context (Tier 0): met

### has-well-formed-graph (Tier 0): met

### node-rooted (Tier 0): met

### composition-fingerprint (Tier 1): met

### hash-form (Tier 1): unmet

`jsonschema-validate`:

```
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/0/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/1/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/2/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
INVALID: /@graph/0/trov:hasComposition/trov:hasFingerprint/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
```

`ajv-validate`:

```
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/0/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/1/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/2/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
INVALID: /@graph/0/trov:hasComposition/trov:hasFingerprint/trov:hash/trov:hashValue: a sha256 value is 64 lowercase hexadecimal digits
```

### tro-minimal (Tier 1): met

### trov-terms-known (Tier 1): met

### trs-typed (Tier 1): met

### context-base (Tier 2): not claimed

### node-id-present (Tier 2): not claimed

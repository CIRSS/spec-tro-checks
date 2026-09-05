# Report

Candidate: `complete-example-corrected.jsonld`

Every expectation below was put to both `jsonschema-validate` and `ajv-validate`.

## composition-fingerprint: met

## context-base: met

## hash-form: met

## node-id-present: unmet

`jsonschema-validate`:

```
INVALID: /@graph/0/trov:createdWith: '@id' is a required property
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/0/trov:hash: '@id' is a required property
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/1/trov:hash: '@id' is a required property
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/2/trov:hash: '@id' is a required property
INVALID: /@graph/0/trov:hasComposition/trov:hasFingerprint/trov:hash: '@id' is a required property
```

`ajv-validate`:

```
INVALID: /@graph/0/trov:createdWith: node object with no @id -- it becomes a blank node, which nothing outside this document can reference
INVALID: /@graph/0/trov:createdWith: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasFingerprint/trov:hash: node object with no @id -- it becomes a blank node, which nothing outside this document can reference
INVALID: /@graph/0/trov:hasComposition/trov:hasFingerprint/trov:hash: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasFingerprint: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/0/trov:hash: node object with no @id -- it becomes a blank node, which nothing outside this document can reference
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/0/trov:hash: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/0: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/1/trov:hash: node object with no @id -- it becomes a blank node, which nothing outside this document can reference
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/1/trov:hash: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/1: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/2/trov:hash: node object with no @id -- it becomes a blank node, which nothing outside this document can reference
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/2/trov:hash: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact/2: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact: must match "then" schema
INVALID: /@graph/0/trov:hasComposition/trov:hasArtifact: must match "else" schema
INVALID: /@graph/0/trov:hasComposition: must match "then" schema
INVALID: /@graph/0: must match "then" schema
INVALID: /@graph: must match "then" schema
INVALID: /@graph: must match "else" schema
INVALID: must match "then" schema
```

## tro-minimal: met

## trs-typed: met

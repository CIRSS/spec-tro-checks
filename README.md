# spec-tro-checks

Checks three candidates based on the TRACE specification's own worked example
against [`tro-checks`](https://github.com/CIRSS/tro-checks), and reports what it
found.

That example is the **Complete Example** from `tro-declaration-format.md` in
[trace-specification](https://github.com/transparency-certified/trace-specification).
One candidate is it, extracted verbatim; the other two are derived from it, as
the table below says.

This repository does not define its own checks. It performs those defined by
the `tro-checks` module on the candidates in this repository.

## Key files

| File | What it is |
| --- | --- |
| [`candidates/complete-example.jsonld`](candidates/complete-example.jsonld) | The specification's Complete Example, as published. |
| [`candidates/complete-example-corrected.jsonld`](candidates/complete-example-corrected.jsonld) | The same example with an `@base` and real sha256 values, derived rather than invented. |
| [`candidates/complete-example-tier-2.jsonld`](candidates/complete-example-tier-2.jsonld) | The corrected example with an `@id` added to each of its five remaining node objects. Ours, not the specification's: it meets every expectation, so the battery has a document that passes. |
| [`reports/`](reports) | What the checks found, one report per candidate. Generated. |
| [`Dockerfile`](Dockerfile) | Requires `tro-checks` and `ai-coding-dev`.|
| [`check-image`](check-image) | Asserts a built image has the commands its modules were required for. |
| [`REVIEWS.md`](REVIEWS.md) | Who has read which version of which file. Generated. |

## Running it

Requires Git, Docker and GNU Make.

```
make build-parent      # once, on a fresh clone
make build-image
```

Regenerate the reports and `REVIEWS.md`:

```
make build-reports
```

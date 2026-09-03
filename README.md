# spec-tro-checks

Checks the TRACE specification's own worked example against
[`tro-checks`](https://github.com/CIRSS/tro-checks), and reports what it found.

The subject is the **Complete Example** from `tro-declaration-format.md` in
[trace-specification](https://github.com/transparency-certified/trace-specification),
extracted verbatim.

This repository does not define its own checks. It performs those defined by the `tro-checks` module on the one TRO document in this repo.

## Key files

| File | What it is |
| --- | --- |
| [`tro.jsonld`](tro.jsonld) | The subject: the specification's Complete Example, as published. |
| [`report.md`](report.md) | What the checks found. Generated. |
| [`Dockerfile`](Dockerfile) | Requires `tro-checks` and `ai-coding-dev`.|
| [`check-image`](check-image) | Asserts a built image has the commands its modules were required for. |
| [`REVIEWS.md`](REVIEWS.md) | Who has read which version of which file. Generated. |

## Running it

Requires Git, Docker and GNU Make.

```
make build-parent      # once, on a fresh clone
make build-image
```

Regenerate `report.md` and `REVIEWS.md`:

```
make build-reports
```

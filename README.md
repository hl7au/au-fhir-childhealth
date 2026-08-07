# au-fhir-childhealth

FHIR STU3 profiles for the National Children's Digital Health Collaborative (NCDHC).

This repository builds two implementation guides from one set of source resources:

| Guide | Control file | Output |
| --- | --- | --- |
| Australian National Child Digital Health IG (full) | `ig.ini` | `output/` |
| Australian Digital Pregnancy Health Record IG (subset) | `ig-dphr.ini` | `output-dphr/` |

## Building

You need Java 11 or later on the path.

```bash
_updatePublisher.bat
```

Then build either guide:

```bash
_genonce.bat
```

```bash
_genonce-dphr.bat
```

The QA reports land in `qa.html` and `qa-dphr.html`.

### TLS note

The build scripts pass `-Djavax.net.ssl.trustStoreType=Windows-ROOT`. TLS-inspecting
antivirus (Norton Web/Mail Shield, and similar) re-signs HTTPS traffic with a root CA
that is installed in the Windows certificate store but not in Java's own `cacerts`, so
package downloads otherwise fail with `PKIX path building failed`. Reading trust roots
from the Windows store fixes it, and the flag is harmless on machines that do not need it.

## Layout

```
ig.ini, ig-dphr.ini           IG Publisher control files
input/
  ImplementationGuide-*.xml   IG resources (R4 format, FHIR STU3 content)
  resources/                  conformance resources used by BOTH guides
  resources-cdhr/             conformance resources used only by the full guide
  examples/                   examples used by BOTH guides
  examples-cdhr/              examples used only by the full guide
  pagecontent/                narrative pages, plus per-profile -intro / -notes
  images/                     images referenced from page content
  includes/menu.xml           navigation menu
  expansion-params.json       SNOMED CT-AU edition for terminology expansion
  ignoreWarnings.txt          suppressed QA messages, with reasons
input-drafts/                 resources present in the repo but not published by
                              either guide - not on any scan path
```

The DPHR guide scans `input/resources` and `input/examples` only; the full guide
scans all four directories. To move a resource into the DPHR guide, move its file
from `input/resources-cdhr` to `input/resources` (or the examples equivalent).

Note that the IG resources are written in **R4 format** even though the content is
FHIR STU3 (`fhirVersion` 3.0.2) - the current IG Publisher only parses its control
file as R4 or R5.

## Known limitations

- Both guides share one `input/pagecontent` directory, because `path-pages` takes a
  single directory and does not merge. The shared `profiles.md` and the per-profile
  intro pages list the full guide's artifacts, so the DPHR build reports about 97
  broken links pointing at artifacts it does not itself publish. The legacy build
  shared its pages the same way. Fixing this properly means giving the DPHR guide
  its own complete page set.
- `input-drafts/` holds 29 resources plus one OpenAPI document that neither guide
  ever published. They are kept out of the scan path so the published content is
  unchanged; move a file into `input/resources` or `input/examples` to publish it.

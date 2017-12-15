#!/usr/bin/env cwl-runner

class: CommandLineTool

id: "dockstore-dd"

label: "Generates a file of null data with dd"

cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: "quay.io/keiranmraine/dockstore-dd:1.0.0"

inputs:
  count:
    type: int
    doc: "How many MB of null char to generate."
    default: 150000
    inputBinding:
      position: 1
      separate: false
      prefix: count=

outputs:
  null_file:
    type: File
    outputBinding:
      glob: null.dat

baseCommand: ["dd", "if=/dev/zero", "of=null.dat", "bs=1M"]

doc: |
    ![build_status](https://quay.io/repository/keiranmraine/dockstore-dd/status)
    A Docker container for generating files of null characters.

    Intended for testing of plugins.

    See the dockstore-dd [README](https://github.com/keiranmraine/dockstore-dd/blob/develop/README.md)
    for full details of how to use.

$schemas:
  - http://schema.org/docs/schema_org_rdfa.html

$namespaces:
  s: http://schema.org/

s:codeRepository: https://github.com/keiranmraine/dockstore-dd
s:license: https://spdx.org/licenses/MIT

s:author:
  - class: s:Person
    s:identifier: https://orcid.org/0000-0002-5634-1539
    s:email: mailto:keiranmraine@gmail.com
    s:name: Keiran Raine

dct:creator:
  "@id": "keiranmraine@gmail.com"
  foaf:name: Keiran Raine
  foaf:mbox: "keiranmraine@gmail.com"

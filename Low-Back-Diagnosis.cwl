cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  low-back-diagnosis-ligament---primary:
    run: low-back-diagnosis-ligament---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  low-back-diagnosis-decompression---primary:
    run: low-back-diagnosis-decompression---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-ligament---primary/output
  low-back-diagnosis-lumbar---primary:
    run: low-back-diagnosis-lumbar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-decompression---primary/output
  low-back-diagnosis---primary:
    run: low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-lumbar---primary/output
  low-back-diagnosis-spondylosis---primary:
    run: low-back-diagnosis-spondylosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis---primary/output
  low-back-diagnosis-facet---primary:
    run: low-back-diagnosis-facet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-spondylosis---primary/output
  low-back-diagnosis-region---primary:
    run: low-back-diagnosis-region---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-facet---primary/output
  low-back-diagnosis-spine---primary:
    run: low-back-diagnosis-spine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-region---primary/output
  low-back-diagnosis-column---primary:
    run: low-back-diagnosis-column---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-spine---primary/output
  low-back-diagnosis-sacrum---primary:
    run: low-back-diagnosis-sacrum---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-column---primary/output
  low-back-diagnosis-injury---primary:
    run: low-back-diagnosis-injury---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-sacrum---primary/output
  vertebral-low-back-diagnosis---primary:
    run: vertebral-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-injury---primary/output
  low-back-diagnosis-strain---primary:
    run: low-back-diagnosis-strain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: vertebral-low-back-diagnosis---primary/output
  low-back-diagnosis-degeneration---primary:
    run: low-back-diagnosis-degeneration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-strain---primary/output
  low-back-diagnosis-scoliosis---primary:
    run: low-back-diagnosis-scoliosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-degeneration---primary/output
  low-back-diagnosis-spondylitis---primary:
    run: low-back-diagnosis-spondylitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-scoliosis---primary/output
  low-back-diagnosis-structure---primary:
    run: low-back-diagnosis-structure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-spondylitis---primary/output
  low-back-diagnosis-laminectomy---primary:
    run: low-back-diagnosis-laminectomy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-structure---primary/output
  myelopathy-low-back-diagnosis---primary:
    run: myelopathy-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-laminectomy---primary/output
  low-back-diagnosis-stenosis---primary:
    run: low-back-diagnosis-stenosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: myelopathy-low-back-diagnosis---primary/output
  chronic-low-back-diagnosis---primary:
    run: chronic-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-stenosis---primary/output
  low-back-diagnosis-coccyx---primary:
    run: low-back-diagnosis-coccyx---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: chronic-low-back-diagnosis---primary/output
  low-back-diagnosis-arthritis---primary:
    run: low-back-diagnosis-arthritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-coccyx---primary/output
  low-back-diagnosis-spondylolisthesis---primary:
    run: low-back-diagnosis-spondylolisthesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-arthritis---primary/output
  spinal-low-back-diagnosis---primary:
    run: spinal-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-spondylolisthesis---primary/output
  low-back-diagnosis-sprain---primary:
    run: low-back-diagnosis-sprain---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: spinal-low-back-diagnosis---primary/output
  low-back-diagnosis-sacroiliac---primary:
    run: low-back-diagnosis-sacroiliac---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-sprain---primary/output
  low-back-diagnosis-disc---primary:
    run: low-back-diagnosis-disc---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-sacroiliac---primary/output
  low-back-diagnosis-backache---primary:
    run: low-back-diagnosis-backache---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-disc---primary/output
  lumbosacral-low-back-diagnosis---primary:
    run: lumbosacral-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-backache---primary/output
  low-back-diagnosis-arthrodesis---primary:
    run: low-back-diagnosis-arthrodesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: lumbosacral-low-back-diagnosis---primary/output
  radiculopathy-low-back-diagnosis---primary:
    run: radiculopathy-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-arthrodesis---primary/output
  low-back-diagnosis-radiography---primary:
    run: low-back-diagnosis-radiography---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: radiculopathy-low-back-diagnosis---primary/output
  vertebroplasty-low-back-diagnosis---primary:
    run: vertebroplasty-low-back-diagnosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-radiography---primary/output
  low-back-diagnosis-nerve---primary:
    run: low-back-diagnosis-nerve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: vertebroplasty-low-back-diagnosis---primary/output
  low-back-diagnosis-deformity---primary:
    run: low-back-diagnosis-deformity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-nerve---primary/output
  low-back-diagnosis-joint---primary:
    run: low-back-diagnosis-joint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-deformity---primary/output
  low-back-diagnosis-discitis---primary:
    run: low-back-diagnosis-discitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-joint---primary/output
  low-back-diagnosis-fracture---primary:
    run: low-back-diagnosis-fracture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-discitis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: low-back-diagnosis-fracture---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

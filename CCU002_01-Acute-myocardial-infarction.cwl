cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  certain-ccu002_01-acute-myocardial-infarction---secondary:
    run: certain-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  infarction---secondary:
    run: infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: certain-ccu002_01-acute-myocardial-infarction---secondary/output
  subsequent-ccu002_01-acute-myocardial-infarction---secondary:
    run: subsequent-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: infarction---secondary/output
  subendocardial-ccu002_01-acute-myocardial-infarction---secondary:
    run: subendocardial-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: subsequent-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-inferior---secondary:
    run: ccu002_01-acute-myocardial-infarction-inferior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: subendocardial-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-anterior---secondary:
    run: ccu002_01-acute-myocardial-infarction-anterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-inferior---secondary/output
  ccu002_01-acute-myocardial-infarction---secondary:
    run: ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-anterior---secondary/output
  ccu002_01-acute-myocardial-infarction-ruptur---secondary:
    run: ccu002_01-acute-myocardial-infarction-ruptur---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction---secondary/output
  coronary-ccu002_01-acute-myocardial-infarction---secondary:
    run: coronary-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-ruptur---secondary/output
  ccu002_01-acute-myocardial-infarction-nonst---secondary:
    run: ccu002_01-acute-myocardial-infarction-nonst---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: coronary-ccu002_01-acute-myocardial-infarction---secondary/output
  posterolateral-ccu002_01-acute-myocardial-infarction---secondary:
    run: posterolateral-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-nonst---secondary/output
  septal-ccu002_01-acute-myocardial-infarction---secondary:
    run: septal-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: posterolateral-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-insulinglucose---secondary:
    run: ccu002_01-acute-myocardial-infarction-insulinglucose---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: septal-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-muscle---secondary:
    run: ccu002_01-acute-myocardial-infarction-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-insulinglucose---secondary/output
  transmural-ccu002_01-acute-myocardial-infarction---secondary:
    run: transmural-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-muscle---secondary/output
  postoperative-ccu002_01-acute-myocardial-infarction---secondary:
    run: postoperative-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: transmural-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-inferoposterior---secondary:
    run: ccu002_01-acute-myocardial-infarction-inferoposterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: postoperative-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-defect---secondary:
    run: ccu002_01-acute-myocardial-infarction-defect---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-inferoposterior---secondary/output
  inferolateral-ccu002_01-acute-myocardial-infarction---secondary:
    run: inferolateral-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-defect---secondary/output
  ccu002_01-acute-myocardial-infarction-thrombosis---secondary:
    run: ccu002_01-acute-myocardial-infarction-thrombosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: inferolateral-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-artery---secondary:
    run: ccu002_01-acute-myocardial-infarction-artery---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-thrombosis---secondary/output
  ccu002_01-acute-myocardial-infarction-complication---secondary:
    run: ccu002_01-acute-myocardial-infarction-complication---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-artery---secondary/output
  atrial-ccu002_01-acute-myocardial-infarction---secondary:
    run: atrial-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-complication---secondary/output
  ccu002_01-acute-myocardial-infarction-haemopericardium---secondary:
    run: ccu002_01-acute-myocardial-infarction-haemopericardium---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: atrial-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-heart---secondary:
    run: ccu002_01-acute-myocardial-infarction-heart---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-haemopericardium---secondary/output
  anteroapical-ccu002_01-acute-myocardial-infarction---secondary:
    run: anteroapical-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-heart---secondary/output
  ccu002_01-acute-myocardial-infarction-history---secondary:
    run: ccu002_01-acute-myocardial-infarction-history---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: anteroapical-ccu002_01-acute-myocardial-infarction---secondary/output
  ccu002_01-acute-myocardial-infarction-elevation---secondary:
    run: ccu002_01-acute-myocardial-infarction-elevation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-history---secondary/output
  ccu002_01-acute-myocardial-infarction-dressler---secondary:
    run: ccu002_01-acute-myocardial-infarction-dressler---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-elevation---secondary/output
  ccu002_01-acute-myocardial-infarction-folow---secondary:
    run: ccu002_01-acute-myocardial-infarction-folow---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-dressler---secondary/output
  ccu002_01-acute-myocardial-infarction-unspecified---secondary:
    run: ccu002_01-acute-myocardial-infarction-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-folow---secondary/output
  other-ccu002_01-acute-myocardial-infarction---secondary:
    run: other-ccu002_01-acute-myocardial-infarction---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-unspecified---secondary/output
  ccu002_01-acute-myocardial-infarction-posterior---secondary:
    run: ccu002_01-acute-myocardial-infarction-posterior---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: other-ccu002_01-acute-myocardial-infarction---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: ccu002_01-acute-myocardial-infarction-posterior---secondary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

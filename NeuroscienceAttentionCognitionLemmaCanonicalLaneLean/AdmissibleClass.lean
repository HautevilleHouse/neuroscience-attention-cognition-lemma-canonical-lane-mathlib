import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

structure AdmittedObject where
  neuralCorrelate : Prop
  cognitiveFunction : Prop
  behavioralOutput : Prop
  neuralCorrelateClosed : neuralCorrelate
  cognitiveFunctionClosed : cognitiveFunction
  behavioralOutputClosed : behavioralOutput

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.neuralCorrelateClosed ∧ A.object.cognitiveFunctionClosed ∧ A.object.behavioralOutputClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact And.intro A.object.neuralCorrelateClosed
    (And.intro A.object.cognitiveFunctionClosed A.object.behavioralOutputClosed)

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
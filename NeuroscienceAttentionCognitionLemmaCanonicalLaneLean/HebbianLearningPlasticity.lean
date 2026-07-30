import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure HebbianLearningRule where
  preSynapticActivity : Type
  postSynapticActivity : Type
  weightUpdate : Type
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  learningClosed : Prop

structure HebbianLearningEvidence (H : HebbianLearningRule) where
  spikeTimingDependenceTerm : H.spikeTimingDependence
  longTermPotentiationTerm : H.longTermPotentiation
  learningClosedTerm : H.learningClosed

def HebbianLearningClosed (H : HebbianLearningRule) : Prop :=
  H.spikeTimingDependence ∧ H.longTermPotentiation ∧ H.learningClosed

theorem hebbian_learning_closed_from_evidence (H : HebbianLearningRule)
    (E : HebbianLearningEvidence H) : HebbianLearningClosed H := by
  exact And.intro E.spikeTimingDependenceTerm
    (And.intro E.longTermPotentiationTerm E.learningClosedTerm)

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeight : Type u
  weightUpdateRule : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  learningRate : Prop
  correlationDetected : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  weightUpdateRuleClosed : H.weightUpdateRule
  longTermPotentiationClosed : H.longTermPotentiation
  longTermDepressionClosed : H.longTermDepression
  learningRateClosed : H.learningRate
  correlationDetectedClosed : H.correlationDetected

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧ H.weightUpdateRule ∧ H.longTermPotentiation ∧ H.longTermDepression ∧ H.learningRate ∧ H.correlationDetected

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage) (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed (And.intro E.postsynapticActivityClosed (And.intro E.weightUpdateRuleClosed (And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed (And.intro E.learningRateClosed E.correlationDetectedClosed)))))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse

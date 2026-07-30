import HautevilleHouse.NeuroscienceAttentionCognitionLemmaCanonicalLaneLean.HodgkinHuxleyPDE

/-!
# Hebbian Learning Rule Package
-/

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure HebbianLearningRulePackage {H : HodgkinHuxleyPDEPackage} where
  synapticWeight : Type u
  preSynapticActivity : H.membranePotential -> Prop
  postSynapticActivity : H.membranePotential -> Prop
  plasticityRule : Prop
  weightDynamics : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  spikeTimingDependence : Prop

structure HebbianLearningRuleEvidence {H : HodgkinHuxleyPDEPackage}
    (L : HebbianLearningRulePackage H) where
  plasticityRuleClosed : L.plasticityRule
  weightDynamicsClosed : L.weightDynamics
  longTermPotentiationClosed : L.longTermPotentiation
  longTermDepressionClosed : L.longTermDepression
  spikeTimingDependenceClosed : L.spikeTimingDependence

def HebbianLearningRuleClosed {H : HodgkinHuxleyPDEPackage}
    (L : HebbianLearningRulePackage H) : Prop :=
  L.plasticityRule ∧ L.weightDynamics ∧ L.longTermPotentiation ∧
  L.longTermDepression ∧ L.spikeTimingDependence

theorem hebbian_learning_rule_closed_from_evidence
    {H : HodgkinHuxleyPDEPackage} (L : HebbianLearningRulePackage H)
    (E : HebbianLearningRuleEvidence L) : HebbianLearningRuleClosed L := by
  exact And.intro E.plasticityRuleClosed
    (And.intro E.weightDynamicsClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed E.spikeTimingDependenceClosed)))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
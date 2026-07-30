import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Prop
  postsynapticActivity : Prop
  synapticWeightModulation : Prop
  spikeTimingCorrelation : Prop
  longTermPotentiationCondition : Prop
  longTermDepressionCondition : Prop
  homeostaticScaling : Prop
  presynapticActivityClosed : presynapticActivity
  postsynapticActivityClosed : postsynapticActivity
  synapticWeightModulationClosed : synapticWeightModulation
  spikeTimingCorrelationClosed : spikeTimingCorrelation
  longTermPotentiationConditionClosed : longTermPotentiationCondition
  longTermDepressionConditionClosed : longTermDepressionCondition
  homeostaticScalingClosed : homeostaticScaling

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  presynapticActivityClosed : H.presynapticActivity
  postsynapticActivityClosed : H.postsynapticActivity
  synapticWeightModulationClosed : H.synapticWeightModulation
  spikeTimingCorrelationClosed : H.spikeTimingCorrelation
  longTermPotentiationConditionClosed : H.longTermPotentiationCondition
  longTermDepressionConditionClosed : H.longTermDepressionCondition
  homeostaticScalingClosed : H.homeostaticScaling

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.presynapticActivity ∧ H.postsynapticActivity ∧
  H.synapticWeightModulation ∧ H.spikeTimingCorrelation ∧
  H.longTermPotentiationCondition ∧ H.longTermDepressionCondition ∧
  H.homeostaticScaling

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.presynapticActivityClosed
    (And.intro E.postsynapticActivityClosed
      (And.intro E.synapticWeightModulationClosed
        (And.intro E.spikeTimingCorrelationClosed
          (And.intro E.longTermPotentiationConditionClosed
            (And.intro E.longTermDepressionConditionClosed
              E.homeostaticScalingClosed)))))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
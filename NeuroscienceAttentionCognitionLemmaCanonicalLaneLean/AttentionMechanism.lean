import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure AttentionMechanismPackage where
  saliencyMap : Prop
  topDownBias : Prop
  bottomUpSalience : Prop
  attentionalFocus : Prop
  inhibitionOfReturn : Prop
  bindingResolution : Prop

structure AttentionMechanismEvidence (A : AttentionMechanismPackage) where
  saliencyMapClosed : A.saliencyMap
  topDownBiasClosed : A.topDownBias
  bottomUpSalienceClosed : A.bottomUpSalience
  attentionalFocusClosed : A.attentionalFocus
  inhibitionOfReturnClosed : A.inhibitionOfReturn
  bindingResolutionClosed : A.bindingResolution

def AttentionMechanismClosed (A : AttentionMechanismPackage) : Prop :=
  A.saliencyMap ∧ A.topDownBias ∧ A.bottomUpSalience ∧
  A.attentionalFocus ∧ A.inhibitionOfReturn ∧ A.bindingResolution

theorem attention_mechanism_closed_from_evidence (A : AttentionMechanismPackage)
    (E : AttentionMechanismEvidence A) : AttentionMechanismClosed A := by
  exact And.intro E.saliencyMapClosed
    (And.intro E.topDownBiasClosed
      (And.intro E.bottomUpSalienceClosed
        (And.intro E.attentionalFocusClosed
          (And.intro E.inhibitionOfReturnClosed
            E.bindingResolutionClosed))))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
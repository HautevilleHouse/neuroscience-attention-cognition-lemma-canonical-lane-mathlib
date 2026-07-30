import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceAttentionCognitionLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

def ConstrainedAttentionCognitionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_attention_cognition_endgame (A : AdmissibleClass) :
    ConstrainedAttentionCognitionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
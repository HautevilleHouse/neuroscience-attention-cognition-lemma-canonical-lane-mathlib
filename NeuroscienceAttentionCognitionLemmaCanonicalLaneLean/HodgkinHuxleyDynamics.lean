import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotentialType : Type u
  ionChannelDynamicsType : Type v
  sodiumChannelState : Prop
  potassiumChannelState : Prop
  leakChannelState : Prop
  capacitance : Prop
  nernstPotentialsDefined : Prop
  voltageClampConsistency : Prop
  sodiumChannelStateClosed : sodiumChannelState
  potassiumChannelStateClosed : potassiumChannelState
  leakChannelStateClosed : leakChannelState
  capacitanceClosed : capacitance
  nernstPotentialsDefinedClosed : nernstPotentialsDefined
  voltageClampConsistencyClosed : voltageClampConsistency

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumChannelStateClosed : H.sodiumChannelState
  potassiumChannelStateClosed : H.potassiumChannelState
  leakChannelStateClosed : H.leakChannelState
  capacitanceClosed : H.capacitance
  nernstPotentialsDefinedClosed : H.nernstPotentialsDefined
  voltageClampConsistencyClosed : H.voltageClampConsistency

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumChannelState ∧ H.potassiumChannelState ∧ H.leakChannelState ∧
  H.capacitance ∧ H.nernstPotentialsDefined ∧ H.voltageClampConsistency

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumChannelStateClosed
    (And.intro E.potassiumChannelStateClosed
      (And.intro E.leakChannelStateClosed
        (And.intro E.capacitanceClosed
          (And.intro E.nernstPotentialsDefinedClosed
            E.voltageClampConsistencyClosed))))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
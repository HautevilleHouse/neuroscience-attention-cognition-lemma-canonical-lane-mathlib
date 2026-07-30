import HautevilleHouse.NeuroscienceAttentionCognitionLemmaCanonicalLaneLean.AdmissibleClass

/-!
# Hodgkin-Huxley PDE Package
-/

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure HodgkinHuxleyPDEPackage where
  membranePotential : Type u
  gateVariables : Type v
  timeParameter : Type w
  ionCurrents : Type x
  capacitance : Prop
  conductanceEquations : Prop
  gatingKinetics : Prop
  voltageClampData : Prop

structure HodgkinHuxleyPDEEvidence (H : HodgkinHuxleyPDEPackage) where
  capacitanceClosed : H.capacitance
  conductanceEquationsClosed : H.conductanceEquations
  gatingKineticsClosed : H.gatingKinetics
  voltageClampDataClosed : H.voltageClampData

def HodgkinHuxleyPDEClosed (H : HodgkinHuxleyPDEPackage) : Prop :=
  H.capacitance ∧ H.conductanceEquations ∧ H.gatingKinetics ∧ H.voltageClampData

theorem hodgkin_huxley_pde_closed_from_evidence
    (H : HodgkinHuxleyPDEPackage) (E : HodgkinHuxleyPDEEvidence H) :
    HodgkinHuxleyPDEClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.conductanceEquationsClosed
      (And.intro E.gatingKineticsClosed E.voltageClampDataClosed))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
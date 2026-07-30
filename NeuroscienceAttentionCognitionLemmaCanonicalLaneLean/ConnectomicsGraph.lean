import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceAttentionCognitionLemmaCanonicalLaneLean

structure ConnectomicsGraphPackage where
  graphVertices : Type
  graphEdges : Type
  edgeWeights : Prop
  smallWorldProperty : Prop
  modularCommunityStructure : Prop
  richClubOrganization : Prop

structure ConnectomicsGraphEvidence (C : ConnectomicsGraphPackage) where
  graphVerticesClosed : Nonempty C.graphVertices
  graphEdgesClosed : Nonempty C.graphEdges
  edgeWeightsClosed : C.edgeWeights
  smallWorldPropertyClosed : C.smallWorldProperty
  modularCommunityStructureClosed : C.modularCommunityStructure
  richClubOrganizationClosed : C.richClubOrganization

def ConnectomicsGraphClosed (C : ConnectomicsGraphPackage) : Prop :=
  Nonempty C.graphVertices ∧ Nonempty C.graphEdges ∧ C.edgeWeights ∧
  C.smallWorldProperty ∧ C.modularCommunityStructure ∧ C.richClubOrganization

theorem connectomics_graph_closed_from_evidence (C : ConnectomicsGraphPackage)
    (E : ConnectomicsGraphEvidence C) : ConnectomicsGraphClosed C := by
  exact And.intro E.graphVerticesClosed
    (And.intro E.graphEdgesClosed
      (And.intro E.edgeWeightsClosed
        (And.intro E.smallWorldPropertyClosed
          (And.intro E.modularCommunityStructureClosed
            E.richClubOrganizationClosed))))

end NeuroscienceAttentionCognitionLemmaCanonicalLaneLean
end HautevilleHouse
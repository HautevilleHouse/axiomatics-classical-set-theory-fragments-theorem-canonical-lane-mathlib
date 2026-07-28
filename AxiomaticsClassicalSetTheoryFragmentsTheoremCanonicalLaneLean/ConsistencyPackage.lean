import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ConsistencyPackage {A : AxiomSystemPackage} (F : FragmentPackage A) where
  consistencyProof : Prop
  proofMethod : String

structure ConsistencyEvidence {A : AxiomSystemPackage} {F : FragmentPackage A} (C : ConsistencyPackage F) where
  consistencyProofClosed : C.consistencyProof

def ConsistencyClosed {A : AxiomSystemPackage} {F : FragmentPackage A} (C : ConsistencyPackage F) : Prop :=
  C.consistencyProof

theorem consistency_closed_from_evidence {A : AxiomSystemPackage} {F : FragmentPackage A} (C : ConsistencyPackage F) (E : ConsistencyEvidence C) :
    ConsistencyClosed C := by
  exact E.consistencyProofClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

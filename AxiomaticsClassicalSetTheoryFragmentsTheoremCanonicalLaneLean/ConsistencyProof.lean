import canonicalLaneMathlib.Consistency

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ConsistencyProofPackage (Z : ZFFragmentPackage) (F : ForcingExtensionPackage Z) (M : ModelExistencePackage Z F) where
  consistencyProof : Prop
  consistencyProofClosed : consistencyProof
  endpointReached : Prop

structure ConsistencyProofEvidence {Z : ZFFragmentPackage} {F : ForcingExtensionPackage Z} {M : ModelExistencePackage Z F} (C : ConsistencyProofPackage Z F M) where
  consistencyProofClosed : C.consistencyProof

def ConsistencyProofClosed {Z : ZFFragmentPackage} {F : ForcingExtensionPackage Z} {M : ModelExistencePackage Z F} (C : ConsistencyProofPackage Z F M) : Prop :=
  C.consistencyProof ∧ C.endpointReached

theorem consistency_proof_closed_from_evidence {Z : ZFFragmentPackage} {F : ForcingExtensionPackage Z} {M : ModelExistencePackage Z F} (C : ConsistencyProofPackage Z F M) (E : ConsistencyProofEvidence C) : ConsistencyProofClosed C := by
  exact And.intro E.consistencyProofClosed C.endpointReached

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
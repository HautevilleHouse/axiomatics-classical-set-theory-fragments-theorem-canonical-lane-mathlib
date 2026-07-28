import canonicalLaneMathlib.IndependenceProofs

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure IndependencePackage where
  statement : String
  consistencyProof : Prop
  independenceProof : Prop

structure IndependenceEvidence (I : IndependencePackage) where
  consistencyProofClosed : I.consistencyProof
  independenceProofClosed : I.independenceProof

def IndependenceClosed (I : IndependencePackage) : Prop :=
  I.consistencyProof ∧ I.independenceProof

theorem independence_closed_from_evidence (I : IndependencePackage) (E : IndependenceEvidence I) :
    IndependenceClosed I := by
  exact And.intro E.consistencyProofClosed E.independenceProofClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
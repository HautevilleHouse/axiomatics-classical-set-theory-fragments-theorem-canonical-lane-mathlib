import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure IndependencePackage {A : AxiomSystemPackage} {F : FragmentPackage A} (C : ConsistencyPackage F) where
  statement : Prop
  independenceProof : Prop
  proofTechnique : String

structure IndependenceEvidence {A : AxiomSystemPackage} {F : FragmentPackage A} {C : ConsistencyPackage F} (I : IndependencePackage C) where
  independenceProofClosed : I.independenceProof

def IndependenceClosed {A : AxiomSystemPackage} {F : FragmentPackage A} {C : ConsistencyPackage F} (I : IndependencePackage C) : Prop :=
  I.independenceProof

theorem independence_closed_from_evidence {A : AxiomSystemPackage} {F : FragmentPackage A} {C : ConsistencyPackage F} (I : IndependencePackage C) (E : IndependenceEvidence I) :
    IndependenceClosed I := by
  exact E.independenceProofClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

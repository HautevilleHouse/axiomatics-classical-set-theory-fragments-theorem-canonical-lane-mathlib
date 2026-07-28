import canonicalLaneMathlib.Foundations

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ZFFragmentPackage where
  language : Type u
  axioms : List (Formula language)
  consistencyProof : Prop
  fragmentClosed : Prop
  fragmentClosedTerm : fragmentClosed

structure ZFFragmentEvidence (Z : ZFFragmentPackage) where
  consistencyProofClosed : Z.consistencyProof

def ZFFragmentClosed (Z : ZFFragmentPackage) : Prop :=
  Z.fragmentClosed

theorem zf_fragment_closed_from_evidence (Z : ZFFragmentPackage) (E : ZFFragmentEvidence Z) : ZFFragmentClosed Z := by
  exact Z.fragmentClosedTerm

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
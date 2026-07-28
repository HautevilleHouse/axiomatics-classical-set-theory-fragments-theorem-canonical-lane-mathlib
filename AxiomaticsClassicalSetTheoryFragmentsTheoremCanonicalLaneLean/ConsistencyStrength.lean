import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ConsistencyStrengthPackage where
  fragmentSource : ZFFragmentPackage
  consistencyStrength : Type
  consistencyOrdinal : Prop
  upperBound : Prop
  lowerBound : Prop

structure ConsistencyStrengthEvidence (C : ConsistencyStrengthPackage) where
  consistencyOrdinalClosed : C.consistencyOrdinal
  upperBoundClosed : C.upperBound
  lowerBoundClosed : C.lowerBound

def ConsistencyStrengthClosed (C : ConsistencyStrengthPackage) : Prop :=
  C.consistencyOrdinal ∧ C.upperBound ∧ C.lowerBound

theorem consistency_strength_closed_from_evidence
    (C : ConsistencyStrengthPackage) (E : ConsistencyStrengthEvidence C) :
    ConsistencyStrengthClosed C := by
  exact And.intro E.consistencyOrdinalClosed
    (And.intro E.upperBoundClosed E.lowerBoundClosed)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

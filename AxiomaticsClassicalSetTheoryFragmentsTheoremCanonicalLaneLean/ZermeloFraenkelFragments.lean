import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ZFFragmentPackage where
  includesReplacement : Bool
  includesSeparation : Bool
  includesInfinity : Bool
  includesPowerSet : Bool
  includesChoice : Bool
  fragmentName : String

structure ZFFragmentEvidence (Z : ZFFragmentPackage) where
  replacementClosed : Z.includesReplacement
  separationClosed : Z.includesSeparation
  infinityClosed : Z.includesInfinity
  powerSetClosed : Z.includesPowerSet
  choiceClosed : Z.includesChoice

def ZFFragmentClosed (Z : ZFFragmentPackage) : Prop :=
  Z.includesReplacement ∧ Z.includesSeparation ∧ Z.includesInfinity ∧
  Z.includesPowerSet ∧ Z.includesChoice

theorem zf_fragment_closed_from_evidence (Z : ZFFragmentPackage)
    (E : ZFFragmentEvidence Z) : ZFFragmentClosed Z := by
  exact And.intro E.replacementClosed
    (And.intro E.separationClosed
      (And.intro E.infinityClosed
        (And.intro E.powerSetClosed E.choiceClosed)))

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

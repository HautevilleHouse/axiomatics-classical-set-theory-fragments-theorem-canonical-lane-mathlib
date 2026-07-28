import canonicalLaneMathlib.ZFCoreFragments

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ZFCorePackage where
  axioms : List String
  extensionality : Prop
  foundation : Prop
  replacement : Prop
  powerSet : Prop
  union : Prop
  infinity : Prop

structure ZFCoreEvidence (Z : ZFCorePackage) where
  extensionalityClosed : Z.extensionality
  foundationClosed : Z.foundation
  replacementClosed : Z.replacement
  powerSetClosed : Z.powerSet
  unionClosed : Z.union
  infinityClosed : Z.infinity

def ZFCoreClosed (Z : ZFCorePackage) : Prop :=
  Z.extensionality ∧ Z.foundation ∧ Z.replacement ∧ Z.powerSet ∧ Z.union ∧ Z.infinity

theorem zf_core_closed_from_evidence (Z : ZFCorePackage) (E : ZFCoreEvidence Z) :
    ZFCoreClosed Z := by
  exact And.intro E.extensionalityClosed
    (And.intro E.foundationClosed
      (And.intro E.replacementClosed
        (And.intro E.powerSetClosed
          (And.intro E.unionClosed E.infinityClosed))))

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
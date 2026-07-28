import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure SetTheoryAxiomPackage where
  extensionality : Prop
  foundation : Prop
  pairing : Prop
  union : Prop
  powerSet : Prop
  infinity : Prop
  replacement : Prop
  choice : Prop

structure SetTheoryAxiomEvidence (P : SetTheoryAxiomPackage) where
  extensionalityClosed : P.extensionality
  foundationClosed : P.foundation
  pairingClosed : P.pairing
  unionClosed : P.union
  powerSetClosed : P.powerSet
  infinityClosed : P.infinity
  replacementClosed : P.replacement
  choiceClosed : P.choice

def SetTheoryAxiomClosed (P : SetTheoryAxiomPackage) : Prop :=
  P.extensionality ∧ P.foundation ∧ P.pairing ∧ P.union ∧
  P.powerSet ∧ P.infinity ∧ P.replacement ∧ P.choice

theorem set_theory_axiom_closed_from_evidence (P : SetTheoryAxiomPackage) (E : SetTheoryAxiomEvidence P) :
    SetTheoryAxiomClosed P := by
  exact And.intro E.extensionalityClosed (
    And.intro E.foundationClosed (
    And.intro E.pairingClosed (
    And.intro E.unionClosed (
    And.intro E.powerSetClosed (
    And.intro E.infinityClosed (
    And.intro E.replacementClosed E.choiceClosed))))))

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
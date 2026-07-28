import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ZFAxiomsPackage where
  extensionality : Prop
  pairing : Prop
  union : Prop
  powerset : Prop
  infinity : Prop

structure ZFAxiomsEvidence (P : ZFAxiomsPackage) where
  extensionalityClosed : P.extensionality
  pairingClosed : P.pairing
  unionClosed : P.union
  powersetClosed : P.powerset
  infinityClosed : P.infinity

def ZFAxiomsClosed (P : ZFAxiomsPackage) : Prop :=
  P.extensionality ∧ P.pairing ∧ P.union ∧ P.powerset ∧ P.infinity

theorem zf_axioms_closed_from_evidence (P : ZFAxiomsPackage) (E : ZFAxiomsEvidence P) : ZFAxiomsClosed P := by
  exact And.intro E.extensionalityClosed (And.intro E.pairingClosed (And.intro E.unionClosed (And.intro E.powersetClosed E.infinityClosed)))

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
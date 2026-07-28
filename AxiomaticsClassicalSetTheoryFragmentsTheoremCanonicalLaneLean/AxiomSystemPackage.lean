import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

def allAxiomsValid (axioms : List Prop) : Prop :=
  axioms.foldr (· ∧ ·) True

structure AxiomSystemPackage where
  universeLevel : Type
  language : Type
  axioms : List Prop
  axiomCount : Nat
  finitenessCondition : Prop

structure AxiomSystemEvidence (A : AxiomSystemPackage) where
  allAxiomsValid : allAxiomsValid A.axioms
  finitenessConditionClosed : A.finitenessCondition

def AxiomSystemClosed (A : AxiomSystemPackage) : Prop :=
  allAxiomsValid A.axioms ∧ A.finitenessCondition

theorem axiom_system_closed_from_evidence (A : AxiomSystemPackage) (E : AxiomSystemEvidence A) :
    AxiomSystemClosed A := by
  exact And.intro E.allAxiomsValid E.finitenessConditionClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

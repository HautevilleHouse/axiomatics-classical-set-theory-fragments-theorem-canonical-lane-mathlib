import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure FragmentPackage (A : AxiomSystemPackage) where
  fragmentAxioms : List Prop
  sublistCondition : fragmentAxioms.Sublist A.axioms
  fragmentConsistency : Prop

structure FragmentEvidence {A : AxiomSystemPackage} (F : FragmentPackage A) where
  fragmentConsistencyClosed : F.fragmentConsistency
  sublistConditionClosed : F.sublistCondition

def FragmentClosed {A : AxiomSystemPackage} (F : FragmentPackage A) : Prop :=
  F.fragmentConsistency ∧ F.sublistCondition

theorem fragment_closed_from_evidence {A : AxiomSystemPackage} (F : FragmentPackage A) (E : FragmentEvidence F) :
    FragmentClosed F := by
  exact And.intro E.fragmentConsistencyClosed E.sublistConditionClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

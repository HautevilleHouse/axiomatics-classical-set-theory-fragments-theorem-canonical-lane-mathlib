import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ReplacementAxiomPackage where
  formula : Type u
  functionalInstance : Prop
  collectionPrinciple : Prop
  uniqueness : Prop

structure ReplacementAxiomEvidence (R : ReplacementAxiomPackage) where
  functionalInstanceClosed : R.functionalInstance
  collectionPrincipleClosed : R.collectionPrinciple
  uniquenessClosed : R.uniqueness

def ReplacementAxiomClosed (R : ReplacementAxiomPackage) : Prop :=
  R.functionalInstance ∧ R.collectionPrinciple ∧ R.uniqueness

theorem replacement_axiom_closed_from_evidence (R : ReplacementAxiomPackage) (E : ReplacementAxiomEvidence R) : ReplacementAxiomClosed R := by
  exact And.intro E.functionalInstanceClosed (And.intro E.collectionPrincipleClosed E.uniquenessClosed)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
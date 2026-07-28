import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure SeparationSchemePackage where
  formula : Type u
  separationInstance : Prop
  parameterFreedom : Prop
  boundedQuantifier : Prop

structure SeparationSchemeEvidence (S : SeparationSchemePackage) where
  separationInstanceClosed : S.separationInstance
  parameterFreedomClosed : S.parameterFreedom
  boundedQuantifierClosed : S.boundedQuantifier

def SeparationSchemeClosed (S : SeparationSchemePackage) : Prop :=
  S.separationInstance ∧ S.parameterFreedom ∧ S.boundedQuantifier

theorem separation_scheme_closed_from_evidence (S : SeparationSchemePackage) (E : SeparationSchemeEvidence S) : SeparationSchemeClosed S := by
  exact And.intro E.separationInstanceClosed (And.intro E.parameterFreedomClosed E.boundedQuantifierClosed)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
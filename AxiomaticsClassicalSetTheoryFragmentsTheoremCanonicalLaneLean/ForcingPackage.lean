import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ForcingPackage {A : AxiomSystemPackage} {F : FragmentPackage A} (M : ModelPackage F) where
  poset : Type
  genericFilter : Prop
  forcingExtension : Prop

structure ForcingEvidence {A : AxiomSystemPackage} {F : FragmentPackage A} {M : ModelPackage F} (P : ForcingPackage M) where
  genericFilterClosed : P.genericFilter
  forcingExtensionClosed : P.forcingExtension

def ForcingClosed {A : AxiomSystemPackage} {F : FragmentPackage A} {M : ModelPackage F} (P : ForcingPackage M) : Prop :=
  P.genericFilter ∧ P.forcingExtension

theorem forcing_closed_from_evidence {A : AxiomSystemPackage} {F : FragmentPackage A} {M : ModelPackage F} (P : ForcingPackage M) (E : ForcingEvidence P) :
    ForcingClosed P := by
  exact And.intro E.genericFilterClosed E.forcingExtensionClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

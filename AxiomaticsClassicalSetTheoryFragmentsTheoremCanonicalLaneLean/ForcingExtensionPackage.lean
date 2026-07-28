import canonicalLaneMathlib.Forcing

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ForcingExtensionPackage (Z : ZFFragmentPackage) where
  poset : Type u
  genericFilter : Prop
  extensionModel : Prop
  forcingTheorem : Prop
  forcingTheoremClosed : forcingTheorem

structure ForcingExtensionEvidence {Z : ZFFragmentPackage} (F : ForcingExtensionPackage Z) where
  genericFilterClosed : F.genericFilter
  extensionModelClosed : F.extensionModel
  forcingTheoremClosed : F.forcingTheorem

def ForcingExtensionClosed {Z : ZFFragmentPackage} (F : ForcingExtensionPackage Z) : Prop :=
  F.genericFilter ∧ F.extensionModel ∧ F.forcingTheorem

theorem forcing_extension_closed_from_evidence {Z : ZFFragmentPackage} (F : ForcingExtensionPackage Z) (E : ForcingExtensionEvidence F) : ForcingExtensionClosed F := by
  exact And.intro E.genericFilterClosed (And.intro E.extensionModelClosed E.forcingTheoremClosed)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.ModelTheory

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ModelExistencePackage (Z : ZFFragmentPackage) (F : ForcingExtensionPackage Z) where
  groundModel : Model (Z.language)
  extensionModel : Model (Z.language)
  groundModelSatisfiesZFC : groundModel ⊧ Z.axioms
  extensionModelSatisfiesZFC : extensionModel ⊧ Z.axioms
  forcingRelation : Prop
  forcingRelationClosed : forcingRelation

structure ModelExistenceEvidence {Z : ZFFragmentPackage} {F : ForcingExtensionPackage Z} (M : ModelExistencePackage Z F) where
  groundModelSatisfiesZFCC losed : M.groundModelSatisfiesZFC
  extensionModelSatisfiesZFCC losed : M.extensionModelSatisfiesZFC
  forcingRelationClosed : M.forcingRelation

def ModelExistenceClosed {Z : ZFFragmentPackage} {F : ForcingExtensionPackage Z} (M : ModelExistencePackage Z F) : Prop :=
  M.groundModelSatisfiesZFC ∧ M.extensionModelSatisfiesZFC ∧ M.forcingRelation

theorem model_existence_closed_from_evidence {Z : ZFFragmentPackage} {F : ForcingExtensionPackage Z} (M : ModelExistencePackage Z F) (E : ModelExistenceEvidence M) : ModelExistenceClosed M := by
  exact And.intro E.groundModelSatisfiesZFCC losed (And.intro E.extensionModelSatisfiesZFCC losed E.forcingRelationClosed)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
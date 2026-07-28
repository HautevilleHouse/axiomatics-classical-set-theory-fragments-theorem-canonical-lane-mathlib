import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ModelPackage {A : AxiomSystemPackage} (F : FragmentPackage A) where
  carrierType : Type
  interpretation : A.language → carrierType → Prop
  satisfiesAxioms : Prop

structure ModelEvidence {A : AxiomSystemPackage} {F : FragmentPackage A} (M : ModelPackage F) where
  satisfiesAxiomsClosed : M.satisfiesAxioms

def ModelClosed {A : AxiomSystemPackage} {F : FragmentPackage A} (M : ModelPackage F) : Prop :=
  M.satisfiesAxioms

theorem model_closed_from_evidence {A : AxiomSystemPackage} {F : FragmentPackage A} (M : ModelPackage F) (E : ModelEvidence M) :
    ModelClosed M := by
  exact E.satisfiesAxiomsClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

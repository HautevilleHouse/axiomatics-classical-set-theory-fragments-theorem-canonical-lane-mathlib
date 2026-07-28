import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean.ZFAxioms

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ForcingModelPackage {P : SetTheoryAxiomPackage} (A : SetTheoryAxiomEvidence P) where
  groundModel : Type u
  poset : Type v
  genericFilter : Prop
  extensionModel : Type w
  truthLemma : Prop

structure ForcingModelEvidence {P : SetTheoryAxiomPackage} {A : SetTheoryAxiomEvidence P}
    (F : ForcingModelPackage A) where
  genericFilterClosed : F.genericFilter
  truthLemmaClosed : F.truthLemma

def ForcingModelClosed {P : SetTheoryAxiomPackage} {A : SetTheoryAxiomEvidence P}
    (F : ForcingModelPackage A) : Prop :=
  F.genericFilter ∧ F.truthLemma

theorem forcing_model_closed_from_evidence {P : SetTheoryAxiomPackage} {A : SetTheoryAxiomEvidence P}
    (F : ForcingModelPackage A) (E : ForcingModelEvidence F) :
    ForcingModelClosed F := by
  exact And.intro E.genericFilterClosed E.truthLemmaClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
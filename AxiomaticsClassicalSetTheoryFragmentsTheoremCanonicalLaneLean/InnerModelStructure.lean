import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean.ZFAxioms

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure InnerModelPackage {P : SetTheoryAxiomPackage} (A : SetTheoryAxiomEvidence P) where
  innerModel : Type u
  innerModelAxioms : Prop
  definability : Prop
  absoluteness : Prop

structure InnerModelEvidence {P : SetTheoryAxiomPackage} {A : SetTheoryAxiomEvidence P}
    (M : InnerModelPackage A) where
  innerModelAxiomsClosed : M.innerModelAxioms
  definabilityClosed : M.definability
  absolutenessClosed : M.absoluteness

def InnerModelClosed {P : SetTheoryAxiomPackage} {A : SetTheoryAxiomEvidence P}
    (M : InnerModelPackage A) : Prop :=
  M.innerModelAxioms ∧ M.definability ∧ M.absoluteness

theorem inner_model_closed_from_evidence {P : SetTheoryAxiomPackage} {A : SetTheoryAxiomEvidence P}
    (M : InnerModelPackage A) (E : InnerModelEvidence M) :
    InnerModelClosed M := by
  exact And.intro E.innerModelAxiomsClosed (
    And.intro E.definabilityClosed E.absolutenessClosed)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
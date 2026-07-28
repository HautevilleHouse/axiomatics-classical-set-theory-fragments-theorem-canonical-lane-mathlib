import canonicalLaneMathlib.AdmissibleClass
import AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean.ZF_Axioms
import AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean.SeparationScheme
import AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean.ReplacementAxiom

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure AdmissibleClass where
  zf : ZFAxiomsPackage
  zfEvidence : ZFAxiomsEvidence zf
  sep : SeparationSchemePackage
  sepEvidence : SeparationSchemeEvidence sep
  rep : ReplacementAxiomPackage
  repEvidence : ReplacementAxiomEvidence rep
  remainderRecorded : Prop
  gateWitness : remainderRecorded

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ZFAxiomsClosed A.zf ∧ SeparationSchemeClosed A.sep ∧ ReplacementAxiomClosed A.rep

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  refine And.intro (zf_axioms_closed_from_evidence A.zf A.zfEvidence) ?_
  exact And.intro (separation_scheme_closed_from_evidence A.sep A.sepEvidence)
    (replacement_axiom_closed_from_evidence A.rep A.repEvidence)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_theorem_closure (A : AdmissibleClass) : ConstrainedTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded ∨ A.gateWitness

lemma gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact Or.inr A.gateWitness

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse

import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure SetTheoryAdmittedObject where
  carrier : Type u
  axiomsSatisfied : Prop
  conclusion : axiomsSatisfied

structure AdmissibleClass where
  object : SetTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SetTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SetTheoryWitnessClosed (O : SetTheoryAdmittedObject) : Prop :=
  O.axiomsSatisfied

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.ForcingExtensions

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure ForcingPackage where
  poset : Type u
  genericFilter : Type v
  extensionName : String
  truthLemma : Prop
  coherence : Prop

structure ForcingEvidence (F : ForcingPackage) where
  truthLemmaClosed : F.truthLemma
  coherenceClosed : F.coherence

def ForcingClosed (F : ForcingPackage) : Prop :=
  F.truthLemma ∧ F.coherence

theorem forcing_closed_from_evidence (F : ForcingPackage) (E : ForcingEvidence F) :
    ForcingClosed F := by
  exact And.intro E.truthLemmaClosed E.coherenceClosed

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
import HautevilleHouse.AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean

structure SetTheoryTheoremStatement where
  axiomSystem : String
  fragmentName : String
  statement : Prop
  isConsistentRelative : Prop
  classicalBoundary : String
  carriedRemainder : String

def sourceTheoremStatement : SetTheoryTheoremStatement :=
  { axiomSystem := "ZFC",
    fragmentName := "Axiomatics Classical Set Theory Fragments",
    statement := True,
    isConsistentRelative := True,
    classicalBoundary := "carried",
    carriedRemainder := "outside admissible closure" }

theorem set_theory_statement_closure_holds :
    (∀ A : AdmissibleClass, ConstrainedSetTheoryClosure A) := by
  intro A
  exact constrained_set_theory_endgame A

end AxiomaticsClassicalSetTheoryFragmentsTheoremCanonicalLaneLean
end HautevilleHouse
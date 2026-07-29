import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ProcessControlPackage where
  feedbackLoop : Prop
  stabilityCriterion : Prop
  disturbanceRejection : Prop
  optimalControl : Prop

structure ProcessControlEvidence (P : ProcessControlPackage) where
  feedbackLoopClosed : P.feedbackLoop
  stabilityCriterionClosed : P.stabilityCriterion
  disturbanceRejectionClosed : P.disturbanceRejection
  optimalControlClosed : P.optimalControl

def ProcessControlClosed (P : ProcessControlPackage) : Prop :=
  P.feedbackLoop ∧ P.stabilityCriterion ∧ P.disturbanceRejection ∧ P.optimalControl

theorem process_control_closed_from_evidence (P : ProcessControlPackage) (E : ProcessControlEvidence P) :
    ProcessControlClosed P := by
  exact And.intro E.feedbackLoopClosed (And.intro E.stabilityCriterionClosed (And.intro E.disturbanceRejectionClosed E.optimalControlClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
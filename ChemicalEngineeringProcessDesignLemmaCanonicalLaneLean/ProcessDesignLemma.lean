import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ProcessDesignLemmaPackage where
  designObjective : Prop
  feasibilityCondition : Prop
  optimalityCriterion : Prop

structure ProcessDesignLemmaEvidence (P : ProcessDesignLemmaPackage) where
  designObjectiveClosed : P.designObjective
  feasibilityConditionClosed : P.feasibilityCondition
  optimalityCriterionClosed : P.optimalityCriterion

def ProcessDesignLemmaClosed (P : ProcessDesignLemmaPackage) : Prop :=
  P.designObjective ∧ P.feasibilityCondition ∧ P.optimalityCriterion

theorem process_design_lemma_closed_from_evidence
    (P : ProcessDesignLemmaPackage)
    (E : ProcessDesignLemmaEvidence P) : ProcessDesignLemmaClosed P := by
  exact And.intro E.designObjectiveClosed
    (And.intro E.feasibilityConditionClosed E.optimalityCriterionClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse

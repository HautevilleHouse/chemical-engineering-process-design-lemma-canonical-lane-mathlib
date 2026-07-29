import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRateConstant : ℝ
  activationEnergy : ℝ
  temperature : ℝ
  preExponentialFactor : ℝ
  rateExpression : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateExpressionClosed : R.rateExpression

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateExpression

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact E.rateExpressionClosed

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse

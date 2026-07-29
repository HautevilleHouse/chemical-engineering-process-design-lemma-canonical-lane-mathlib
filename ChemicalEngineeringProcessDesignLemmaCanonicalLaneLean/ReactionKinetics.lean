import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateExpression : Prop
  activationEnergy : Prop
  preExponentialFactor : Prop
  equilibriumConstant : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateExpressionClosed : R.rateExpression
  activationEnergyClosed : R.activationEnergy
  preExponentialFactorClosed : R.preExponentialFactor
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateExpression ∧ R.activationEnergy ∧ R.preExponentialFactor ∧ R.equilibriumConstant

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateExpressionClosed (And.intro E.activationEnergyClosed (And.intro E.preExponentialFactorClosed E.equilibriumConstantClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : ℝ
  equilibriumConstant : ℝ
  reactionQuotient : ℝ
  equilibriumCondition : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  equilibriumConditionClosed : T.equilibriumCondition

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.equilibriumCondition

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage)
    (E : ThermodynamicEquilibriumEvidence T) : ThermodynamicEquilibriumClosed T := by
  exact E.equilibriumConditionClosed

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse

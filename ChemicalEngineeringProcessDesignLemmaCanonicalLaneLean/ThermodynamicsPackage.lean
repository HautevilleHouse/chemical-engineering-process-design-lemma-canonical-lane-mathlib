import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  enthalpy : Type u
  entropy : Type v
  gibbsFreeEnergy : Type w
  phaseEquilibrium : Prop
  thermodynamicConsistency : Prop
  energyMinimizationPrinciple : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  phaseEquilibriumClosed : T.phaseEquilibrium
  thermodynamicConsistencyClosed : T.thermodynamicConsistency
  energyMinimizationPrincipleClosed : T.energyMinimizationPrinciple

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.phaseEquilibrium ∧ T.thermodynamicConsistency ∧ T.energyMinimizationPrinciple

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) : ThermodynamicsClosed T := by
  exact And.intro E.phaseEquilibriumClosed (And.intro E.thermodynamicConsistencyClosed E.energyMinimizationPrincipleClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ThermodynamicsPackage where
  energyBalance : Prop
  entropyProduction : Prop
  gibbsFreeEnergy : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  energyBalanceClosed : T.energyBalance
  entropyProductionClosed : T.entropyProduction
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.energyBalance ∧ T.entropyProduction ∧ T.gibbsFreeEnergy ∧ T.phaseEquilibrium

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.energyBalanceClosed (And.intro E.entropyProductionClosed (And.intro E.gibbsFreeEnergyClosed E.phaseEquilibriumClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
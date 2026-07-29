import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  gibbsFreeEnergy : Prop
  reactionQuotient : Prop
  temperaturePressureDependence : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : E.equilibriumConstant
  gibbsFreeEnergyClosed : E.gibbsFreeEnergy
  reactionQuotientClosed : E.reactionQuotient
  temperaturePressureDependenceClosed : E.temperaturePressureDependence

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumConstant ∧ E.gibbsFreeEnergy ∧ E.reactionQuotient ∧ E.temperaturePressureDependence

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage)
    (Ev : ChemicalEquilibriumEvidence E) : ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed (And.intro Ev.gibbsFreeEnergyClosed
    (And.intro Ev.reactionQuotientClosed Ev.temperaturePressureDependenceClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
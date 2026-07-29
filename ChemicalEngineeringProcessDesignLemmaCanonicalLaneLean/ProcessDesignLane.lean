import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas
import canonicalLaneMathlib.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ProcessDesignLane (A : AdmissibleClass) where
  reactionKinetics : ReactionKineticsPackage A
  reactionKineticsEvidence : ReactionKineticsEvidence reactionKinetics
  molecularOrbital : MolecularOrbitalPackage A
  molecularOrbitalEvidence : MolecularOrbitalEvidence molecularOrbital
  thermodynamics : ThermodynamicsPackage A
  thermodynamicsEvidence : ThermodynamicsEvidence thermodynamics
  chemicalEquilibrium : ChemicalEquilibriumPackage A
  chemicalEquilibriumEvidence : ChemicalEquilibriumEvidence chemicalEquilibrium
  bridgeClosedFromLane : bridgeClosed A
  gateClosedFromLane : gateClosed A

theorem process_design_lane_yields_constrained_closure (A : AdmissibleClass)
    (L : ProcessDesignLane A) : ConstrainedChemicalEngineeringClosure A := by
  exact And.intro L.bridgeClosedFromLane L.gateClosedFromLane

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse

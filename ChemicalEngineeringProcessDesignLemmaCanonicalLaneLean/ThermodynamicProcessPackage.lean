import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ThermodynamicProcessPackage where
  systemType : Type
  stateVariables : List String
  energyBalance : Prop
  entropyGeneration : Prop
  processConstraints : Prop

structure ThermodynamicProcessEvidence (P : ThermodynamicProcessPackage) where
  energyBalanceClosed : P.energyBalance
  entropyGenerationClosed : P.entropyGeneration
  processConstraintsClosed : P.processConstraints

def ThermodynamicProcessClosed (P : ThermodynamicProcessPackage) : Prop :=
  P.energyBalance ∧ P.entropyGeneration ∧ P.processConstraints

theorem thermodynamic_process_closed_from_evidence (P : ThermodynamicProcessPackage)
    (E : ThermodynamicProcessEvidence P) : ThermodynamicProcessClosed P := by
  exact And.intro E.energyBalanceClosed (And.intro E.entropyGenerationClosed E.processConstraintsClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ThermodynamicCyclePackage where
  energyBalance : Prop
  enthalpyBalance : Prop
  entropyGeneration : Prop
  workDone : Prop
  heatTransfer : Prop
  firstLawSatisfied : Prop
  secondLawSatisfied : Prop
  firstLawClosed : firstLawSatisfied
  secondLawClosed : secondLawSatisfied

structure ThermodynamicCycleEvidence (T : ThermodynamicCyclePackage) where
  energyBalanceClosed : T.energyBalance
  enthalpyBalanceClosed : T.enthalpyBalance
  entropyGenerationClosed : T.entropyGeneration
  workDoneClosed : T.workDone
  heatTransferClosed : T.heatTransfer

def ThermodynamicCycleClosed (T : ThermodynamicCyclePackage) : Prop :=
  T.energyBalance ∧ T.enthalpyBalance ∧ T.entropyGeneration ∧ T.workDone ∧ T.heatTransfer ∧
  T.firstLawSatisfied ∧ T.secondLawSatisfied

theorem thermodynamic_cycle_closed_from_evidence (T : ThermodynamicCyclePackage)
    (E : ThermodynamicCycleEvidence T) : ThermodynamicCycleClosed T := by
  exact And.intro E.energyBalanceClosed
    (And.intro E.enthalpyBalanceClosed
      (And.intro E.entropyGenerationClosed
        (And.intro E.workDoneClosed
          (And.intro E.heatTransferClosed
            (And.intro T.firstLawClosed T.secondLawClosed)))))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
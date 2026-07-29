import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure SeparationProcessPackage where
  distillationColumn : Prop
  absorptionTower : Prop
  extractionUnit : Prop
  membraneSeparation : Prop
  separationEfficiency : Prop
  operatingLine : Prop
  operatingLineDerived : operatingLine
  separationEfficiencyDerived : separationEfficiency

structure SeparationProcessEvidence (S : SeparationProcessPackage) where
  distillationColumnClosed : S.distillationColumn
  absorptionTowerClosed : S.absorptionTower
  extractionUnitClosed : S.extractionUnit
  membraneSeparationClosed : S.membraneSeparation
  separationEfficiencyClosed : S.separationEfficiency
  operatingLineClosed : S.operatingLine

def SeparationProcessClosed (S : SeparationProcessPackage) : Prop :=
  S.distillationColumn ∧ S.absorptionTower ∧ S.extractionUnit ∧ S.membraneSeparation ∧
  S.separationEfficiency ∧ S.operatingLine

theorem separation_process_closed_from_evidence (S : SeparationProcessPackage)
    (E : SeparationProcessEvidence S) : SeparationProcessClosed S := by
  exact And.intro E.distillationColumnClosed
    (And.intro E.absorptionTowerClosed
      (And.intro E.extractionUnitClosed
        (And.intro E.membraneSeparationClosed
          (And.intro E.separationEfficiencyClosed E.operatingLineClosed))))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
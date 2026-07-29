import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure SeparationProcessesPackage where
  separationMechanism : Type u
  equilibriumStageModel : Type v
  rateBasedModel : Type w
  massTransferModeled : Prop
  heatTransferModeled : Prop
  columnDesignOptimized : Prop

structure SeparationProcessesEvidence (S : SeparationProcessesPackage) where
  massTransferModeledClosed : S.massTransferModeled
  heatTransferModeledClosed : S.heatTransferModeled
  columnDesignOptimizedClosed : S.columnDesignOptimized

def SeparationProcessesClosed (S : SeparationProcessesPackage) : Prop :=
  S.massTransferModeled ∧ S.heatTransferModeled ∧ S.columnDesignOptimized

theorem separation_processes_closed_from_evidence (S : SeparationProcessesPackage) (E : SeparationProcessesEvidence S) : SeparationProcessesClosed S := by
  exact And.intro E.massTransferModeledClosed (And.intro E.heatTransferModeledClosed E.columnDesignOptimizedClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
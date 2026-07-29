import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ProcessDesignOptimizationPackage where
  objectiveFunction : Prop
  constraints : Prop
  optimizationAlgorithm : Prop
  sensitivityAnalysis : Prop

structure ProcessDesignOptimizationEvidence (P : ProcessDesignOptimizationPackage) where
  objectiveFunctionClosed : P.objectiveFunction
  constraintsClosed : P.constraints
  optimizationAlgorithmClosed : P.optimizationAlgorithm
  sensitivityAnalysisClosed : P.sensitivityAnalysis

def ProcessDesignOptimizationClosed (P : ProcessDesignOptimizationPackage) : Prop :=
  P.objectiveFunction ∧ P.constraints ∧ P.optimizationAlgorithm ∧ P.sensitivityAnalysis

theorem process_design_optimization_closed_from_evidence (P : ProcessDesignOptimizationPackage) (E : ProcessDesignOptimizationEvidence P) :
    ProcessDesignOptimizationClosed P := by
  exact And.intro E.objectiveFunctionClosed (And.intro E.constraintsClosed (And.intro E.optimizationAlgorithmClosed E.sensitivityAnalysisClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
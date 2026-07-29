import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ReactorDesignPackage where
  reactorType : Type u
  designEquation : Type v
  performanceCriterion : Type w
  massAndEnergyBalancesEstablished : Prop
  kineticModelIntegrated : Prop
  optimizationPerformed : Prop

structure ReactorDesignEvidence (R : ReactorDesignPackage) where
  massAndEnergyBalancesEstablishedClosed : R.massAndEnergyBalancesEstablished
  kineticModelIntegratedClosed : R.kineticModelIntegrated
  optimizationPerformedClosed : R.optimizationPerformed

def ReactorDesignClosed (R : ReactorDesignPackage) : Prop :=
  R.massAndEnergyBalancesEstablished ∧ R.kineticModelIntegrated ∧ R.optimizationPerformed

theorem reactor_design_closed_from_evidence (R : ReactorDesignPackage) (E : ReactorDesignEvidence R) : ReactorDesignClosed R := by
  exact And.intro E.massAndEnergyBalancesEstablishedClosed (And.intro E.kineticModelIntegratedClosed E.optimizationPerformedClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
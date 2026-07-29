import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ChemicalReactorDesignPackage where
  materialBalance : Prop
  energyBalance : Prop
  reactorType : Prop
  scaleUpCriteria : Prop

structure ChemicalReactorDesignEvidence (C : ChemicalReactorDesignPackage) where
  materialBalanceClosed : C.materialBalance
  energyBalanceClosed : C.energyBalance
  reactorTypeClosed : C.reactorType
  scaleUpCriteriaClosed : C.scaleUpCriteria

def ChemicalReactorDesignClosed (C : ChemicalReactorDesignPackage) : Prop :=
  C.materialBalance ∧ C.energyBalance ∧ C.reactorType ∧ C.scaleUpCriteria

theorem chemical_reactor_design_closed_from_evidence (C : ChemicalReactorDesignPackage) (E : ChemicalReactorDesignEvidence C) :
    ChemicalReactorDesignClosed C := by
  exact And.intro E.materialBalanceClosed (And.intro E.energyBalanceClosed (And.intro E.reactorTypeClosed E.scaleUpCriteriaClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
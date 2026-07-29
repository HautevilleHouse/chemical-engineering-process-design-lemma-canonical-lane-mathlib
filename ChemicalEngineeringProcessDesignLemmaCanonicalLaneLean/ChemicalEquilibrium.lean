import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Type u
  reactionQuotient : Type v
  equilibriumComposition : Type w
  massBalanceSatisfied : Prop
  equilibriumConditionDerived : Prop
  leChatelierPrinciple : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  massBalanceSatisfiedClosed : E.massBalanceSatisfied
  equilibriumConditionDerivedClosed : E.equilibriumConditionDerived
  leChatelierPrincipleClosed : E.leChatelierPrinciple

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.massBalanceSatisfied ∧ E.equilibriumConditionDerived ∧ E.leChatelierPrinciple

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage) (Ev : ChemicalEquilibriumEvidence E) : ChemicalEquilibriumClosed E := by
  exact And.intro Ev.massBalanceSatisfiedClosed (And.intro Ev.equilibriumConditionDerivedClosed Ev.leChatelierPrincipleClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
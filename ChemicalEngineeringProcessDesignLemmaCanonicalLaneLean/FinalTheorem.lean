import ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

def ConstrainedChemEngClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemEng_endgame (A : AdmissibleClass) :
    ConstrainedChemEngClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
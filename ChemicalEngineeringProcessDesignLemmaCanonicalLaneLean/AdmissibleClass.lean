import ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : ChemEngAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ChemEngWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
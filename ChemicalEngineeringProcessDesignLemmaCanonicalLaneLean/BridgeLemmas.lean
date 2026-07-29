import ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ChemEngWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
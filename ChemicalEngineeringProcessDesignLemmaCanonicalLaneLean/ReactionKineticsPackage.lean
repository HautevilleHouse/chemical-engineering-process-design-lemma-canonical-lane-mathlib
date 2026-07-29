import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : String → Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  catalystEffect : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : ∀ s, R.rateLaw s
  activationEnergyClosed : R.activationEnergy
  temperatureDependenceClosed : R.temperatureDependence
  catalystEffectClosed : R.catalystEffect

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  (∀ s, R.rateLaw s) ∧ R.activationEnergy ∧ R.temperatureDependence ∧ R.catalystEffect

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.activationEnergyClosed
    (And.intro E.temperatureDependenceClosed E.catalystEffectClosed))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
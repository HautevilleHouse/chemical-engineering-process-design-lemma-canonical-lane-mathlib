import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure MassTransferPackage where
  ficksLaw : Prop
  diffusivity : Prop
  concentrationProfile : Prop
  massFlux : Prop
  boundaryLayer : Prop
  diffusivityDerived : diffusivity
  concentrationProfileDerived : concentrationProfile

structure MassTransferEvidence (M : MassTransferPackage) where
  ficksLawClosed : M.ficksLaw
  diffusivityClosed : M.diffusivity
  concentrationProfileClosed : M.concentrationProfile
  massFluxClosed : M.massFlux
  boundaryLayerClosed : M.boundaryLayer

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.ficksLaw ∧ M.diffusivity ∧ M.concentrationProfile ∧ M.massFlux ∧ M.boundaryLayer

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.ficksLawClosed
    (And.intro E.diffusivityClosed
      (And.intro E.concentrationProfileClosed
        (And.intro E.massFluxClosed E.boundaryLayerClosed)))

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
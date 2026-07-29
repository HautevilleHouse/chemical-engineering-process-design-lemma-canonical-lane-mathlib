import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure MolecularOrbitalPackage where
  hamiltonian : Type
  orbitalEnergies : Prop
  wavefunctionSymmetry : Prop
  bondOrder : Prop

structure MolecularOrbitalEvidence (M : MolecularOrbitalPackage) where
  hamiltonianDefined : True
  orbitalEnergiesClosed : M.orbitalEnergies
  wavefunctionSymmetryClosed : M.wavefunctionSymmetry
  bondOrderClosed : M.bondOrder

def MolecularOrbitalClosed (M : MolecularOrbitalPackage) : Prop :=
  M.orbitalEnergies ∧ M.wavefunctionSymmetry ∧ M.bondOrder

theorem molecular_orbital_closed_from_evidence (M : MolecularOrbitalPackage)
    (E : MolecularOrbitalEvidence M) : MolecularOrbitalClosed M := by
  exact And.intro E.orbitalEnergiesClosed (And.intro E.wavefunctionSymmetryClosed E.bondOrderClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
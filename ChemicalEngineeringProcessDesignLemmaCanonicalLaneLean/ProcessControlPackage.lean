import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean

structure ProcessControlPackage where
  controllerType : Type
  stabilityMargin : Prop
  setpointTracking : Prop
  disturbanceRejection : Prop

structure ProcessControlEvidence (C : ProcessControlPackage) where
  stabilityMarginClosed : C.stabilityMargin
  setpointTrackingClosed : C.setpointTracking
  disturbanceRejectionClosed : C.disturbanceRejection

def ProcessControlClosed (C : ProcessControlPackage) : Prop :=
  C.stabilityMargin ∧ C.setpointTracking ∧ C.disturbanceRejection

theorem process_control_closed_from_evidence (C : ProcessControlPackage)
    (E : ProcessControlEvidence C) : ProcessControlClosed C := by
  exact And.intro E.stabilityMarginClosed (And.intro E.setpointTrackingClosed E.disturbanceRejectionClosed)

end ChemicalEngineeringProcessDesignLemmaCanonicalLaneLean
end HautevilleHouse
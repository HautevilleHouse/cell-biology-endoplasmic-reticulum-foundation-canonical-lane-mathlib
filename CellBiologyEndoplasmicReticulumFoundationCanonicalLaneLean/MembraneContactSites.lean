import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure MembraneContactSitePackage where
  tetheringComplex : Prop
  lipidTransferActive : Prop
  calciumSignalingCapable : Prop
  siteStability : Prop
  tetheringComplexTerm : tetheringComplex
  lipidTransferActiveTerm : lipidTransferActive
  calciumSignalingCapableTerm : calciumSignalingCapable
  siteStabilityTerm : siteStability

structure MCSEvidence (M : MembraneContactSitePackage) where
  tetheringComplexClosed : M.tetheringComplex
  lipidTransferActiveClosed : M.lipidTransferActive
  calciumSignalingCapableClosed : M.calciumSignalingCapable
  siteStabilityClosed : M.siteStability

def MCSClosed (M : MembraneContactSitePackage) : Prop :=
  M.tetheringComplex ∧ M.lipidTransferActive ∧ M.calciumSignalingCapable ∧ M.siteStability

theorem mcs_closed_from_evidence (M : MembraneContactSitePackage) (E : MCSEvidence M) :
    MCSClosed M := by
  exact And.intro E.tetheringComplexClosed
    (And.intro E.lipidTransferActiveClosed
      (And.intro E.calciumSignalingCapableClosed E.siteStabilityClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
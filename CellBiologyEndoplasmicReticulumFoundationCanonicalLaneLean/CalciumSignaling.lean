import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure CalciumSignalingPackage where
  calciumReleaseChannels : Prop
  ip3Receptors : Prop
  ryanodineReceptors : Prop
  calciumPumps : Prop
  calciumBuffers : Prop
  mitochondrialCalciumUptake : Prop

structure CalciumSignalingEvidence (C : CalciumSignalingPackage) where
  calciumReleaseChannelsClosed : C.calciumReleaseChannels
  ip3ReceptorsClosed : C.ip3Receptors
  ryanodineReceptorsClosed : C.ryanodineReceptors
  calciumPumpsClosed : C.calciumPumps
  calciumBuffersClosed : C.calciumBuffers
  mitochondrialCalciumUptakeClosed : C.mitochondrialCalciumUptake

def CalciumSignalingClosed (C : CalciumSignalingPackage) : Prop :=
  C.calciumReleaseChannels ∧ C.ip3Receptors ∧ C.ryanodineReceptors ∧
  C.calciumPumps ∧ C.calciumBuffers ∧ C.mitochondrialCalciumUptake

theorem calcium_signaling_closed_from_evidence (C : CalciumSignalingPackage)
    (E : CalciumSignalingEvidence C) : CalciumSignalingClosed C := by
  exact And.intro E.calciumReleaseChannelsClosed
    (And.intro E.ip3ReceptorsClosed
      (And.intro E.ryanodineReceptorsClosed
        (And.intro E.calciumPumpsClosed
          (And.intro E.calciumBuffersClosed E.mitochondrialCalciumUptakeClosed))))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse

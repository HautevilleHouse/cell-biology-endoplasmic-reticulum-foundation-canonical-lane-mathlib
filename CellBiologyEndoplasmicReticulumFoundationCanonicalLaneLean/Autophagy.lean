import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure AutophagyPackage where
  erPhagyReceptor : Prop
  engulfmentSignal : Prop
  lysosomalFusion : Prop
  nutrientRecycling : Prop

structure AutophagyEvidence (A : AutophagyPackage) where
  erPhagyReceptorClosed : A.erPhagyReceptor
  engulfmentSignalClosed : A.engulfmentSignal
  lysosomalFusionClosed : A.lysosomalFusion
  nutrientRecyclingClosed : A.nutrientRecycling

def AutophagyClosed (A : AutophagyPackage) : Prop :=
  A.erPhagyReceptor ∧ A.engulfmentSignal ∧ A.lysosomalFusion ∧ A.nutrientRecycling

theorem autophagy_closed_from_evidence (A : AutophagyPackage) (E : AutophagyEvidence A) : AutophagyClosed A := by
  exact And.intro E.erPhagyReceptorClosed (And.intro E.engulfmentSignalClosed
    (And.intro E.lysosomalFusionClosed E.nutrientRecyclingClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
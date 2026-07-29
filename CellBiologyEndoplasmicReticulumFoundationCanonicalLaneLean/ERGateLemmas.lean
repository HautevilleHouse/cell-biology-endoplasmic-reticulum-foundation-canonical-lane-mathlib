import CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean.ERBridgeLemmas

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

def gateClosed (A : ERAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : ERAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
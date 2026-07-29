import CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean.ERGateLemmas

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

def ConstrainedERClosure (A : ERAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_er_endgame (A : ERAdmissibleClass) :
    ConstrainedERClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
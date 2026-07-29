import canonicalLaneMathlib.AdmissibleClass
import CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean.ERAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

def bridgeClosed (A : ERAdmissibleClass) : Prop :=
  A.object.erMembrane ∧ A.object.calciumIonChannel ∧ A.object.chaperonePresence

theorem bridge_from_admissible_class (A : ERAdmissibleClass) :
    bridgeClosed A := by
  exact And.intro A.object.conclusion.left (And.intro A.object.conclusion.right.left A.object.conclusion.right.right)

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
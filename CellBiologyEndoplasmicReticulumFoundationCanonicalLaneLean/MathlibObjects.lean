import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ERAdmittedObject where
  space : ERSpace
  erMembraneFunctional : Prop
  proteinFoldingCompetent : Prop
  stressResponseModel : Type
  stressResponseTopology : TopologicalSpace stressResponseModel
  unfoldedProteinResponseActivated : Prop
  conclusion : unfoldedProteinResponseActivated

structure EREndgameState where
  object : ERAdmittedObject

def ERWitnessClosed (O : ERAdmittedObject) : Prop :=
  O.unfoldedProteinResponseActivated

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse

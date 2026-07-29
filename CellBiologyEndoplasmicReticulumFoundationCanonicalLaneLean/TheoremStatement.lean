import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure EndoplasmicReticulumAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  isEndomembraneCompartment : Prop
  calciumHomeostasis : Prop
  unfoldedProteinResponse : Prop
  conclusion : isEndomembraneCompartment ∧ calciumHomeostasis ∧ unfoldedProteinResponse

def ERWitnessClosed (O : EndoplasmicReticulumAdmittedObject) : Prop :=
  O.isEndomembraneCompartment ∧ O.calciumHomeostasis ∧ O.unfoldedProteinResponse

theorem er_witness_closed_from_object (O : EndoplasmicReticulumAdmittedObject) : ERWitnessClosed O := O.conclusion

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
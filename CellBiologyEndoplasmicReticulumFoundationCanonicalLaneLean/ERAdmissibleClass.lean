import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ERAdmittedObject where
  cellType : Type
  erMembrane : Prop
  calciumIonChannel : Prop
  chaperonePresence : Prop
  conclusion : erMembrane ∧ calciumIonChannel ∧ chaperonePresence

structure ERAdmissibleClass where
  object : ERAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : ERAdmissibleClass) : Prop :=
  (A.object.erMembrane ∧ A.object.calciumIonChannel ∧ A.object.chaperonePresence) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
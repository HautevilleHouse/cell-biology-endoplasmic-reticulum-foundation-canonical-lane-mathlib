import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure UnfoldedProteinResponsePackage where
  ire1Sensor : Prop
  atf6Pathway : Prop
  perkKinase : Prop
  chaperoneUpregulation : Prop

structure UnfoldedProteinResponseEvidence (P : UnfoldedProteinResponsePackage) where
  ire1SensorClosed : P.ire1Sensor
  atf6PathwayClosed : P.atf6Pathway
  perkKinaseClosed : P.perkKinase
  chaperoneUpregulationClosed : P.chaperoneUpregulation

def UnfoldedProteinResponseClosed (P : UnfoldedProteinResponsePackage) : Prop :=
  P.ire1Sensor ∧ P.atf6Pathway ∧ P.perkKinase ∧ P.chaperoneUpregulation

theorem unfolded_protein_response_closed_from_evidence (P : UnfoldedProteinResponsePackage)
    (E : UnfoldedProteinResponseEvidence P) : UnfoldedProteinResponseClosed P := by
  exact And.intro E.ire1SensorClosed (And.intro E.atf6PathwayClosed
    (And.intro E.perkKinaseClosed E.chaperoneUpregulationClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERMembranePackage where
  lipidBilayer : Prop
  membraneProteins : Prop
  ionHomeostasis : Prop
  calciumStorage : Prop
  calciumRelease : Prop
  unfoldedProteinResponseInitiation : Prop

structure ERMembraneEvidence (P : ERMembranePackage) where
  lipidBilayerClosed : P.lipidBilayer
  membraneProteinsClosed : P.membraneProteins
  ionHomeostasisClosed : P.ionHomeostasis
  calciumStorageClosed : P.calciumStorage
  calciumReleaseClosed : P.calciumRelease
  unfoldedProteinResponseInitiationClosed : P.unfoldedProteinResponseInitiation

def ERMembraneClosed (P : ERMembranePackage) : Prop :=
  P.lipidBilayer ∧ P.membraneProteins ∧ P.ionHomeostasis ∧
  P.calciumStorage ∧ P.calciumRelease ∧ P.unfoldedProteinResponseInitiation

theorem er_membrane_closed_from_evidence (P : ERMembranePackage)
    (E : ERMembraneEvidence P) : ERMembraneClosed P := by
  exact And.intro E.lipidBilayerClosed
    (And.intro E.membraneProteinsClosed
      (And.intro E.ionHomeostasisClosed
        (And.intro E.calciumStorageClosed
          (And.intro E.calciumReleaseClosed E.unfoldedProteinResponseInitiationClosed))))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse

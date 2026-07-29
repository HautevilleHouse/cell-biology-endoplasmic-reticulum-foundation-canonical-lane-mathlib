import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure LipidSynthesisPackage where
  phospholipidBiosynthesis : Prop
  sterolRegulation : Prop
  membraneExpansion : Prop
  lipidDropletFormation : Prop

structure LipidSynthesisEvidence (L : LipidSynthesisPackage) where
  phospholipidBiosynthesisClosed : L.phospholipidBiosynthesis
  sterolRegulationClosed : L.sterolRegulation
  membraneExpansionClosed : L.membraneExpansion
  lipidDropletFormationClosed : L.lipidDropletFormation

def LipidSynthesisClosed (L : LipidSynthesisPackage) : Prop :=
  L.phospholipidBiosynthesis ∧ L.sterolRegulation ∧ L.membraneExpansion ∧ L.lipidDropletFormation

theorem lipid_synthesis_closed_from_evidence (L : LipidSynthesisPackage)
    (E : LipidSynthesisEvidence L) : LipidSynthesisClosed L := by
  exact And.intro E.phospholipidBiosynthesisClosed (And.intro E.sterolRegulationClosed
    (And.intro E.membraneExpansionClosed E.lipidDropletFormationClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
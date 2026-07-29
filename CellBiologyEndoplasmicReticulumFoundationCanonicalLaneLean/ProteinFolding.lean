import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERProteinFoldingPackage where
  oxidoreductaseActivity : Prop
  chaperoneCycle : Prop
  disulfideBondFormation : Prop
  qualityControl : Prop

structure ERProteinFoldingEvidence (P : ERProteinFoldingPackage) where
  oxidoreductaseActivityClosed : P.oxidoreductaseActivity
  chaperoneCycleClosed : P.chaperoneCycle
  disulfideBondFormationClosed : P.disulfideBondFormation
  qualityControlClosed : P.qualityControl

def ERProteinFoldingClosed (P : ERProteinFoldingPackage) : Prop :=
  P.oxidoreductaseActivity ∧ P.chaperoneCycle ∧ P.disulfideBondFormation ∧ P.qualityControl

theorem er_protein_folding_closed_from_evidence (P : ERProteinFoldingPackage)
    (E : ERProteinFoldingEvidence P) : ERProteinFoldingClosed P := by
  exact And.intro E.oxidoreductaseActivityClosed (And.intro E.chaperoneCycleClosed
    (And.intro E.disulfideBondFormationClosed E.qualityControlClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
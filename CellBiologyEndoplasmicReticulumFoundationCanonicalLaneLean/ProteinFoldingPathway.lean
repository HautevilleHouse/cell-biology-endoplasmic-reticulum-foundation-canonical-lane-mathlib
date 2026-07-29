import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ProteinFoldingPathwayPackage where
  molecularChaperones : Prop
  disulfideBondFormation : Prop
  qualityControl : Prop
  erAssociatedDegradation : Prop
  ERADsignaling : Prop
  foldingCatalysts : Prop

structure ProteinFoldingPathwayEvidence (P : ProteinFoldingPathwayPackage) where
  molecularChaperonesClosed : P.molecularChaperones
  disulfideBondFormationClosed : P.disulfideBondFormation
  qualityControlClosed : P.qualityControl
  erAssociatedDegradationClosed : P.erAssociatedDegradation
  ERADsignalingClosed : P.ERADsignaling
  foldingCatalystsClosed : P.foldingCatalysts

def ProteinFoldingPathwayClosed (P : ProteinFoldingPathwayPackage) : Prop :=
  P.molecularChaperones ∧ P.disulfideBondFormation ∧ P.qualityControl ∧
  P.erAssociatedDegradation ∧ P.ERADsignaling ∧ P.foldingCatalysts

theorem protein_folding_pathway_closed_from_evidence (P : ProteinFoldingPathwayPackage)
    (E : ProteinFoldingPathwayEvidence P) : ProteinFoldingPathwayClosed P := by
  exact And.intro E.molecularChaperonesClosed
    (And.intro E.disulfideBondFormationClosed
      (And.intro E.qualityControlClosed
        (And.intro E.erAssociatedDegradationClosed
          (And.intro E.ERADsignalingClosed E.foldingCatalystsClosed))))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse

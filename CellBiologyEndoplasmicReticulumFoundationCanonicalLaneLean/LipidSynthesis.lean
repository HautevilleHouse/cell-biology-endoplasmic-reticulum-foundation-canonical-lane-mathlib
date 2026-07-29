import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

/-!
# Lipid Synthesis Package

This module defines the structural components for lipid synthesis
within the endoplasmic reticulum. The package records key biosynthetic
pathways such as phospholipid synthesis, cholesterol synthesis, and
sphingolipid synthesis as propositions to facilitate bridge and
gate closure in the AdmissibleClass framework.
-/

structure PhospholipidSynthesisEvidence where
  phosphatidicAcidBiosynthesis : Prop
  cdpDiacylglycerolPathway : Prop
  remodellingByLandCycle : Prop

structure CholesterolSynthesisEvidence where
  hmgcrActivity : Prop
  mevalonatePathway : Prop
  squaleneCyclization : Prop

structure SphingolipidSynthesisEvidence where
  serinePalmitoyltransferase : Prop
  ceramideSynthesis : Prop
  complexSphingolipidFormation : Prop

structure LipidSynthesisEvidence where
  phospholipidSynthesis : PhospholipidSynthesisEvidence
  cholesterolSynthesis : CholesterolSynthesisEvidence
  sphingolipidSynthesis : SphingolipidSynthesisEvidence

def LipidSynthesisClosed (L : LipidSynthesisEvidence) : Prop :=
  L.phospholipidSynthesis.phosphatidicAcidBiosynthesis ∧
  L.phospholipidSynthesis.cdpDiacylglycerolPathway ∧
  L.phospholipidSynthesis.remodellingByLandCycle ∧
  L.cholesterolSynthesis.hmgcrActivity ∧
  L.cholesterolSynthesis.mevalonatePathway ∧
  L.cholesterolSynthesis.squaleneCyclization ∧
  L.sphingolipidSynthesis.serinePalmitoyltransferase ∧
  L.sphingolipidSynthesis.ceramideSynthesis ∧
  L.sphingolipidSynthesis.complexSphingolipidFormation

theorem lipid_synthesis_closed_from_evidence
    (L : LipidSynthesisEvidence) : LipidSynthesisClosed L := by
  exact And.intro L.phospholipidSynthesis.phosphatidicAcidBiosynthesis
    (And.intro L.phospholipidSynthesis.cdpDiacylglycerolPathway
      (And.intro L.phospholipidSynthesis.remodellingByLandCycle
        (And.intro L.cholesterolSynthesis.hmgcrActivity
          (And.intro L.cholesterolSynthesis.mevalonatePathway
            (And.intro L.cholesterolSynthesis.squaleneCyclization
              (And.intro L.sphingolipidSynthesis.serinePalmitoyltransferase
                (And.intro L.sphingolipidSynthesis.ceramideSynthesis
                  L.sphingolipidSynthesis.complexSphingolipidFormation)))))))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
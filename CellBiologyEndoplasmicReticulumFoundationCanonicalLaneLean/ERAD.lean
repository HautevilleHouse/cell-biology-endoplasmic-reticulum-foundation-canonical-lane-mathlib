import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERADPackage where
  misfoldedProteinRecognition : Prop
  retrotranslocation : Prop
  ubiquitination : Prop
  proteasomalDegradation : Prop

structure ERADEvidence (E : ERADPackage) where
  misfoldedProteinRecognitionClosed : E.misfoldedProteinRecognition
  retrotranslocationClosed : E.retrotranslocation
  ubiquitinationClosed : E.ubiquitination
  proteasomalDegradationClosed : E.proteasomalDegradation

def ERADClosed (E : ERADPackage) : Prop :=
  E.misfoldedProteinRecognition ∧ E.retrotranslocation ∧ E.ubiquitination ∧ E.proteasomalDegradation

theorem erad_closed_from_evidence (E : ERADPackage) (Ev : ERADEvidence E) : ERADClosed E := by
  exact And.intro Ev.misfoldedProteinRecognitionClosed (And.intro Ev.retrotranslocationClosed
    (And.intro Ev.ubiquitinationClosed Ev.proteasomalDegradationClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
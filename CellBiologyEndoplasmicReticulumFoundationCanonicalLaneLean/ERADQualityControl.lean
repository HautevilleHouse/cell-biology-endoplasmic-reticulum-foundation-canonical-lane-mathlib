import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERADQualityControlPackage where
  misfoldedProteinRecognition : Prop
  retrotranslocationChannel : Prop
  ubiquitinationMachinery : Prop
  proteasomalDegradation : Prop
  misfoldedProteinRecognitionTerm : misfoldedProteinRecognition
  retrotranslocationChannelTerm : retrotranslocationChannel
  ubiquitinationMachineryTerm : ubiquitinationMachinery
  proteasomalDegradationTerm : proteasomalDegradation

structure ERADEvidence (E : ERADQualityControlPackage) where
  misfoldedProteinRecognitionClosed : E.misfoldedProteinRecognition
  retrotranslocationChannelClosed : E.retrotranslocationChannel
  ubiquitinationMachineryClosed : E.ubiquitinationMachinery
  proteasomalDegradationClosed : E.proteasomalDegradation

def ERADClosed (E : ERADQualityControlPackage) : Prop :=
  E.misfoldedProteinRecognition ∧ E.retrotranslocationChannel ∧
  E.ubiquitinationMachinery ∧ E.proteasomalDegradation

theorem erad_closed_from_evidence (E : ERADQualityControlPackage) (Ev : ERADEvidence E) :
    ERADClosed E := by
  exact And.intro Ev.misfoldedProteinRecognitionClosed
    (And.intro Ev.retrotranslocationChannelClosed
      (And.intro Ev.ubiquitinationMachineryClosed Ev.proteasomalDegradationClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
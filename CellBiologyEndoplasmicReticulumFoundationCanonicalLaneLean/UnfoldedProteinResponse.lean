import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure UnfoldedProteinResponsePackage where
  sensorProteins : Prop
  ERstressTransducers : Prop
  transcriptionalReprogramming : Prop
  translationAttenuation : Prop
  apoptosisInduction : Prop
  cellSurvivalSignals : Prop

structure UnfoldedProteinResponseEvidence (U : UnfoldedProteinResponsePackage) where
  sensorProteinsClosed : U.sensorProteins
  ERstressTransducersClosed : U.ERstressTransducers
  transcriptionalReprogrammingClosed : U.transcriptionalReprogramming
  translationAttenuationClosed : U.translationAttenuation
  apoptosisInductionClosed : U.apoptosisInduction
  cellSurvivalSignalsClosed : U.cellSurvivalSignals

def UnfoldedProteinResponseClosed (U : UnfoldedProteinResponsePackage) : Prop :=
  U.sensorProteins ∧ U.ERstressTransducers ∧ U.transcriptionalReprogramming ∧
  U.translationAttenuation ∧ U.apoptosisInduction ∧ U.cellSurvivalSignals

theorem unfolded_protein_response_closed_from_evidence (U : UnfoldedProteinResponsePackage)
    (E : UnfoldedProteinResponseEvidence U) : UnfoldedProteinResponseClosed U := by
  exact And.intro E.sensorProteinsClosed
    (And.intro E.ERstressTransducersClosed
      (And.intro E.transcriptionalReprogrammingClosed
        (And.intro E.translationAttenuationClosed
          (And.intro E.apoptosisInductionClosed E.cellSurvivalSignalsClosed))))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse

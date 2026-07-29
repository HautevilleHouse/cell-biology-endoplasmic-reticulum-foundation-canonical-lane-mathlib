import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERShapeNetworkPackage where
  tubularNetworkFormation : Prop
  sheetFormation : Prop
  nuclearEnvelopeContinuity : Prop
  erExitSitesFormed : Prop
  erMicrotubuleAttachment : Prop

structure ERShapeNetworkEvidence (E : ERShapeNetworkPackage) where
  tubularNetworkFormationClosed : E.tubularNetworkFormation
  sheetFormationClosed : E.sheetFormation
  nuclearEnvelopeContinuityClosed : E.nuclearEnvelopeContinuity
  erExitSitesFormedClosed : E.erExitSitesFormed
  erMicrotubuleAttachmentClosed : E.erMicrotubuleAttachment

def ERShapeNetworkClosed (E : ERShapeNetworkPackage) : Prop :=
  E.tubularNetworkFormation ∧ E.sheetFormation ∧ E.nuclearEnvelopeContinuity ∧ E.erExitSitesFormed ∧ E.erMicrotubuleAttachment

theorem er_shape_network_closed_from_evidence (E : ERShapeNetworkPackage) (Ev : ERShapeNetworkEvidence E) : ERShapeNetworkClosed E := by
  exact And.intro Ev.tubularNetworkFormationClosed
    (And.intro Ev.sheetFormationClosed
      (And.intro Ev.nuclearEnvelopeContinuityClosed
        (And.intro Ev.erExitSitesFormedClosed Ev.erMicrotubuleAttachmentClosed)))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse
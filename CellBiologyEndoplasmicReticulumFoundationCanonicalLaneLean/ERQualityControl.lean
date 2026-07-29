import ERStressNetwork

namespace HautevilleHouse
namespace CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean

structure ERQualityControlPackage {P : ERStressNetworkPackage}
    (S : ERStressNetworkEvidence P) where
  chaperoneNetwork : Prop
  ERADPathway : Prop
  lipidQualityCheck : Prop
  calciumStorage : Prop

structure ERQualityControlEvidence {P : ERStressNetworkPackage}
    {S : ERStressNetworkEvidence P} (Q : ERQualityControlPackage S) where
  chaperoneNetworkClosed : Q.chaperoneNetwork
  ERADPathwayClosed : Q.ERADPathway
  lipidQualityCheckClosed : Q.lipidQualityCheck
  calciumStorageClosed : Q.calciumStorage

def ERQualityControlClosed {P : ERStressNetworkPackage}
    {S : ERStressNetworkEvidence P} (Q : ERQualityControlPackage S) : Prop :=
  Q.chaperoneNetwork ∧ Q.ERADPathway ∧ Q.lipidQualityCheck ∧ Q.calciumStorage

theorem er_quality_control_closed_from_evidence
    {P : ERStressNetworkPackage} {S : ERStressNetworkEvidence P}
    (Q : ERQualityControlPackage S) (E : ERQualityControlEvidence Q) :
    ERQualityControlClosed Q := by
  exact And.intro E.chaperoneNetworkClosed
    (And.intro E.ERADPathwayClosed
      (And.intro E.lipidQualityCheckClosed E.calciumStorageClosed))

end CellBiologyEndoplasmicReticulumFoundationCanonicalLaneLean
end HautevilleHouse

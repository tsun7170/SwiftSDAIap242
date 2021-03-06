/* file: annotation_occurrence_associativity.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY annotation_occurrence_associativity
    SUBTYPE OF ( annotation_occurrence_relationship );
    WHERE
      wr1: ( SIZEOF( TYPEOF( SELF.related_annotation_occurrence ) * [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_FILL_AREA_OCCURRENCE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_CURVE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE' ] ) = 1 );
  END_ENTITY; -- annotation_occurrence_associativity (line:6920 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	annotation_occurrence_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- EXPLICIT

    ATTR:  relating_annotation_occurrence,	TYPE: annotation_occurrence -- EXPLICIT
      -- possibly overriden by
          ENTITY: dimension_curve_terminator_to_projection_curve_associativity,	TYPE: dimension_curve_terminator

    ATTR:  related_annotation_occurrence,	TYPE: annotation_occurrence -- EXPLICIT
      -- possibly overriden by
          ENTITY: dimension_curve_terminator_to_projection_curve_associativity,	TYPE: projection_curve


  ENTITY(SELF)	annotation_occurrence_associativity
    (no local attributes)

  SUB- ENTITY(3)	dimension_curve_terminator_to_projection_curve_associativity
    REDCR: relating_annotation_occurrence,	TYPE: dimension_curve_terminator -- EXPLICIT
      -- OVERRIDING ENTITY: annotation_occurrence_relationship

    REDCR: related_annotation_occurrence,	TYPE: projection_curve -- EXPLICIT
      -- OVERRIDING ENTITY: annotation_occurrence_relationship


*/


//MARK: - Partial Entity
  public final class _annotation_occurrence_associativity : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eANNOTATION_OCCURRENCE_ASSOCIATIVITY.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eANNOTATION_OCCURRENCE_ASSOCIATIVITY?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.RELATED_ANNOTATION_OCCURRENCE
      let _TEMP2 = SDAI.TYPEOF(_TEMP1)
      let _TEMP3 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_FILL_AREA_OCCURRENCE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_CURVE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP2) * SDAI.FORCE_OPTIONAL(_TEMP3)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP6
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY annotation_occurrence_associativity
    SUBTYPE OF ( annotation_occurrence_relationship );
    WHERE
      wr1: ( SIZEOF( TYPEOF( SELF.related_annotation_occurrence ) * [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ANNOTATION_FILL_AREA_OCCURRENCE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_CURVE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE' ] ) = 1 );
  END_ENTITY; -- annotation_occurrence_associativity (line:6920 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eANNOTATION_OCCURRENCE_ASSOCIATIVITY : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _annotation_occurrence_associativity.self
    }
    public let partialEntity: _annotation_occurrence_associativity

    //MARK: SUPERTYPES
    public let super_eANNOTATION_OCCURRENCE_RELATIONSHIP: eANNOTATION_OCCURRENCE_RELATIONSHIP 	// [1]
    public var super_eANNOTATION_OCCURRENCE_ASSOCIATIVITY: eANNOTATION_OCCURRENCE_ASSOCIATIVITY { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eDIMENSION_CURVE_TERMINATOR_TO_PROJECTION_CURVE_ASSOCIATIVITY: eDIMENSION_CURVE_TERMINATOR_TO_PROJECTION_CURVE_ASSOCIATIVITY? {	// [3]
      return self.complexEntity.entityReference(eDIMENSION_CURVE_TERMINATOR_TO_PROJECTION_CURVE_ASSOCIATIVITY.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eANNOTATION_OCCURRENCE_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity._description )
      }
      set(newValue) {
        let partial = super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eANNOTATION_OCCURRENCE_RELATIONSHIP`` )
    public var RELATED_ANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE {
      get {
        return SDAI.UNWRAP( super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity
          ._related_annotation_occurrence )
      }
      set(newValue) {
        let partial = super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity
        partial._related_annotation_occurrence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eANNOTATION_OCCURRENCE_RELATIONSHIP`` )
    public var RELATING_ANNOTATION_OCCURRENCE: eANNOTATION_OCCURRENCE {
      get {
        return SDAI.UNWRAP( super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity
          ._relating_annotation_occurrence )
      }
      set(newValue) {
        let partial = super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity
        partial._relating_annotation_occurrence = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eANNOTATION_OCCURRENCE_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eANNOTATION_OCCURRENCE_RELATIONSHIP.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_annotation_occurrence_associativity.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eANNOTATION_OCCURRENCE_RELATIONSHIP.self) else { return nil }
      self.super_eANNOTATION_OCCURRENCE_RELATIONSHIP = super1

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _annotation_occurrence_associativity.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ANNOTATION_OCCURRENCE_ASSOCIATIVITY", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eANNOTATION_OCCURRENCE_RELATIONSHIP.self)
      entityDef.add(supertype: eANNOTATION_OCCURRENCE_ASSOCIATIVITY.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eANNOTATION_OCCURRENCE_ASSOCIATIVITY.DESCRIPTION, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATED_ANNOTATION_OCCURRENCE", keyPath: \eANNOTATION_OCCURRENCE_ASSOCIATIVITY.RELATED_ANNOTATION_OCCURRENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATING_ANNOTATION_OCCURRENCE", keyPath: \eANNOTATION_OCCURRENCE_ASSOCIATIVITY.RELATING_ANNOTATION_OCCURRENCE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eANNOTATION_OCCURRENCE_ASSOCIATIVITY.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

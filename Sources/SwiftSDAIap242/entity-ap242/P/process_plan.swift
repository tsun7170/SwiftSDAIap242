/* file: process_plan.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY process_plan
    SUBTYPE OF ( action );
    WHERE
      wr1: ( SIZEOF( QUERY ( ar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'ACTION_RELATIONSHIP.RELATED_ACTION'  ) | ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_PLAN' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_PROCESS_PLAN' ] * TYPEOF( ar.
               relating_action ) ) <> 1 ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( ar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'ACTION_RELATIONSHIP.RELATING_ACTION'  ) | ( ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_PLAN' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_PROCESS_PLAN' ] * TYPEOF( ar.
               related_action ) ) = 1 ) OR ( ( ar.name = 'process operation occurrence' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_OPERATION'  IN TYPEOF( ar.
               related_action.chosen_method ) ) ) ) ) ) = SIZEOF( USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ACTION_RELATIONSHIP.RELATING_ACTION'  ) ) );
  END_ENTITY; -- process_plan (line:25885 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	action
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  chosen_method,	TYPE: action_method -- EXPLICIT

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  ENTITY(SELF)	process_plan
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _process_plan : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePROCESS_PLAN.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCONFIGURED_EFFECTIVITY_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: ePROCESS_PLAN?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eACTION_RELATIONSHIP.RELATED_ACTION)
      let _TEMP2 = _TEMP1.QUERY{ AR in 

          let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_PLAN")), 
            SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_PROCESS_PLAN"))] 
            as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP2 = /*runtime*/AR.RELATING_ACTION
          let _TEMP3 = SDAI.TYPEOF(_TEMP2)
          let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP3)
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .!=. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          return _TEMP6 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr2(SELF: ePROCESS_PLAN?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eACTION_RELATIONSHIP.RELATING_ACTION)
      let _TEMP2 = _TEMP1.QUERY{ AR in 

          let _TEMP1 = ([SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_PLAN")), 
            SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_PROCESS_PLAN"))] 
            as [SDAI.AggregationInitializerElement<SDAI.STRING>])
          let _TEMP2 = /*runtime*/AR.RELATED_ACTION
          let _TEMP3 = SDAI.TYPEOF(_TEMP2)
          let _TEMP4 = SDAI.FORCE_OPTIONAL(_TEMP1) * SDAI.FORCE_OPTIONAL(_TEMP3)
          let _TEMP5 = SDAI.SIZEOF(_TEMP4)
          let _TEMP6 = _TEMP5 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
          let _TEMP7 = /*runtime*/AR.NAME
          let _TEMP8 = SDAI.FORCE_OPTIONAL(/*runtime*/_TEMP7) .==. SDAI.FORCE_OPTIONAL(SDAI.STRING(
            "process operation occurrence"))
          let _TEMP9 = SDAI.TYPEOF(SDAI.FORCE_OPTIONAL(AR.RELATED_ACTION)?.CHOSEN_METHOD, 
            IS: ePROCESS_OPERATION.self)
          let _TEMP10 = _TEMP8 && _TEMP9
          let _TEMP11 = _TEMP6 || _TEMP10
          return _TEMP11 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eACTION_RELATIONSHIP.RELATING_ACTION)
      let _TEMP5 = SDAI.SIZEOF(_TEMP4)
      let _TEMP6 = _TEMP3 .==. _TEMP5
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
  ENTITY process_plan
    SUBTYPE OF ( action );
    WHERE
      wr1: ( SIZEOF( QUERY ( ar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'ACTION_RELATIONSHIP.RELATED_ACTION'  ) | ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_PLAN' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_PROCESS_PLAN' ] * TYPEOF( ar.
               relating_action ) ) <> 1 ) ) ) = 0 );
      wr2: ( SIZEOF( QUERY ( ar <* USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.'
               + 'ACTION_RELATIONSHIP.RELATING_ACTION'  ) | ( ( SIZEOF( [
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_PLAN' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_PROCESS_PLAN' ] * TYPEOF( ar.
               related_action ) ) = 1 ) OR ( ( ar.name = 'process operation occurrence' ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROCESS_OPERATION'  IN TYPEOF( ar.
               related_action.chosen_method ) ) ) ) ) ) = SIZEOF( USEDIN( SELF, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ACTION_RELATIONSHIP.RELATING_ACTION'  ) ) );
  END_ENTITY; -- process_plan (line:25885 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePROCESS_PLAN : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _process_plan.self
    }
    public let partialEntity: _process_plan

    //MARK: SUPERTYPES
    public let super_eACTION: eACTION 	// [1]
    public var super_ePROCESS_PLAN: ePROCESS_PLAN { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eACTION.partialEntity._description
      }
      set(newValue) {
        let partial = super_eACTION.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var CHOSEN_METHOD: eACTION_METHOD {
      get {
        return SDAI.UNWRAP( super_eACTION.partialEntity._chosen_method )
      }
      set(newValue) {
        let partial = super_eACTION.partialEntity
        partial._chosen_method = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eACTION
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eACTION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eACTION.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eACTION.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_process_plan.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eACTION.self) else { return nil }
      self.super_eACTION = super1

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
      result[prefix2 + " .WHERE_wr1"] = _process_plan.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _process_plan.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PROCESS_PLAN", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION.self)
      entityDef.add(supertype: ePROCESS_PLAN.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \ePROCESS_PLAN.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CHOSEN_METHOD", keyPath: \ePROCESS_PLAN.CHOSEN_METHOD, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \ePROCESS_PLAN.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \ePROCESS_PLAN.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

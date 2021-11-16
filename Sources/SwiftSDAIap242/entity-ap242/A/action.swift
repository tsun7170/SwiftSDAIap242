/* file: action.swift 	 generated: Tue Nov 16 05:35:44 2021 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.0, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY action;
      name           : label;
      description    : OPTIONAL text;
      chosen_method  : action_method;
    DERIVE
      id  : identifier := get_id_value( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- action (line:6380 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	action
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  chosen_method,	TYPE: action_method -- EXPLICIT

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUB- ENTITY(2)	retention
    (no local attributes)

  SUB- ENTITY(3)	process_plan
    (no local attributes)

  SUB- ENTITY(4)	property_process
    ATTR:  identification,	TYPE: identifier -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  properties,	TYPE: SET [1 : ?] OF process_property_association -- INVERSE
      FOR process;


  SUB- ENTITY(5)	product_process_plan
    (no local attributes)

  SUB- ENTITY(6)	product_definition_process
    ATTR:  identification,	TYPE: identifier -- EXPLICIT	(AMBIGUOUS/MASKED)

    ATTR:  product_definitions,	TYPE: SET [1 : ?] OF process_product_association -- INVERSE
      FOR process;


  SUB- ENTITY(7)	directed_action
    ATTR:  directive,	TYPE: action_directive -- EXPLICIT


  SUB- ENTITY(8)	action_actual
    (no local attributes)

  SUB- ENTITY(9)	executed_action
    (no local attributes)

  SUB- ENTITY(10)	rule_supersedence
    (no local attributes)

  SUB- ENTITY(11)	rule_action
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _action : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eACTION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _chosen_method: eACTION_METHOD // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _id__getter(SELF: eACTION) -> tIDENTIFIER?  {

      let _TEMP1 = GET_ID_VALUE(sID_ATTRIBUTE_SELECT(/*eACTION*/SELF))
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDATE_AND_TIME_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sID_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sPRESENTED_ITEM_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sTIME_INTERVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSECURITY_CLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_REQUEST_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDATE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sPERSON_AND_ORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_ACTION_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sORGANIZATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sSUPPORTED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._chosen_method.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._chosen_method.value.isValueEqualOptionally(to: rhs._chosen_method.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._chosen_method.value.isValueEqualOptionally(to: rhs._chosen_method.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eACTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eID_ATTRIBUTE
        .IDENTIFIED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , CHOSEN_METHOD: eACTION_METHOD) {
      self._name = NAME
      self._description = DESCRIPTION
      self._chosen_method = CHOSEN_METHOD
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eACTION_METHOD.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, CHOSEN_METHOD: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY action;
      name           : label;
      description    : OPTIONAL text;
      chosen_method  : action_method;
    DERIVE
      id  : identifier := get_id_value( SELF );
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- action (line:6380 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eACTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _action.self
    }
    public let partialEntity: _action

    //MARK: SUPERTYPES
    public var super_eACTION: eACTION { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eRETENTION: eRETENTION? {	// [2]
      return self.complexEntity.entityReference(eRETENTION.self)
    }

    public var sub_ePROCESS_PLAN: ePROCESS_PLAN? {	// [3]
      return self.complexEntity.entityReference(ePROCESS_PLAN.self)
    }

    public var sub_ePROPERTY_PROCESS: ePROPERTY_PROCESS? {	// [4]
      return self.complexEntity.entityReference(ePROPERTY_PROCESS.self)
    }

    public var sub_ePRODUCT_PROCESS_PLAN: ePRODUCT_PROCESS_PLAN? {	// [5]
      return self.complexEntity.entityReference(ePRODUCT_PROCESS_PLAN.self)
    }

    public var sub_ePRODUCT_DEFINITION_PROCESS: ePRODUCT_DEFINITION_PROCESS? {	// [6]
      return self.complexEntity.entityReference(ePRODUCT_DEFINITION_PROCESS.self)
    }

    public var sub_eDIRECTED_ACTION: eDIRECTED_ACTION? {	// [7]
      return self.complexEntity.entityReference(eDIRECTED_ACTION.self)
    }

    public var sub_eACTION_ACTUAL: eACTION_ACTUAL? {	// [8]
      return self.complexEntity.entityReference(eACTION_ACTUAL.self)
    }

    public var sub_eEXECUTED_ACTION: eEXECUTED_ACTION? {	// [9]
      return self.complexEntity.entityReference(eEXECUTED_ACTION.self)
    }

    public var sub_eRULE_SUPERSEDENCE: eRULE_SUPERSEDENCE? {	// [10]
      return self.complexEntity.entityReference(eRULE_SUPERSEDENCE.self)
    }

    public var sub_eRULE_ACTION: eRULE_ACTION? {	// [11]
      return self.complexEntity.entityReference(eRULE_ACTION.self)
    }


    //MARK: ATTRIBUTES
    // IDENTIFICATION: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __INVERSE__ attribute
    /// observing ePROCESS_PROPERTY_ASSOCIATION .PROCESS
    /// - origin: SUB( ``ePROPERTY_PROCESS`` )
    public var PROPERTIES: (SDAI.SET<ePROCESS_PROPERTY_ASSOCIATION>/*[1:nil]*/ )?  {
      get {
        return sub_ePROPERTY_PROCESS?.partialEntity._properties
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDIRECTED_ACTION`` )
    public var DIRECTIVE: eACTION_DIRECTIVE?  {
      get {
        return sub_eDIRECTED_ACTION?.partialEntity._directive
      }
      set(newValue) {
        guard let partial = sub_eDIRECTED_ACTION?.super_eDIRECTED_ACTION.partialEntity else { return }
        partial._directive = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION`` )
    public var CHOSEN_METHOD: eACTION_METHOD {
      get {
        return SDAI.UNWRAP( self.partialEntity._chosen_method )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._chosen_method = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing ePROCESS_PRODUCT_ASSOCIATION .PROCESS
    /// - origin: SUB( ``ePRODUCT_DEFINITION_PROCESS`` )
    public var PRODUCT_DEFINITIONS: (SDAI.SET<ePROCESS_PRODUCT_ASSOCIATION>/*[1:nil]*/ )?  {
      get {
        return sub_ePRODUCT_DEFINITION_PROCESS?.partialEntity._product_definitions
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eACTION`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = self
        let value = origin.partialEntity._id__getter(SELF: origin)
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eACTION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_action.self) else { return nil }
      self.partialEntity = partial

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }

    //SIMPLE ENTITY REFERENCE
    public convenience init?(_ partial:_action) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _action.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ACTION", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eACTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eACTION.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PROPERTIES", keyPath: \eACTION.PROPERTIES, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIRECTIVE", keyPath: \eACTION.DIRECTIVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "CHOSEN_METHOD", keyPath: \eACTION.CHOSEN_METHOD, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONS", keyPath: \eACTION.PRODUCT_DEFINITIONS, 
        kind: .inverse, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eACTION.ID, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eACTION.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

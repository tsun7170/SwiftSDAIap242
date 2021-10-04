/* file: application_context.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY application_context;
      application  : label;
    DERIVE
      description  : text := get_description_value( SELF );
      id           : identifier := get_id_value( SELF );
    INVERSE
      context_elements : SET [1 : ?] OF application_context_element FOR frame_of_reference -- defined in ENTITY: application_context_element;
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DESCRIPTION_ATTRIBUTE.'
               + 'DESCRIBED_ITEM'  ) ) <= 1 );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- application_context (line:7021 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	application_context
    ATTR:  application,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- DERIVED
      := get_description_value( SELF )

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  context_elements,	TYPE: SET [1 : ?] OF application_context_element -- INVERSE
      FOR frame_of_reference;


*/


//MARK: - Partial Entity
  public final class _application_context : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eAPPLICATION_CONTEXT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _application: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _description__getter(SELF: eAPPLICATION_CONTEXT) -> tTEXT?  {

      let _TEMP1 = GET_DESCRIPTION_VALUE(sDESCRIPTION_ATTRIBUTE_SELECT(/*eAPPLICATION_CONTEXT*/SELF))
      return _TEMP1
    }

    /// DERIVE ATTRIBUTE
    internal func _id__getter(SELF: eAPPLICATION_CONTEXT) -> tIDENTIFIER?  {

      let _TEMP1 = GET_ID_VALUE(sID_ATTRIBUTE_SELECT(/*eAPPLICATION_CONTEXT*/SELF))
      return _TEMP1
    }

    /// INVERSE AGGREGATE ATTRIBUTE
    /// observing _application_context_element ._frame_of_reference
    internal var _context_elements: SDAI.SET<eAPPLICATION_CONTEXT_ELEMENT> {
      return __context_elements.map{ $0.reference }
    }
    private var __context_elements = SDAI.SET<SDAI.UnownedWrap<eAPPLICATION_CONTEXT_ELEMENT>>(
      bound1: SDAI.UNWRAP(SDAI.INTEGER(1)), bound2: (nil as SDAI.INTEGER?), 
      SDAI.EMPLY_AGGREGATE) // unowned backing store
    /// INVERSE AGGREGATE ATTR SUPPORT(ADDER)
    internal func _context_elements__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eAPPLICATION_CONTEXT_ELEMENT.self) else { return }
      self.__context_elements.add(member: SDAI.UnownedWrap(newSource) )
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(REMOVER)
    internal func _context_elements__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eAPPLICATION_CONTEXT_ELEMENT.self) else { return }
      let success = self.__context_elements.remove(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute element")
    }
    /// INVERSE AGGREGATE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _context_elements__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let oldSource = complex.entityReference(eAPPLICATION_CONTEXT_ELEMENT.self) else { return }
      let success = self.__context_elements.removeAll(member: SDAI.UnownedWrap(oldSource) )
      assert(success, "failed to remove inverse attribute elements")
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sID_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._application.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._application.value.isValueEqualOptionally(to: rhs._application.value, visited: &comppairs)	{
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
      if let comp = self._application.value.isValueEqualOptionally(to: rhs._application.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eAPPLICATION_CONTEXT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF
        .eDESCRIPTION_ATTRIBUTE.DESCRIBED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eAPPLICATION_CONTEXT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eID_ATTRIBUTE
        .IDENTIFIED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(APPLICATION: tLABEL) {
      self._application = APPLICATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( APPLICATION: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY application_context;
      application  : label;
    DERIVE
      description  : text := get_description_value( SELF );
      id           : identifier := get_id_value( SELF );
    INVERSE
      context_elements : SET [1 : ?] OF application_context_element FOR frame_of_reference -- defined in ENTITY: application_context_element;
    WHERE
      wr1: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DESCRIPTION_ATTRIBUTE.'
               + 'DESCRIBED_ITEM'  ) ) <= 1 );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- application_context (line:7021 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eAPPLICATION_CONTEXT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _application_context.self
    }
    public let partialEntity: _application_context

    //MARK: SUPERTYPES
    public var super_eAPPLICATION_CONTEXT: eAPPLICATION_CONTEXT { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SELF( ``eAPPLICATION_CONTEXT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DESCRIPTION") {
          return cached.value as! tTEXT? 
        }
        let origin = self
        let value = origin.partialEntity._description__getter(SELF: origin)
        updateCache(derivedAttributeName:"DESCRIPTION", value:value)
        return value
      }
    }

    /// __INVERSE__ attribute
    /// observing eAPPLICATION_CONTEXT_ELEMENT .FRAME_OF_REFERENCE
    /// - origin: SELF( ``eAPPLICATION_CONTEXT`` )
    public var CONTEXT_ELEMENTS: SDAI.SET<eAPPLICATION_CONTEXT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._context_elements )
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eAPPLICATION_CONTEXT`` )
    public var APPLICATION: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._application )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._application = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eAPPLICATION_CONTEXT`` )
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_application_context.self) else { return nil }
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
    public convenience init?(_ partial:_application_context) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _application_context.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _application_context.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "APPLICATION_CONTEXT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eAPPLICATION_CONTEXT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eAPPLICATION_CONTEXT.DESCRIPTION, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "CONTEXT_ELEMENTS", keyPath: \eAPPLICATION_CONTEXT.CONTEXT_ELEMENTS, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "APPLICATION", keyPath: \eAPPLICATION_CONTEXT.APPLICATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ID", keyPath: \eAPPLICATION_CONTEXT.ID, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

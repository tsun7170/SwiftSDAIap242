/* file: oriented_path.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY oriented_path
    SUBTYPE OF ( path );
      path_element  : path;
      orientation   : BOOLEAN;
    DERIVE
      SELF\path.edge_list  : LIST [1 : ?] OF UNIQUE oriented_edge := conditional_reverse( SELF.orientation, 
                               SELF.path_element.edge_list );
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_PATH' IN TYPEOF( SELF.
               path_element ) ) );
  END_ENTITY; -- oriented_path (line:22800 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	topological_representation_item
    ATTR:  permanent_id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )

    ATTR:  permanent_aggregate_id,	TYPE: identifier -- DERIVED
      := get_aggregate_id_value( SELF )


  SUPER- ENTITY(3)	path
    ATTR:  edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: kinematic_loop,	TYPE: LIST [1 : ?] OF UNIQUE oriented_joint
      *** ENTITY: oriented_path,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge	(as DERIVED)


  ENTITY(SELF)	oriented_path
    ATTR:  path_element,	TYPE: path -- EXPLICIT

    ATTR:  orientation,	TYPE: BOOLEAN -- EXPLICIT

    REDCR: edge_list,	TYPE: LIST [1 : ?] OF UNIQUE oriented_edge -- DERIVED (DYNAMIC)
      := conditional_reverse( SELF.orientation, SELF.path_element.edge_list )
      -- OVERRIDING ENTITY: path


*/


//MARK: - Partial Entity
  public final class _oriented_path : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eORIENTED_PATH.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _path_element: ePATH // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _orientation: SDAI.BOOLEAN // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePATH)
    /// - attribute value provider protocol conformance wrapper
    internal func _edge_list__getter(complex: SDAI.ComplexEntity) -> SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/  {
      let SELF = complex.entityReference( eORIENTED_PATH.self )!
      return SDAI.UNWRAP( SDAI.LIST_UNIQUE<eORIENTED_EDGE>(SELF.EDGE_LIST) )
    }
    /// DERIVE ATTRIBUTE REDEFINITION(origin: ePATH)
    /// - gut of derived attribute logic
    internal func _edge_list__getter(SELF: eORIENTED_PATH) -> SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/  {

      let _TEMP1 = SELF.ORIENTATION
      let _TEMP2 = SELF.PATH_ELEMENT
      let _TEMP3 = _TEMP2.EDGE_LIST
      let _TEMP4 = CONDITIONAL_REVERSE(
        P: _TEMP1, AN_ITEM: sREVERSIBLE_TOPOLOGY(/*SDAI.LIST_UNIQUE<eORIENTED_EDGE>*/_TEMP3))
      let value = SDAI.LIST_UNIQUE<eORIENTED_EDGE>(/*sREVERSIBLE_TOPOLOGY*/_TEMP4)
      return SDAI.UNWRAP( value )
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._path_element.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._orientation.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._path_element.value.isValueEqualOptionally(to: rhs._path_element.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._orientation.value.isValueEqualOptionally(to: rhs._orientation.value, visited: &comppairs)	{
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
      if let comp = self._path_element.value.isValueEqualOptionally(to: rhs._path_element.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._orientation.value.isValueEqualOptionally(to: rhs._orientation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eORIENTED_PATH?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.PATH_ELEMENT, IS: eORIENTED_PATH.self)
      let _TEMP2 =  !_TEMP1
      return _TEMP2
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PATH_ELEMENT: ePATH, ORIENTATION: SDAI.BOOLEAN) {
      self._path_element = PATH_ELEMENT
      self._orientation = ORIENTATION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: ePATH.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.BOOLEAN.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PATH_ELEMENT: p0, ORIENTATION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY oriented_path
    SUBTYPE OF ( path );
      path_element  : path;
      orientation   : BOOLEAN;
    DERIVE
      SELF\path.edge_list  : LIST [1 : ?] OF UNIQUE oriented_edge := conditional_reverse( SELF.orientation, 
                               SELF.path_element.edge_list );
    WHERE
      wr1: ( NOT ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ORIENTED_PATH' IN TYPEOF( SELF.
               path_element ) ) );
  END_ENTITY; -- oriented_path (line:22800 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eORIENTED_PATH : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _oriented_path.self
    }
    public let partialEntity: _oriented_path

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eTOPOLOGICAL_REPRESENTATION_ITEM: eTOPOLOGICAL_REPRESENTATION_ITEM 	// [2]
    public let super_ePATH: ePATH 	// [3]
    public var super_eORIENTED_PATH: eORIENTED_PATH { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eORIENTED_PATH`` )
    public var ORIENTATION: SDAI.BOOLEAN {
      get {
        return SDAI.UNWRAP( self.partialEntity._orientation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._orientation = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eTOPOLOGICAL_REPRESENTATION_ITEM`` )
    public var PERMANENT_AGGREGATE_ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PERMANENT_AGGREGATE_ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eTOPOLOGICAL_REPRESENTATION_ITEM
        let value = tIDENTIFIER(origin.partialEntity._permanent_aggregate_id__getter(SELF: origin))
        updateCache(derivedAttributeName:"PERMANENT_AGGREGATE_ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eORIENTED_PATH`` )
    public var PATH_ELEMENT: ePATH {
      get {
        return SDAI.UNWRAP( self.partialEntity._path_element )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._path_element = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT REDEF(DERIVE)__ attribute
    /// - origin: SELF( ``eORIENTED_PATH`` )
    public var EDGE_LIST: SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/  {
      get {
        if let cached = cachedValue(derivedAttributeName:"EDGE_LIST") {
          return cached.value as! SDAI.LIST_UNIQUE<eORIENTED_EDGE>/*[1:nil]*/ 
        }
        let origin = self
        let value = SDAI.UNWRAP( origin.partialEntity._edge_list__getter(SELF: origin) )
        updateCache(derivedAttributeName:"EDGE_LIST", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eTOPOLOGICAL_REPRESENTATION_ITEM`` )
    public var PERMANENT_ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"PERMANENT_ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eTOPOLOGICAL_REPRESENTATION_ITEM
        let value = tIDENTIFIER(origin.partialEntity._permanent_id__getter(SELF: origin))
        updateCache(derivedAttributeName:"PERMANENT_ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_oriented_path.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eTOPOLOGICAL_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eTOPOLOGICAL_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(ePATH.self) else { return nil }
      self.super_ePATH = super3

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
      result[prefix2 + " .WHERE_wr1"] = _oriented_path.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ORIENTED_PATH", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eTOPOLOGICAL_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePATH.self)
      entityDef.add(supertype: eORIENTED_PATH.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ORIENTATION", keyPath: \eORIENTED_PATH.ORIENTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PERMANENT_AGGREGATE_ID", keyPath: \eORIENTED_PATH.PERMANENT_AGGREGATE_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PATH_ELEMENT", keyPath: \eORIENTED_PATH.PATH_ELEMENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "EDGE_LIST", keyPath: \eORIENTED_PATH.EDGE_LIST, 
        kind: .derivedRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PERMANENT_ID", keyPath: \eORIENTED_PATH.PERMANENT_ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eORIENTED_PATH.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - partial Entity Dynamic Attribute Protocol Conformances
extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF._oriented_path :ePATH__EDGE_LIST__provider {}

/* file: externally_defined_picture_representation_item.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY externally_defined_picture_representation_item
    SUBTYPE OF ( picture_representation_item );
    INVERSE
      source : applied_external_identification_assignment FOR items -- defined in ENTITY: applied_external_identification_assignment;
    WHERE
      wr1: ( NOT ( SELF\representation_item.name IN pre_defined_picture_representation_types ) );
  END_ENTITY; -- externally_defined_picture_representation_item (line:14937 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	binary_representation_item
    ATTR:  binary_value,	TYPE: BINARY -- EXPLICIT


  SUPER- ENTITY(3)	bytes_representation_item
    ATTR:  no_of_bytes,	TYPE: INTEGER -- DERIVED
      := BLENGTH( SELF\binary_representation_item.binary_value ) DIV 8


  SUPER- ENTITY(4)	picture_representation_item
    (no local attributes)

  ENTITY(SELF)	externally_defined_picture_representation_item
    ATTR:  source,	TYPE: applied_external_identification_assignment -- INVERSE
      FOR items;


*/


//MARK: - Partial Entity
  public final class _externally_defined_picture_representation_item : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.self
    }

    //ATTRIBUTES
    /// INVERSE SIMPLE ATTRIBUTE
    /// observing _applied_external_identification_assignment ._items
    internal private(set) weak var _source: eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT?
    /// INVERSE SIMPLE ATTR SUPPORT(ADDER)
    internal func _source__observeAddedReference(in complex: SDAI.ComplexEntity) {
      guard let newSource = complex.entityReference(eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT.self) else { return }
      self._source = newSource
    }
    /// INVERSE SIMPLE ATTR SUPPORT(REMOVER)
    internal func _source__observeRemovedReference(in complex: SDAI.ComplexEntity) {
      guard let _ = complex.entityReference(eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT.self) else { return }
      self._source = nil
    }
    /// INVERSE SIMPLE ATTR SUPPORT(LEAVING REFERENCE OWNER)
    internal func _source__observe(leavingReferencerOwner complex: SDAI.ComplexEntity) {
      guard let _ = complex.entityReference(eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT.self) else { return }
      self._source = nil
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
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
    public static func WHERE_wr1(SELF: eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eREPRESENTATION_ITEM.self)
      let _TEMP2 = _TEMP1?.NAME
      let _TEMP3 = SDAI.aggregate(PRE_DEFINED_PICTURE_REPRESENTATION_TYPES, contains: SDAI.STRING(/*tLABEL*/
        _TEMP2))
      let _TEMP4 =  !_TEMP3
      return _TEMP4
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
  ENTITY externally_defined_picture_representation_item
    SUBTYPE OF ( picture_representation_item );
    INVERSE
      source : applied_external_identification_assignment FOR items -- defined in ENTITY: applied_external_identification_assignment;
    WHERE
      wr1: ( NOT ( SELF\representation_item.name IN pre_defined_picture_representation_types ) );
  END_ENTITY; -- externally_defined_picture_representation_item (line:14937 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _externally_defined_picture_representation_item.self
    }
    public let partialEntity: _externally_defined_picture_representation_item

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eBINARY_REPRESENTATION_ITEM: eBINARY_REPRESENTATION_ITEM 	// [2]
    public let super_eBYTES_REPRESENTATION_ITEM: eBYTES_REPRESENTATION_ITEM 	// [3]
    public let super_ePICTURE_REPRESENTATION_ITEM: ePICTURE_REPRESENTATION_ITEM 	// [4]
    public var super_eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM: eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eBYTES_REPRESENTATION_ITEM`` )
    public var NO_OF_BYTES: SDAI.INTEGER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"NO_OF_BYTES") {
          return cached.value as! SDAI.INTEGER? 
        }
        let origin = super_eBYTES_REPRESENTATION_ITEM
        let value = SDAI.INTEGER(origin.partialEntity._no_of_bytes__getter(SELF: origin))
        updateCache(derivedAttributeName:"NO_OF_BYTES", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eBINARY_REPRESENTATION_ITEM`` )
    public var BINARY_VALUE: SDAI.BINARY {
      get {
        return SDAI.UNWRAP( super_eBINARY_REPRESENTATION_ITEM.partialEntity._binary_value )
      }
      set(newValue) {
        let partial = super_eBINARY_REPRESENTATION_ITEM.partialEntity
        partial._binary_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __INVERSE__ attribute
    /// observing eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT .ITEMS
    /// - origin: SELF( ``eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM`` )
    public var SOURCE: eAPPLIED_EXTERNAL_IDENTIFICATION_ASSIGNMENT?  {
      get {
        return self.partialEntity._source
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
      guard let partial = complexEntity?.partialEntityInstance(_externally_defined_picture_representation_item.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eBINARY_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eBINARY_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eBYTES_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eBYTES_REPRESENTATION_ITEM = super3

      guard let super4 = complexEntity?.entityReference(ePICTURE_REPRESENTATION_ITEM.self) else { return nil }
      self.super_ePICTURE_REPRESENTATION_ITEM = super4

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
      result[prefix2 + " .WHERE_wr1"] = _externally_defined_picture_representation_item.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eBINARY_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eBYTES_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePICTURE_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NO_OF_BYTES", keyPath: \eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.NO_OF_BYTES, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BINARY_VALUE", keyPath: \eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.BINARY_VALUE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SOURCE", keyPath: \eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.SOURCE, 
        kind: .inverse, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eEXTERNALLY_DEFINED_PICTURE_REPRESENTATION_ITEM.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}
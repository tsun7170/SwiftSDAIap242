/* file: procedural_representation_sequence.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY procedural_representation_sequence
    SUBTYPE OF ( representation_item );
      elements          : LIST [1 : ?] OF representation_item;
      suppressed_items  : SET [0 : ?] OF representation_item;
      rationale         : text;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* suppressed_items | ( NOT ( q IN elements ) ) ) ) = 0 );
  END_ENTITY; -- procedural_representation_sequence (line:25841 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	procedural_representation_sequence
    ATTR:  elements,	TYPE: LIST [1 : ?] OF representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: procedural_shape_representation_sequence,	TYPE: LIST [1 : ?] OF shape_representation_item

    ATTR:  suppressed_items,	TYPE: SET [0 : ?] OF representation_item -- EXPLICIT

    ATTR:  rationale,	TYPE: text -- EXPLICIT


  SUB- ENTITY(3)	procedural_solid_representation_sequence
    (no local attributes)

  SUB- ENTITY(4)	procedural_shape_representation_sequence
    REDCR: elements,	TYPE: LIST [1 : ?] OF shape_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: procedural_representation_sequence


*/


//MARK: - Partial Entity
  public final class _procedural_representation_sequence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePROCEDURAL_REPRESENTATION_SEQUENCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _elements: SDAI.LIST<eREPRESENTATION_ITEM>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _suppressed_items: SDAI.SET<eREPRESENTATION_ITEM>/*[0:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _rationale: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._elements.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._suppressed_items.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._rationale.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._elements.value.isValueEqualOptionally(to: rhs._elements.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._suppressed_items.value.isValueEqualOptionally(to: rhs._suppressed_items.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._rationale.value.isValueEqualOptionally(to: rhs._rationale.value, visited: &comppairs)	{
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
      if let comp = self._elements.value.isValueEqualOptionally(to: rhs._elements.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._suppressed_items.value.isValueEqualOptionally(to: rhs._suppressed_items.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._rationale.value.isValueEqualOptionally(to: rhs._rationale.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePROCEDURAL_REPRESENTATION_SEQUENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.SUPPRESSED_ITEMS
        .QUERY{ Q in 

          let _TEMP1 = SDAI.aggregate(SELF.ELEMENTS, contains: Q)
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(ELEMENTS: SDAI.LIST<eREPRESENTATION_ITEM>/*[1:nil]*/ , SUPPRESSED_ITEMS: SDAI.SET<
                eREPRESENTATION_ITEM>/*[0:nil]*/ , RATIONALE: tTEXT) {
      self._elements = ELEMENTS
      self._suppressed_items = SUPPRESSED_ITEMS
      self._rationale = RATIONALE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        eREPRESENTATION_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        eREPRESENTATION_ITEM>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( ELEMENTS: p0, SUPPRESSED_ITEMS: p1, RATIONALE: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY procedural_representation_sequence
    SUBTYPE OF ( representation_item );
      elements          : LIST [1 : ?] OF representation_item;
      suppressed_items  : SET [0 : ?] OF representation_item;
      rationale         : text;
    WHERE
      wr1: ( SIZEOF( QUERY ( q <* suppressed_items | ( NOT ( q IN elements ) ) ) ) = 0 );
  END_ENTITY; -- procedural_representation_sequence (line:25841 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePROCEDURAL_REPRESENTATION_SEQUENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _procedural_representation_sequence.self
    }
    public let partialEntity: _procedural_representation_sequence

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public var super_ePROCEDURAL_REPRESENTATION_SEQUENCE: ePROCEDURAL_REPRESENTATION_SEQUENCE { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_ePROCEDURAL_SOLID_REPRESENTATION_SEQUENCE: ePROCEDURAL_SOLID_REPRESENTATION_SEQUENCE? {	// [3]
      return self.complexEntity.entityReference(ePROCEDURAL_SOLID_REPRESENTATION_SEQUENCE.self)
    }

    public var sub_ePROCEDURAL_SHAPE_REPRESENTATION_SEQUENCE: ePROCEDURAL_SHAPE_REPRESENTATION_SEQUENCE? {	// [4]
      return self.complexEntity.entityReference(ePROCEDURAL_SHAPE_REPRESENTATION_SEQUENCE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROCEDURAL_REPRESENTATION_SEQUENCE`` )
    public var ELEMENTS: SDAI.LIST<eREPRESENTATION_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._elements )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._elements = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROCEDURAL_REPRESENTATION_SEQUENCE`` )
    public var RATIONALE: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._rationale )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._rationale = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePROCEDURAL_REPRESENTATION_SEQUENCE`` )
    public var SUPPRESSED_ITEMS: SDAI.SET<eREPRESENTATION_ITEM>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._suppressed_items )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._suppressed_items = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_procedural_representation_sequence.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

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
      result[prefix2 + " .WHERE_wr1"] = _procedural_representation_sequence.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PROCEDURAL_REPRESENTATION_SEQUENCE", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: ePROCEDURAL_REPRESENTATION_SEQUENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ELEMENTS", keyPath: \ePROCEDURAL_REPRESENTATION_SEQUENCE.ELEMENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RATIONALE", keyPath: \ePROCEDURAL_REPRESENTATION_SEQUENCE.RATIONALE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SUPPRESSED_ITEMS", keyPath: \ePROCEDURAL_REPRESENTATION_SEQUENCE.SUPPRESSED_ITEMS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePROCEDURAL_REPRESENTATION_SEQUENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

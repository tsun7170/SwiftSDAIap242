/* file: pre_defined_point_marker_symbol.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY pre_defined_point_marker_symbol
    SUBTYPE OF ( pre_defined_marker, pre_defined_symbol );
    WHERE
      wr1: ( SELF.name IN [ 'asterisk', 'circle', 'dot', 'plus', 'square', 'triangle', 'x'] );
  END_ENTITY; -- pre_defined_point_marker_symbol (line:25536 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	pre_defined_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	pre_defined_marker
    (no local attributes)

  SUPER- ENTITY(3)	pre_defined_symbol
    (no local attributes)

  ENTITY(SELF)	pre_defined_point_marker_symbol
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _pre_defined_point_marker_symbol : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRE_DEFINED_POINT_MARKER_SYMBOL.self
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
    public static func WHERE_wr1(SELF: ePRE_DEFINED_POINT_MARKER_SYMBOL?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.NAME
      let _TEMP2 = ([SDAI.AIE(SDAI.STRING("asterisk")), 
        SDAI.AIE(SDAI.STRING("circle")), 
        SDAI.AIE(SDAI.STRING("dot")), 
        SDAI.AIE(SDAI.STRING("plus")), 
        SDAI.AIE(SDAI.STRING("square")), 
        SDAI.AIE(SDAI.STRING("triangle")), 
        SDAI.AIE(SDAI.STRING("x"))] as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP3 = SDAI.aggregate(_TEMP2, contains: SDAI.STRING(/*tLABEL*/_TEMP1))
      return _TEMP3
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
  ENTITY pre_defined_point_marker_symbol
    SUBTYPE OF ( pre_defined_marker, pre_defined_symbol );
    WHERE
      wr1: ( SELF.name IN [ 'asterisk', 'circle', 'dot', 'plus', 'square', 'triangle', 'x'] );
  END_ENTITY; -- pre_defined_point_marker_symbol (line:25536 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRE_DEFINED_POINT_MARKER_SYMBOL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _pre_defined_point_marker_symbol.self
    }
    public let partialEntity: _pre_defined_point_marker_symbol

    //MARK: SUPERTYPES
    public let super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM 	// [1]
    public let super_ePRE_DEFINED_MARKER: ePRE_DEFINED_MARKER 	// [2]
    public let super_ePRE_DEFINED_SYMBOL: ePRE_DEFINED_SYMBOL 	// [3]
    public var super_ePRE_DEFINED_POINT_MARKER_SYMBOL: ePRE_DEFINED_POINT_MARKER_SYMBOL { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``ePRE_DEFINED_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_ePRE_DEFINED_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_ePRE_DEFINED_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_pre_defined_point_marker_symbol.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRE_DEFINED_ITEM.self) else { return nil }
      self.super_ePRE_DEFINED_ITEM = super1

      guard let super2 = complexEntity?.entityReference(ePRE_DEFINED_MARKER.self) else { return nil }
      self.super_ePRE_DEFINED_MARKER = super2

      guard let super3 = complexEntity?.entityReference(ePRE_DEFINED_SYMBOL.self) else { return nil }
      self.super_ePRE_DEFINED_SYMBOL = super3

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
      result[prefix2 + " .WHERE_wr1"] = _pre_defined_point_marker_symbol.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRE_DEFINED_POINT_MARKER_SYMBOL", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRE_DEFINED_ITEM.self)
      entityDef.add(supertype: ePRE_DEFINED_MARKER.self)
      entityDef.add(supertype: ePRE_DEFINED_SYMBOL.self)
      entityDef.add(supertype: ePRE_DEFINED_POINT_MARKER_SYMBOL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NAME", keyPath: \ePRE_DEFINED_POINT_MARKER_SYMBOL.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

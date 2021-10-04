/* file: colour_specification.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY colour_specification
    SUBTYPE OF ( colour );
      name  : label;
  END_ENTITY; -- colour_specification (line:9718 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	colour
    (no local attributes)

  ENTITY(SELF)	colour_specification
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUB- ENTITY(3)	externally_defined_colour
    (no local attributes)

  SUB- ENTITY(4)	colour_rgb
    ATTR:  red,	TYPE: REAL -- EXPLICIT

    ATTR:  green,	TYPE: REAL -- EXPLICIT

    ATTR:  blue,	TYPE: REAL -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _colour_specification : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOLOUR_SPECIFICATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
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
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL) {
      self._name = NAME
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY colour_specification
    SUBTYPE OF ( colour );
      name  : label;
  END_ENTITY; -- colour_specification (line:9718 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOLOUR_SPECIFICATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _colour_specification.self
    }
    public let partialEntity: _colour_specification

    //MARK: SUPERTYPES
    public let super_eCOLOUR: eCOLOUR 	// [1]
    public var super_eCOLOUR_SPECIFICATION: eCOLOUR_SPECIFICATION { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eEXTERNALLY_DEFINED_COLOUR: eEXTERNALLY_DEFINED_COLOUR? {	// [3]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_COLOUR.self)
    }

    public var sub_eCOLOUR_RGB: eCOLOUR_RGB? {	// [4]
      return self.complexEntity.entityReference(eCOLOUR_RGB.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOLOUR_RGB`` )
    public var GREEN: SDAI.REAL?  {
      get {
        return sub_eCOLOUR_RGB?.partialEntity._green
      }
      set(newValue) {
        guard let partial = sub_eCOLOUR_RGB?.super_eCOLOUR_RGB.partialEntity else { return }
        partial._green = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOLOUR_RGB`` )
    public var RED: SDAI.REAL?  {
      get {
        return sub_eCOLOUR_RGB?.partialEntity._red
      }
      set(newValue) {
        guard let partial = sub_eCOLOUR_RGB?.super_eCOLOUR_RGB.partialEntity else { return }
        partial._red = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eCOLOUR_SPECIFICATION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOLOUR_RGB`` )
    public var BLUE: SDAI.REAL?  {
      get {
        return sub_eCOLOUR_RGB?.partialEntity._blue
      }
      set(newValue) {
        guard let partial = sub_eCOLOUR_RGB?.super_eCOLOUR_RGB.partialEntity else { return }
        partial._blue = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_colour_specification.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eCOLOUR.self) else { return nil }
      self.super_eCOLOUR = super1

      super.init(complex: complexEntity)
    }

    public required convenience init?<G: SDAIGenericType>(fromGeneric generic: G?) {
      guard let entityRef = generic?.entityReference else { return nil }
      self.init(complex: entityRef.complexEntity)
    }

    public convenience init?<S: SDAISelectType>(_ select: S?) { self.init(possiblyFrom: select) }
    public convenience init?(_ complex: SDAI.ComplexEntity?) { self.init(complex: complex) }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COLOUR_SPECIFICATION", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCOLOUR.self)
      entityDef.add(supertype: eCOLOUR_SPECIFICATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "GREEN", keyPath: \eCOLOUR_SPECIFICATION.GREEN, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RED", keyPath: \eCOLOUR_SPECIFICATION.RED, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOLOUR_SPECIFICATION.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BLUE", keyPath: \eCOLOUR_SPECIFICATION.BLUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

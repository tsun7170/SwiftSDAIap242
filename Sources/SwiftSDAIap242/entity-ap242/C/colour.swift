/* file: colour.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY colour;
  END_ENTITY; -- colour (line:9718 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	colour
    (no local attributes)

  SUB- ENTITY(2)	draughting_pre_defined_colour
    (no local attributes)

  SUB- ENTITY(3)	pre_defined_colour
    (no local attributes)

  SUB- ENTITY(4)	background_colour
    ATTR:  presentation,	TYPE: area_or_view -- EXPLICIT


  SUB- ENTITY(5)	externally_defined_colour
    (no local attributes)

  SUB- ENTITY(6)	colour_rgb
    ATTR:  red,	TYPE: REAL -- EXPLICIT

    ATTR:  green,	TYPE: REAL -- EXPLICIT

    ATTR:  blue,	TYPE: REAL -- EXPLICIT


  SUB- ENTITY(7)	colour_specification
    ATTR:  name,	TYPE: label -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _colour : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOLOUR.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
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
  ENTITY colour;
  END_ENTITY; -- colour (line:9718 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOLOUR : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _colour.self
    }
    public let partialEntity: _colour

    //MARK: SUPERTYPES
    public var super_eCOLOUR: eCOLOUR { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDRAUGHTING_PRE_DEFINED_COLOUR: eDRAUGHTING_PRE_DEFINED_COLOUR? {	// [2]
      return self.complexEntity.entityReference(eDRAUGHTING_PRE_DEFINED_COLOUR.self)
    }

    public var sub_ePRE_DEFINED_COLOUR: ePRE_DEFINED_COLOUR? {	// [3]
      return self.complexEntity.entityReference(ePRE_DEFINED_COLOUR.self)
    }

    public var sub_eBACKGROUND_COLOUR: eBACKGROUND_COLOUR? {	// [4]
      return self.complexEntity.entityReference(eBACKGROUND_COLOUR.self)
    }

    public var sub_eEXTERNALLY_DEFINED_COLOUR: eEXTERNALLY_DEFINED_COLOUR? {	// [5]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_COLOUR.self)
    }

    public var sub_eCOLOUR_RGB: eCOLOUR_RGB? {	// [6]
      return self.complexEntity.entityReference(eCOLOUR_RGB.self)
    }

    public var sub_eCOLOUR_SPECIFICATION: eCOLOUR_SPECIFICATION? {	// [7]
      return self.complexEntity.entityReference(eCOLOUR_SPECIFICATION.self)
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
    /// - origin: SUB( ``eBACKGROUND_COLOUR`` )
    public var PRESENTATION: sAREA_OR_VIEW?  {
      get {
        return sub_eBACKGROUND_COLOUR?.partialEntity._presentation
      }
      set(newValue) {
        guard let partial = sub_eBACKGROUND_COLOUR?.super_eBACKGROUND_COLOUR.partialEntity else { return }
        partial._presentation = SDAI.UNWRAP(newValue)
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
    /// - origin: SUB( ``eCOLOUR_SPECIFICATION`` )
    public var NAME: tLABEL?  {
      get {
        return sub_eCOLOUR_SPECIFICATION?.partialEntity._name
      }
      set(newValue) {
        guard let partial = sub_eCOLOUR_SPECIFICATION?.super_eCOLOUR_SPECIFICATION.partialEntity
          else { return }
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
      guard let partial = complexEntity?.partialEntityInstance(_colour.self) else { return nil }
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
    public convenience init?(_ partial:_colour) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COLOUR", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eCOLOUR.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "GREEN", keyPath: \eCOLOUR.GREEN, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "PRESENTATION", keyPath: \eCOLOUR.PRESENTATION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RED", keyPath: \eCOLOUR.RED, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOLOUR.NAME, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BLUE", keyPath: \eCOLOUR.BLUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

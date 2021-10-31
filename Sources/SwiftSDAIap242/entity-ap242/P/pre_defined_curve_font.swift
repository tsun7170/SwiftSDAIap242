/* file: pre_defined_curve_font.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY pre_defined_curve_font
    SUBTYPE OF ( pre_defined_item );
  END_ENTITY; -- pre_defined_curve_font (line:25477 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	pre_defined_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  ENTITY(SELF)	pre_defined_curve_font
    (no local attributes)

  SUB- ENTITY(3)	draughting_pre_defined_curve_font
    (no local attributes)

  SUB- ENTITY(4)	solid_curve_font
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _pre_defined_curve_font : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePRE_DEFINED_CURVE_FONT.self
    }

    //ATTRIBUTES
    // (no local attributes)

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCURVE_STYLE_FONT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCURVE_FONT_OR_SCALED_CURVE_FONT_SELECT.typeName)) // -> sCURVE_STYLE_FONT_SELECT
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
  ENTITY pre_defined_curve_font
    SUBTYPE OF ( pre_defined_item );
  END_ENTITY; -- pre_defined_curve_font (line:25477 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePRE_DEFINED_CURVE_FONT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _pre_defined_curve_font.self
    }
    public let partialEntity: _pre_defined_curve_font

    //MARK: SUPERTYPES
    public let super_ePRE_DEFINED_ITEM: ePRE_DEFINED_ITEM 	// [1]
    public var super_ePRE_DEFINED_CURVE_FONT: ePRE_DEFINED_CURVE_FONT { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_eDRAUGHTING_PRE_DEFINED_CURVE_FONT: eDRAUGHTING_PRE_DEFINED_CURVE_FONT? {	// [3]
      return self.complexEntity.entityReference(eDRAUGHTING_PRE_DEFINED_CURVE_FONT.self)
    }

    public var sub_eSOLID_CURVE_FONT: eSOLID_CURVE_FONT? {	// [4]
      return self.complexEntity.entityReference(eSOLID_CURVE_FONT.self)
    }


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
      guard let partial = complexEntity?.partialEntityInstance(_pre_defined_curve_font.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(ePRE_DEFINED_ITEM.self) else { return nil }
      self.super_ePRE_DEFINED_ITEM = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "PRE_DEFINED_CURVE_FONT", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: ePRE_DEFINED_ITEM.self)
      entityDef.add(supertype: ePRE_DEFINED_CURVE_FONT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "NAME", keyPath: \ePRE_DEFINED_CURVE_FONT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: non_uniform_zone_definition.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY non_uniform_zone_definition
    SUBTYPE OF ( tolerance_zone_definition );
  END_ENTITY; -- non_uniform_zone_definition (line:22461 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	tolerance_zone_definition
    ATTR:  zone,	TYPE: tolerance_zone -- EXPLICIT

    ATTR:  boundaries,	TYPE: SET [0 : ?] OF shape_aspect -- EXPLICIT


  ENTITY(SELF)	non_uniform_zone_definition
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _non_uniform_zone_definition : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eNON_UNIFORM_ZONE_DEFINITION.self
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
  ENTITY non_uniform_zone_definition
    SUBTYPE OF ( tolerance_zone_definition );
  END_ENTITY; -- non_uniform_zone_definition (line:22461 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eNON_UNIFORM_ZONE_DEFINITION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _non_uniform_zone_definition.self
    }
    public let partialEntity: _non_uniform_zone_definition

    //MARK: SUPERTYPES
    public let super_eTOLERANCE_ZONE_DEFINITION: eTOLERANCE_ZONE_DEFINITION 	// [1]
    public var super_eNON_UNIFORM_ZONE_DEFINITION: eNON_UNIFORM_ZONE_DEFINITION { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTOLERANCE_ZONE_DEFINITION`` )
    public var ZONE: eTOLERANCE_ZONE {
      get {
        return SDAI.UNWRAP( super_eTOLERANCE_ZONE_DEFINITION.partialEntity._zone )
      }
      set(newValue) {
        let partial = super_eTOLERANCE_ZONE_DEFINITION.partialEntity
        partial._zone = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eTOLERANCE_ZONE_DEFINITION`` )
    public var BOUNDARIES: SDAI.SET<eSHAPE_ASPECT>/*[0:nil]*/  {
      get {
        return SDAI.UNWRAP( super_eTOLERANCE_ZONE_DEFINITION.partialEntity._boundaries )
      }
      set(newValue) {
        let partial = super_eTOLERANCE_ZONE_DEFINITION.partialEntity
        partial._boundaries = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_non_uniform_zone_definition.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eTOLERANCE_ZONE_DEFINITION.self) else { return nil }
      self.super_eTOLERANCE_ZONE_DEFINITION = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "NON_UNIFORM_ZONE_DEFINITION", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eTOLERANCE_ZONE_DEFINITION.self)
      entityDef.add(supertype: eNON_UNIFORM_ZONE_DEFINITION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "ZONE", keyPath: \eNON_UNIFORM_ZONE_DEFINITION.ZONE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BOUNDARIES", keyPath: \eNON_UNIFORM_ZONE_DEFINITION.BOUNDARIES, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

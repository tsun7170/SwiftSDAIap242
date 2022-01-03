/* file: surface_style_rendering_with_properties.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY surface_style_rendering_with_properties
    SUBTYPE OF ( surface_style_rendering );
      properties  : SET [1 : 2] OF rendering_properties_select;
    WHERE
      wr1: ( ( HIINDEX( properties ) = 1 ) OR ( TYPEOF( properties[1] ) <> TYPEOF( properties[2] ) ) );
  END_ENTITY; -- surface_style_rendering_with_properties (line:31316 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	surface_style_rendering
    ATTR:  rendering_method,	TYPE: shading_surface_method -- EXPLICIT

    ATTR:  surface_colour,	TYPE: colour -- EXPLICIT


  ENTITY(SELF)	surface_style_rendering_with_properties
    ATTR:  properties,	TYPE: SET [1 : 2] OF rendering_properties_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _surface_style_rendering_with_properties : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSURFACE_STYLE_RENDERING_WITH_PROPERTIES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _properties: SDAI.SET<sRENDERING_PROPERTIES_SELECT>/*[1:2]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._properties.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._properties.value.isValueEqualOptionally(to: rhs._properties.value, visited: &comppairs)	{
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
      if let comp = self._properties.value.isValueEqualOptionally(to: rhs._properties.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSURFACE_STYLE_RENDERING_WITH_PROPERTIES?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.HIINDEX(SELF.PROPERTIES)
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 = SELF.PROPERTIES[1]
      let _TEMP4 = SDAI.TYPEOF(_TEMP3)
      let _TEMP5 = SELF.PROPERTIES[2]
      let _TEMP6 = SDAI.TYPEOF(_TEMP5)
      let _TEMP7 = SDAI.FORCE_OPTIONAL(_TEMP4) .!=. SDAI.FORCE_OPTIONAL(_TEMP6)
      let _TEMP8 = _TEMP2 || _TEMP7
      return _TEMP8
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PROPERTIES: SDAI.SET<sRENDERING_PROPERTIES_SELECT>/*[1:2]*/ ) {
      self._properties = PROPERTIES
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sRENDERING_PROPERTIES_SELECT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PROPERTIES: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY surface_style_rendering_with_properties
    SUBTYPE OF ( surface_style_rendering );
      properties  : SET [1 : 2] OF rendering_properties_select;
    WHERE
      wr1: ( ( HIINDEX( properties ) = 1 ) OR ( TYPEOF( properties[1] ) <> TYPEOF( properties[2] ) ) );
  END_ENTITY; -- surface_style_rendering_with_properties (line:31316 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSURFACE_STYLE_RENDERING_WITH_PROPERTIES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _surface_style_rendering_with_properties.self
    }
    public let partialEntity: _surface_style_rendering_with_properties

    //MARK: SUPERTYPES
    public let super_eSURFACE_STYLE_RENDERING: eSURFACE_STYLE_RENDERING 	// [1]
    public var super_eSURFACE_STYLE_RENDERING_WITH_PROPERTIES: eSURFACE_STYLE_RENDERING_WITH_PROPERTIES { return self } 	// [2]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSURFACE_STYLE_RENDERING_WITH_PROPERTIES`` )
    public var PROPERTIES: SDAI.SET<sRENDERING_PROPERTIES_SELECT>/*[1:2]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._properties )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._properties = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSURFACE_STYLE_RENDERING`` )
    public var RENDERING_METHOD: nSHADING_SURFACE_METHOD {
      get {
        return SDAI.UNWRAP( super_eSURFACE_STYLE_RENDERING.partialEntity._rendering_method )
      }
      set(newValue) {
        let partial = super_eSURFACE_STYLE_RENDERING.partialEntity
        partial._rendering_method = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSURFACE_STYLE_RENDERING`` )
    public var SURFACE_COLOUR: eCOLOUR {
      get {
        return SDAI.UNWRAP( super_eSURFACE_STYLE_RENDERING.partialEntity._surface_colour )
      }
      set(newValue) {
        let partial = super_eSURFACE_STYLE_RENDERING.partialEntity
        partial._surface_colour = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_surface_style_rendering_with_properties.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSURFACE_STYLE_RENDERING.self) else { return nil }
      self.super_eSURFACE_STYLE_RENDERING = super1

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
      result[prefix2 + " .WHERE_wr1"] = _surface_style_rendering_with_properties.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SURFACE_STYLE_RENDERING_WITH_PROPERTIES", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSURFACE_STYLE_RENDERING.self)
      entityDef.add(supertype: eSURFACE_STYLE_RENDERING_WITH_PROPERTIES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PROPERTIES", keyPath: \eSURFACE_STYLE_RENDERING_WITH_PROPERTIES.PROPERTIES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RENDERING_METHOD", keyPath: \eSURFACE_STYLE_RENDERING_WITH_PROPERTIES.RENDERING_METHOD, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SURFACE_COLOUR", keyPath: \eSURFACE_STYLE_RENDERING_WITH_PROPERTIES.SURFACE_COLOUR, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

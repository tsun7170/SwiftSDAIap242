/* file: imported_curve_function.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY imported_curve_function
    SUBTYPE OF ( maths_function, generic_literal );
      geometry           : curve;
      parametric_domain  : tuple_space;
    WHERE
      wr1: expression_is_constant( parametric_domain );
  END_ENTITY; -- imported_curve_function (line:17920 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	maths_function
    ATTR:  domain,	TYPE: tuple_space -- DERIVED
      := derive_function_domain( SELF )

    ATTR:  range,	TYPE: tuple_space -- DERIVED
      := derive_function_range( SELF )


  SUPER- ENTITY(3)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(4)	generic_literal
    (no local attributes)

  ENTITY(SELF)	imported_curve_function
    ATTR:  geometry,	TYPE: curve -- EXPLICIT

    ATTR:  parametric_domain,	TYPE: tuple_space -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _imported_curve_function : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eIMPORTED_CURVE_FUNCTION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _geometry: eCURVE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _parametric_domain: sTUPLE_SPACE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._geometry.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._parametric_domain.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._geometry.value.isValueEqualOptionally(to: rhs._geometry.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._parametric_domain.value.isValueEqualOptionally(to: rhs._parametric_domain.value, visited: &comppairs)	{
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
      if let comp = self._geometry.value.isValueEqualOptionally(to: rhs._geometry.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._parametric_domain.value.isValueEqualOptionally(to: rhs._parametric_domain.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eIMPORTED_CURVE_FUNCTION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = EXPRESSION_IS_CONSTANT(eGENERIC_EXPRESSION(/*sTUPLE_SPACE*/SELF.PARAMETRIC_DOMAIN))
      return SDAI.LOGICAL(_TEMP1)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(GEOMETRY: eCURVE, PARAMETRIC_DOMAIN: sTUPLE_SPACE) {
      self._geometry = GEOMETRY
      self._parametric_domain = PARAMETRIC_DOMAIN
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eCURVE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: sTUPLE_SPACE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( GEOMETRY: p0, PARAMETRIC_DOMAIN: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY imported_curve_function
    SUBTYPE OF ( maths_function, generic_literal );
      geometry           : curve;
      parametric_domain  : tuple_space;
    WHERE
      wr1: expression_is_constant( parametric_domain );
  END_ENTITY; -- imported_curve_function (line:17920 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eIMPORTED_CURVE_FUNCTION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _imported_curve_function.self
    }
    public let partialEntity: _imported_curve_function

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_FUNCTION: eMATHS_FUNCTION 	// [2]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [3]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [4]
    public var super_eIMPORTED_CURVE_FUNCTION: eIMPORTED_CURVE_FUNCTION { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eIMPORTED_CURVE_FUNCTION`` )
    public var GEOMETRY: eCURVE {
      get {
        return SDAI.UNWRAP( self.partialEntity._geometry )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._geometry = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eIMPORTED_CURVE_FUNCTION`` )
    public var PARAMETRIC_DOMAIN: sTUPLE_SPACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._parametric_domain )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._parametric_domain = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eMATHS_FUNCTION`` )
    public var DOMAIN: sTUPLE_SPACE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DOMAIN") {
          return cached.value as! sTUPLE_SPACE? 
        }
        let origin = super_eMATHS_FUNCTION
        let value = sTUPLE_SPACE(origin.partialEntity._domain__getter(SELF: origin))
        updateCache(derivedAttributeName:"DOMAIN", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eMATHS_FUNCTION`` )
    public var RANGE: sTUPLE_SPACE?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"RANGE") {
          return cached.value as! sTUPLE_SPACE? 
        }
        let origin = super_eMATHS_FUNCTION
        let value = sTUPLE_SPACE(origin.partialEntity._range__getter(SELF: origin))
        updateCache(derivedAttributeName:"RANGE", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_imported_curve_function.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_FUNCTION.self) else { return nil }
      self.super_eMATHS_FUNCTION = super2

      guard let super3 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super3

      guard let super4 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super4

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
      result[prefix2 + " .WHERE_wr1"] = _imported_curve_function.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "IMPORTED_CURVE_FUNCTION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_FUNCTION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eIMPORTED_CURVE_FUNCTION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "GEOMETRY", keyPath: \eIMPORTED_CURVE_FUNCTION.GEOMETRY, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETRIC_DOMAIN", keyPath: \eIMPORTED_CURVE_FUNCTION.PARAMETRIC_DOMAIN, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DOMAIN", keyPath: \eIMPORTED_CURVE_FUNCTION.DOMAIN, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RANGE", keyPath: \eIMPORTED_CURVE_FUNCTION.RANGE, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

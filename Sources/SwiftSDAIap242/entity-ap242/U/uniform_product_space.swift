/* file: uniform_product_space.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY uniform_product_space
    SUBTYPE OF ( maths_space, generic_literal );
      base      : maths_space;
      exponent  : positive_integer;
    WHERE
      wr1: expression_is_constant( base );
      wr2: no_cyclic_space_reference( SELF, [] );
      wr3: ( base <> the_empty_space );
  END_ENTITY; -- uniform_product_space (line:33272 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	maths_space
    (no local attributes)

  SUPER- ENTITY(3)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(4)	generic_literal
    (no local attributes)

  ENTITY(SELF)	uniform_product_space
    ATTR:  base,	TYPE: maths_space -- EXPLICIT

    ATTR:  exponent,	TYPE: positive_integer -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _uniform_product_space : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUNIFORM_PRODUCT_SPACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _base: eMATHS_SPACE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _exponent: tPOSITIVE_INTEGER // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sPRODUCT_SPACE.typeName)) // -> Self
      members.insert(SDAI.STRING(sTUPLE_SPACE.typeName)) // -> sPRODUCT_SPACE
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._base.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._exponent.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._base.value.isValueEqualOptionally(to: rhs._base.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._exponent.value.isValueEqualOptionally(to: rhs._exponent.value, visited: &comppairs)	{
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
      if let comp = self._base.value.isValueEqualOptionally(to: rhs._base.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._exponent.value.isValueEqualOptionally(to: rhs._exponent.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eUNIFORM_PRODUCT_SPACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = EXPRESSION_IS_CONSTANT(eGENERIC_EXPRESSION(/*eMATHS_SPACE*/SELF.BASE))
      return SDAI.LOGICAL(_TEMP1)
    }
    public static func WHERE_wr2(SELF: eUNIFORM_PRODUCT_SPACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SET<eMATHS_SPACE>(SDAI.EMPLY_AGGREGATE)
      let _TEMP2 = NO_CYCLIC_SPACE_REFERENCE(
        SPC: eMATHS_SPACE(/*eUNIFORM_PRODUCT_SPACE*/SELF), 
        REFS: _TEMP1)
      return SDAI.LOGICAL(_TEMP2)
    }
    public static func WHERE_wr3(SELF: eUNIFORM_PRODUCT_SPACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.FORCE_OPTIONAL(SELF.BASE) .!=. SDAI.FORCE_OPTIONAL(THE_EMPTY_SPACE)
      return _TEMP1
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(BASE: eMATHS_SPACE, EXPONENT: tPOSITIVE_INTEGER) {
      self._base = BASE
      self._exponent = EXPONENT
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eMATHS_SPACE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tPOSITIVE_INTEGER.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( BASE: p0, EXPONENT: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY uniform_product_space
    SUBTYPE OF ( maths_space, generic_literal );
      base      : maths_space;
      exponent  : positive_integer;
    WHERE
      wr1: expression_is_constant( base );
      wr2: no_cyclic_space_reference( SELF, [] );
      wr3: ( base <> the_empty_space );
  END_ENTITY; -- uniform_product_space (line:33272 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUNIFORM_PRODUCT_SPACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _uniform_product_space.self
    }
    public let partialEntity: _uniform_product_space

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_SPACE: eMATHS_SPACE 	// [2]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [3]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [4]
    public var super_eUNIFORM_PRODUCT_SPACE: eUNIFORM_PRODUCT_SPACE { return self } 	// [5]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eUNIFORM_PRODUCT_SPACE`` )
    public var EXPONENT: tPOSITIVE_INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._exponent )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._exponent = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eUNIFORM_PRODUCT_SPACE`` )
    public var BASE: eMATHS_SPACE {
      get {
        return SDAI.UNWRAP( self.partialEntity._base )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._base = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_uniform_product_space.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eMATHS_SPACE.self) else { return nil }
      self.super_eMATHS_SPACE = super2

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
      result[prefix2 + " .WHERE_wr1"] = _uniform_product_space.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _uniform_product_space.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _uniform_product_space.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "UNIFORM_PRODUCT_SPACE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_SPACE.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eUNIFORM_PRODUCT_SPACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "EXPONENT", keyPath: \eUNIFORM_PRODUCT_SPACE.EXPONENT, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "BASE", keyPath: \eUNIFORM_PRODUCT_SPACE.BASE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

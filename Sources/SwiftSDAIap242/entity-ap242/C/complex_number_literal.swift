/* file: complex_number_literal.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY complex_number_literal
    SUBTYPE OF ( generic_literal );
      real_part  : REAL;
      imag_part  : REAL;
  END_ENTITY; -- complex_number_literal (line:9811 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(3)	generic_literal
    (no local attributes)

  ENTITY(SELF)	complex_number_literal
    ATTR:  real_part,	TYPE: REAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: complex_number_literal_polar,	TYPE: REAL	(as DERIVED)

    ATTR:  imag_part,	TYPE: REAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: complex_number_literal_polar,	TYPE: REAL	(as DERIVED)


  SUB- ENTITY(5)	complex_number_literal_polar
    ATTR:  modulus,	TYPE: REAL -- EXPLICIT

    ATTR:  argument,	TYPE: REAL -- EXPLICIT

    REDCR: real_part,	TYPE: REAL -- DERIVED (DYNAMIC)
      := modulus * COS( argument )
      -- OVERRIDING ENTITY: complex_number_literal

    REDCR: imag_part,	TYPE: REAL -- DERIVED (DYNAMIC)
      := modulus * SIN( argument )
      -- OVERRIDING ENTITY: complex_number_literal


*/


//MARK: - Partial Entity
  public final class _complex_number_literal : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOMPLEX_NUMBER_LITERAL.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _real_part: SDAI.REAL?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _real_part__provider(complex: SDAI.ComplexEntity) -> eCOMPLEX_NUMBER_LITERAL__REAL_PART__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_complex_number_literal_polar.typeIdentity
        ])
      return resolved as? eCOMPLEX_NUMBER_LITERAL__REAL_PART__provider
    }

    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _imag_part: SDAI.REAL?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _imag_part__provider(complex: SDAI.ComplexEntity) -> eCOMPLEX_NUMBER_LITERAL__IMAG_PART__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_complex_number_literal_polar.typeIdentity
        ])
      return resolved as? eCOMPLEX_NUMBER_LITERAL__IMAG_PART__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_complex_number_literal.self) else { return }

      if pe._real_part == nil, self._real_part__provider(complex: partialComplex) == nil, 
        let base__real_part__provider = self._real_part__provider(complex: baseComplex) {
        pe._real_part = base__real_part__provider._real_part__getter(complex: baseComplex)
      }

      if pe._imag_part == nil, self._imag_part__provider(complex: partialComplex) == nil, 
        let base__imag_part__provider = self._imag_part__provider(complex: baseComplex) {
        pe._imag_part = base__imag_part__provider._imag_part__getter(complex: baseComplex)
      }
    }
    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._real_part?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._imag_part?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._real_part?.value.isValueEqualOptionally(to: rhs._real_part?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._imag_part?.value.isValueEqualOptionally(to: rhs._imag_part?.value, visited: &comppairs)	{
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
      if let comp = self._real_part?.value.isValueEqualOptionally(to: rhs._real_part?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._imag_part?.value.isValueEqualOptionally(to: rhs._imag_part?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REAL_PART: SDAI.REAL? , IMAG_PART: SDAI.REAL? ) {
      self._real_part = REAL_PART
      self._imag_part = IMAG_PART
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOmittableParameter(as: SDAI.REAL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOmittableParameter(as: SDAI.REAL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REAL_PART: p0, IMAG_PART: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY complex_number_literal
    SUBTYPE OF ( generic_literal );
      real_part  : REAL;
      imag_part  : REAL;
  END_ENTITY; -- complex_number_literal (line:9811 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOMPLEX_NUMBER_LITERAL : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _complex_number_literal.self
    }
    public let partialEntity: _complex_number_literal

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [2]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [3]
    public var super_eCOMPLEX_NUMBER_LITERAL: eCOMPLEX_NUMBER_LITERAL { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eCOMPLEX_NUMBER_LITERAL_POLAR: eCOMPLEX_NUMBER_LITERAL_POLAR? {	// [5]
      return self.complexEntity.entityReference(eCOMPLEX_NUMBER_LITERAL_POLAR.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOMPLEX_NUMBER_LITERAL_POLAR`` )
    public var MODULUS: SDAI.REAL?  {
      get {
        return sub_eCOMPLEX_NUMBER_LITERAL_POLAR?.partialEntity._modulus
      }
      set(newValue) {
        guard let partial = sub_eCOMPLEX_NUMBER_LITERAL_POLAR?.super_eCOMPLEX_NUMBER_LITERAL_POLAR
          .partialEntity else { return }
        partial._modulus = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOMPLEX_NUMBER_LITERAL_POLAR`` )
    public var ARGUMENT: SDAI.REAL?  {
      get {
        return sub_eCOMPLEX_NUMBER_LITERAL_POLAR?.partialEntity._argument
      }
      set(newValue) {
        guard let partial = sub_eCOMPLEX_NUMBER_LITERAL_POLAR?.super_eCOMPLEX_NUMBER_LITERAL_POLAR
          .partialEntity else { return }
        partial._argument = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eCOMPLEX_NUMBER_LITERAL`` )
    public var IMAG_PART: SDAI.REAL {
      get {
        if let resolved = _complex_number_literal._imag_part__provider(complex: self.complexEntity) {
          let value = resolved._imag_part__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._imag_part )
        }
      }
      set(newValue) {
        if let _ = _complex_number_literal._imag_part__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._imag_part = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eCOMPLEX_NUMBER_LITERAL`` )
    public var REAL_PART: SDAI.REAL {
      get {
        if let resolved = _complex_number_literal._real_part__provider(complex: self.complexEntity) {
          let value = resolved._real_part__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._real_part )
        }
      }
      set(newValue) {
        if let _ = _complex_number_literal._real_part__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._real_part = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_complex_number_literal.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eGENERIC_LITERAL.self) else { return nil }
      self.super_eGENERIC_LITERAL = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COMPLEX_NUMBER_LITERAL", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eCOMPLEX_NUMBER_LITERAL.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MODULUS", keyPath: \eCOMPLEX_NUMBER_LITERAL.MODULUS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ARGUMENT", keyPath: \eCOMPLEX_NUMBER_LITERAL.ARGUMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "IMAG_PART", keyPath: \eCOMPLEX_NUMBER_LITERAL.IMAG_PART, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "REAL_PART", keyPath: \eCOMPLEX_NUMBER_LITERAL.REAL_PART, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eCOMPLEX_NUMBER_LITERAL__REAL_PART__provider {
  func _real_part__getter(complex: SDAI.ComplexEntity) -> SDAI.REAL
}
internal protocol eCOMPLEX_NUMBER_LITERAL__IMAG_PART__provider {
  func _imag_part__getter(complex: SDAI.ComplexEntity) -> SDAI.REAL
}

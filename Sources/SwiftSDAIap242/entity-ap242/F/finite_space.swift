/* file: finite_space.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY finite_space
    SUBTYPE OF ( maths_space, generic_literal );
      members  : SET OF maths_value;
    WHERE
      wr1: VALUE_UNIQUE( members );
      wr2: ( SIZEOF( QUERY ( expr <* QUERY ( member <* members | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERIC_EXPRESSION'  IN TYPEOF( member ) ) )
               | ( NOT expression_is_constant( expr ) ) ) ) = 0 );
      wr3: no_cyclic_space_reference( SELF, [] );
  END_ENTITY; -- finite_space (line:15638 file:ap242ed2_mim_lf_v1.101.TY.exp)

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

  ENTITY(SELF)	finite_space
    ATTR:  members,	TYPE: SET OF maths_value -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: generated_finite_numeric_space,	TYPE: SET [2 : ?] OF maths_number	(as DERIVED)


  SUB- ENTITY(6)	generated_finite_numeric_space
    ATTR:  start_value,	TYPE: maths_number -- EXPLICIT

    ATTR:  increment_value,	TYPE: maths_number -- EXPLICIT

    ATTR:  increment_number,	TYPE: positive_integer -- EXPLICIT

    REDCR: members,	TYPE: SET [2 : ?] OF maths_number -- DERIVED (DYNAMIC)
      := make_numeric_set( start_value, increment_value, increment_number )
      -- OVERRIDING ENTITY: finite_space


*/


//MARK: - Partial Entity
  public final class _finite_space : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eFINITE_SPACE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _members: SDAI.SET<sMATHS_VALUE>?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _members__provider(complex: SDAI.ComplexEntity) -> eFINITE_SPACE__MEMBERS__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_generated_finite_numeric_space.typeIdentity
        ])
      return resolved as? eFINITE_SPACE__MEMBERS__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_finite_space.self) else { return }

      if pe._members == nil, self._members__provider(complex: partialComplex) == nil, 
        let base__members__provider = self._members__provider(complex: baseComplex) {
        pe._members = base__members__provider._members__getter(complex: baseComplex)
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
      self._members?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._members?.value.isValueEqualOptionally(to: rhs._members?.value, visited: &comppairs)	{
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
      if let comp = self._members?.value.isValueEqualOptionally(to: rhs._members?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eFINITE_SPACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.VALUE_UNIQUE(SELF.MEMBERS)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eFINITE_SPACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.MEMBERS.QUERY{ MEMBER in 

          let _TEMP1 = SDAI.TYPEOF(MEMBER, IS: eGENERIC_EXPRESSION.self)
          return _TEMP1 }
      let _TEMP2 = _TEMP1.QUERY{ EXPR in 

          let _TEMP1 = EXPRESSION_IS_CONSTANT(eGENERIC_EXPRESSION(/*sMATHS_VALUE*/EXPR))
          let _TEMP2 =  !_TEMP1
          return _TEMP2 }
      let _TEMP3 = SDAI.SIZEOF(_TEMP2)
      let _TEMP4 = _TEMP3 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      return _TEMP4
    }
    public static func WHERE_wr3(SELF: eFINITE_SPACE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SET<eMATHS_SPACE>(SDAI.EMPLY_AGGREGATE)
      let _TEMP2 = NO_CYCLIC_SPACE_REFERENCE(
        SPC: eMATHS_SPACE(/*eFINITE_SPACE*/SELF), 
        REFS: _TEMP1)
      return SDAI.LOGICAL(/*SDAI.BOOLEAN*/_TEMP2)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MEMBERS: SDAI.SET<sMATHS_VALUE>? ) {
      self._members = MEMBERS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverOmittableParameter(as: SDAI.SET<sMATHS_VALUE>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MEMBERS: p0 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY finite_space
    SUBTYPE OF ( maths_space, generic_literal );
      members  : SET OF maths_value;
    WHERE
      wr1: VALUE_UNIQUE( members );
      wr2: ( SIZEOF( QUERY ( expr <* QUERY ( member <* members | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERIC_EXPRESSION'  IN TYPEOF( member ) ) )
               | ( NOT expression_is_constant( expr ) ) ) ) = 0 );
      wr3: no_cyclic_space_reference( SELF, [] );
  END_ENTITY; -- finite_space (line:15638 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eFINITE_SPACE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _finite_space.self
    }
    public let partialEntity: _finite_space

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eMATHS_SPACE: eMATHS_SPACE 	// [2]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [3]
    public let super_eGENERIC_LITERAL: eGENERIC_LITERAL 	// [4]
    public var super_eFINITE_SPACE: eFINITE_SPACE { return self } 	// [5]

    //MARK: SUBTYPES
    public var sub_eGENERATED_FINITE_NUMERIC_SPACE: eGENERATED_FINITE_NUMERIC_SPACE? {	// [6]
      return self.complexEntity.entityReference(eGENERATED_FINITE_NUMERIC_SPACE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGENERATED_FINITE_NUMERIC_SPACE`` )
    public var START_VALUE: tMATHS_NUMBER?  {
      get {
        return sub_eGENERATED_FINITE_NUMERIC_SPACE?.partialEntity._start_value
      }
      set(newValue) {
        guard let partial = sub_eGENERATED_FINITE_NUMERIC_SPACE?.super_eGENERATED_FINITE_NUMERIC_SPACE
          .partialEntity else { return }
        partial._start_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eFINITE_SPACE`` )
    public var MEMBERS: SDAI.SET<sMATHS_VALUE> {
      get {
        if let resolved = _finite_space._members__provider(complex: self.complexEntity) {
          let value = resolved._members__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._members )
        }
      }
      set(newValue) {
        if let _ = _finite_space._members__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._members = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGENERATED_FINITE_NUMERIC_SPACE`` )
    public var INCREMENT_NUMBER: tPOSITIVE_INTEGER?  {
      get {
        return sub_eGENERATED_FINITE_NUMERIC_SPACE?.partialEntity._increment_number
      }
      set(newValue) {
        guard let partial = sub_eGENERATED_FINITE_NUMERIC_SPACE?.super_eGENERATED_FINITE_NUMERIC_SPACE
          .partialEntity else { return }
        partial._increment_number = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eGENERATED_FINITE_NUMERIC_SPACE`` )
    public var INCREMENT_VALUE: tMATHS_NUMBER?  {
      get {
        return sub_eGENERATED_FINITE_NUMERIC_SPACE?.partialEntity._increment_value
      }
      set(newValue) {
        guard let partial = sub_eGENERATED_FINITE_NUMERIC_SPACE?.super_eGENERATED_FINITE_NUMERIC_SPACE
          .partialEntity else { return }
        partial._increment_value = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_finite_space.self) else { return nil }
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
      result[prefix2 + " .WHERE_wr1"] = _finite_space.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _finite_space.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _finite_space.WHERE_wr3(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "FINITE_SPACE", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eMATHS_SPACE.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_LITERAL.self)
      entityDef.add(supertype: eFINITE_SPACE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "START_VALUE", keyPath: \eFINITE_SPACE.START_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEMBERS", keyPath: \eFINITE_SPACE.MEMBERS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INCREMENT_NUMBER", keyPath: \eFINITE_SPACE.INCREMENT_NUMBER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "INCREMENT_VALUE", keyPath: \eFINITE_SPACE.INCREMENT_VALUE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eFINITE_SPACE__MEMBERS__provider {
  func _members__getter(complex: SDAI.ComplexEntity) -> SDAI.SET<
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.sMATHS_VALUE>
}

/* file: variable.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY variable
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            numeric_variable, 
            boolean_variable, 
            string_variable ) )
    SUBTYPE OF ( generic_variable );
  END_ENTITY; -- variable (line:33415 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	generic_expression
    (no local attributes)

  SUPER- ENTITY(2)	simple_generic_expression
    (no local attributes)

  SUPER- ENTITY(3)	generic_variable
    ATTR:  interpretation,	TYPE: environment -- INVERSE
      FOR syntactic_representation;


  ENTITY(SELF)	variable
    (no local attributes)

  SUB- ENTITY(5)	maths_real_variable
    (no local attributes)

  SUB- ENTITY(6)	real_numeric_variable
    (no local attributes)

  SUB- ENTITY(7)	maths_integer_variable
    (no local attributes)

  SUB- ENTITY(8)	int_numeric_variable
    (no local attributes)

  SUB- ENTITY(9)	numeric_variable
    (no local attributes)

  SUB- ENTITY(10)	maths_boolean_variable
    (no local attributes)

  SUB- ENTITY(11)	boolean_variable
    (no local attributes)

  SUB- ENTITY(12)	maths_string_variable
    (no local attributes)

  SUB- ENTITY(13)	string_variable
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _variable : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eVARIABLE.self
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
  ENTITY variable
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            numeric_variable, 
            boolean_variable, 
            string_variable ) )
    SUBTYPE OF ( generic_variable );
  END_ENTITY; -- variable (line:33415 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eVARIABLE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _variable.self
    }
    public let partialEntity: _variable

    //MARK: SUPERTYPES
    public let super_eGENERIC_EXPRESSION: eGENERIC_EXPRESSION 	// [1]
    public let super_eSIMPLE_GENERIC_EXPRESSION: eSIMPLE_GENERIC_EXPRESSION 	// [2]
    public let super_eGENERIC_VARIABLE: eGENERIC_VARIABLE 	// [3]
    public var super_eVARIABLE: eVARIABLE { return self } 	// [4]

    //MARK: SUBTYPES
    public var sub_eMATHS_REAL_VARIABLE: eMATHS_REAL_VARIABLE? {	// [5]
      return self.complexEntity.entityReference(eMATHS_REAL_VARIABLE.self)
    }

    public var sub_eREAL_NUMERIC_VARIABLE: eREAL_NUMERIC_VARIABLE? {	// [6]
      return self.complexEntity.entityReference(eREAL_NUMERIC_VARIABLE.self)
    }

    public var sub_eMATHS_INTEGER_VARIABLE: eMATHS_INTEGER_VARIABLE? {	// [7]
      return self.complexEntity.entityReference(eMATHS_INTEGER_VARIABLE.self)
    }

    public var sub_eINT_NUMERIC_VARIABLE: eINT_NUMERIC_VARIABLE? {	// [8]
      return self.complexEntity.entityReference(eINT_NUMERIC_VARIABLE.self)
    }

    public var sub_eNUMERIC_VARIABLE: eNUMERIC_VARIABLE? {	// [9]
      return self.complexEntity.entityReference(eNUMERIC_VARIABLE.self)
    }

    public var sub_eMATHS_BOOLEAN_VARIABLE: eMATHS_BOOLEAN_VARIABLE? {	// [10]
      return self.complexEntity.entityReference(eMATHS_BOOLEAN_VARIABLE.self)
    }

    public var sub_eBOOLEAN_VARIABLE: eBOOLEAN_VARIABLE? {	// [11]
      return self.complexEntity.entityReference(eBOOLEAN_VARIABLE.self)
    }

    public var sub_eMATHS_STRING_VARIABLE: eMATHS_STRING_VARIABLE? {	// [12]
      return self.complexEntity.entityReference(eMATHS_STRING_VARIABLE.self)
    }

    public var sub_eSTRING_VARIABLE: eSTRING_VARIABLE? {	// [13]
      return self.complexEntity.entityReference(eSTRING_VARIABLE.self)
    }


    //MARK: ATTRIBUTES
    /// __INVERSE__ attribute
    /// observing eENVIRONMENT .SYNTACTIC_REPRESENTATION
    /// - origin: SUPER( ``eGENERIC_VARIABLE`` )
    public var INTERPRETATION: eENVIRONMENT?  {
      get {
        return super_eGENERIC_VARIABLE.partialEntity._interpretation
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_variable.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eGENERIC_EXPRESSION.self) else { return nil }
      self.super_eGENERIC_EXPRESSION = super1

      guard let super2 = complexEntity?.entityReference(eSIMPLE_GENERIC_EXPRESSION.self) else { return nil }
      self.super_eSIMPLE_GENERIC_EXPRESSION = super2

      guard let super3 = complexEntity?.entityReference(eGENERIC_VARIABLE.self) else { return nil }
      self.super_eGENERIC_VARIABLE = super3

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "VARIABLE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERIC_EXPRESSION.self)
      entityDef.add(supertype: eSIMPLE_GENERIC_EXPRESSION.self)
      entityDef.add(supertype: eGENERIC_VARIABLE.self)
      entityDef.add(supertype: eVARIABLE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "INTERPRETATION", keyPath: \eVARIABLE.INTERPRETATION, 
        kind: .inverse, source: .superEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

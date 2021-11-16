/* file: uncertainty_qualifier.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY uncertainty_qualifier
    SUPERTYPE OF ( 
        ONEOF ( 
            standard_uncertainty, 
            qualitative_uncertainty ) );
      measure_name  : label;
      description   : text;
  END_ENTITY; -- uncertainty_qualifier (line:33238 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	uncertainty_qualifier
    ATTR:  measure_name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: text -- EXPLICIT


  SUB- ENTITY(2)	expanded_uncertainty
    ATTR:  coverage_factor,	TYPE: REAL -- EXPLICIT


  SUB- ENTITY(3)	standard_uncertainty
    ATTR:  uncertainty_value,	TYPE: REAL -- EXPLICIT	(AMBIGUOUS/MASKED)


  SUB- ENTITY(4)	qualitative_uncertainty
    ATTR:  uncertainty_value,	TYPE: text -- EXPLICIT	(AMBIGUOUS/MASKED)


*/


//MARK: - Partial Entity
  public final class _uncertainty_qualifier : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eUNCERTAINTY_QUALIFIER.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _measure_name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEXTERNAL_IDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sVALUE_QUALIFIER.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._measure_name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._measure_name.value.isValueEqualOptionally(to: rhs._measure_name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs)	{
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
      if let comp = self._measure_name.value.isValueEqualOptionally(to: rhs._measure_name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description.value.isValueEqualOptionally(to: rhs._description.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(MEASURE_NAME: tLABEL, DESCRIPTION: tTEXT) {
      self._measure_name = MEASURE_NAME
      self._description = DESCRIPTION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( MEASURE_NAME: p0, DESCRIPTION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY uncertainty_qualifier
    SUPERTYPE OF ( 
        ONEOF ( 
            standard_uncertainty, 
            qualitative_uncertainty ) );
      measure_name  : label;
      description   : text;
  END_ENTITY; -- uncertainty_qualifier (line:33238 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eUNCERTAINTY_QUALIFIER : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _uncertainty_qualifier.self
    }
    public let partialEntity: _uncertainty_qualifier

    //MARK: SUPERTYPES
    public var super_eUNCERTAINTY_QUALIFIER: eUNCERTAINTY_QUALIFIER { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eEXPANDED_UNCERTAINTY: eEXPANDED_UNCERTAINTY? {	// [2]
      return self.complexEntity.entityReference(eEXPANDED_UNCERTAINTY.self)
    }

    public var sub_eSTANDARD_UNCERTAINTY: eSTANDARD_UNCERTAINTY? {	// [3]
      return self.complexEntity.entityReference(eSTANDARD_UNCERTAINTY.self)
    }

    public var sub_eQUALITATIVE_UNCERTAINTY: eQUALITATIVE_UNCERTAINTY? {	// [4]
      return self.complexEntity.entityReference(eQUALITATIVE_UNCERTAINTY.self)
    }


    //MARK: ATTRIBUTES
    // UNCERTAINTY_VALUE: (2 AMBIGUOUS REFs)

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eUNCERTAINTY_QUALIFIER`` )
    public var DESCRIPTION: tTEXT {
      get {
        return SDAI.UNWRAP( self.partialEntity._description )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eEXPANDED_UNCERTAINTY`` )
    public var COVERAGE_FACTOR: SDAI.REAL?  {
      get {
        return sub_eEXPANDED_UNCERTAINTY?.partialEntity._coverage_factor
      }
      set(newValue) {
        guard let partial = sub_eEXPANDED_UNCERTAINTY?.super_eEXPANDED_UNCERTAINTY.partialEntity
          else { return }
        partial._coverage_factor = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eUNCERTAINTY_QUALIFIER`` )
    public var MEASURE_NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._measure_name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._measure_name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_uncertainty_qualifier.self) else { return nil }
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
    public convenience init?(_ partial:_uncertainty_qualifier) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "UNCERTAINTY_QUALIFIER", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eUNCERTAINTY_QUALIFIER.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eUNCERTAINTY_QUALIFIER.DESCRIPTION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "COVERAGE_FACTOR", keyPath: \eUNCERTAINTY_QUALIFIER.COVERAGE_FACTOR, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MEASURE_NAME", keyPath: \eUNCERTAINTY_QUALIFIER.MEASURE_NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: extreme_instance.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY extreme_instance;
      locations_of_extreme_value  : SET [1 : ?] OF location_of_extreme_value_select;
      measured_value              : measured_value_select;
  END_ENTITY; -- extreme_instance (line:14989 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	extreme_instance
    ATTR:  locations_of_extreme_value,	TYPE: SET [1 : ?] OF location_of_extreme_value_select -- EXPLICIT

    ATTR:  measured_value,	TYPE: measured_value_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _extreme_instance : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eEXTREME_INSTANCE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _locations_of_extreme_value: SDAI.SET<sLOCATION_OF_EXTREME_VALUE_SELECT>/*[1:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _measured_value: sMEASURED_VALUE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._locations_of_extreme_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._measured_value.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._locations_of_extreme_value.value.isValueEqualOptionally(to: rhs._locations_of_extreme_value.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._measured_value.value.isValueEqualOptionally(to: rhs._measured_value.value, visited: &comppairs)	{
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
      if let comp = self._locations_of_extreme_value.value.isValueEqualOptionally(to: rhs._locations_of_extreme_value.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._measured_value.value.isValueEqualOptionally(to: rhs._measured_value.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(LOCATIONS_OF_EXTREME_VALUE: SDAI.SET<sLOCATION_OF_EXTREME_VALUE_SELECT>/*[1:nil]*/ , 
                MEASURED_VALUE: sMEASURED_VALUE_SELECT) {
      self._locations_of_extreme_value = LOCATIONS_OF_EXTREME_VALUE
      self._measured_value = MEASURED_VALUE
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sLOCATION_OF_EXTREME_VALUE_SELECT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: sMEASURED_VALUE_SELECT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( LOCATIONS_OF_EXTREME_VALUE: p0, MEASURED_VALUE: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY extreme_instance;
      locations_of_extreme_value  : SET [1 : ?] OF location_of_extreme_value_select;
      measured_value              : measured_value_select;
  END_ENTITY; -- extreme_instance (line:14989 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eEXTREME_INSTANCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _extreme_instance.self
    }
    public let partialEntity: _extreme_instance

    //MARK: SUPERTYPES
    public var super_eEXTREME_INSTANCE: eEXTREME_INSTANCE { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTREME_INSTANCE`` )
    public var MEASURED_VALUE: sMEASURED_VALUE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._measured_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._measured_value = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eEXTREME_INSTANCE`` )
    public var LOCATIONS_OF_EXTREME_VALUE: SDAI.SET<sLOCATION_OF_EXTREME_VALUE_SELECT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._locations_of_extreme_value )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._locations_of_extreme_value = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_extreme_instance.self) else { return nil }
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
    public convenience init?(_ partial:_extreme_instance) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "EXTREME_INSTANCE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eEXTREME_INSTANCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "MEASURED_VALUE", keyPath: \eEXTREME_INSTANCE.MEASURED_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "LOCATIONS_OF_EXTREME_VALUE", keyPath: \eEXTREME_INSTANCE.LOCATIONS_OF_EXTREME_VALUE, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

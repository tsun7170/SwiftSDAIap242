/* file: scanner_basic_properties.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY scanner_basic_properties
    SUBTYPE OF ( scanner_property );
      scanner_identification  : label;
      scanner_location        : axis2_placement_3d;
      scanner_uncertainty     : OPTIONAL positive_length_measure;
  END_ENTITY; -- scanner_basic_properties (line:28457 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	scanner_property
    (no local attributes)

  ENTITY(SELF)	scanner_basic_properties
    ATTR:  scanner_identification,	TYPE: label -- EXPLICIT

    ATTR:  scanner_location,	TYPE: axis2_placement_3d -- EXPLICIT

    ATTR:  scanner_uncertainty,	TYPE: OPTIONAL positive_length_measure -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _scanner_basic_properties : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSCANNER_BASIC_PROPERTIES.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _scanner_identification: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _scanner_location: eAXIS2_PLACEMENT_3D // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _scanner_uncertainty: tPOSITIVE_LENGTH_MEASURE?  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._scanner_identification.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._scanner_location.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._scanner_uncertainty?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._scanner_identification.value.isValueEqualOptionally(to: rhs._scanner_identification.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._scanner_location.value.isValueEqualOptionally(to: rhs._scanner_location.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._scanner_uncertainty?.value.isValueEqualOptionally(to: rhs._scanner_uncertainty?.value, visited: &comppairs)	{
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
      if let comp = self._scanner_identification.value.isValueEqualOptionally(to: rhs._scanner_identification.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._scanner_location.value.isValueEqualOptionally(to: rhs._scanner_location.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._scanner_uncertainty?.value.isValueEqualOptionally(to: rhs._scanner_uncertainty?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(SCANNER_IDENTIFICATION: tLABEL, SCANNER_LOCATION: eAXIS2_PLACEMENT_3D, 
                SCANNER_UNCERTAINTY: tPOSITIVE_LENGTH_MEASURE? ) {
      self._scanner_identification = SCANNER_IDENTIFICATION
      self._scanner_location = SCANNER_LOCATION
      self._scanner_uncertainty = SCANNER_UNCERTAINTY
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 3
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: eAXIS2_PLACEMENT_3D.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverOptionalParameter(as: tPOSITIVE_LENGTH_MEASURE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( SCANNER_IDENTIFICATION: p0, SCANNER_LOCATION: p1, SCANNER_UNCERTAINTY: p2 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY scanner_basic_properties
    SUBTYPE OF ( scanner_property );
      scanner_identification  : label;
      scanner_location        : axis2_placement_3d;
      scanner_uncertainty     : OPTIONAL positive_length_measure;
  END_ENTITY; -- scanner_basic_properties (line:28457 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSCANNER_BASIC_PROPERTIES : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _scanner_basic_properties.self
    }
    public let partialEntity: _scanner_basic_properties

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eSCANNER_PROPERTY: eSCANNER_PROPERTY 	// [2]
    public var super_eSCANNER_BASIC_PROPERTIES: eSCANNER_BASIC_PROPERTIES { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSCANNER_BASIC_PROPERTIES`` )
    public var SCANNER_LOCATION: eAXIS2_PLACEMENT_3D {
      get {
        return SDAI.UNWRAP( self.partialEntity._scanner_location )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._scanner_location = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSCANNER_BASIC_PROPERTIES`` )
    public var SCANNER_IDENTIFICATION: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._scanner_identification )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._scanner_identification = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSCANNER_BASIC_PROPERTIES`` )
    public var SCANNER_UNCERTAINTY: tPOSITIVE_LENGTH_MEASURE?  {
      get {
        return self.partialEntity._scanner_uncertainty
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._scanner_uncertainty = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eREPRESENTATION_ITEM`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eREPRESENTATION_ITEM.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eREPRESENTATION_ITEM.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_scanner_basic_properties.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eSCANNER_PROPERTY.self) else { return nil }
      self.super_eSCANNER_PROPERTY = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SCANNER_BASIC_PROPERTIES", type: self, explicitAttributeCount: 3)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSCANNER_PROPERTY.self)
      entityDef.add(supertype: eSCANNER_BASIC_PROPERTIES.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "SCANNER_LOCATION", keyPath: \eSCANNER_BASIC_PROPERTIES.SCANNER_LOCATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "SCANNER_IDENTIFICATION", keyPath: \eSCANNER_BASIC_PROPERTIES.SCANNER_IDENTIFICATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SCANNER_UNCERTAINTY", keyPath: \eSCANNER_BASIC_PROPERTIES.SCANNER_UNCERTAINTY, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eSCANNER_BASIC_PROPERTIES.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

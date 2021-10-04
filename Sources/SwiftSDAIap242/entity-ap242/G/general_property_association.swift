/* file: general_property_association.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY general_property_association;
      name                : label;
      description         : OPTIONAL text;
      base_definition     : general_property;
      derived_definition  : derived_property_select;
    WHERE
      wr1: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_LOCATION', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_SIZE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE' ] * TYPEOF( 
               derived_definition ) ) > 0 ) OR ( SIZEOF( USEDIN( derived_definition, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERAL_PROPERTY_ASSOCIATION.'
               + 'DERIVED_DEFINITION'  ) ) = 1 ) );
      wr2: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_LOCATION', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_SIZE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE' ] * TYPEOF( 
               derived_definition ) ) > 0 ) OR ( derived_definition.name = base_definition.name ) );
  END_ENTITY; -- general_property_association (line:16731 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	general_property_association
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  base_definition,	TYPE: general_property -- EXPLICIT

    ATTR:  derived_definition,	TYPE: derived_property_select -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _general_property_association : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eGENERAL_PROPERTY_ASSOCIATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _base_definition: eGENERAL_PROPERTY // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _derived_definition: sDERIVED_PROPERTY_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._base_definition.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._derived_definition.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._base_definition.value.isValueEqualOptionally(to: rhs._base_definition.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._derived_definition.value.isValueEqualOptionally(to: rhs._derived_definition.value, visited: &comppairs)	{
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
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._description?.value.isValueEqualOptionally(to: rhs._description?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._base_definition.value.isValueEqualOptionally(to: rhs._base_definition.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._derived_definition.value.isValueEqualOptionally(to: rhs._derived_definition.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eGENERAL_PROPERTY_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_LOCATION")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_SIZE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SDAI.TYPEOF(SELF.DERIVED_DEFINITION)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP6 = SDAI.USEDIN(T: SELF.DERIVED_DEFINITION, 
        ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eGENERAL_PROPERTY_ASSOCIATION
        .DERIVED_DEFINITION)
      let _TEMP7 = SDAI.SIZEOF(_TEMP6)
      let _TEMP8 = _TEMP7 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP9 = _TEMP5 || _TEMP8
      return _TEMP9
    }
    public static func WHERE_wr2(SELF: eGENERAL_PROPERTY_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = ([SDAI.AIE(SDAI.STRING(
        "AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_LOCATION")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_SIZE")), 
        SDAI.AIE(SDAI.STRING("AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE"))] 
        as [SDAI.AggregationInitializerElement<SDAI.STRING>])
      let _TEMP2 = SDAI.TYPEOF(SELF.DERIVED_DEFINITION)
      let _TEMP3 = SDAI.FORCE_OPTIONAL(_TEMP1) * _TEMP2
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP6 = /*runtime*/SELF.DERIVED_DEFINITION.NAME
      let _TEMP7 = SELF.BASE_DEFINITION.NAME
      let _TEMP8 = /*runtime*/_TEMP6 .==. SDAI.FORCE_OPTIONAL(_TEMP7)
      let _TEMP9 = _TEMP5 || _TEMP8
      return _TEMP9
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , BASE_DEFINITION: eGENERAL_PROPERTY, 
                DERIVED_DEFINITION: sDERIVED_PROPERTY_SELECT) {
      self._name = NAME
      self._description = DESCRIPTION
      self._base_definition = BASE_DEFINITION
      self._derived_definition = DERIVED_DEFINITION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 4
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eGENERAL_PROPERTY.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: sDERIVED_PROPERTY_SELECT.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, BASE_DEFINITION: p2, DERIVED_DEFINITION: p3 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY general_property_association;
      name                : label;
      description         : OPTIONAL text;
      base_definition     : general_property;
      derived_definition  : derived_property_select;
    WHERE
      wr1: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_LOCATION', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_SIZE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE' ] * TYPEOF( 
               derived_definition ) ) > 0 ) OR ( SIZEOF( USEDIN( derived_definition, 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GENERAL_PROPERTY_ASSOCIATION.'
               + 'DERIVED_DEFINITION'  ) ) = 1 ) );
      wr2: ( ( SIZEOF( [ 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_LOCATION', 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSIONAL_SIZE' , 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.GEOMETRIC_TOLERANCE' ] * TYPEOF( 
               derived_definition ) ) > 0 ) OR ( derived_definition.name = base_definition.name ) );
  END_ENTITY; -- general_property_association (line:16731 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eGENERAL_PROPERTY_ASSOCIATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _general_property_association.self
    }
    public let partialEntity: _general_property_association

    //MARK: SUPERTYPES
    public var super_eGENERAL_PROPERTY_ASSOCIATION: eGENERAL_PROPERTY_ASSOCIATION { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERAL_PROPERTY_ASSOCIATION`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERAL_PROPERTY_ASSOCIATION`` )
    public var DERIVED_DEFINITION: sDERIVED_PROPERTY_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._derived_definition )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._derived_definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERAL_PROPERTY_ASSOCIATION`` )
    public var BASE_DEFINITION: eGENERAL_PROPERTY {
      get {
        return SDAI.UNWRAP( self.partialEntity._base_definition )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._base_definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eGENERAL_PROPERTY_ASSOCIATION`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_general_property_association.self) else { return nil }
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
    public convenience init?(_ partial:_general_property_association) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _general_property_association.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _general_property_association.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "GENERAL_PROPERTY_ASSOCIATION", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eGENERAL_PROPERTY_ASSOCIATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eGENERAL_PROPERTY_ASSOCIATION.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DERIVED_DEFINITION", keyPath: \eGENERAL_PROPERTY_ASSOCIATION.DERIVED_DEFINITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "BASE_DEFINITION", keyPath: \eGENERAL_PROPERTY_ASSOCIATION.BASE_DEFINITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eGENERAL_PROPERTY_ASSOCIATION.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

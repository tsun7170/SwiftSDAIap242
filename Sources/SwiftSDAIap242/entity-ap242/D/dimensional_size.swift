/* file: dimensional_size.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY dimensional_size
    SUPERTYPE OF ( 
        ONEOF ( 
            angular_size, 
            dimensional_size_with_path ) );
      applies_to  : shape_aspect;
      name        : label;
    DERIVE
      id  : identifier := get_id_value( SELF );
    UNIQUE
      ur1 : id, applies_to;
    WHERE
      wr1: ( applies_to.product_definitional = TRUE );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- dimensional_size (line:12527 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	dimensional_size
    ATTR:  applies_to,	TYPE: shape_aspect -- EXPLICIT

    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUB- ENTITY(2)	dimensional_size_with_path
    ATTR:  path,	TYPE: shape_aspect -- EXPLICIT


  SUB- ENTITY(3)	angular_size
    ATTR:  angle_selection,	TYPE: angle_relator -- EXPLICIT


  SUB- ENTITY(4)	dimensional_size_with_datum_feature
    (no local attributes)

  SUB- ENTITY(5)	externally_defined_dimension_definition
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _dimensional_size : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDIMENSIONAL_SIZE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _applies_to: eSHAPE_ASPECT // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// DERIVE ATTRIBUTE
    internal func _id__getter(SELF: eDIMENSIONAL_SIZE) -> tIDENTIFIER?  {

      let _TEMP1 = GET_ID_VALUE(sID_ATTRIBUTE_SELECT(/*eDIMENSIONAL_SIZE*/SELF))
      return _TEMP1
    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sID_ATTRIBUTE_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sGEOMETRIC_TOLERANCE_TARGET.typeName)) // -> Self
      members.insert(SDAI.STRING(sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sIDENTIFICATION_ITEM
      members.insert(SDAI.STRING(sREQUIREMENT_SOURCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sPROPERTY_VARIABLE_REP_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_DEFINITION.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_ASSIGNED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sREQUIREMENT_SATISFACTION_ITEM.typeName)) // -> sREQUIREMENT_ASSIGNED_ITEM
      members.insert(SDAI.STRING(sDIMENSIONAL_CHARACTERISTIC.typeName)) // -> Self
      members.insert(SDAI.STRING(sDERIVED_PROPERTY_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERIC_PROPERTY_DEFINITION_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_DEFINITION.typeName)) // -> sCHARACTERIZED_ITEM
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sTOLERANCE_ZONE_TARGET.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._applies_to.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._applies_to.value.isValueEqualOptionally(to: rhs._applies_to.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs)	{
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
      if let comp = self._applies_to.value.isValueEqualOptionally(to: rhs._applies_to.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._name.value.isValueEqualOptionally(to: rhs._name.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDIMENSIONAL_SIZE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.APPLIES_TO.PRODUCT_DEFINITIONAL
      let _TEMP2 = SDAI.FORCE_OPTIONAL(_TEMP1) .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
      return _TEMP2
    }
    public static func WHERE_wr2(SELF: eDIMENSIONAL_SIZE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.USEDIN(T: SELF, ROLE: \AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.eID_ATTRIBUTE
        .IDENTIFIED_ITEM)
      let _TEMP2 = SDAI.SIZEOF(_TEMP1)
      let _TEMP3 = _TEMP2 <= SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      return _TEMP3
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eDIMENSIONAL_SIZE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      guard let attr1 = SELF.ID else { return nil }
      attributes.append( AnyHashable(attr1) )
      let attr2 = SELF.APPLIES_TO
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(APPLIES_TO: eSHAPE_ASPECT, NAME: tLABEL) {
      self._applies_to = APPLIES_TO
      self._name = NAME
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSHAPE_ASPECT.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( APPLIES_TO: p0, NAME: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY dimensional_size
    SUPERTYPE OF ( 
        ONEOF ( 
            angular_size, 
            dimensional_size_with_path ) );
      applies_to  : shape_aspect;
      name        : label;
    DERIVE
      id  : identifier := get_id_value( SELF );
    UNIQUE
      ur1 : id, applies_to;
    WHERE
      wr1: ( applies_to.product_definitional = TRUE );
      wr2: ( SIZEOF( USEDIN( SELF, 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.ID_ATTRIBUTE.'
               + 'IDENTIFIED_ITEM'  ) ) <= 1 );
  END_ENTITY; -- dimensional_size (line:12527 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDIMENSIONAL_SIZE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _dimensional_size.self
    }
    public let partialEntity: _dimensional_size

    //MARK: SUPERTYPES
    public var super_eDIMENSIONAL_SIZE: eDIMENSIONAL_SIZE { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDIMENSIONAL_SIZE_WITH_PATH: eDIMENSIONAL_SIZE_WITH_PATH? {	// [2]
      return self.complexEntity.entityReference(eDIMENSIONAL_SIZE_WITH_PATH.self)
    }

    public var sub_eANGULAR_SIZE: eANGULAR_SIZE? {	// [3]
      return self.complexEntity.entityReference(eANGULAR_SIZE.self)
    }

    public var sub_eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE: eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE? {	// [4]
      return self.complexEntity.entityReference(eDIMENSIONAL_SIZE_WITH_DATUM_FEATURE.self)
    }

    public var sub_eEXTERNALLY_DEFINED_DIMENSION_DEFINITION: eEXTERNALLY_DEFINED_DIMENSION_DEFINITION? {	// [5]
      return self.complexEntity.entityReference(eEXTERNALLY_DEFINED_DIMENSION_DEFINITION.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eDIMENSIONAL_SIZE_WITH_PATH`` )
    public var PATH: eSHAPE_ASPECT?  {
      get {
        return sub_eDIMENSIONAL_SIZE_WITH_PATH?.partialEntity._path
      }
      set(newValue) {
        guard let partial = sub_eDIMENSIONAL_SIZE_WITH_PATH?.super_eDIMENSIONAL_SIZE_WITH_PATH.partialEntity
          else { return }
        partial._path = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDIMENSIONAL_SIZE`` )
    public var APPLIES_TO: eSHAPE_ASPECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._applies_to )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._applies_to = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SELF( ``eDIMENSIONAL_SIZE`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = self
        let value = origin.partialEntity._id__getter(SELF: origin)
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eANGULAR_SIZE`` )
    public var ANGLE_SELECTION: nANGLE_RELATOR?  {
      get {
        return sub_eANGULAR_SIZE?.partialEntity._angle_selection
      }
      set(newValue) {
        guard let partial = sub_eANGULAR_SIZE?.super_eANGULAR_SIZE.partialEntity else { return }
        partial._angle_selection = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eDIMENSIONAL_SIZE`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_dimensional_size.self) else { return nil }
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
    public convenience init?(_ partial:_dimensional_size) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _dimensional_size.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _dimensional_size.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DIMENSIONAL_SIZE", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eDIMENSIONAL_SIZE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PATH", keyPath: \eDIMENSIONAL_SIZE.PATH, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "APPLIES_TO", keyPath: \eDIMENSIONAL_SIZE.APPLIES_TO, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eDIMENSIONAL_SIZE.ID, 
        kind: .derived, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ANGLE_SELECTION", keyPath: \eDIMENSIONAL_SIZE.ANGLE_SELECTION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "NAME", keyPath: \eDIMENSIONAL_SIZE.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _dimensional_size.UNIQUE_ur1)

      return entityDef
    }

  }
}
/* file: kinematic_path_segment.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY kinematic_path_segment
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            path_node, 
            curve_based_path_with_orientation ) )
    SUBTYPE OF ( founded_item );
      t_end       : parameter_value;
      transition  : transition_code;
  END_ENTITY; -- kinematic_path_segment (line:18797 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	founded_item
    ATTR:  users,	TYPE: SET [0 : ?] OF founded_item_select -- DERIVED
      := using_items( SELF, [] )


  ENTITY(SELF)	kinematic_path_segment
    ATTR:  t_end,	TYPE: parameter_value -- EXPLICIT

    ATTR:  transition,	TYPE: transition_code -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: point_to_point_path,	TYPE: transition_code	(as DERIVED)
          ENTITY: linear_path,	TYPE: transition_code	(as DERIVED)


  SUB- ENTITY(3)	point_to_point_path
    REDCR: transition,	TYPE: transition_code -- DERIVED (DYNAMIC)
      := discontinuous
      -- OVERRIDING ENTITY: kinematic_path_segment


  SUB- ENTITY(4)	circular_path
    ATTR:  via_point,	TYPE: cartesian_point -- EXPLICIT


  SUB- ENTITY(5)	linear_path
    REDCR: transition,	TYPE: transition_code -- DERIVED (DYNAMIC)
      := continuous
      -- OVERRIDING ENTITY: kinematic_path_segment


  SUB- ENTITY(6)	curve_based_path
    ATTR:  path_curve,	TYPE: curve -- EXPLICIT


  SUB- ENTITY(7)	path_node
    ATTR:  placement_end,	TYPE: placement -- EXPLICIT


  SUB- ENTITY(8)	curve_based_path_with_orientation_and_parameters
    ATTR:  parameters,	TYPE: path_parameter_representation -- EXPLICIT


  SUB- ENTITY(9)	curve_based_path_with_orientation
    ATTR:  position_curve,	TYPE: bounded_curve -- EXPLICIT

    ATTR:  orientation_curve,	TYPE: bounded_curve -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _kinematic_path_segment : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eKINEMATIC_PATH_SEGMENT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _t_end: tPARAMETER_VALUE // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    /// - see the corresponding attribute accesser in the entity reference definition for the attribute value dynamic lookup logic
    public internal(set) var _transition: nTRANSITION_CODE?  // PLAIN EXPLICIT ATTRIBUTE

    internal static func _transition__provider(complex: SDAI.ComplexEntity) -> eKINEMATIC_PATH_SEGMENT__TRANSITION__provider? {
      let resolved = complex.resolvePartialEntityInstance(from: [_point_to_point_path.typeIdentity, 
        _linear_path.typeIdentity])
      return resolved as? eKINEMATIC_PATH_SEGMENT__TRANSITION__provider
    }

    //PARTIAL COMPLEX ENTITY SUPPORT
    final public override class func fixupPartialComplexEntityAttributes(partialComplex: SDAI.ComplexEntity, baseComplex: SDAI.ComplexEntity) {
      guard let pe = partialComplex.partialEntityInstance(_kinematic_path_segment.self) else { return }

      if pe._transition == nil, self._transition__provider(complex: partialComplex) == nil, 
        let base__transition__provider = self._transition__provider(complex: baseComplex) {
        pe._transition = base__transition__provider._transition__getter(complex: baseComplex)
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
      self._t_end.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._transition?.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._t_end.value.isValueEqualOptionally(to: rhs._t_end.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._transition?.value.isValueEqualOptionally(to: rhs._transition?.value, visited: &comppairs)	{
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
      if let comp = self._t_end.value.isValueEqualOptionally(to: rhs._t_end.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._transition?.value.isValueEqualOptionally(to: rhs._transition?.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(T_END: tPARAMETER_VALUE, TRANSITION: nTRANSITION_CODE? ) {
      self._t_end = T_END
      self._transition = TRANSITION
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tPARAMETER_VALUE.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOmittableParameter(as: nTRANSITION_CODE.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( T_END: p0, TRANSITION: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY kinematic_path_segment
    ABSTRACT SUPERTYPE OF ( 
        ONEOF ( 
            path_node, 
            curve_based_path_with_orientation ) )
    SUBTYPE OF ( founded_item );
      t_end       : parameter_value;
      transition  : transition_code;
  END_ENTITY; -- kinematic_path_segment (line:18797 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eKINEMATIC_PATH_SEGMENT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _kinematic_path_segment.self
    }
    public let partialEntity: _kinematic_path_segment

    //MARK: SUPERTYPES
    public let super_eFOUNDED_ITEM: eFOUNDED_ITEM 	// [1]
    public var super_eKINEMATIC_PATH_SEGMENT: eKINEMATIC_PATH_SEGMENT { return self } 	// [2]

    //MARK: SUBTYPES
    public var sub_ePOINT_TO_POINT_PATH: ePOINT_TO_POINT_PATH? {	// [3]
      return self.complexEntity.entityReference(ePOINT_TO_POINT_PATH.self)
    }

    public var sub_eCIRCULAR_PATH: eCIRCULAR_PATH? {	// [4]
      return self.complexEntity.entityReference(eCIRCULAR_PATH.self)
    }

    public var sub_eLINEAR_PATH: eLINEAR_PATH? {	// [5]
      return self.complexEntity.entityReference(eLINEAR_PATH.self)
    }

    public var sub_eCURVE_BASED_PATH: eCURVE_BASED_PATH? {	// [6]
      return self.complexEntity.entityReference(eCURVE_BASED_PATH.self)
    }

    public var sub_ePATH_NODE: ePATH_NODE? {	// [7]
      return self.complexEntity.entityReference(ePATH_NODE.self)
    }

    public var sub_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS: eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS? {	// [8]
      return self.complexEntity.entityReference(eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS.self)
    }

    public var sub_eCURVE_BASED_PATH_WITH_ORIENTATION: eCURVE_BASED_PATH_WITH_ORIENTATION? {	// [9]
      return self.complexEntity.entityReference(eCURVE_BASED_PATH_WITH_ORIENTATION.self)
    }


    //MARK: ATTRIBUTES
    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eFOUNDED_ITEM`` )
    public var USERS: (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"USERS") {
          return cached.value as! (SDAI.SET<sFOUNDED_ITEM_SELECT>/*[0:nil]*/ )? 
        }
        let origin = super_eFOUNDED_ITEM
        let value = SDAI.SET<sFOUNDED_ITEM_SELECT>(origin.partialEntity._users__getter(SELF: origin))
        updateCache(derivedAttributeName:"USERS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS`` )
    public var PARAMETERS: ePATH_PARAMETER_REPRESENTATION?  {
      get {
        return sub_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS?.partialEntity._parameters
      }
      set(newValue) {
        guard let partial = sub_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS?.super_eCURVE_BASED_PATH_WITH_ORIENTATION_AND_PARAMETERS
          .partialEntity else { return }
        partial._parameters = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eKINEMATIC_PATH_SEGMENT`` )
    public var T_END: tPARAMETER_VALUE {
      get {
        return SDAI.UNWRAP( self.partialEntity._t_end )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._t_end = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SELF( ``eKINEMATIC_PATH_SEGMENT`` )
    public var TRANSITION: nTRANSITION_CODE {
      get {
        if let resolved = _kinematic_path_segment._transition__provider(complex: self.complexEntity) {
          let value = resolved._transition__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( self.partialEntity._transition )
        }
      }
      set(newValue) {
        if let _ = _kinematic_path_segment._transition__provider(complex: self.complexEntity) { return }

        let partial = self.partialEntity
        partial._transition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCURVE_BASED_PATH_WITH_ORIENTATION`` )
    public var ORIENTATION_CURVE: eBOUNDED_CURVE?  {
      get {
        return sub_eCURVE_BASED_PATH_WITH_ORIENTATION?.partialEntity._orientation_curve
      }
      set(newValue) {
        guard let partial = sub_eCURVE_BASED_PATH_WITH_ORIENTATION?.super_eCURVE_BASED_PATH_WITH_ORIENTATION
          .partialEntity else { return }
        partial._orientation_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCURVE_BASED_PATH_WITH_ORIENTATION`` )
    public var POSITION_CURVE: eBOUNDED_CURVE?  {
      get {
        return sub_eCURVE_BASED_PATH_WITH_ORIENTATION?.partialEntity._position_curve
      }
      set(newValue) {
        guard let partial = sub_eCURVE_BASED_PATH_WITH_ORIENTATION?.super_eCURVE_BASED_PATH_WITH_ORIENTATION
          .partialEntity else { return }
        partial._position_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCIRCULAR_PATH`` )
    public var VIA_POINT: eCARTESIAN_POINT?  {
      get {
        return sub_eCIRCULAR_PATH?.partialEntity._via_point
      }
      set(newValue) {
        guard let partial = sub_eCIRCULAR_PATH?.super_eCIRCULAR_PATH.partialEntity else { return }
        partial._via_point = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCURVE_BASED_PATH`` )
    public var PATH_CURVE: eCURVE?  {
      get {
        return sub_eCURVE_BASED_PATH?.partialEntity._path_curve
      }
      set(newValue) {
        guard let partial = sub_eCURVE_BASED_PATH?.super_eCURVE_BASED_PATH.partialEntity else { return }
        partial._path_curve = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePATH_NODE`` )
    public var PLACEMENT_END: ePLACEMENT?  {
      get {
        return sub_ePATH_NODE?.partialEntity._placement_end
      }
      set(newValue) {
        guard let partial = sub_ePATH_NODE?.super_ePATH_NODE.partialEntity else { return }
        partial._placement_end = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_kinematic_path_segment.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eFOUNDED_ITEM.self) else { return nil }
      self.super_eFOUNDED_ITEM = super1

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "KINEMATIC_PATH_SEGMENT", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eFOUNDED_ITEM.self)
      entityDef.add(supertype: eKINEMATIC_PATH_SEGMENT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "USERS", keyPath: \eKINEMATIC_PATH_SEGMENT.USERS, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PARAMETERS", keyPath: \eKINEMATIC_PATH_SEGMENT.PARAMETERS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "T_END", keyPath: \eKINEMATIC_PATH_SEGMENT.T_END, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSITION", keyPath: \eKINEMATIC_PATH_SEGMENT.TRANSITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "ORIENTATION_CURVE", keyPath: \eKINEMATIC_PATH_SEGMENT.ORIENTATION_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "POSITION_CURVE", keyPath: \eKINEMATIC_PATH_SEGMENT.POSITION_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "VIA_POINT", keyPath: \eKINEMATIC_PATH_SEGMENT.VIA_POINT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PATH_CURVE", keyPath: \eKINEMATIC_PATH_SEGMENT.PATH_CURVE, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "PLACEMENT_END", keyPath: \eKINEMATIC_PATH_SEGMENT.PLACEMENT_END, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

//MARK: - Entity Dynamic Attribute Protocols
internal protocol eKINEMATIC_PATH_SEGMENT__TRANSITION__provider {
  func _transition__getter(complex: SDAI.ComplexEntity) -> 
    AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.nTRANSITION_CODE
}

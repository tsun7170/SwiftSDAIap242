/* file: point_cloud_superdataset.swift 	 generated: Mon Jan  3 16:32:52 2022 */

/* This file was generated by the EXPRESS to Swift translator "exp2swift", 
    derived from STEPcode (formerly NIST's SCL).
 exp2swift version: v.1.0.1, derived from stepcode v0.8 as of 2019/11/23 
 WARNING: You probably don't want to edit it since your modifications 
    will be lost if exp2swift is used to regenerate it.
 */

 
import SwiftSDAIcore

extension AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF {
//MARK: -ENTITY DEFINITION in EXPRESS
/*

  ENTITY point_cloud_superdataset
    SUBTYPE OF ( scanned_data_item );
      pts_per_sublist  : INTEGER;
      sublists         : LIST [2 : ?] OF point_cloud_dataset;
    WHERE
      wr1: consistent_sizes( SELF.pts_per_sublist, SELF.sublists );
  END_ENTITY; -- point_cloud_superdataset (line:25192 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  SUPER- ENTITY(3)	scanned_data_item
    (no local attributes)

  ENTITY(SELF)	point_cloud_superdataset
    ATTR:  pts_per_sublist,	TYPE: INTEGER -- EXPLICIT

    ATTR:  sublists,	TYPE: LIST [2 : ?] OF point_cloud_dataset -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _point_cloud_superdataset : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      ePOINT_CLOUD_SUPERDATASET.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _pts_per_sublist: SDAI.INTEGER // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _sublists: SDAI.LIST<ePOINT_CLOUD_DATASET>/*[2:nil]*/  // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sPOINT_CLOUD_SET_OR_SUPERSET.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._pts_per_sublist.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._sublists.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._pts_per_sublist.value.isValueEqualOptionally(to: rhs._pts_per_sublist.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._sublists.value.isValueEqualOptionally(to: rhs._sublists.value, visited: &comppairs)	{
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
      if let comp = self._pts_per_sublist.value.isValueEqualOptionally(to: rhs._pts_per_sublist.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._sublists.value.isValueEqualOptionally(to: rhs._sublists.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: ePOINT_CLOUD_SUPERDATASET?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.PTS_PER_SUBLIST
      let _TEMP2 = SELF.SUBLISTS
      let _TEMP3 = CONSISTENT_SIZES(
        MAX: _TEMP1, POINT_LISTS: SDAI.LIST<ePOINT_CLOUD_DATASET>(/*SDAI.LIST<ePOINT_CLOUD_DATASET>[2:nil] */
        _TEMP2))
      return SDAI.LOGICAL(_TEMP3)
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(PTS_PER_SUBLIST: SDAI.INTEGER, SUBLISTS: SDAI.LIST<ePOINT_CLOUD_DATASET>/*[2:nil]*/ ) {
      self._pts_per_sublist = PTS_PER_SUBLIST
      self._sublists = SUBLISTS
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.INTEGER.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: SDAI.LIST<
        ePOINT_CLOUD_DATASET>.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( PTS_PER_SUBLIST: p0, SUBLISTS: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY point_cloud_superdataset
    SUBTYPE OF ( scanned_data_item );
      pts_per_sublist  : INTEGER;
      sublists         : LIST [2 : ?] OF point_cloud_dataset;
    WHERE
      wr1: consistent_sizes( SELF.pts_per_sublist, SELF.sublists );
  END_ENTITY; -- point_cloud_superdataset (line:25192 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class ePOINT_CLOUD_SUPERDATASET : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _point_cloud_superdataset.self
    }
    public let partialEntity: _point_cloud_superdataset

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public let super_eSCANNED_DATA_ITEM: eSCANNED_DATA_ITEM 	// [3]
    public var super_ePOINT_CLOUD_SUPERDATASET: ePOINT_CLOUD_SUPERDATASET { return self } 	// [4]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePOINT_CLOUD_SUPERDATASET`` )
    public var PTS_PER_SUBLIST: SDAI.INTEGER {
      get {
        return SDAI.UNWRAP( self.partialEntity._pts_per_sublist )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._pts_per_sublist = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``ePOINT_CLOUD_SUPERDATASET`` )
    public var SUBLISTS: SDAI.LIST<ePOINT_CLOUD_DATASET>/*[2:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._sublists )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._sublists = SDAI.UNWRAP(newValue)
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

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eGEOMETRIC_REPRESENTATION_ITEM`` )
    public var DIM: tDIMENSION_COUNT?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIM") {
          return cached.value as! tDIMENSION_COUNT? 
        }
        let origin = super_eGEOMETRIC_REPRESENTATION_ITEM
        let value = tDIMENSION_COUNT(origin.partialEntity._dim__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIM", value:value)
        return value
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_point_cloud_superdataset.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

      guard let super3 = complexEntity?.entityReference(eSCANNED_DATA_ITEM.self) else { return nil }
      self.super_eSCANNED_DATA_ITEM = super3

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
      result[prefix2 + " .WHERE_wr1"] = _point_cloud_superdataset.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "POINT_CLOUD_SUPERDATASET", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eSCANNED_DATA_ITEM.self)
      entityDef.add(supertype: ePOINT_CLOUD_SUPERDATASET.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PTS_PER_SUBLIST", keyPath: \ePOINT_CLOUD_SUPERDATASET.PTS_PER_SUBLIST, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "SUBLISTS", keyPath: \ePOINT_CLOUD_SUPERDATASET.SUBLISTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \ePOINT_CLOUD_SUPERDATASET.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \ePOINT_CLOUD_SUPERDATASET.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

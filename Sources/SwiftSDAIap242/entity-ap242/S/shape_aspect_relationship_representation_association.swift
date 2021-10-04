/* file: shape_aspect_relationship_representation_association.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY shape_aspect_relationship_representation_association;
      represented_shape_aspect_relationship : shape_aspect_relationship;
      representing_representation_relationship : representation_relationship;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATIVE_SHAPE_REPRESENTATION' IN 
               TYPEOF( representing_representation_relationship\representation_relationship.rep_1 ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATIVE_SHAPE_REPRESENTATION'  IN 
               TYPEOF( representing_representation_relationship\representation_relationship.rep_2 ) ) );
      wr2: ( ( represented_shape_aspect_relationship.relating_shape_aspect IN 
               using_shape_aspect_of_shape_representation( representing_representation_relationship.rep_1 ) ) 
               AND ( represented_shape_aspect_relationship.related_shape_aspect IN 
               using_shape_aspect_of_shape_representation( representing_representation_relationship.rep_2 ) ) );
      wr3: ( ( find_representative_shape_representation_of_product_definition( 
               using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               relating_shape_aspect ) ).context_of_items :=: 
               find_representative_shape_representation_of_shape_aspect( 
               represented_shape_aspect_relationship.relating_shape_aspect ).context_of_items ) AND ( 
               find_representative_shape_representation_of_product_definition( 
               using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               related_shape_aspect ) ).context_of_items :=: 
               find_representative_shape_representation_of_shape_aspect( 
               represented_shape_aspect_relationship.related_shape_aspect ).context_of_items ) );
      wr4: ( using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               relating_shape_aspect ) :<>: using_product_definition_of_shape_aspect( 
               represented_shape_aspect_relationship.related_shape_aspect ) );
      wr5: ( find_assembly_root( [using_product_definition_of_shape_aspect( 
               represented_shape_aspect_relationship.relating_shape_aspect )] ) :=: find_assembly_root( [
               using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               related_shape_aspect )] ) );
  END_ENTITY; -- shape_aspect_relationship_representation_association (line:28683 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	shape_aspect_relationship_representation_association
    ATTR:  represented_shape_aspect_relationship,	TYPE: shape_aspect_relationship -- EXPLICIT

    ATTR:  representing_representation_relationship,	TYPE: representation_relationship -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _shape_aspect_relationship_representation_association : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _represented_shape_aspect_relationship: eSHAPE_ASPECT_RELATIONSHIP // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _representing_representation_relationship: eREPRESENTATION_RELATIONSHIP // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._represented_shape_aspect_relationship.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._representing_representation_relationship.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._represented_shape_aspect_relationship.value.isValueEqualOptionally(to: rhs._represented_shape_aspect_relationship.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._representing_representation_relationship.value.isValueEqualOptionally(to: rhs._representing_representation_relationship.value, visited: &comppairs)	{
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
      if let comp = self._represented_shape_aspect_relationship.value.isValueEqualOptionally(to: rhs._represented_shape_aspect_relationship.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._representing_representation_relationship.value.isValueEqualOptionally(to: rhs._representing_representation_relationship.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.REPRESENTING_REPRESENTATION_RELATIONSHIP.GROUP_REF(
        eREPRESENTATION_RELATIONSHIP.self)?.REP_1, IS: eREPRESENTATIVE_SHAPE_REPRESENTATION.self)
      let _TEMP2 = SDAI.TYPEOF(SELF.REPRESENTING_REPRESENTATION_RELATIONSHIP.GROUP_REF(
        eREPRESENTATION_RELATIONSHIP.self)?.REP_2, IS: eREPRESENTATIVE_SHAPE_REPRESENTATION.self)
      let _TEMP3 = _TEMP1 && _TEMP2
      return _TEMP3
    }
    public static func WHERE_wr2(SELF: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT
      let _TEMP2 = SELF.REPRESENTING_REPRESENTATION_RELATIONSHIP.REP_1
      let _TEMP3 = USING_SHAPE_ASPECT_OF_SHAPE_REPRESENTATION(eSHAPE_REPRESENTATION(/*
        sREPRESENTATION_OR_REPRESENTATION_REFERENCE*/_TEMP2))
      let _TEMP4 = SDAI.aggregate(_TEMP3, contains: _TEMP1)
      let _TEMP5 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT
      let _TEMP6 = SELF.REPRESENTING_REPRESENTATION_RELATIONSHIP.REP_2
      let _TEMP7 = USING_SHAPE_ASPECT_OF_SHAPE_REPRESENTATION(eSHAPE_REPRESENTATION(/*
        sREPRESENTATION_OR_REPRESENTATION_REFERENCE*/_TEMP6))
      let _TEMP8 = SDAI.aggregate(_TEMP7, contains: _TEMP5)
      let _TEMP9 = _TEMP4 && _TEMP8
      return _TEMP9
    }
    public static func WHERE_wr3(SELF: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT
      let _TEMP2 = USING_PRODUCT_DEFINITION_OF_SHAPE_ASPECT(_TEMP1)
      let _TEMP3 = FIND_REPRESENTATIVE_SHAPE_REPRESENTATION_OF_PRODUCT_DEFINITION(
        _TEMP2)
      let _TEMP4 = _TEMP3?.CONTEXT_OF_ITEMS
      let _TEMP5 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT
      let _TEMP6 = FIND_REPRESENTATIVE_SHAPE_REPRESENTATION_OF_SHAPE_ASPECT(
        _TEMP5)
      let _TEMP7 = _TEMP6?.CONTEXT_OF_ITEMS
      let _TEMP8 = _TEMP4 .===. _TEMP7
      let _TEMP9 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT
      let _TEMP10 = USING_PRODUCT_DEFINITION_OF_SHAPE_ASPECT(_TEMP9)
      let _TEMP11 = FIND_REPRESENTATIVE_SHAPE_REPRESENTATION_OF_PRODUCT_DEFINITION(
        _TEMP10)
      let _TEMP12 = _TEMP11?.CONTEXT_OF_ITEMS
      let _TEMP13 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT
      let _TEMP14 = FIND_REPRESENTATIVE_SHAPE_REPRESENTATION_OF_SHAPE_ASPECT(
        _TEMP13)
      let _TEMP15 = _TEMP14?.CONTEXT_OF_ITEMS
      let _TEMP16 = _TEMP12 .===. _TEMP15
      let _TEMP17 = _TEMP8 && _TEMP16
      return _TEMP17
    }
    public static func WHERE_wr4(SELF: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT
      let _TEMP2 = USING_PRODUCT_DEFINITION_OF_SHAPE_ASPECT(_TEMP1)
      let _TEMP3 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT
      let _TEMP4 = USING_PRODUCT_DEFINITION_OF_SHAPE_ASPECT(_TEMP3)
      let _TEMP5 = _TEMP2 .!==. _TEMP4
      return _TEMP5
    }
    public static func WHERE_wr5(SELF: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATING_SHAPE_ASPECT
      let _TEMP2 = USING_PRODUCT_DEFINITION_OF_SHAPE_ASPECT(_TEMP1)
      let _TEMP3 = SDAI.SET<ePRODUCT_DEFINITION>(([
        SDAI.AIE(_TEMP2)] as [SDAI.AggregationInitializerElement<ePRODUCT_DEFINITION>]))
      let _TEMP4 = FIND_ASSEMBLY_ROOT(_TEMP3)
      let _TEMP5 = SELF.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP.RELATED_SHAPE_ASPECT
      let _TEMP6 = USING_PRODUCT_DEFINITION_OF_SHAPE_ASPECT(_TEMP5)
      let _TEMP7 = SDAI.SET<ePRODUCT_DEFINITION>(([
        SDAI.AIE(_TEMP6)] as [SDAI.AggregationInitializerElement<ePRODUCT_DEFINITION>]))
      let _TEMP8 = FIND_ASSEMBLY_ROOT(_TEMP7)
      let _TEMP9 = _TEMP4 .===. _TEMP8
      return _TEMP9
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(REPRESENTED_SHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP, 
                REPRESENTING_REPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP) {
      self._represented_shape_aspect_relationship = REPRESENTED_SHAPE_ASPECT_RELATIONSHIP
      self._representing_representation_relationship = REPRESENTING_REPRESENTATION_RELATIONSHIP
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 2
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: eSHAPE_ASPECT_RELATIONSHIP.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverRequiredParameter(as: 
        eREPRESENTATION_RELATIONSHIP.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( REPRESENTED_SHAPE_ASPECT_RELATIONSHIP: p0, REPRESENTING_REPRESENTATION_RELATIONSHIP: p1 )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY shape_aspect_relationship_representation_association;
      represented_shape_aspect_relationship : shape_aspect_relationship;
      representing_representation_relationship : representation_relationship;
    WHERE
      wr1: ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATIVE_SHAPE_REPRESENTATION' IN 
               TYPEOF( representing_representation_relationship\representation_relationship.rep_1 ) ) AND ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.REPRESENTATIVE_SHAPE_REPRESENTATION'  IN 
               TYPEOF( representing_representation_relationship\representation_relationship.rep_2 ) ) );
      wr2: ( ( represented_shape_aspect_relationship.relating_shape_aspect IN 
               using_shape_aspect_of_shape_representation( representing_representation_relationship.rep_1 ) ) 
               AND ( represented_shape_aspect_relationship.related_shape_aspect IN 
               using_shape_aspect_of_shape_representation( representing_representation_relationship.rep_2 ) ) );
      wr3: ( ( find_representative_shape_representation_of_product_definition( 
               using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               relating_shape_aspect ) ).context_of_items :=: 
               find_representative_shape_representation_of_shape_aspect( 
               represented_shape_aspect_relationship.relating_shape_aspect ).context_of_items ) AND ( 
               find_representative_shape_representation_of_product_definition( 
               using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               related_shape_aspect ) ).context_of_items :=: 
               find_representative_shape_representation_of_shape_aspect( 
               represented_shape_aspect_relationship.related_shape_aspect ).context_of_items ) );
      wr4: ( using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               relating_shape_aspect ) :<>: using_product_definition_of_shape_aspect( 
               represented_shape_aspect_relationship.related_shape_aspect ) );
      wr5: ( find_assembly_root( [using_product_definition_of_shape_aspect( 
               represented_shape_aspect_relationship.relating_shape_aspect )] ) :=: find_assembly_root( [
               using_product_definition_of_shape_aspect( represented_shape_aspect_relationship.
               related_shape_aspect )] ) );
  END_ENTITY; -- shape_aspect_relationship_representation_association (line:28683 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _shape_aspect_relationship_representation_association.self
    }
    public let partialEntity: _shape_aspect_relationship_representation_association

    //MARK: SUPERTYPES
    public var super_eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION { return self } 	// [1]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION`` )
    public var REPRESENTING_REPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP {
      get {
        return SDAI.UNWRAP( self.partialEntity._representing_representation_relationship )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._representing_representation_relationship = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION`` )
    public var REPRESENTED_SHAPE_ASPECT_RELATIONSHIP: eSHAPE_ASPECT_RELATIONSHIP {
      get {
        return SDAI.UNWRAP( self.partialEntity._represented_shape_aspect_relationship )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._represented_shape_aspect_relationship = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_shape_aspect_relationship_representation_association.self) else { return nil }
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
    public convenience init?(_ partial:_shape_aspect_relationship_representation_association) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _shape_aspect_relationship_representation_association.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _shape_aspect_relationship_representation_association.WHERE_wr2(SELF: instance)
      result[prefix2 + " .WHERE_wr3"] = _shape_aspect_relationship_representation_association.WHERE_wr3(SELF: instance)
      result[prefix2 + " .WHERE_wr4"] = _shape_aspect_relationship_representation_association.WHERE_wr4(SELF: instance)
      result[prefix2 + " .WHERE_wr5"] = _shape_aspect_relationship_representation_association.WHERE_wr5(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "SHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION", type: self, explicitAttributeCount: 2)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "REPRESENTING_REPRESENTATION_RELATIONSHIP", keyPath: \eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION.REPRESENTING_REPRESENTATION_RELATIONSHIP, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REPRESENTED_SHAPE_ASPECT_RELATIONSHIP", keyPath: \eSHAPE_ASPECT_RELATIONSHIP_REPRESENTATION_ASSOCIATION.REPRESENTED_SHAPE_ASPECT_RELATIONSHIP, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
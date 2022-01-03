/* file: draughting_callout.swift 	 generated: Mon Jan  3 16:32:52 2022 */

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

  ENTITY draughting_callout
    SUBTYPE OF ( geometric_representation_item );
      contents  : SET [1 : ?] OF draughting_callout_element; (* observed by
          annotation_placeholder_occurrence.the_callout
          *)
    WHERE
      wr1: ( ( SIZEOF( QUERY ( l_1 <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE'  IN TYPEOF( l_1 ) ) ) ) = 0 ) 
               OR ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_DIRECTED_CALLOUT' IN TYPEOF( 
               SELF ) ) AND ( SIZEOF( QUERY ( l_1 <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_CURVE'  IN TYPEOF( l_1 ) ) ) ) = 0 ) ) 
               OR ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_DIRECTED_CALLOUT' IN 
               TYPEOF( SELF ) ) AND ( SIZEOF( QUERY ( l_1 <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_CURVE'  IN TYPEOF( l_1 ) ) ) ) = 0 ) ) 
               OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_CURVE_DIRECTED_CALLOUT' IN 
               TYPEOF( SELF ) ) );
  END_ENTITY; -- draughting_callout (line:12976 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	geometric_representation_item
    ATTR:  dim,	TYPE: dimension_count -- DERIVED
      := dimension_of( SELF )


  ENTITY(SELF)	draughting_callout
    ATTR:  contents,	TYPE: SET [1 : ?] OF draughting_callout_element -- EXPLICIT
      -- observed by
        ENTITY(1): annotation_placeholder_occurrence,	ATTR: the_callout,	TYPE: draughting_callout


  SUB- ENTITY(4)	geometrical_tolerance_callout
    (no local attributes)

  SUB- ENTITY(5)	datum_feature_callout
    (no local attributes)

  SUB- ENTITY(6)	ordinate_dimension
    (no local attributes)

  SUB- ENTITY(7)	projection_directed_callout
    (no local attributes)

  SUB- ENTITY(8)	leader_directed_dimension
    (no local attributes)

  SUB- ENTITY(9)	leader_directed_callout
    (no local attributes)

  SUB- ENTITY(10)	surface_condition_callout
    (no local attributes)

  SUB- ENTITY(11)	structured_dimension_callout
    (no local attributes)

  SUB- ENTITY(12)	linear_dimension
    (no local attributes)

  SUB- ENTITY(13)	radius_dimension
    (no local attributes)

  SUB- ENTITY(14)	curve_dimension
    (no local attributes)

  SUB- ENTITY(15)	diameter_dimension
    (no local attributes)

  SUB- ENTITY(16)	angular_dimension
    (no local attributes)

  SUB- ENTITY(17)	dimension_curve_directed_callout
    (no local attributes)

  SUB- ENTITY(18)	datum_target_callout
    (no local attributes)

  SUB- ENTITY(19)	draughting_elements
    (no local attributes)

  SUB- ENTITY(20)	dimension_callout
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _draughting_callout : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDRAUGHTING_CALLOUT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _contents: SDAI.SET<sDRAUGHTING_CALLOUT_ELEMENT>/*[1:nil]*/ { // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __contents.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _contents__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__contents.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __contents: SDAI.SET<sDRAUGHTING_CALLOUT_ELEMENT>/*[1:nil]*/ 

    /// attribute observer code
    internal class _contents__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eANNOTATION_PLACEHOLDER_OCCURRENCE
            referencedComplex.partialEntityInstance(_annotation_placeholder_occurrence.self)?
              ._the_callout__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eANNOTATION_PLACEHOLDER_OCCURRENCE
            referencedComplex.partialEntityInstance(_annotation_placeholder_occurrence.self)?
              ._the_callout__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_draughting_callout.self)?._contents else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eANNOTATION_PLACEHOLDER_OCCURRENCE
        referencedComplex.partialEntityInstance(_annotation_placeholder_occurrence.self)?
          ._the_callout__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_draughting_callout.self)?._contents else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eANNOTATION_PLACEHOLDER_OCCURRENCE
        referencedComplex.partialEntityInstance(_annotation_placeholder_occurrence.self)?
          ._the_callout__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_SUBFIGURE_REPRESENTATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sANNOTATION_PLANE_ELEMENT.typeName)) // -> Self
      members.insert(SDAI.STRING(sDRAUGHTING_MODEL_ITEM_ASSOCIATION_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sINVISIBLE_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._contents.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._contents.value.isValueEqualOptionally(to: rhs._contents.value, visited: &comppairs)	{
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
      if let comp = self._contents.value.isValueEqualOptionally(to: rhs._contents.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eDRAUGHTING_CALLOUT?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eDRAUGHTING_CALLOUT.self)
      let _TEMP2 = _TEMP1?.CONTENTS
      let _TEMP3 = _TEMP2?.QUERY{ L_1 in 

          let _TEMP1 = SDAI.TYPEOF(L_1, IS: eLEADER_CURVE.self)
          return _TEMP1 }
      let _TEMP4 = SDAI.SIZEOF(_TEMP3)
      let _TEMP5 = _TEMP4 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP6 = SDAI.TYPEOF(SELF, IS: eLEADER_DIRECTED_CALLOUT.self)
      let _TEMP7 = SELF.GROUP_REF(eDRAUGHTING_CALLOUT.self)
      let _TEMP8 = _TEMP7?.CONTENTS
      let _TEMP9 = _TEMP8?.QUERY{ L_1 in 

          let _TEMP1 = SDAI.TYPEOF(L_1, IS: ePROJECTION_CURVE.self)
          return _TEMP1 }
      let _TEMP10 = SDAI.SIZEOF(_TEMP9)
      let _TEMP11 = _TEMP10 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP12 = _TEMP6 && _TEMP11
      let _TEMP13 = _TEMP5 || _TEMP12
      let _TEMP14 = SDAI.TYPEOF(SELF, IS: ePROJECTION_DIRECTED_CALLOUT.self)
      let _TEMP15 = SELF.GROUP_REF(eDRAUGHTING_CALLOUT.self)
      let _TEMP16 = _TEMP15?.CONTENTS
      let _TEMP17 = _TEMP16?.QUERY{ L_1 in 

          let _TEMP1 = SDAI.TYPEOF(L_1, IS: eDIMENSION_CURVE.self)
          return _TEMP1 }
      let _TEMP18 = SDAI.SIZEOF(_TEMP17)
      let _TEMP19 = _TEMP18 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(0))
      let _TEMP20 = _TEMP14 && _TEMP19
      let _TEMP21 = _TEMP13 || _TEMP20
      let _TEMP22 = SDAI.TYPEOF(SELF, IS: eDIMENSION_CURVE_DIRECTED_CALLOUT.self)
      let _TEMP23 = _TEMP21 || _TEMP22
      return _TEMP23
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(CONTENTS: SDAI.SET<sDRAUGHTING_CALLOUT_ELEMENT>/*[1:nil]*/ ) {
      self.__contents = CONTENTS
      super.init(asAbstructSuperclass:())

      self._contents.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _contents__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        sDRAUGHTING_CALLOUT_ELEMENT>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( CONTENTS: p0 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _contents__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _contents__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY draughting_callout
    SUBTYPE OF ( geometric_representation_item );
      contents  : SET [1 : ?] OF draughting_callout_element; (* observed by
          annotation_placeholder_occurrence.the_callout
          *)
    WHERE
      wr1: ( ( SIZEOF( QUERY ( l_1 <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_CURVE'  IN TYPEOF( l_1 ) ) ) ) = 0 ) 
               OR ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.LEADER_DIRECTED_CALLOUT' IN TYPEOF( 
               SELF ) ) AND ( SIZEOF( QUERY ( l_1 <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_CURVE'  IN TYPEOF( l_1 ) ) ) ) = 0 ) ) 
               OR ( ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PROJECTION_DIRECTED_CALLOUT' IN 
               TYPEOF( SELF ) ) AND ( SIZEOF( QUERY ( l_1 <* SELF\draughting_callout.contents | ( 
               'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_CURVE'  IN TYPEOF( l_1 ) ) ) ) = 0 ) ) 
               OR ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.DIMENSION_CURVE_DIRECTED_CALLOUT' IN 
               TYPEOF( SELF ) ) );
  END_ENTITY; -- draughting_callout (line:12976 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDRAUGHTING_CALLOUT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _draughting_callout.self
    }
    public let partialEntity: _draughting_callout

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eGEOMETRIC_REPRESENTATION_ITEM: eGEOMETRIC_REPRESENTATION_ITEM 	// [2]
    public var super_eDRAUGHTING_CALLOUT: eDRAUGHTING_CALLOUT { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eGEOMETRICAL_TOLERANCE_CALLOUT: eGEOMETRICAL_TOLERANCE_CALLOUT? {	// [4]
      return self.complexEntity.entityReference(eGEOMETRICAL_TOLERANCE_CALLOUT.self)
    }

    public var sub_eDATUM_FEATURE_CALLOUT: eDATUM_FEATURE_CALLOUT? {	// [5]
      return self.complexEntity.entityReference(eDATUM_FEATURE_CALLOUT.self)
    }

    public var sub_eORDINATE_DIMENSION: eORDINATE_DIMENSION? {	// [6]
      return self.complexEntity.entityReference(eORDINATE_DIMENSION.self)
    }

    public var sub_ePROJECTION_DIRECTED_CALLOUT: ePROJECTION_DIRECTED_CALLOUT? {	// [7]
      return self.complexEntity.entityReference(ePROJECTION_DIRECTED_CALLOUT.self)
    }

    public var sub_eLEADER_DIRECTED_DIMENSION: eLEADER_DIRECTED_DIMENSION? {	// [8]
      return self.complexEntity.entityReference(eLEADER_DIRECTED_DIMENSION.self)
    }

    public var sub_eLEADER_DIRECTED_CALLOUT: eLEADER_DIRECTED_CALLOUT? {	// [9]
      return self.complexEntity.entityReference(eLEADER_DIRECTED_CALLOUT.self)
    }

    public var sub_eSURFACE_CONDITION_CALLOUT: eSURFACE_CONDITION_CALLOUT? {	// [10]
      return self.complexEntity.entityReference(eSURFACE_CONDITION_CALLOUT.self)
    }

    public var sub_eSTRUCTURED_DIMENSION_CALLOUT: eSTRUCTURED_DIMENSION_CALLOUT? {	// [11]
      return self.complexEntity.entityReference(eSTRUCTURED_DIMENSION_CALLOUT.self)
    }

    public var sub_eLINEAR_DIMENSION: eLINEAR_DIMENSION? {	// [12]
      return self.complexEntity.entityReference(eLINEAR_DIMENSION.self)
    }

    public var sub_eRADIUS_DIMENSION: eRADIUS_DIMENSION? {	// [13]
      return self.complexEntity.entityReference(eRADIUS_DIMENSION.self)
    }

    public var sub_eCURVE_DIMENSION: eCURVE_DIMENSION? {	// [14]
      return self.complexEntity.entityReference(eCURVE_DIMENSION.self)
    }

    public var sub_eDIAMETER_DIMENSION: eDIAMETER_DIMENSION? {	// [15]
      return self.complexEntity.entityReference(eDIAMETER_DIMENSION.self)
    }

    public var sub_eANGULAR_DIMENSION: eANGULAR_DIMENSION? {	// [16]
      return self.complexEntity.entityReference(eANGULAR_DIMENSION.self)
    }

    public var sub_eDIMENSION_CURVE_DIRECTED_CALLOUT: eDIMENSION_CURVE_DIRECTED_CALLOUT? {	// [17]
      return self.complexEntity.entityReference(eDIMENSION_CURVE_DIRECTED_CALLOUT.self)
    }

    public var sub_eDATUM_TARGET_CALLOUT: eDATUM_TARGET_CALLOUT? {	// [18]
      return self.complexEntity.entityReference(eDATUM_TARGET_CALLOUT.self)
    }

    public var sub_eDRAUGHTING_ELEMENTS: eDRAUGHTING_ELEMENTS? {	// [19]
      return self.complexEntity.entityReference(eDRAUGHTING_ELEMENTS.self)
    }

    public var sub_eDIMENSION_CALLOUT: eDIMENSION_CALLOUT? {	// [20]
      return self.complexEntity.entityReference(eDIMENSION_CALLOUT.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eDRAUGHTING_CALLOUT`` )
    public var CONTENTS: SDAI.SET<sDRAUGHTING_CALLOUT_ELEMENT>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._contents )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._contents = SDAI.UNWRAP(newValue)
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
      guard let partial = complexEntity?.partialEntityInstance(_draughting_callout.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eGEOMETRIC_REPRESENTATION_ITEM.self) else { return nil }
      self.super_eGEOMETRIC_REPRESENTATION_ITEM = super2

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
      result[prefix2 + " .WHERE_wr1"] = _draughting_callout.WHERE_wr1(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DRAUGHTING_CALLOUT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eGEOMETRIC_REPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDRAUGHTING_CALLOUT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CONTENTS", keyPath: \eDRAUGHTING_CALLOUT.CONTENTS, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDRAUGHTING_CALLOUT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DIM", keyPath: \eDRAUGHTING_CALLOUT.DIM, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

/* file: representation_item_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY representation_item_relationship;
      name                          : label;
      description                   : OPTIONAL text;
      relating_representation_item  : representation_item;
      related_representation_item   : representation_item;
  END_ENTITY; -- representation_item_relationship (line:27480 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	representation_item_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  relating_representation_item,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: implicit_explicit_positioned_sketch_relationship,	TYPE: repositioned_neutral_sketch
          ENTITY: angle_direction_reference,	TYPE: orientation_basis_select
          ENTITY: geometric_model_element_relationship,	TYPE: geometric_representation_item
          ENTITY: a3ma_equivalence_criterion_assessment_threshold_relationship,	TYPE: different_placement_of_component	(OBSERVED)
          ENTITY: a3ma_assembly_and_shape_criteria_relationship,	TYPE: different_component_shape	(OBSERVED)
          ENTITY: data_quality_criterion_measurement_association,	TYPE: data_quality_criterion
          ENTITY: data_quality_report_measurement_association,	TYPE: data_quality_measurement_requirement
          ENTITY: near_point_relationship,	TYPE: curve_or_surface_constraint_element
          ENTITY: explicit_procedural_geometric_representation_item_relationship,	TYPE: procedural_shape_representation_sequence
          ENTITY: explicit_procedural_representation_item_relationship,	TYPE: procedural_representation_sequence
          ENTITY: min_and_major_ply_orientation_basis,	TYPE: axis2_placement_3d

    ATTR:  related_representation_item,	TYPE: representation_item -- EXPLICIT
      -- possibly overriden by
          ENTITY: implicit_explicit_positioned_sketch_relationship,	TYPE: positioned_sketch
          ENTITY: angle_direction_reference,	TYPE: angle_direction_reference_select
          ENTITY: geometric_model_element_relationship,	TYPE: geometric_representation_item
          ENTITY: a3ma_equivalence_criterion_assessment_threshold_relationship,	TYPE: shape_data_quality_lower_value_limit
          ENTITY: a3ma_assembly_and_shape_criteria_relationship,	TYPE: a3m_equivalence_criterion_for_shape
          ENTITY: data_quality_criterion_measurement_association,	TYPE: data_quality_measurement_requirement
          ENTITY: data_quality_report_measurement_association,	TYPE: data_quality_inspection_report
          ENTITY: near_point_relationship,	TYPE: point
          ENTITY: explicit_procedural_geometric_representation_item_relationship,	TYPE: geometric_representation_item
          ENTITY: min_and_major_ply_orientation_basis,	TYPE: axis2_placement_3d


  SUB- ENTITY(2)	implicit_explicit_positioned_sketch_relationship
    REDCR: relating_representation_item,	TYPE: repositioned_neutral_sketch -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: positioned_sketch -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(3)	angle_direction_reference
    REDCR: relating_representation_item,	TYPE: orientation_basis_select -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: angle_direction_reference_select -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(4)	geometric_model_element_relationship
    REDCR: relating_representation_item,	TYPE: geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(5)	a3ma_equivalence_criterion_assessment_threshold_relationship
    REDCR: relating_representation_item,	TYPE: different_placement_of_component -- EXPLICIT
      -- observed by
        ENTITY(1): different_placement_of_component,	ATTR: assessment_threshold_2,	TYPE: 
          a3ma_equivalence_criterion_assessment_threshold_relationship
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: shape_data_quality_lower_value_limit -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(6)	a3ma_assembly_and_shape_criteria_relationship
    REDCR: relating_representation_item,	TYPE: different_component_shape -- EXPLICIT
      -- observed by
        ENTITY(1): different_component_shape,	ATTR: shape_criteria,	TYPE: SET [1 : ?] OF
          a3ma_assembly_and_shape_criteria_relationship
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: a3m_equivalence_criterion_for_shape -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(7)	data_quality_criterion_measurement_association
    REDCR: relating_representation_item,	TYPE: data_quality_criterion -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: data_quality_measurement_requirement -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(8)	data_quality_report_measurement_association
    REDCR: relating_representation_item,	TYPE: data_quality_measurement_requirement -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: data_quality_inspection_report -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(9)	global_assignment
    (no local attributes)

  SUB- ENTITY(10)	near_point_relationship
    REDCR: relating_representation_item,	TYPE: curve_or_surface_constraint_element -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: point -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(11)	explicit_procedural_geometric_representation_item_relationship
    REDCR: relating_representation_item,	TYPE: procedural_shape_representation_sequence -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: geometric_representation_item -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(12)	explicit_procedural_representation_item_relationship
    REDCR: relating_representation_item,	TYPE: procedural_representation_sequence -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship


  SUB- ENTITY(13)	min_and_major_ply_orientation_basis
    REDCR: relating_representation_item,	TYPE: axis2_placement_3d -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    REDCR: related_representation_item,	TYPE: axis2_placement_3d -- EXPLICIT
      -- OVERRIDING ENTITY: representation_item_relationship

    ATTR:  major_orientation_basis,	TYPE: axis2_placement_3d -- DERIVED
      := SELF\representation_item_relationship.related_representation_item

    ATTR:  minor_orientation_basis,	TYPE: axis2_placement_3d -- DERIVED
      := SELF\representation_item_relationship.relating_representation_item


*/


//MARK: - Partial Entity
  public final class _representation_item_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPRESENTATION_ITEM_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (SUBTYPE ATTR OBSERVED)
    public internal(set) var _relating_representation_item: eREPRESENTATION_ITEM{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __relating_representation_item.copy()
      } // getter
      set {
        let newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _relating_representation_item__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__relating_representation_item.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __relating_representation_item: eREPRESENTATION_ITEM

    /// attribute observer code
    internal class _relating_representation_item__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eDIFFERENT_PLACEMENT_OF_COMPONENT
            referencedComplex.partialEntityInstance(_different_placement_of_component.self)?
              ._assessment_threshold_2__observeRemovedReference(in: referencerOwner)
            //OBSERVING ENTITY: eDIFFERENT_COMPONENT_SHAPE
            referencedComplex.partialEntityInstance(_different_component_shape.self)?
              ._shape_criteria__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eDIFFERENT_PLACEMENT_OF_COMPONENT
            referencedComplex.partialEntityInstance(_different_placement_of_component.self)?
              ._assessment_threshold_2__observeAddedReference(in: referencerOwner)
            //OBSERVING ENTITY: eDIFFERENT_COMPONENT_SHAPE
            referencedComplex.partialEntityInstance(_different_component_shape.self)?
              ._shape_criteria__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_representation_item_relationship.self)?._relating_representation_item else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eDIFFERENT_PLACEMENT_OF_COMPONENT
        referencedComplex.partialEntityInstance(_different_placement_of_component.self)?
          ._assessment_threshold_2__observeAddedReference(in: referencerOwner)
        //OBSERVING ENTITY: eDIFFERENT_COMPONENT_SHAPE
        referencedComplex.partialEntityInstance(_different_component_shape.self)?
          ._shape_criteria__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_representation_item_relationship.self)?._relating_representation_item else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eDIFFERENT_PLACEMENT_OF_COMPONENT
        referencedComplex.partialEntityInstance(_different_placement_of_component.self)?
          ._assessment_threshold_2__observe(leavingReferencerOwner: referencerOwner)
        //OBSERVING ENTITY: eDIFFERENT_COMPONENT_SHAPE
        referencedComplex.partialEntityInstance(_different_component_shape.self)?
          ._shape_criteria__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _related_representation_item: eREPRESENTATION_ITEM // PLAIN EXPLICIT ATTRIBUTE

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
      self._relating_representation_item.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._related_representation_item.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._relating_representation_item.value.isValueEqualOptionally(to: rhs._relating_representation_item.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._related_representation_item.value.isValueEqualOptionally(to: rhs._related_representation_item.value, visited: &comppairs)	{
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
      if let comp = self._relating_representation_item.value.isValueEqualOptionally(to: rhs._relating_representation_item.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._related_representation_item.value.isValueEqualOptionally(to: rhs._related_representation_item.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , RELATING_REPRESENTATION_ITEM: eREPRESENTATION_ITEM, 
                RELATED_REPRESENTATION_ITEM: eREPRESENTATION_ITEM) {
      self._name = NAME
      self._description = DESCRIPTION
      self.__relating_representation_item = RELATING_REPRESENTATION_ITEM
      self._related_representation_item = RELATED_REPRESENTATION_ITEM
      super.init(asAbstructSuperclass:())

      self._relating_representation_item.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _relating_representation_item__observer.self))
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: eREPRESENTATION_ITEM.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eREPRESENTATION_ITEM.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, RELATING_REPRESENTATION_ITEM: p2, RELATED_REPRESENTATION_ITEM: p3 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _relating_representation_item__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _relating_representation_item__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY representation_item_relationship;
      name                          : label;
      description                   : OPTIONAL text;
      relating_representation_item  : representation_item;
      related_representation_item   : representation_item;
  END_ENTITY; -- representation_item_relationship (line:27480 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPRESENTATION_ITEM_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _representation_item_relationship.self
    }
    public let partialEntity: _representation_item_relationship

    //MARK: SUPERTYPES
    public var super_eREPRESENTATION_ITEM_RELATIONSHIP: eREPRESENTATION_ITEM_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eIMPLICIT_EXPLICIT_POSITIONED_SKETCH_RELATIONSHIP: eIMPLICIT_EXPLICIT_POSITIONED_SKETCH_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eIMPLICIT_EXPLICIT_POSITIONED_SKETCH_RELATIONSHIP.self)
    }

    public var sub_eANGLE_DIRECTION_REFERENCE: eANGLE_DIRECTION_REFERENCE? {	// [3]
      return self.complexEntity.entityReference(eANGLE_DIRECTION_REFERENCE.self)
    }

    public var sub_eGEOMETRIC_MODEL_ELEMENT_RELATIONSHIP: eGEOMETRIC_MODEL_ELEMENT_RELATIONSHIP? {	// [4]
      return self.complexEntity.entityReference(eGEOMETRIC_MODEL_ELEMENT_RELATIONSHIP.self)
    }

    public var sub_eA3MA_EQUIVALENCE_CRITERION_ASSESSMENT_THRESHOLD_RELATIONSHIP: eA3MA_EQUIVALENCE_CRITERION_ASSESSMENT_THRESHOLD_RELATIONSHIP? {	// [5]
      return self.complexEntity.entityReference(eA3MA_EQUIVALENCE_CRITERION_ASSESSMENT_THRESHOLD_RELATIONSHIP.self)
    }

    public var sub_eA3MA_ASSEMBLY_AND_SHAPE_CRITERIA_RELATIONSHIP: eA3MA_ASSEMBLY_AND_SHAPE_CRITERIA_RELATIONSHIP? {	// [6]
      return self.complexEntity.entityReference(eA3MA_ASSEMBLY_AND_SHAPE_CRITERIA_RELATIONSHIP.self)
    }

    public var sub_eDATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION: eDATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION? {	// [7]
      return self.complexEntity.entityReference(eDATA_QUALITY_CRITERION_MEASUREMENT_ASSOCIATION.self)
    }

    public var sub_eDATA_QUALITY_REPORT_MEASUREMENT_ASSOCIATION: eDATA_QUALITY_REPORT_MEASUREMENT_ASSOCIATION? {	// [8]
      return self.complexEntity.entityReference(eDATA_QUALITY_REPORT_MEASUREMENT_ASSOCIATION.self)
    }

    public var sub_eGLOBAL_ASSIGNMENT: eGLOBAL_ASSIGNMENT? {	// [9]
      return self.complexEntity.entityReference(eGLOBAL_ASSIGNMENT.self)
    }

    public var sub_eNEAR_POINT_RELATIONSHIP: eNEAR_POINT_RELATIONSHIP? {	// [10]
      return self.complexEntity.entityReference(eNEAR_POINT_RELATIONSHIP.self)
    }

    public var sub_eEXPLICIT_PROCEDURAL_GEOMETRIC_REPRESENTATION_ITEM_RELATIONSHIP: eEXPLICIT_PROCEDURAL_GEOMETRIC_REPRESENTATION_ITEM_RELATIONSHIP? {	// [11]
      return self.complexEntity.entityReference(eEXPLICIT_PROCEDURAL_GEOMETRIC_REPRESENTATION_ITEM_RELATIONSHIP.self)
    }

    public var sub_eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP: eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP? {	// [12]
      return self.complexEntity.entityReference(eEXPLICIT_PROCEDURAL_REPRESENTATION_ITEM_RELATIONSHIP.self)
    }

    public var sub_eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS: eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS? {	// [13]
      return self.complexEntity.entityReference(eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return self.partialEntity._description
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._description = newValue
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS`` )
    public var MAJOR_ORIENTATION_BASIS: eAXIS2_PLACEMENT_3D?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"MAJOR_ORIENTATION_BASIS") {
          return cached.value as! eAXIS2_PLACEMENT_3D? 
        }
        guard let origin = sub_eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS else { return nil }
        let value = eAXIS2_PLACEMENT_3D(origin.partialEntity._major_orientation_basis__getter(SELF: origin))
        updateCache(derivedAttributeName:"MAJOR_ORIENTATION_BASIS", value:value)
        return value
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS`` )
    public var MINOR_ORIENTATION_BASIS: eAXIS2_PLACEMENT_3D?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"MINOR_ORIENTATION_BASIS") {
          return cached.value as! eAXIS2_PLACEMENT_3D? 
        }
        guard let origin = sub_eMIN_AND_MAJOR_PLY_ORIENTATION_BASIS else { return nil }
        let value = eAXIS2_PLACEMENT_3D(origin.partialEntity._minor_orientation_basis__getter(SELF: origin))
        updateCache(derivedAttributeName:"MINOR_ORIENTATION_BASIS", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var RELATED_REPRESENTATION_ITEM: eREPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( self.partialEntity._related_representation_item )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._related_representation_item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( self.partialEntity._name )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_ITEM_RELATIONSHIP`` )
    public var RELATING_REPRESENTATION_ITEM: eREPRESENTATION_ITEM {
      get {
        return SDAI.UNWRAP( self.partialEntity._relating_representation_item )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._relating_representation_item = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_representation_item_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_representation_item_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPRESENTATION_ITEM_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eREPRESENTATION_ITEM_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MAJOR_ORIENTATION_BASIS", keyPath: \eREPRESENTATION_ITEM_RELATIONSHIP.MAJOR_ORIENTATION_BASIS, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MINOR_ORIENTATION_BASIS", keyPath: \eREPRESENTATION_ITEM_RELATIONSHIP.MINOR_ORIENTATION_BASIS, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "RELATED_REPRESENTATION_ITEM", keyPath: \eREPRESENTATION_ITEM_RELATIONSHIP.RELATED_REPRESENTATION_ITEM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eREPRESENTATION_ITEM_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "RELATING_REPRESENTATION_ITEM", keyPath: \eREPRESENTATION_ITEM_RELATIONSHIP.RELATING_REPRESENTATION_ITEM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}
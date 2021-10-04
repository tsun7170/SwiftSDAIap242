/* file: representation_relationship.swift 	 generated: Sat Aug 14 13:46:02 2021 */

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

  ENTITY representation_relationship;
      name         : label;
      description  : OPTIONAL text;
      rep_1        : representation_or_representation_reference;
      rep_2        : representation_or_representation_reference;
  END_ENTITY; -- representation_relationship (line:27506 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	representation_relationship
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  rep_1,	TYPE: representation_or_representation_reference -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_and_draughting_relationship,	TYPE: mechanical_design_and_draughting_relationship_select
          ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation_or_shape_representation
          ENTITY: kinematic_link_representation_association,	TYPE: kinematic_link_representation	(OBSERVED)
          ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_representation
          ENTITY: item_link_motion_relationship,	TYPE: shape_representation
          ENTITY: explicit_procedural_representation_relationship,	TYPE: procedural_representation
          ENTITY: link_motion_relationship,	TYPE: link_or_shape_representation
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: variational_current_representation_relationship,	TYPE: variational_representation	(OBSERVED)
          ENTITY: ply_orientation_angle,	TYPE: reinforcement_orientation_basis
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: procedural_shape_representation

    ATTR:  rep_2,	TYPE: representation_or_representation_reference -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_and_draughting_relationship,	TYPE: mechanical_design_and_draughting_relationship_select
          ENTITY: constructive_geometry_representation_relationship,	TYPE: constructive_geometry_representation
          ENTITY: kinematic_link_representation_association,	TYPE: shape_representation
          ENTITY: binary_assembly_constraint,	TYPE: representative_shape_representation
          ENTITY: shape_data_quality_inspected_shape_and_result_relationship,	TYPE: shape_data_quality_inspection_result_representation
          ENTITY: link_motion_relationship,	TYPE: link_motion_representation_along_path
          ENTITY: pair_representation_relationship,	TYPE: kinematic_link_representation
          ENTITY: ply_orientation_angle,	TYPE: ply_angle_representation
          ENTITY: constrained_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: free_kinematic_motion_representation,	TYPE: representative_shape_representation
          ENTITY: explicit_procedural_shape_representation_relationship,	TYPE: shape_representation


  SUB- ENTITY(2)	shape_data_quality_inspected_shape_and_result_relationship
    REDCR: rep_1,	TYPE: shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: shape_data_quality_inspection_result_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(3)	flat_pattern_ply_representation_relationship
    (no local attributes)

  SUB- ENTITY(4)	shape_representation_relationship
    (no local attributes)

  SUB- ENTITY(5)	constructive_geometry_representation_relationship
    REDCR: rep_1,	TYPE: constructive_geometry_representation_or_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: constructive_geometry_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(6)	evaluated_characteristic_of_product_as_individual_test_result
    (no local attributes)

  SUB- ENTITY(7)	evaluated_characteristic
    (no local attributes)

  SUB- ENTITY(8)	kinematic_link_representation_association
    REDCR: rep_1,	TYPE: kinematic_link_representation -- EXPLICIT
      -- observed by
        ENTITY(1): kinematic_link_representation,	ATTR: associated_shape_representation,	TYPE: SET [0 : 1] OF
          kinematic_link_representation_association
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(9)	drawing_sheet_revision_sequence
    (no local attributes)

  SUB- ENTITY(10)	surface_distance_assembly_constraint_with_dimension
    (no local attributes)

  SUB- ENTITY(11)	perpendicular_assembly_constraint
    (no local attributes)

  SUB- ENTITY(12)	parallel_assembly_constraint_with_dimension
    (no local attributes)

  SUB- ENTITY(13)	parallel_assembly_constraint
    (no local attributes)

  SUB- ENTITY(14)	angle_assembly_constraint_with_dimension
    (no local attributes)

  SUB- ENTITY(15)	incidence_assembly_constraint
    (no local attributes)

  SUB- ENTITY(16)	coaxial_assembly_constraint
    (no local attributes)

  SUB- ENTITY(17)	tangent_assembly_constraint
    (no local attributes)

  SUB- ENTITY(18)	binary_assembly_constraint
    REDCR: rep_1,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(19)	item_link_motion_relationship
    REDCR: rep_1,	TYPE: shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    ATTR:  item,	TYPE: geometric_representation_item -- EXPLICIT


  SUB- ENTITY(20)	link_motion_relationship
    REDCR: rep_1,	TYPE: link_or_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: link_motion_representation_along_path -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: transformation_operator,	TYPE: link_motion_transformation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship_with_transformation


  SUB- ENTITY(21)	pair_representation_relationship
    REDCR: rep_1,	TYPE: kinematic_link_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: kinematic_link_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: transformation_operator,	TYPE: kinematic_pair -- EXPLICIT
      -- observed by
        ENTITY(1): kinematic_pair,	ATTR: link_representation_associations,	TYPE: SET [1 : ?] OF
          pair_representation_relationship
      -- OVERRIDING ENTITY: representation_relationship_with_transformation


  SUB- ENTITY(22)	constrained_kinematic_motion_representation
    REDCR: rep_1,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(23)	free_kinematic_motion_representation
    REDCR: rep_1,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: representative_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    ATTR:  motion,	TYPE: kinematic_path -- EXPLICIT


  SUB- ENTITY(24)	representation_relationship_with_transformation
    ATTR:  transformation_operator,	TYPE: transformation -- EXPLICIT
      -- possibly overriden by
          ENTITY: link_motion_relationship,	TYPE: link_motion_transformation
          ENTITY: pair_representation_relationship,	TYPE: kinematic_pair	(OBSERVED)


  SUB- ENTITY(25)	explicit_procedural_shape_representation_relationship
    REDCR: rep_1,	TYPE: procedural_shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: shape_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(26)	explicit_procedural_representation_relationship
    REDCR: rep_1,	TYPE: procedural_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(27)	variational_current_representation_relationship
    REDCR: rep_1,	TYPE: variational_representation -- EXPLICIT
      -- observed by
        ENTITY(1): variational_representation,	ATTR: cm_link,	TYPE: 
          variational_current_representation_relationship
      -- OVERRIDING ENTITY: representation_relationship

    ATTR:  current_result,	TYPE: representation -- EXPLICIT


  SUB- ENTITY(28)	laid_orientation_angle
    (no local attributes)

  SUB- ENTITY(29)	draped_orientation_angle
    (no local attributes)

  SUB- ENTITY(30)	ply_orientation_angle
    REDCR: rep_1,	TYPE: reinforcement_orientation_basis -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: ply_angle_representation -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(31)	mechanical_design_and_draughting_relationship
    REDCR: rep_1,	TYPE: mechanical_design_and_draughting_relationship_select -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship

    REDCR: rep_2,	TYPE: mechanical_design_and_draughting_relationship_select -- EXPLICIT
      -- OVERRIDING ENTITY: representation_relationship


  SUB- ENTITY(32)	definitional_representation_relationship_with_same_context
    (no local attributes)

  SUB- ENTITY(33)	definitional_representation_relationship
    (no local attributes)

  SUB- ENTITY(34)	face_shape_representation_relationship
    (no local attributes)

*/


//MARK: - Partial Entity
  public final class _representation_relationship : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eREPRESENTATION_RELATIONSHIP.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (SUBTYPE ATTR OBSERVED)
    public internal(set) var _rep_1: sREPRESENTATION_OR_REPRESENTATION_REFERENCE{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __rep_1.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _rep_1__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__rep_1.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __rep_1: sREPRESENTATION_OR_REPRESENTATION_REFERENCE

    /// attribute observer code
    internal class _rep_1__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eKINEMATIC_LINK_REPRESENTATION
            referencedComplex.partialEntityInstance(_kinematic_link_representation.self)?
              ._associated_shape_representation__observeRemovedReference(in: referencerOwner)
            //OBSERVING ENTITY: eVARIATIONAL_REPRESENTATION
            referencedComplex.partialEntityInstance(_variational_representation.self)?
              ._cm_link__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eKINEMATIC_LINK_REPRESENTATION
            referencedComplex.partialEntityInstance(_kinematic_link_representation.self)?
              ._associated_shape_representation__observeAddedReference(in: referencerOwner)
            //OBSERVING ENTITY: eVARIATIONAL_REPRESENTATION
            referencedComplex.partialEntityInstance(_variational_representation.self)?
              ._cm_link__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_representation_relationship.self)?._rep_1 else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eKINEMATIC_LINK_REPRESENTATION
        referencedComplex.partialEntityInstance(_kinematic_link_representation.self)?
          ._associated_shape_representation__observeAddedReference(in: referencerOwner)
        //OBSERVING ENTITY: eVARIATIONAL_REPRESENTATION
        referencedComplex.partialEntityInstance(_variational_representation.self)?
          ._cm_link__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_representation_relationship.self)?._rep_1 else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eKINEMATIC_LINK_REPRESENTATION
        referencedComplex.partialEntityInstance(_kinematic_link_representation.self)?
          ._associated_shape_representation__observe(leavingReferencerOwner: referencerOwner)
        //OBSERVING ENTITY: eVARIATIONAL_REPRESENTATION
        referencedComplex.partialEntityInstance(_variational_representation.self)?
          ._cm_link__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _rep_2: sREPRESENTATION_OR_REPRESENTATION_REFERENCE // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sSTYLE_CONTEXT_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sCLASSIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_ITEMS.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sCHANGE_MANAGEMENT_OBJECT.typeName)) // -> sACTION_ITEMS
      members.insert(SDAI.STRING(sIR_USAGE_ITEM.typeName)) // -> sCLASSIFICATION_ITEM
      members.insert(SDAI.STRING(sMULTI_LANGUAGE_ATTRIBUTE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sIDENTIFICATION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sAPPROVAL_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sACTION_METHOD_ITEMS.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHAINED_REPRESENTATION_LINK.typeName)) // -> Self
      members.insert(SDAI.STRING(sGENERAL_ORGANIZATIONAL_DATA_SELECT.typeName)) // -> Self
      members.insert(SDAI.STRING(sEVENT_OCCURRENCE_ITEM.typeName)) // -> sGENERAL_ORGANIZATIONAL_DATA_SELECT
      members.insert(SDAI.STRING(sDESCRIPTION_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sATTRIBUTE_LANGUAGE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sDOCUMENT_REFERENCE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sGROUPABLE_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sEFFECTIVITY_ITEM.typeName)) // -> Self
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._rep_1.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._rep_2.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._rep_1.value.isValueEqualOptionally(to: rhs._rep_1.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._rep_2.value.isValueEqualOptionally(to: rhs._rep_2.value, visited: &comppairs)	{
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
      if let comp = self._rep_1.value.isValueEqualOptionally(to: rhs._rep_1.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._rep_2.value.isValueEqualOptionally(to: rhs._rep_2.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , REP_1: sREPRESENTATION_OR_REPRESENTATION_REFERENCE, 
                REP_2: sREPRESENTATION_OR_REPRESENTATION_REFERENCE) {
      self._name = NAME
      self._description = DESCRIPTION
      self.__rep_1 = REP_1
      self._rep_2 = REP_2
      super.init(asAbstructSuperclass:())

      self._rep_1.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _rep_1__observer.self))
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

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: 
        sREPRESENTATION_OR_REPRESENTATION_REFERENCE.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: 
        sREPRESENTATION_OR_REPRESENTATION_REFERENCE.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, REP_1: p2, REP_2: p3 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _rep_1__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _rep_1__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY representation_relationship;
      name         : label;
      description  : OPTIONAL text;
      rep_1        : representation_or_representation_reference;
      rep_2        : representation_or_representation_reference;
  END_ENTITY; -- representation_relationship (line:27506 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eREPRESENTATION_RELATIONSHIP : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _representation_relationship.self
    }
    public let partialEntity: _representation_relationship

    //MARK: SUPERTYPES
    public var super_eREPRESENTATION_RELATIONSHIP: eREPRESENTATION_RELATIONSHIP { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP: eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP? {	// [2]
      return self.complexEntity.entityReference(eSHAPE_DATA_QUALITY_INSPECTED_SHAPE_AND_RESULT_RELATIONSHIP.self)
    }

    public var sub_eFLAT_PATTERN_PLY_REPRESENTATION_RELATIONSHIP: eFLAT_PATTERN_PLY_REPRESENTATION_RELATIONSHIP? {	// [3]
      return self.complexEntity.entityReference(eFLAT_PATTERN_PLY_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eSHAPE_REPRESENTATION_RELATIONSHIP: eSHAPE_REPRESENTATION_RELATIONSHIP? {	// [4]
      return self.complexEntity.entityReference(eSHAPE_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP: eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP? {	// [5]
      return self.complexEntity.entityReference(eCONSTRUCTIVE_GEOMETRY_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT: eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT? {	// [6]
      return self.complexEntity.entityReference(eEVALUATED_CHARACTERISTIC_OF_PRODUCT_AS_INDIVIDUAL_TEST_RESULT.self)
    }

    public var sub_eEVALUATED_CHARACTERISTIC: eEVALUATED_CHARACTERISTIC? {	// [7]
      return self.complexEntity.entityReference(eEVALUATED_CHARACTERISTIC.self)
    }

    public var sub_eKINEMATIC_LINK_REPRESENTATION_ASSOCIATION: eKINEMATIC_LINK_REPRESENTATION_ASSOCIATION? {	// [8]
      return self.complexEntity.entityReference(eKINEMATIC_LINK_REPRESENTATION_ASSOCIATION.self)
    }

    public var sub_eDRAWING_SHEET_REVISION_SEQUENCE: eDRAWING_SHEET_REVISION_SEQUENCE? {	// [9]
      return self.complexEntity.entityReference(eDRAWING_SHEET_REVISION_SEQUENCE.self)
    }

    public var sub_eSURFACE_DISTANCE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION: eSURFACE_DISTANCE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION? {	// [10]
      return self.complexEntity.entityReference(eSURFACE_DISTANCE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION.self)
    }

    public var sub_ePERPENDICULAR_ASSEMBLY_CONSTRAINT: ePERPENDICULAR_ASSEMBLY_CONSTRAINT? {	// [11]
      return self.complexEntity.entityReference(ePERPENDICULAR_ASSEMBLY_CONSTRAINT.self)
    }

    public var sub_ePARALLEL_ASSEMBLY_CONSTRAINT_WITH_DIMENSION: ePARALLEL_ASSEMBLY_CONSTRAINT_WITH_DIMENSION? {	// [12]
      return self.complexEntity.entityReference(ePARALLEL_ASSEMBLY_CONSTRAINT_WITH_DIMENSION.self)
    }

    public var sub_ePARALLEL_ASSEMBLY_CONSTRAINT: ePARALLEL_ASSEMBLY_CONSTRAINT? {	// [13]
      return self.complexEntity.entityReference(ePARALLEL_ASSEMBLY_CONSTRAINT.self)
    }

    public var sub_eANGLE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION: eANGLE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION? {	// [14]
      return self.complexEntity.entityReference(eANGLE_ASSEMBLY_CONSTRAINT_WITH_DIMENSION.self)
    }

    public var sub_eINCIDENCE_ASSEMBLY_CONSTRAINT: eINCIDENCE_ASSEMBLY_CONSTRAINT? {	// [15]
      return self.complexEntity.entityReference(eINCIDENCE_ASSEMBLY_CONSTRAINT.self)
    }

    public var sub_eCOAXIAL_ASSEMBLY_CONSTRAINT: eCOAXIAL_ASSEMBLY_CONSTRAINT? {	// [16]
      return self.complexEntity.entityReference(eCOAXIAL_ASSEMBLY_CONSTRAINT.self)
    }

    public var sub_eTANGENT_ASSEMBLY_CONSTRAINT: eTANGENT_ASSEMBLY_CONSTRAINT? {	// [17]
      return self.complexEntity.entityReference(eTANGENT_ASSEMBLY_CONSTRAINT.self)
    }

    public var sub_eBINARY_ASSEMBLY_CONSTRAINT: eBINARY_ASSEMBLY_CONSTRAINT? {	// [18]
      return self.complexEntity.entityReference(eBINARY_ASSEMBLY_CONSTRAINT.self)
    }

    public var sub_eITEM_LINK_MOTION_RELATIONSHIP: eITEM_LINK_MOTION_RELATIONSHIP? {	// [19]
      return self.complexEntity.entityReference(eITEM_LINK_MOTION_RELATIONSHIP.self)
    }

    public var sub_eLINK_MOTION_RELATIONSHIP: eLINK_MOTION_RELATIONSHIP? {	// [20]
      return self.complexEntity.entityReference(eLINK_MOTION_RELATIONSHIP.self)
    }

    public var sub_ePAIR_REPRESENTATION_RELATIONSHIP: ePAIR_REPRESENTATION_RELATIONSHIP? {	// [21]
      return self.complexEntity.entityReference(ePAIR_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION: eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION? {	// [22]
      return self.complexEntity.entityReference(eCONSTRAINED_KINEMATIC_MOTION_REPRESENTATION.self)
    }

    public var sub_eFREE_KINEMATIC_MOTION_REPRESENTATION: eFREE_KINEMATIC_MOTION_REPRESENTATION? {	// [23]
      return self.complexEntity.entityReference(eFREE_KINEMATIC_MOTION_REPRESENTATION.self)
    }

    public var sub_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION: eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION? {	// [24]
      return self.complexEntity.entityReference(eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION.self)
    }

    public var sub_eEXPLICIT_PROCEDURAL_SHAPE_REPRESENTATION_RELATIONSHIP: eEXPLICIT_PROCEDURAL_SHAPE_REPRESENTATION_RELATIONSHIP? {	// [25]
      return self.complexEntity.entityReference(eEXPLICIT_PROCEDURAL_SHAPE_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eEXPLICIT_PROCEDURAL_REPRESENTATION_RELATIONSHIP: eEXPLICIT_PROCEDURAL_REPRESENTATION_RELATIONSHIP? {	// [26]
      return self.complexEntity.entityReference(eEXPLICIT_PROCEDURAL_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP: eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP? {	// [27]
      return self.complexEntity.entityReference(eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eLAID_ORIENTATION_ANGLE: eLAID_ORIENTATION_ANGLE? {	// [28]
      return self.complexEntity.entityReference(eLAID_ORIENTATION_ANGLE.self)
    }

    public var sub_eDRAPED_ORIENTATION_ANGLE: eDRAPED_ORIENTATION_ANGLE? {	// [29]
      return self.complexEntity.entityReference(eDRAPED_ORIENTATION_ANGLE.self)
    }

    public var sub_ePLY_ORIENTATION_ANGLE: ePLY_ORIENTATION_ANGLE? {	// [30]
      return self.complexEntity.entityReference(ePLY_ORIENTATION_ANGLE.self)
    }

    public var sub_eMECHANICAL_DESIGN_AND_DRAUGHTING_RELATIONSHIP: eMECHANICAL_DESIGN_AND_DRAUGHTING_RELATIONSHIP? {	// [31]
      return self.complexEntity.entityReference(eMECHANICAL_DESIGN_AND_DRAUGHTING_RELATIONSHIP.self)
    }

    public var sub_eDEFINITIONAL_REPRESENTATION_RELATIONSHIP_WITH_SAME_CONTEXT: eDEFINITIONAL_REPRESENTATION_RELATIONSHIP_WITH_SAME_CONTEXT? {	// [32]
      return self.complexEntity.entityReference(eDEFINITIONAL_REPRESENTATION_RELATIONSHIP_WITH_SAME_CONTEXT.self)
    }

    public var sub_eDEFINITIONAL_REPRESENTATION_RELATIONSHIP: eDEFINITIONAL_REPRESENTATION_RELATIONSHIP? {	// [33]
      return self.complexEntity.entityReference(eDEFINITIONAL_REPRESENTATION_RELATIONSHIP.self)
    }

    public var sub_eFACE_SHAPE_REPRESENTATION_RELATIONSHIP: eFACE_SHAPE_REPRESENTATION_RELATIONSHIP? {	// [34]
      return self.complexEntity.entityReference(eFACE_SHAPE_REPRESENTATION_RELATIONSHIP.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP`` )
    public var CURRENT_RESULT: eREPRESENTATION?  {
      get {
        return sub_eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP?.partialEntity._current_result
      }
      set(newValue) {
        guard let partial = sub_eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP?.super_eVARIATIONAL_CURRENT_REPRESENTATION_RELATIONSHIP
          .partialEntity else { return }
        partial._current_result = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_RELATIONSHIP`` )
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
    /// - origin: SUB( ``eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION`` )
    public var TRANSFORMATION_OPERATOR: sTRANSFORMATION?  {
      get {
        return sub_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION?.partialEntity._transformation_operator
      }
      set(newValue) {
        guard let partial = sub_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION?.super_eREPRESENTATION_RELATIONSHIP_WITH_TRANSFORMATION
          .partialEntity else { return }
        partial._transformation_operator = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eITEM_LINK_MOTION_RELATIONSHIP`` )
    public var ITEM: eGEOMETRIC_REPRESENTATION_ITEM?  {
      get {
        return sub_eITEM_LINK_MOTION_RELATIONSHIP?.partialEntity._item
      }
      set(newValue) {
        guard let partial = sub_eITEM_LINK_MOTION_RELATIONSHIP?.super_eITEM_LINK_MOTION_RELATIONSHIP
          .partialEntity else { return }
        partial._item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_RELATIONSHIP`` )
    public var REP_1: sREPRESENTATION_OR_REPRESENTATION_REFERENCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._rep_1 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._rep_1 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_RELATIONSHIP`` )
    public var REP_2: sREPRESENTATION_OR_REPRESENTATION_REFERENCE {
      get {
        return SDAI.UNWRAP( self.partialEntity._rep_2 )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._rep_2 = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eREPRESENTATION_RELATIONSHIP`` )
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
    /// - origin: SUB( ``eFREE_KINEMATIC_MOTION_REPRESENTATION`` )
    public var MOTION: eKINEMATIC_PATH?  {
      get {
        return sub_eFREE_KINEMATIC_MOTION_REPRESENTATION?.partialEntity._motion
      }
      set(newValue) {
        guard let partial = sub_eFREE_KINEMATIC_MOTION_REPRESENTATION?.super_eFREE_KINEMATIC_MOTION_REPRESENTATION
          .partialEntity else { return }
        partial._motion = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_representation_relationship.self) else { return nil }
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
    public convenience init?(_ partial:_representation_relationship) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "REPRESENTATION_RELATIONSHIP", type: self, explicitAttributeCount: 4)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_RELATIONSHIP.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "CURRENT_RESULT", keyPath: \eREPRESENTATION_RELATIONSHIP.CURRENT_RESULT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eREPRESENTATION_RELATIONSHIP.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "TRANSFORMATION_OPERATOR", keyPath: \eREPRESENTATION_RELATIONSHIP.TRANSFORMATION_OPERATOR, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ITEM", keyPath: \eREPRESENTATION_RELATIONSHIP.ITEM, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_1", keyPath: \eREPRESENTATION_RELATIONSHIP.REP_1, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REP_2", keyPath: \eREPRESENTATION_RELATIONSHIP.REP_2, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eREPRESENTATION_RELATIONSHIP.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "MOTION", keyPath: \eREPRESENTATION_RELATIONSHIP.MOTION, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)

      return entityDef
    }

  }
}

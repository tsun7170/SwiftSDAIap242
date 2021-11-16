/* file: item_identified_representation_usage.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY item_identified_representation_usage;
      name                 : label;
      description          : OPTIONAL text;
      definition           : item_identified_representation_usage_definition; (* observed by
          explicit_composite_hole.explicit_shape
          *)
      used_representation  : representation;
      identified_item      : item_identified_representation_usage_select;
    UNIQUE
      ur1 : used_representation, identified_item;
      ur2 : used_representation, definition;
    WHERE
      wr1: ( ( NOT ( SIZEOF( identified_item ) = 1 ) ) OR ( used_representation IN using_representations( 
               identified_item ) ) );
      wr2: ( ( NOT ( SIZEOF( identified_item ) > 1 ) ) OR ( used_representation IN 
               get_representations_for_items( identified_item ) ) );
  END_ENTITY; -- item_identified_representation_usage (line:18440 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  ENTITY(SELF)	item_identified_representation_usage
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  definition,	TYPE: item_identified_representation_usage_definition -- EXPLICIT
      -- observed by
        ENTITY(1): explicit_composite_hole,	ATTR: explicit_shape,	TYPE: SET [0 : ?] OF
          item_identified_representation_usage
      -- possibly overriden by
          ENTITY: draughting_model_item_association,	TYPE: draughting_model_item_definition
          ENTITY: geometric_item_specific_usage,	TYPE: geometric_item_specific_usage_select

    ATTR:  used_representation,	TYPE: representation -- EXPLICIT
      -- possibly overriden by
          ENTITY: draughting_model_item_association,	TYPE: annotation_representation_select
          ENTITY: geometric_item_specific_usage,	TYPE: shape_model

    ATTR:  identified_item,	TYPE: item_identified_representation_usage_select -- EXPLICIT
      -- possibly overriden by
          ENTITY: draughting_model_item_association,	TYPE: draughting_model_item_association_select
          ENTITY: draughting_model_item_association_with_placeholder,	TYPE: draughting_callout
          ENTITY: geometric_item_specific_usage,	TYPE: geometric_model_item


  SUB- ENTITY(2)	draughting_model_item_association_with_placeholder
    REDCR: definition,	TYPE: draughting_model_item_definition -- EXPLICIT
      -- OVERRIDING ENTITY: draughting_model_item_association

    REDCR: used_representation,	TYPE: draughting_model -- EXPLICIT
      -- OVERRIDING ENTITY: draughting_model_item_association

    REDCR: identified_item,	TYPE: draughting_callout -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage

    ATTR:  annotation_placeholder,	TYPE: annotation_placeholder_occurrence -- EXPLICIT
      -- observed by
        ENTITY(1): annotation_placeholder_occurrence,	ATTR: 
          the_draughting_model_item_association_with_placeholders,	TYPE: SET [0 : 1] OF
          draughting_model_item_association_with_placeholder


  SUB- ENTITY(3)	draughting_model_item_association
    REDCR: definition,	TYPE: draughting_model_item_definition -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage
      -- possibly overriden by
          ENTITY: draughting_model_item_association_with_placeholder,	TYPE: draughting_model_item_definition

    REDCR: used_representation,	TYPE: annotation_representation_select -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage
      -- possibly overriden by
          ENTITY: draughting_model_item_association_with_placeholder,	TYPE: draughting_model

    REDCR: identified_item,	TYPE: draughting_model_item_association_select -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage


  SUB- ENTITY(4)	chain_based_geometric_item_specific_usage
    (no local attributes)

  SUB- ENTITY(5)	chain_based_item_identified_representation_usage
    ATTR:  nodes,	TYPE: LIST [2 : ?] OF UNIQUE representation -- EXPLICIT

    ATTR:  undirected_link,	TYPE: LIST [1 : ?] OF chained_representation_link -- EXPLICIT

    ATTR:  root,	TYPE: representation -- DERIVED
      := nodes[1]

    ATTR:  directed_link,	TYPE: LIST [1 : ?] OF representation_relationship -- DERIVED
      := get_directed_link( nodes, undirected_link )

    ATTR:  leaf,	TYPE: representation -- DERIVED
      := SELF\item_identified_representation_usage.used_representation


  SUB- ENTITY(6)	mechanical_design_requirement_item_association
    REDCR: requirement,	TYPE: requirement_assignment -- EXPLICIT
      -- OVERRIDING ENTITY: pmi_requirement_item_association


  SUB- ENTITY(7)	pmi_requirement_item_association
    ATTR:  requirement,	TYPE: characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: mechanical_design_requirement_item_association,	TYPE: requirement_assignment


  SUB- ENTITY(8)	geometric_item_specific_usage
    REDCR: definition,	TYPE: geometric_item_specific_usage_select -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage

    REDCR: used_representation,	TYPE: shape_model -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage

    REDCR: identified_item,	TYPE: geometric_model_item -- EXPLICIT
      -- OVERRIDING ENTITY: item_identified_representation_usage


*/


//MARK: - Partial Entity
  public final class _item_identified_representation_usage : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eITEM_IDENTIFIED_REPRESENTATION_USAGE.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _name: tLABEL // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _description: tTEXT?  // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _definition: sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION{ // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __definition.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _definition__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__definition.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __definition: sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION

    /// attribute observer code
    internal class _definition__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eEXPLICIT_COMPOSITE_HOLE
            referencedComplex.partialEntityInstance(_explicit_composite_hole.self)?
              ._explicit_shape__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eEXPLICIT_COMPOSITE_HOLE
            referencedComplex.partialEntityInstance(_explicit_composite_hole.self)?
              ._explicit_shape__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_item_identified_representation_usage.self)?._definition else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eEXPLICIT_COMPOSITE_HOLE
        referencedComplex.partialEntityInstance(_explicit_composite_hole.self)?
          ._explicit_shape__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_item_identified_representation_usage.self)?._definition else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eEXPLICIT_COMPOSITE_HOLE
        referencedComplex.partialEntityInstance(_explicit_composite_hole.self)?
          ._explicit_shape__observe(leavingReferencerOwner: referencerOwner)
        }
      }

    }

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _used_representation: eREPRESENTATION // PLAIN EXPLICIT ATTRIBUTE

    /// EXPLICIT ATTRIBUTE 
    public internal(set) var _identified_item: sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT // PLAIN EXPLICIT ATTRIBUTE

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      //SELECT data types (indirectly) referencing the current type as a member of the select list
      members.insert(SDAI.STRING(sCHARACTERIZED_ITEM.typeName)) // -> Self
      members.insert(SDAI.STRING(sCHARACTERIZED_DEFINITION.typeName)) // -> sCHARACTERIZED_ITEM
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
      self._name.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._description?.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._definition.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._used_representation.value.hashAsValue(into: &hasher, visited: &complexEntities)
      self._identified_item.value.hashAsValue(into: &hasher, visited: &complexEntities)
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
      if let comp = self._definition.value.isValueEqualOptionally(to: rhs._definition.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._used_representation.value.isValueEqualOptionally(to: rhs._used_representation.value, visited: &comppairs)	{
        if !comp { return false }
      }
      else { return false }
      if let comp = self._identified_item.value.isValueEqualOptionally(to: rhs._identified_item.value, visited: &comppairs)	{
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
      if let comp = self._definition.value.isValueEqualOptionally(to: rhs._definition.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._used_representation.value.isValueEqualOptionally(to: rhs._used_representation.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      if let comp = self._identified_item.value.isValueEqualOptionally(to: rhs._identified_item.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eITEM_IDENTIFIED_REPRESENTATION_USAGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT*/
        SELF.IDENTIFIED_ITEM))
      let _TEMP2 = _TEMP1 .==. SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = USING_REPRESENTATIONS(sFOUNDED_ITEM_SELECT(/*sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT*/
        SELF.IDENTIFIED_ITEM))
      let _TEMP5 = SDAI.aggregate(_TEMP4, contains: SELF.USED_REPRESENTATION)
      let _TEMP6 = _TEMP3 || _TEMP5
      return _TEMP6
    }
    public static func WHERE_wr2(SELF: eITEM_IDENTIFIED_REPRESENTATION_USAGE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.SIZEOF(SDAI.AGGREGATE<SDAI.GENERIC>(/*sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT*/
        SELF.IDENTIFIED_ITEM))
      let _TEMP2 = _TEMP1 > SDAI.FORCE_OPTIONAL(SDAI.INTEGER(1))
      let _TEMP3 =  !_TEMP2
      let _TEMP4 = GET_REPRESENTATIONS_FOR_ITEMS(SDAI.SET<sFOUNDED_ITEM_SELECT>(/*
        sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT*/SELF.IDENTIFIED_ITEM))
      let _TEMP5 = SDAI.aggregate(_TEMP4, contains: SELF.USED_REPRESENTATION)
      let _TEMP6 = _TEMP3 || _TEMP5
      return _TEMP6
    }

    //UNIQUENESS RULES
    public static func UNIQUE_ur1(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eITEM_IDENTIFIED_REPRESENTATION_USAGE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      let attr1 = SELF.USED_REPRESENTATION
      attributes.append( AnyHashable(attr1) )
      let attr2 = SELF.IDENTIFIED_ITEM
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }
    public static func UNIQUE_ur2(SELF: SDAI.EntityReference) -> AnyHashable? {
      guard let SELF = SELF as? eITEM_IDENTIFIED_REPRESENTATION_USAGE else { return nil }
      //JOINT UNIQUE RULE

      var attributes: Array<AnyHashable> = []

      let attr1 = SELF.USED_REPRESENTATION
      attributes.append( AnyHashable(attr1) )
      let attr2 = SELF.DEFINITION
      attributes.append( AnyHashable(attr2) )

      return AnyHashable( attributes )
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(NAME: tLABEL, DESCRIPTION: tTEXT? , DEFINITION: 
                sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION, USED_REPRESENTATION: eREPRESENTATION, 
                IDENTIFIED_ITEM: sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT) {
      self._name = NAME
      self._description = DESCRIPTION
      self.__definition = DEFINITION
      self._used_representation = USED_REPRESENTATION
      self._identified_item = IDENTIFIED_ITEM
      super.init(asAbstructSuperclass:())

      self._definition.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _definition__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 5
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: tLABEL.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p1) = exchangeStructure.recoverOptionalParameter(as: tTEXT.self, from: parameters[1])
      else { exchangeStructure.add(errorContext: "while recovering parameter #1 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p2) = exchangeStructure.recoverRequiredParameter(as: 
        sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION.self, from: parameters[2])
      else { exchangeStructure.add(errorContext: "while recovering parameter #2 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p3) = exchangeStructure.recoverRequiredParameter(as: eREPRESENTATION.self, from: parameters[3])
      else { exchangeStructure.add(errorContext: "while recovering parameter #3 for entity(\(Self.entityName)) constructor"); return nil }

      guard case .success(let p4) = exchangeStructure.recoverRequiredParameter(as: 
        sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT.self, from: parameters[4])
      else { exchangeStructure.add(errorContext: "while recovering parameter #4 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( NAME: p0, DESCRIPTION: p1, DEFINITION: p2, USED_REPRESENTATION: p3, IDENTIFIED_ITEM: p4 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _definition__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _definition__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY item_identified_representation_usage;
      name                 : label;
      description          : OPTIONAL text;
      definition           : item_identified_representation_usage_definition; (* observed by
          explicit_composite_hole.explicit_shape
          *)
      used_representation  : representation;
      identified_item      : item_identified_representation_usage_select;
    UNIQUE
      ur1 : used_representation, identified_item;
      ur2 : used_representation, definition;
    WHERE
      wr1: ( ( NOT ( SIZEOF( identified_item ) = 1 ) ) OR ( used_representation IN using_representations( 
               identified_item ) ) );
      wr2: ( ( NOT ( SIZEOF( identified_item ) > 1 ) ) OR ( used_representation IN 
               get_representations_for_items( identified_item ) ) );
  END_ENTITY; -- item_identified_representation_usage (line:18440 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eITEM_IDENTIFIED_REPRESENTATION_USAGE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _item_identified_representation_usage.self
    }
    public let partialEntity: _item_identified_representation_usage

    //MARK: SUPERTYPES
    public var super_eITEM_IDENTIFIED_REPRESENTATION_USAGE: eITEM_IDENTIFIED_REPRESENTATION_USAGE { return self } 	// [1]

    //MARK: SUBTYPES
    public var sub_eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER: eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER? {	// [2]
      return self.complexEntity.entityReference(eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER.self)
    }

    public var sub_eDRAUGHTING_MODEL_ITEM_ASSOCIATION: eDRAUGHTING_MODEL_ITEM_ASSOCIATION? {	// [3]
      return self.complexEntity.entityReference(eDRAUGHTING_MODEL_ITEM_ASSOCIATION.self)
    }

    public var sub_eCHAIN_BASED_GEOMETRIC_ITEM_SPECIFIC_USAGE: eCHAIN_BASED_GEOMETRIC_ITEM_SPECIFIC_USAGE? {	// [4]
      return self.complexEntity.entityReference(eCHAIN_BASED_GEOMETRIC_ITEM_SPECIFIC_USAGE.self)
    }

    public var sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE: eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE? {	// [5]
      return self.complexEntity.entityReference(eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE.self)
    }

    public var sub_eMECHANICAL_DESIGN_REQUIREMENT_ITEM_ASSOCIATION: eMECHANICAL_DESIGN_REQUIREMENT_ITEM_ASSOCIATION? {	// [6]
      return self.complexEntity.entityReference(eMECHANICAL_DESIGN_REQUIREMENT_ITEM_ASSOCIATION.self)
    }

    public var sub_ePMI_REQUIREMENT_ITEM_ASSOCIATION: ePMI_REQUIREMENT_ITEM_ASSOCIATION? {	// [7]
      return self.complexEntity.entityReference(ePMI_REQUIREMENT_ITEM_ASSOCIATION.self)
    }

    public var sub_eGEOMETRIC_ITEM_SPECIFIC_USAGE: eGEOMETRIC_ITEM_SPECIFIC_USAGE? {	// [8]
      return self.complexEntity.entityReference(eGEOMETRIC_ITEM_SPECIFIC_USAGE.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var UNDIRECTED_LINK: (SDAI.LIST<sCHAINED_REPRESENTATION_LINK>/*[1:nil]*/ )?  {
      get {
        return sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE?.partialEntity._undirected_link
      }
      set(newValue) {
        guard let partial = sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE?.super_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE
          .partialEntity else { return }
        partial._undirected_link = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var IDENTIFIED_ITEM: sITEM_IDENTIFIED_REPRESENTATION_USAGE_SELECT {
      get {
        return SDAI.UNWRAP( self.partialEntity._identified_item )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._identified_item = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
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
    /// - origin: SUB( ``eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var LEAF: eREPRESENTATION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"LEAF") {
          return cached.value as! eREPRESENTATION? 
        }
        guard let origin = sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE else { return nil }
        let value = eREPRESENTATION(origin.partialEntity._leaf__getter(SELF: origin))
        updateCache(derivedAttributeName:"LEAF", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``ePMI_REQUIREMENT_ITEM_ASSOCIATION`` )
    public var REQUIREMENT: eCHARACTERIZED_OBJECT?  {
      get {
        return sub_ePMI_REQUIREMENT_ITEM_ASSOCIATION?.partialEntity._requirement
      }
      set(newValue) {
        guard let partial = sub_ePMI_REQUIREMENT_ITEM_ASSOCIATION?.super_ePMI_REQUIREMENT_ITEM_ASSOCIATION
          .partialEntity else { return }
        partial._requirement = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var USED_REPRESENTATION: eREPRESENTATION {
      get {
        return SDAI.UNWRAP( self.partialEntity._used_representation )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._used_representation = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var ROOT: eREPRESENTATION?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ROOT") {
          return cached.value as! eREPRESENTATION? 
        }
        guard let origin = sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE else { return nil }
        let value = eREPRESENTATION(origin.partialEntity._root__getter(SELF: origin))
        updateCache(derivedAttributeName:"ROOT", value:value)
        return value
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var NODES: (SDAI.LIST_UNIQUE<eREPRESENTATION>/*[2:nil]*/ )?  {
      get {
        return sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE?.partialEntity._nodes
      }
      set(newValue) {
        guard let partial = sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE?.super_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE
          .partialEntity else { return }
        partial._nodes = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SUB( ``eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER`` )
    public var ANNOTATION_PLACEHOLDER: eANNOTATION_PLACEHOLDER_OCCURRENCE?  {
      get {
        return sub_eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER?.partialEntity._annotation_placeholder
      }
      set(newValue) {
        guard let partial = sub_eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER?.super_eDRAUGHTING_MODEL_ITEM_ASSOCIATION_WITH_PLACEHOLDER
          .partialEntity else { return }
        partial._annotation_placeholder = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUB( ``eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DIRECTED_LINK: (SDAI.LIST<eREPRESENTATION_RELATIONSHIP>/*[1:nil]*/ )?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"DIRECTED_LINK") {
          return cached.value as! (SDAI.LIST<eREPRESENTATION_RELATIONSHIP>/*[1:nil]*/ )? 
        }
        guard let origin = sub_eCHAIN_BASED_ITEM_IDENTIFIED_REPRESENTATION_USAGE else { return nil }
        let value = SDAI.LIST<eREPRESENTATION_RELATIONSHIP>(
          origin.partialEntity._directed_link__getter(SELF: origin))
        updateCache(derivedAttributeName:"DIRECTED_LINK", value:value)
        return value
      }
    }

    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
    public var DEFINITION: sITEM_IDENTIFIED_REPRESENTATION_USAGE_DEFINITION {
      get {
        return SDAI.UNWRAP( self.partialEntity._definition )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._definition = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SELF( ``eITEM_IDENTIFIED_REPRESENTATION_USAGE`` )
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
      guard let partial = complexEntity?.partialEntityInstance(_item_identified_representation_usage.self) else { return nil }
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
    public convenience init?(_ partial:_item_identified_representation_usage) {
      let complex = SDAI.ComplexEntity(entities:[partial])
      self.init(complex: complex)
    }


    //MARK: WHERE RULE VALIDATION (ENTITY)
    public override class func validateWhereRules(instance:SDAI.EntityReference?, prefix:SDAI.WhereLabel) -> [SDAI.WhereLabel:SDAI.LOGICAL] {
      guard let instance = instance as? Self else { return [:] }

      let prefix2 = prefix + " \(instance)"

      var result = super.validateWhereRules(instance:instance, prefix:prefix2)
      result[prefix2 + " .WHERE_wr1"] = _item_identified_representation_usage.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _item_identified_representation_usage.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "ITEM_IDENTIFIED_REPRESENTATION_USAGE", type: self, explicitAttributeCount: 5)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eITEM_IDENTIFIED_REPRESENTATION_USAGE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "UNDIRECTED_LINK", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.UNDIRECTED_LINK, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "IDENTIFIED_ITEM", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.IDENTIFIED_ITEM, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.DESCRIPTION, 
        kind: .explicitOptional, source: .thisEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "LEAF", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.LEAF, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "REQUIREMENT", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.REQUIREMENT, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "USED_REPRESENTATION", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.USED_REPRESENTATION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ROOT", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.ROOT, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NODES", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.NODES, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ANNOTATION_PLACEHOLDER", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.ANNOTATION_PLACEHOLDER, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DIRECTED_LINK", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.DIRECTED_LINK, 
        kind: .derived, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.DEFINITION, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eITEM_IDENTIFIED_REPRESENTATION_USAGE.NAME, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: false)

      //MARK: UNIQUENESS RULE REGISTRATIONS
      entityDef.addUniqunessRule(label:"UNIQUE_ur1", rule: _item_identified_representation_usage.UNIQUE_ur1)
      entityDef.addUniqunessRule(label:"UNIQUE_ur2", rule: _item_identified_representation_usage.UNIQUE_ur2)

      return entityDef
    }

  }
}

/* file: countersink_hole_occurrence.swift 	 generated: Sun Oct 31 15:32:10 2021 */

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

  ENTITY countersink_hole_occurrence
    SUBTYPE OF ( shape_aspect_occurrence );
      SELF\shape_aspect_occurrence.definition : countersink_hole_definition;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION' IN TYPEOF( SELF\
               shape_aspect.of_shape\property_definition.definition ) );
      wr2: ( SELF\shape_aspect.product_definitional = TRUE );
  END_ENTITY; -- countersink_hole_occurrence (line:10820 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	shape_aspect
    ATTR:  name,	TYPE: label -- EXPLICIT

    ATTR:  description,	TYPE: OPTIONAL text -- EXPLICIT

    ATTR:  of_shape,	TYPE: product_definition_shape -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: component_feature,	TYPE: assembly_component
          ENTITY: constituent_shape_aspect,	TYPE: product_definition_shape	(as DERIVED)
          ENTITY: mated_part_relationship,	TYPE: mated_part_relationship	(as DERIVED)

    ATTR:  product_definitional,	TYPE: LOGICAL -- EXPLICIT (DYNAMIC)
      -- possibly overriden by
          ENTITY: default_model_geometric_view,	TYPE: LOGICAL	(as DERIVED)

    ATTR:  id,	TYPE: identifier -- DERIVED
      := get_id_value( SELF )


  SUPER- ENTITY(2)	shape_aspect_occurrence
    ATTR:  definition,	TYPE: shape_aspect_or_characterized_object -- EXPLICIT
      -- possibly overriden by
          ENTITY: counterdrill_hole_occurrence,	TYPE: counterdrill_hole_definition
      *** ENTITY: countersink_hole_occurrence,	TYPE: countersink_hole_definition
          ENTITY: counterbore_hole_occurrence,	TYPE: counterbore_hole_definition


  ENTITY(SELF)	countersink_hole_occurrence
    REDCR: definition,	TYPE: countersink_hole_definition -- EXPLICIT
      -- OVERRIDING ENTITY: shape_aspect_occurrence


  SUB- ENTITY(4)	countersink_hole_occurrence_in_assembly
    ATTR:  modified_components,	TYPE: LIST [1 : ?] OF UNIQUE multi_level_reference_designator -- EXPLICIT


*/


//MARK: - Partial Entity
  public final class _countersink_hole_occurrence : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eCOUNTERSINK_HOLE_OCCURRENCE.self
    }

    //ATTRIBUTES
    /* override var _definition: eCOUNTERSINK_HOLE_DEFINITION	//EXPLICIT REDEFINITION(eSHAPE_ASPECT_OCCURRENCE) */

    public override var typeMembers: Set<SDAI.STRING> {
      var members = Set<SDAI.STRING>()
      members.insert(SDAI.STRING(Self.typeName))
      return members
    }


    //VALUE COMPARISON SUPPORT
    public override func hashAsValue(into hasher: inout Hasher, visited complexEntities: inout Set<SDAI.ComplexEntity>) {
      super.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      return true
    }

    public override func isValueEqualOptionally(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool? {
      guard let rhs = rhs as? Self else { return false }
      var result: Bool? = true
      if let comp = super.isValueEqualOptionally(to: rhs, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //MARK: WHERE RULES (ENTITY)
    public static func WHERE_wr1(SELF: eCOUNTERSINK_HOLE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SDAI.TYPEOF(SELF.GROUP_REF(eSHAPE_ASPECT.self)?.OF_SHAPE.GROUP_REF(ePROPERTY_DEFINITION.self)?
        .DEFINITION, IS: ePRODUCT_DEFINITION.self)
      return _TEMP1
    }
    public static func WHERE_wr2(SELF: eCOUNTERSINK_HOLE_OCCURRENCE?) -> SDAI.LOGICAL {
      guard let SELF = SELF else { return SDAI.UNKNOWN }

      let _TEMP1 = SELF.GROUP_REF(eSHAPE_ASPECT.self)
      let _TEMP2 = _TEMP1?.PRODUCT_DEFINITIONAL
      let _TEMP3 = _TEMP2 .==. SDAI.FORCE_OPTIONAL(SDAI.LOGICAL(SDAI.TRUE))
      return _TEMP3
    }

    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init() {
      super.init(asAbstructSuperclass:())

    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 0
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      self.init( )
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY countersink_hole_occurrence
    SUBTYPE OF ( shape_aspect_occurrence );
      SELF\shape_aspect_occurrence.definition : countersink_hole_definition;
    WHERE
      wr1: ( 'AP242_MANAGED_MODEL_BASED_3D_ENGINEERING_MIM_LF.PRODUCT_DEFINITION' IN TYPEOF( SELF\
               shape_aspect.of_shape\property_definition.definition ) );
      wr2: ( SELF\shape_aspect.product_definitional = TRUE );
  END_ENTITY; -- countersink_hole_occurrence (line:10820 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eCOUNTERSINK_HOLE_OCCURRENCE : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _countersink_hole_occurrence.self
    }
    public let partialEntity: _countersink_hole_occurrence

    //MARK: SUPERTYPES
    public let super_eSHAPE_ASPECT: eSHAPE_ASPECT 	// [1]
    public let super_eSHAPE_ASPECT_OCCURRENCE: eSHAPE_ASPECT_OCCURRENCE 	// [2]
    public var super_eCOUNTERSINK_HOLE_OCCURRENCE: eCOUNTERSINK_HOLE_OCCURRENCE { return self } 	// [3]

    //MARK: SUBTYPES
    public var sub_eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY: eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY? {	// [4]
      return self.complexEntity.entityReference(eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY.self)
    }


    //MARK: ATTRIBUTES
    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var PRODUCT_DEFINITIONAL: SDAI.LOGICAL {
      get {
        if let resolved = _shape_aspect._product_definitional__provider(complex: self.complexEntity) {
          let value = resolved._product_definitional__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._product_definitional )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._product_definitional__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._product_definitional = SDAI.LOGICAL(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var DESCRIPTION: tTEXT?  {
      get {
        return super_eSHAPE_ASPECT.partialEntity._description
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._description = newValue
      }
    }

    /// __EXPLICIT(DYNAMIC)__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var OF_SHAPE: ePRODUCT_DEFINITION_SHAPE {
      get {
        if let resolved = _shape_aspect._of_shape__provider(complex: self.complexEntity) {
          let value = resolved._of_shape__getter(complex: self.complexEntity)
          return value
        }
        else {
          return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._of_shape )
        }
      }
      set(newValue) {
        if let _ = _shape_aspect._of_shape__provider(complex: self.complexEntity) { return }

        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._of_shape = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUB( ``eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY`` )
    public var MODIFIED_COMPONENTS: (SDAI.LIST_UNIQUE<eMULTI_LEVEL_REFERENCE_DESIGNATOR>/*[1:nil]*/ )?  {
      get {
        return sub_eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY?.partialEntity._modified_components
      }
      set(newValue) {
        guard let partial = sub_eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY?.super_eCOUNTERSINK_HOLE_OCCURRENCE_IN_ASSEMBLY
          .partialEntity else { return }
        partial._modified_components = SDAI.UNWRAP(newValue)
      }
    }

    /// __DERIVE__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var ID: tIDENTIFIER?  {
      get {
        if let cached = cachedValue(derivedAttributeName:"ID") {
          return cached.value as! tIDENTIFIER? 
        }
        let origin = super_eSHAPE_ASPECT
        let value = tIDENTIFIER(origin.partialEntity._id__getter(SELF: origin))
        updateCache(derivedAttributeName:"ID", value:value)
        return value
      }
    }

    /// __EXPLICIT REDEF__ attribute
    /// - origin: SELF( ``eCOUNTERSINK_HOLE_OCCURRENCE`` )
    public var DEFINITION: eCOUNTERSINK_HOLE_DEFINITION {
      get {
        return SDAI.UNWRAP( eCOUNTERSINK_HOLE_DEFINITION( super_eSHAPE_ASPECT_OCCURRENCE.partialEntity
          ._definition ) )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT_OCCURRENCE.partialEntity
        partial._definition = SDAI.UNWRAP(
          sSHAPE_ASPECT_OR_CHARACTERIZED_OBJECT(newValue))
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eSHAPE_ASPECT`` )
    public var NAME: tLABEL {
      get {
        return SDAI.UNWRAP( super_eSHAPE_ASPECT.partialEntity._name )
      }
      set(newValue) {
        let partial = super_eSHAPE_ASPECT.partialEntity
        partial._name = SDAI.UNWRAP(newValue)
      }
    }


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_countersink_hole_occurrence.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eSHAPE_ASPECT.self) else { return nil }
      self.super_eSHAPE_ASPECT = super1

      guard let super2 = complexEntity?.entityReference(eSHAPE_ASPECT_OCCURRENCE.self) else { return nil }
      self.super_eSHAPE_ASPECT_OCCURRENCE = super2

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
      result[prefix2 + " .WHERE_wr1"] = _countersink_hole_occurrence.WHERE_wr1(SELF: instance)
      result[prefix2 + " .WHERE_wr2"] = _countersink_hole_occurrence.WHERE_wr2(SELF: instance)
      return result
    }


    //MARK: DICTIONARY DEFINITION
    public class override var entityDefinition: SDAIDictionarySchema.EntityDefinition { _entityDefinition }
    private static let _entityDefinition: SDAIDictionarySchema.EntityDefinition = createEntityDefinition()

    private static func createEntityDefinition() -> SDAIDictionarySchema.EntityDefinition {
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "COUNTERSINK_HOLE_OCCURRENCE", type: self, explicitAttributeCount: 0)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eSHAPE_ASPECT.self)
      entityDef.add(supertype: eSHAPE_ASPECT_OCCURRENCE.self)
      entityDef.add(supertype: eCOUNTERSINK_HOLE_OCCURRENCE.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "PRODUCT_DEFINITIONAL", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.PRODUCT_DEFINITIONAL, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DESCRIPTION", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.DESCRIPTION, 
        kind: .explicitOptional, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "OF_SHAPE", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.OF_SHAPE, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "MODIFIED_COMPONENTS", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.MODIFIED_COMPONENTS, 
        kind: .explicit, source: .subEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "ID", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.ID, 
        kind: .derived, source: .superEntity, mayYieldEntityReference: false)
      entityDef.addAttribute(name: "DEFINITION", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.DEFINITION, 
        kind: .explicitRedeclaring, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eCOUNTERSINK_HOLE_OCCURRENCE.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

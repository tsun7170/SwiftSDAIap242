/* file: data_equivalence_inspection_criterion_report.swift 	 generated: Tue Nov 16 05:35:44 2021 */

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

  ENTITY data_equivalence_inspection_criterion_report
    SUBTYPE OF ( data_equivalence_inspection_report );
      statistical_values  : SET [1 : ?] OF data_equivalence_inspection_criterion_report_item; (* observed by
          data_equivalence_inspection_criterion_report_item.criterion_report
          *)
  END_ENTITY; -- data_equivalence_inspection_criterion_report (line:11363 file:ap242ed2_mim_lf_v1.101.TY.exp)

*/


//MARK: - ALL DEFINED ATTRIBUTES
/*
  SUPER- ENTITY(1)	representation_item
    ATTR:  name,	TYPE: label -- EXPLICIT


  SUPER- ENTITY(2)	data_equivalence_inspection_report
    ATTR:  inspection_result,	TYPE: data_equivalence_inspection_result -- EXPLICIT


  ENTITY(SELF)	data_equivalence_inspection_criterion_report
    ATTR:  statistical_values,	TYPE: SET [1 : ?] OF data_equivalence_inspection_criterion_report_item -- EXPLICIT
      -- observed by
        ENTITY(1): data_equivalence_inspection_criterion_report_item,	ATTR: criterion_report,	TYPE: 
          data_equivalence_inspection_criterion_report


*/


//MARK: - Partial Entity
  public final class _data_equivalence_inspection_criterion_report : SDAI.PartialEntity {
    public override class var entityReferenceType: SDAI.EntityReference.Type {
      eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.self
    }

    //ATTRIBUTES
    /// EXPLICIT ATTRIBUTE (OBSERVED)
    public internal(set) var _statistical_values: SDAI.SET<eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM>
      /*[1:nil]*/ { // OBSERVED EXPLICIT ATTRIBUTE
      get {
        return __statistical_values.copy()
      } // getter
      set {
        var newValue = newValue
        let observer = SDAI.EntityReferenceObserver(referencer: self, observerCode: _statistical_values__observer.self)
        newValue.configure(with: observer)
        observer.observe(removing: SDAI.UNWRAP(seq:__statistical_values.entityReferences),
          adding: SDAI.UNWRAP(seq: newValue.entityReferences) )
      } // setter
    }

    /// backing storage for observed attribute
    private var __statistical_values: SDAI.SET<eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM>/*[1:nil]*/ 

    /// attribute observer code
    internal class _statistical_values__observer: SDAI.EntityReferenceObserver.ObserverCode {
      final override class func observe<RemovingEntities: Sequence, AddingEntities: Sequence>(
        referencer: SDAI.PartialEntity, removing: RemovingEntities, adding: AddingEntities )
        where RemovingEntities.Element: SDAI.EntityReference, AddingEntities.Element: SDAI.EntityReference
      {
        for referencedComplex in removing.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM
            referencedComplex.partialEntityInstance(_data_equivalence_inspection_criterion_report_item.self)?
              ._criterion_report__observeRemovedReference(in: referencerOwner)
          }
        }

        for referencedComplex in adding.map({ $0.complexEntity }) {
          for referencerOwner in referencer.owners {
            //OBSERVING ENTITY: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM
            referencedComplex.partialEntityInstance(_data_equivalence_inspection_criterion_report_item.self)?
              ._criterion_report__observeAddedReference(in: referencerOwner)
          }
        }
      }

      final override class func observe(newReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_data_equivalence_inspection_criterion_report.self)?._statistical_values else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM
        referencedComplex.partialEntityInstance(_data_equivalence_inspection_criterion_report_item.self)?
          ._criterion_report__observeAddedReference(in: referencerOwner)
        }
      }

      final override class func observe(leavingReferencerOwner referencerOwner: SDAI.ComplexEntity) {
        guard let attrValue = referencerOwner.partialEntityInstance(_data_equivalence_inspection_criterion_report.self)?._statistical_values else { return }
        for referencedComplex in attrValue.entityReferences.map({ $0.complexEntity }) {
        //OBSERVING ENTITY: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM
        referencedComplex.partialEntityInstance(_data_equivalence_inspection_criterion_report_item.self)?
          ._criterion_report__observe(leavingReferencerOwner: referencerOwner)
        }
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
      self._statistical_values.value.hashAsValue(into: &hasher, visited: &complexEntities)
    }

    public override func isValueEqual(to rhs: SDAI.PartialEntity, visited comppairs: inout Set<SDAI.ComplexPair>) -> Bool {
      guard let rhs = rhs as? Self else { return false }
      if !super.isValueEqual(to: rhs, visited: &comppairs) { return false }
      if let comp = self._statistical_values.value.isValueEqualOptionally(to: rhs._statistical_values.value, visited: &comppairs)	{
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
      if let comp = self._statistical_values.value.isValueEqualOptionally(to: rhs._statistical_values.value, visited: &comppairs) {
        if !comp { return false }
      }
      else { result = nil }
      return result
    }


    //EXPRESS IMPLICIT PARTIAL ENTITY CONSTRUCTOR
    public init(STATISTICAL_VALUES: SDAI.SET<eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM>/*[1:nil]*/ ) {
      self.__statistical_values = STATISTICAL_VALUES
      super.init(asAbstructSuperclass:())

      self._statistical_values.configure(with: SDAI.EntityReferenceObserver(referencer: self, observerCode: _statistical_values__observer.self))
    }

    //p21 PARTIAL ENTITY CONSTRUCTOR
    public required convenience init?(parameters: [P21Decode.ExchangeStructure.Parameter], exchangeStructure: P21Decode.ExchangeStructure) {
      let numParams = 1
      guard parameters.count == numParams
      else { exchangeStructure.error = "number of p21 parameters(\(parameters.count)) are different from expected(\(numParams)) for entity(\(Self.entityName)) constructor"; return nil }

      guard case .success(let p0) = exchangeStructure.recoverRequiredParameter(as: SDAI.SET<
        eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM>.self, from: parameters[0])
      else { exchangeStructure.add(errorContext: "while recovering parameter #0 for entity(\(Self.entityName)) constructor"); return nil }

      self.init( STATISTICAL_VALUES: p0 )
    }

    /// broadcasting a new complex entity becoming an owner of the partial entity
    final public override func broadcast(addedToComplex complex: SDAI.ComplexEntity) {
      _statistical_values__observer.observe(newReferencerOwner: complex)
    }

    /// broadcasting a complex entity withdrawing an owner of the partial entity
    final public override func broadcast(removedFromComplex complex: SDAI.ComplexEntity) {
      _statistical_values__observer.observe(leavingReferencerOwner: complex)
    }
  }


//MARK: - Entity Reference

/** ENTITY reference
- EXPRESS:
```express
  ENTITY data_equivalence_inspection_criterion_report
    SUBTYPE OF ( data_equivalence_inspection_report );
      statistical_values  : SET [1 : ?] OF data_equivalence_inspection_criterion_report_item; (* observed by
          data_equivalence_inspection_criterion_report_item.criterion_report
          *)
  END_ENTITY; -- data_equivalence_inspection_criterion_report (line:11363 file:ap242ed2_mim_lf_v1.101.TY.exp)

```
*/
  public final class eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT : SDAI.EntityReference {

    //MARK: PARTIAL ENTITY
    public override class var partialEntityType: SDAI.PartialEntity.Type {
      _data_equivalence_inspection_criterion_report.self
    }
    public let partialEntity: _data_equivalence_inspection_criterion_report

    //MARK: SUPERTYPES
    public let super_eREPRESENTATION_ITEM: eREPRESENTATION_ITEM 	// [1]
    public let super_eDATA_EQUIVALENCE_INSPECTION_REPORT: eDATA_EQUIVALENCE_INSPECTION_REPORT 	// [2]
    public var super_eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT { return self } 	// [3]

    //MARK: SUBTYPES

    //MARK: ATTRIBUTES
    /// __EXPLICIT(OBSERVED)__ attribute
    /// - origin: SELF( ``eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT`` )
    public var STATISTICAL_VALUES: SDAI.SET<eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT_ITEM>/*[1:nil]*/  {
      get {
        return SDAI.UNWRAP( self.partialEntity._statistical_values )
      }
      set(newValue) {
        let partial = self.partialEntity
        partial._statistical_values = SDAI.UNWRAP(newValue)
      }
    }

    /// __EXPLICIT__ attribute
    /// - origin: SUPER( ``eDATA_EQUIVALENCE_INSPECTION_REPORT`` )
    public var INSPECTION_RESULT: eDATA_EQUIVALENCE_INSPECTION_RESULT {
      get {
        return SDAI.UNWRAP( super_eDATA_EQUIVALENCE_INSPECTION_REPORT.partialEntity._inspection_result )
      }
      set(newValue) {
        let partial = super_eDATA_EQUIVALENCE_INSPECTION_REPORT.partialEntity
        partial._inspection_result = SDAI.UNWRAP(newValue)
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


    //MARK: INITIALIZERS
    public convenience init?(_ entityRef: SDAI.EntityReference?) {
      let complex = entityRef?.complexEntity
      self.init(complex: complex)
    }

    public required init?(complex complexEntity: SDAI.ComplexEntity?) {
      guard let partial = complexEntity?.partialEntityInstance(_data_equivalence_inspection_criterion_report.self) else { return nil }
      self.partialEntity = partial

      guard let super1 = complexEntity?.entityReference(eREPRESENTATION_ITEM.self) else { return nil }
      self.super_eREPRESENTATION_ITEM = super1

      guard let super2 = complexEntity?.entityReference(eDATA_EQUIVALENCE_INSPECTION_REPORT.self) else { return nil }
      self.super_eDATA_EQUIVALENCE_INSPECTION_REPORT = super2

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
      let entityDef = SDAIDictionarySchema.EntityDefinition(name: "DATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT", type: self, explicitAttributeCount: 1)

      //MARK: SUPERTYPE REGISTRATIONS
      entityDef.add(supertype: eREPRESENTATION_ITEM.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_REPORT.self)
      entityDef.add(supertype: eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.self)

      //MARK: ATTRIBUTE REGISTRATIONS
      entityDef.addAttribute(name: "STATISTICAL_VALUES", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.STATISTICAL_VALUES, 
        kind: .explicit, source: .thisEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "INSPECTION_RESULT", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.INSPECTION_RESULT, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: true)
      entityDef.addAttribute(name: "NAME", keyPath: \eDATA_EQUIVALENCE_INSPECTION_CRITERION_REPORT.NAME, 
        kind: .explicit, source: .superEntity, mayYieldEntityReference: false)

      return entityDef
    }

  }
}

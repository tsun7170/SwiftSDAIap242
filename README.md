# SwiftSDAIap242

exp2swift translated STEP AP242ed2 schema.

by Tsutomu Yoshida, Minokamo Japan.

This is a full translation of ISO 10303-242:2020 schema (AP242 2nd edition) into the Swift programing language.
To use this package, SwiftSDAIcore runtime environment package is required.

Some sample programs are provided in separate repositories (see below).

AP242 translation is performed using the updated EXPRESS AP242 schema definition provided in this package (ap242ed2_mim_lf_v1.101.TY.exp) which is a modified schema from the official schema definition. The modification includes various EXPRESS error corrections and addition of numerous function definitions missing from the original AP242 schema definition.

**Reference**  
- [original schema definition file](https://www.mbx-if.org/home/mbx/resources/express-schemas/ "MBx Interoperability Forum")
- [ISO 10303-242:2020](https://www.iso.org/standard/66654.html)


## swift STEP code suite
* [SwiftSDAIcore](https://github.com/tsun7170/SwiftSDAIcore) Swift SDAI runtime environment
* **[SwiftSDAIap242](https://github.com/tsun7170/SwiftSDAIap242) Swift translated AP242 schema definition (ed2)**
* [SwiftAP242PDMkit](https://github.com/tsun7170/SwiftAP242PDMkit) Swift implementation of PDM schema usage guide
* [simpleP21ReadSample](https://github.com/tsun7170/simpleP21ReadSample) Single P21 file reading and validation sample code
* [multipleP21ReadsSample](https://github.com/tsun7170/multipleP21ReadsSample) Tree of P21 files reading and validation sample code
* [STEPswiftcode/exp2swift](https://github.com/tsun7170/STEPswiftcode) EXPRESS to Swift translator


## Development environment
* Xcode version 26.2
* macOS Tahoe 26.2

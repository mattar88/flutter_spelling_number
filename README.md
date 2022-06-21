# Flutter Spelling Number
 Flutter Spelling Number it's a plugin convert number to words - their written form(تفقيط أوتحويل الأرقام الى كلمات).

## Examples
### [Convert Number to words](https://mattar88.github.io/flutter_spelling_number/example#spelling_en_number)
### [Convert Dollars and Cents into words](https://mattar88.github.io/flutter_spelling_number/example#spelling_en_money)
### [Convert Weight number into words](https://mattar88.github.io/flutter_spelling_number/example#spelling_en_weight)
### [تفقيط أو تحويل الرقم الى كلمات](https://mattar88.github.io/flutter_spelling_number/example#spelling_ar_number)
### [تفقيط مبالغ مالية وعملات](https://mattar88.github.io/flutter_spelling_number/example#spelling_ar_money)
### [تفقيط الوزن](https://mattar88.github.io/flutter_spelling_number/example#spelling_ar_weight)

## Features:
 *  Support 14 languages includes arabic language
 *  You can specify the Whole unit and Fraction Unit and the Decimal separator
 *  you can convert Currency and Weight number to words
 
## Install

With Dart:
```
$dart pub add spelling_number
```
With Flutter:
```
$flutter pub add spelling_number
```
This will add a line like this to you package's pubspec.yaml (and run an implicit `dart pub get`):
```
dependencies:
  spelling_number:^0.0.4
```

## Usage
 
Import it
Now in your Dart code, you can use:

 ```
 import 'package:spelling_number/spelling_number.dart';
 ```

 ```
     SpellingNumber( 
         lang: "en",
        wholesUnit: "ton",
        fractionUnit: "kg",
        digitsLengthW2F: 3,
        decimalSeperator: "and").convert(100.951); //=> One Hundred Ton And Nine Hundred Fifty-One Kg
  
    SpellingNumber().convert(1234); // => 'one thousand two hundred and thirty-four'
    SpellingNumber(lang: 'es').convert(4758); // => 'cuatro mil setecientos cincuenta y ocho'
    SpellingNumber(lang: 'fr').convert(1234);   // => 'mille deux cent trente-quatre'
    SpellingNumber(lang: 'es').convert(1234);   // => 'mil doscientos treinta y cuatro'
    SpellingNumber(lang: 'az').convert(1234);   // => 'min iki yüz otuz dörd'
    SpellingNumber(lang: 'pt').convert(1234);   // => 'mil duzentos e trinta e quatro'
    SpellingNumber(lang: 'ar').convert(1234);   // => 'ألف ومائتان وأربعة وثلاثون'
    SpellingNumber(lang: 'eo').convert(1234);   // => 'mil ducent tridek kvar'
    SpellingNumber(lang: 'vi').convert(1234);   // => 'một ngàn hai trăm và ba mươi bốn'
    SpellingNumber(lang: 'uk').convert(1234);   // => 'одна тисяча двісті тридцять чотири'
    SpellingNumber(lang: 'id').convert(1234);   // => 'seribu dua ratus tiga puluh empat'
   ```

## Constructor parameters
- `noAnd` - Defaults to `false`. Determines whether to use a separator. The
  separator is internationalized.
- `lang` - Could be `string` or `object`. Defaults to `'en'`. Determines which
  language to use. An i18n configuration object may be passed to support
  external language definitions.

Currently supported languages are:

| Language | `lang` |
|---------|--------|
| English | `en` |
| Portuguese (Brazil) | `pt` |
| Portuguese (Portugal) | `ptPT` |
| Spanish | `es` |
| French | `fr` |
| Esperanto | `eo` |
| Vietnamese | `vi` |
| Arabic | `ar` |
| Azerbaijan | `az` |
| Turkish | `tr` |
| English (Indian) | `enIndian` |
| Ukrainian | `uk` |
| Indonesian | `id` |
| Russian | `ru` |


## Contributing

### Configure your own language
Each language has its own unique grammar exceptions.  You can create your own 
language.json file in the folder "i18n" and give writtenNumber support for it. I 
don't think the current scheme and logic cover all the cases, but may be cover 
some.

The following parameters have been used for the currently available languages:


### Language parameters

| Parameter       | Type    | Description                                                                                                                                        | Examples                                                                                                                                                                     |
|-----------------|---------|----------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `useLongScale`    | boolean | Indicates if it uses [long or short scale](https://en.wikipedia.org/wiki/Long_and_short_scales).                                                    | This differs the meaning of the words `billion`, `trillion` and so on.                                                                                                       |
| `baseSeparator`   | string  | Separates the base cardinal numbers.                                                                                                               | 29 -> twenty`-`eight.  Spanish uses the connector " y "                                                                                                                      |
| `unitSeparator`   | string  | Separates the units from the last base cardinal numbers.                                                                                           | 1234 -> one thousand two hundred **and** thirty-four                                                                                                                         |
| `allSeparator`    | string  | Separates all cardinals, not only the last one.                                                                                                    | 1125 -> ألف **و**مائة **و**خمسة **و**عشرون                                                                                                                                   |
| `base`            | Object  | Base cardinals numbers.  Numbers that have unique names and are used to build others.                                                              |                                                                                                                                                                              |
| `alternativeBase` | Object  | Alternative versions of base cardinals numbers for usage with specific units.  These bases will be treated as an extension for the default `base`. | ``` "alternativeBase": {   "feminine": {"1":"одна","2":"дві"} } ```                                                                                                          |
| `units`           | Array   | A list of number units (string or Object). Gives support to singular, dual an plural units. Check the Object parameters below.                                                |                                                                                                                                                                              |
| `unitExceptions`  | Object  | Sometimes grammar exceptions affect the base cardinal joined to the unit. You can set specific exceptions to any base cardinal number.             | Converting 1232000 in Spanish:  Without Exception (Wrong):  -> **uno** millón doscientos treinta y dos mil  With Exception:  -> **un** millón doscientos treinta y dos mil   |

### Units parameters

A `unit` can be:
- A simple string. e.g. `"hundred"`
- An Object with multiple parameters:

| Unit parameter         | Description                                                                                            | e.g. of languages |
|------------------------|--------------------------------------------------------------------------------------------------------|-------------------|
| `singular`             | One element.                                                                                           | All               |
| `dual`                 | Two elements.                                                                                          | `ar`              |
| `plural`               | Two or more elements. (or 3 or more)                                                                   | All               |
| `few`                  | Between 2 and 4 including.                                                                             | `uk`              |
| `useAlternativeBase`   | Overwrites default `base`.                                                                             | `uk`              |
| `useBaseInstead`       | Use the base cardinal number instead.                                                                  | `es`,`hu`,`pt`    |
| `useBaseException`     | Specify with which unit (1 to 9) you don't want to use the base, and instead use the regular behavior. | `es`,`hu`,`pt`    |
| `avoidPrefixException` | Units not using the base cardinal number prefix for unit 1.                                            | `id`,`tr`,`it`    |
| `avoidInNumberPlural`  | Units not using the plural form with trailing numbers other than 0.                                    | `fr`              |
| `restrictedPlural`     | Plural only for 3 to 10. Singular if >= 11.                                                            | `ar`              |
| `useSingularEnding`    | Use singular form for numbers ending with 1.                                                           | `uk`              |
| `useFewEnding`         | Use _few_ form for numbers ending with 2, 3 or 4.                                                      | `uk`              |
| `avoidEndingRules`     | Plural form used instead of `useSingularEnding` and `useFewEnding`                                     | `uk`              |

// MIT License

// Copyright (c) 2022 Mohammad Attar

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

library spelling_number;

import 'dart:math' as math;

class SpellingNumber {
  bool? noAnd;
  String? alternativeBase;
  String? decimalSeperator;
  String? wholesUnit;
  String? fractionUnit;
  int? digitsLengthW2F;
  String? lang;

  final Map<String, dynamic> _spellingNumberDefault = {
    "noAnd": false,
    "alternativeBase": null,
    "decimalSeperator": '',
    "wholesUnit": '',
    "fractionUnit": '',
    "digitsLengthW2F": null,
    "lang": "en",
    "i18n": {
      'ar': {
        "useLongScale": false,
        "baseSeparator": "",
        "unitSeparator": "",
        "allSeparator": "و",
        "base": {
          "0": "صفر",
          "1": "واحد",
          "2": "اثنان",
          "3": "ثلاثة",
          "4": "أربعة",
          "5": "خمسة",
          "6": "ستة",
          "7": "سبعة",
          "8": "ثمانية",
          "9": "تسعة",
          "10": "عشرة",
          "11": "أحد عشر",
          "12": "إثنا عشر",
          "13": "ثلاثة عشر",
          "14": "أربعة عشر",
          "15": "خمسة عشر",
          "16": "ستة عشر",
          "17": "سبعة عشر",
          "18": "ثمانية عشر",
          "19": "تسعة عشر",
          "20": "عشرون",
          "21": "واحد وعشرون",
          "22": "اثنان وعشرون",
          "23": "ثلاثة وعشرون",
          "24": "أربعة وعشرون",
          "25": "خمسة وعشرون",
          "26": "ستة وعشرون",
          "27": "سبعة وعشرون",
          "28": "ثمانية وعشرون",
          "29": "تسعة وعشرون",
          "30": "ثلاثون",
          "31": "واحد وثلاثون",
          "32": "اثنان وثلاثون",
          "33": "ثلاثة وثلاثون",
          "34": "أربعة وثلاثون",
          "35": "خمسة وثلاثون",
          "36": "ستة وثلاثون",
          "37": "سبعة وثلاثون",
          "38": "ثمانية وثلاثون",
          "39": "تسعة وثلاثون",
          "40": "أربعون",
          "41": "واحد وأربعون",
          "42": "اثنان وأربعون",
          "43": "ثلاثة وأربعون",
          "44": "أربعة وأربعون",
          "45": "خمسة وأربعون",
          "46": "ستة وأربعون",
          "47": "سبعة وأربعون",
          "48": "ثمانية وأربعون",
          "49": "تسعة وأربعون",
          "50": "خمسون",
          "51": "واحد وخمسون",
          "52": "اثنان وخمسون",
          "53": "ثلاثة وخمسون",
          "54": "أربعة وخمسون",
          "55": "خمسة وخمسون",
          "56": "ستة وخمسون",
          "57": "سبعة وخمسون",
          "58": "ثمانية وخمسون",
          "59": "تسعة وخمسون",
          "60": "ستون",
          "61": "واحد وستون",
          "62": "اثنان وستون",
          "63": "ثلاثة وستون",
          "64": "أربعة وستون",
          "65": "خمسة وستون",
          "66": "ستة وستون",
          "67": "سبعة وستون",
          "68": "ثمانية وستون",
          "69": "تسعة وستون",
          "70": "سبعون",
          "71": "واحد وسبعون",
          "72": "اثنان وسبعون",
          "73": "ثلاثة وسبعون",
          "74": "أربعة وسبعون",
          "75": "خمسة وسبعون",
          "76": "ستة وسبعون",
          "77": "سبعة وسبعون",
          "78": "ثمانية وسبعون",
          "79": "تسعة وسبعون",
          "80": "ثمانون",
          "81": "واحد وثمانون",
          "82": "اثنان وثمانون",
          "83": "ثلاثة وثمانون",
          "84": "أربعة وثمانون",
          "85": "خمسة وثمانون",
          "86": "ستة وثمانون",
          "87": "سبعة وثمانون",
          "88": "ثمانية وثمانون",
          "89": "تسعة وثمانون",
          "90": "تسعون",
          "91": "واحد وتسعون",
          "92": "اثنان وتسعون",
          "93": "ثلاثة وتسعون",
          "94": "أربعة وتسعون",
          "95": "خمسة وتسعون",
          "96": "ستة وتسعون",
          "97": "سبعة وتسعون",
          "98": "ثمانية وتسعون",
          "99": "تسعة وتسعون",
          "200": "مائتان",
          "300": "ثلاثمائة",
          "400": "أربعمائة",
          "500": "خمسمائة",
          "600": "ستمائة",
          "700": "سبعمائة",
          "800": "ثمانمائة",
          "900": "تسعمائة"
        },
        "units": [
          {
            "singular": "مائة",
            "useBaseInstead": true,
            "useBaseException": [1]
          },
          {
            "singular": "ألف",
            "dual": "ألفان",
            "plural": "آلاف",
            "restrictedPlural": true,
            "avoidPrefixException": [1, 2]
          },
          {
            "singular": "مليون",
            "dual": "مليونان",
            "plural": "ملايين",
            "restrictedPlural": true,
            "avoidPrefixException": [1, 2]
          },
          {
            "singular": "مليار",
            "dual": "ملياران",
            "plural": "ملايير",
            "restrictedPlural": true,
            "avoidPrefixException": [1, 2]
          },
          {
            "singular": "تريليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "كوادريليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "كوينتليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "سكستليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "سبتيلليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "أوكتيليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "نونيلليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "دشيليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "أوندشيلليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "دودشيليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "تريدشيليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "كواتوردشيليون",
            "avoidPrefixException": [1]
          },
          {
            "singular": "كويندشيليون",
            "avoidPrefixException": [1]
          }
        ],
        "unitExceptions": {}
      },
      'enIndian': {
        "useLongScale": false,
        "baseSeparator": "-",
        "unitSeparator": "and ",
        "base": {
          "0": "zero",
          "1": "one",
          "2": "two",
          "3": "three",
          "4": "four",
          "5": "five",
          "6": "six",
          "7": "seven",
          "8": "eight",
          "9": "nine",
          "10": "ten",
          "11": "eleven",
          "12": "twelve",
          "13": "thirteen",
          "14": "fourteen",
          "15": "fifteen",
          "16": "sixteen",
          "17": "seventeen",
          "18": "eighteen",
          "19": "nineteen",
          "20": "twenty",
          "30": "thirty",
          "40": "forty",
          "50": "fifty",
          "60": "sixty",
          "70": "seventy",
          "80": "eighty",
          "90": "ninety"
        },
        "units": {"2": "hundred", "3": "thousand", "5": "lakh", "7": "crore"},
        "unitExceptions": []
      },
      'en': {
        "useLongScale": false,
        "baseSeparator": "-",
        "unitSeparator": "and ",
        "decimalSeperator": 'and ',
        "base": {
          "0": "zero",
          "1": "one",
          "2": "two",
          "3": "three",
          "4": "four",
          "5": "five",
          "6": "six",
          "7": "seven",
          "8": "eight",
          "9": "nine",
          "10": "ten",
          "11": "eleven",
          "12": "twelve",
          "13": "thirteen",
          "14": "fourteen",
          "15": "fifteen",
          "16": "sixteen",
          "17": "seventeen",
          "18": "eighteen",
          "19": "nineteen",
          "20": "twenty",
          "30": "thirty",
          "40": "forty",
          "50": "fifty",
          "60": "sixty",
          "70": "seventy",
          "80": "eighty",
          "90": "ninety"
        },
        "units": [
          "hundred",
          "thousand",
          "million",
          "billion",
          "trillion",
          "quadrillion",
          "quintillion",
          "sextillion",
          "septillion",
          "octillion",
          "nonillion",
          "decillion",
          "undecillion",
          "duodecillion",
          "tredecillion",
          "quattuordecillion",
          "quindecillion"
        ],
        "unitExceptions": []
      },
      'eo': {
        "useLongScale": false,
        "baseSeparator": " ",
        "unitSeparator": "",
        "base": {
          "0": "nulo",
          "1": "unu",
          "2": "du",
          "3": "tri",
          "4": "kvar",
          "5": "kvin",
          "6": "ses",
          "7": "sep",
          "8": "ok",
          "9": "naŭ",
          "10": "dek",
          "20": "dudek",
          "30": "tridek",
          "40": "kvardek",
          "50": "kvindek",
          "60": "sesdek",
          "70": "sepdek",
          "80": "okdek",
          "90": "naŭdek",
          "100": "cent",
          "200": "ducent",
          "300": "tricent",
          "400": "kvarcent",
          "500": "kvincent",
          "600": "sescent",
          "700": "sepcent",
          "800": "okcent",
          "900": "naŭcent"
        },
        "units": [
          {"useBaseInstead": true, "useBaseException": []},
          {
            "singular": "mil",
            "avoidPrefixException": [1]
          },
          {
            "singular": "miliono",
            "plural": "milionoj",
            "avoidPrefixException": [1]
          },
          {
            "singular": "miliardo",
            "plural": "miliardoj",
            "avoidPrefixException": [1]
          },
          {
            "singular": "biliono",
            "plural": "bilionoj",
            "avoidPrefixException": [1]
          }
        ],
        "unitExceptions": []
      },
      'es': {
        "useLongScale": true,
        "baseSeparator": " y ",
        "unitSeparator": "",
        "base": {
          "0": "cero",
          "1": "uno",
          "2": "dos",
          "3": "tres",
          "4": "cuatro",
          "5": "cinco",
          "6": "seis",
          "7": "siete",
          "8": "ocho",
          "9": "nueve",
          "10": "diez",
          "11": "once",
          "12": "doce",
          "13": "trece",
          "14": "catorce",
          "15": "quince",
          "16": "dieciséis",
          "17": "diecisiete",
          "18": "dieciocho",
          "19": "diecinueve",
          "20": "veinte",
          "21": "veintiuno",
          "22": "veintidós",
          "23": "veintitrés",
          "24": "veinticuatro",
          "25": "veinticinco",
          "26": "veintiséis",
          "27": "veintisiete",
          "28": "veintiocho",
          "29": "veintinueve",
          "30": "treinta",
          "40": "cuarenta",
          "50": "cincuenta",
          "60": "sesenta",
          "70": "setenta",
          "80": "ochenta",
          "90": "noventa",
          "100": "cien",
          "200": "doscientos",
          "300": "trescientos",
          "400": "cuatrocientos",
          "500": "quinientos",
          "600": "seiscientos",
          "700": "setecientos",
          "800": "ochocientos",
          "900": "novecientos",
          "1000": "mil"
        },
        "unitExceptions": {
          "1000000": "un millón",
          "1000000000000": "un billón",
          "1000000000000000000": "un trillón",
          "1000000000000000000000000": "un cuatrillones",
          "1000000000000000000000000000000": "un quintillón",
          "1000000000000000000000000000000000000": "un sextillón",
          "1000000000000000000000000000000000000000000": "un septillón",
          "1000000000000000000000000000000000000000000000000": "un octillón",
          "1000000000000000000000000000000000000000000000000000000":
              "un nonillón",
          "1000000000000000000000000000000000000000000000000000000000000":
              "un decillón",
          "1000000000000000000000000000000000000000000000000000000000000000000":
              "un undecillón",
          "1000000000000000000000000000000000000000000000000000000000000000000000000":
              "un duodecillón",
          "1000000000000000000000000000000000000000000000000000000000000000000000000000000":
              "un tredecillón",
          "1000000000000000000000000000000000000000000000000000000000000000000000000000000000000":
              "un cuatordecillón",
          "1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000":
              "un quindecillón"
        },
        "units": [
          {
            "singular": "ciento",
            "useBaseInstead": true,
            "useBaseException": [1]
          },
          {
            "singular": "mil",
            "avoidPrefixException": [1]
          },
          {"singular": "millón", "plural": "millones"},
          {"singular": "billón", "plural": "billones"},
          {"singular": "trillón", "plural": "trillones"},
          {"singular": "cuatrillón", "plural": "cuatrillones"},
          {"singular": "quintillón", "plural": "quintillones"},
          {"singular": "sextillón", "plural": "sextillones"},
          {"singular": "septillón", "plural": "septillones"},
          {"singular": "octillón", "plural": "octillones"},
          {"singular": "nonillón", "plural": "nonillones"},
          {"singular": "decillón", "plural": "decillones"},
          {"singular": "undecillón", "plural": "undecillones"},
          {"singular": "duodecillón", "plural": "duodecillones"},
          {"singular": "tredecillón", "plural": "tredecillones"},
          {"singular": "cuatrodecillón", "plural": "cuatrodecillones"},
          {"singular": "quindecillón", "plural": "quindecillones"}
        ]
      },
      'fr': {
        "useLongScale": false,
        "baseSeparator": "-",
        "unitSeparator": "",
        "base": {
          "0": "zéro",
          "1": "un",
          "2": "deux",
          "3": "trois",
          "4": "quatre",
          "5": "cinq",
          "6": "six",
          "7": "sept",
          "8": "huit",
          "9": "neuf",
          "10": "dix",
          "11": "onze",
          "12": "douze",
          "13": "treize",
          "14": "quatorze",
          "15": "quinze",
          "16": "seize",
          "17": "dix-sept",
          "18": "dix-huit",
          "19": "dix-neuf",
          "20": "vingt",
          "30": "trente",
          "40": "quarante",
          "50": "cinquante",
          "60": "soixante",
          "70": "soixante-dix",
          "80": "quatre-vingt",
          "90": "quatre-vingt-dix"
        },
        "units": [
          {
            "singular": "cent",
            "plural": "cents",
            "avoidInNumberPlural": true,
            "avoidPrefixException": [1]
          },
          {
            "singular": "mille",
            "avoidPrefixException": [1]
          },
          {"singular": "million", "plural": "millions"},
          {"singular": "milliard", "plural": "milliards"},
          {"singular": "billion", "plural": "billions"},
          {"singular": "billiard", "plural": "billiards"},
          {"singular": "trillion", "plural": "trillions"},
          {"singular": "trilliard", "plural": "trilliards"},
          {"singular": "quadrillion", "plural": "quadrillions"},
          {"singular": "quadrilliard", "plural": "quadrilliards"},
          {"singular": "quintillion", "plural": "quintillions"},
          {"singular": "quintilliard", "plural": "quintilliards"},
          {"singular": "sextillion", "plural": "sextillions"},
          {"singular": "sextilliard", "plural": "sextilliards"},
          {"singular": "septillion", "plural": "septillions"},
          {"singular": "septilliard", "plural": "septilliards"},
          {"singular": "octillion", "plural": "octillions"}
        ],
        "unitExceptions": {
          "21": "vingt et un",
          "31": "trente et un",
          "41": "quarante et un",
          "51": "cinquante et un",
          "61": "soixante et un",
          "71": "soixante et onze",
          "72": "soixante-douze",
          "73": "soixante-treize",
          "74": "soixante-quatorze",
          "75": "soixante-quinze",
          "76": "soixante-seize",
          "77": "soixante-dix-sept",
          "78": "soixante-dix-huit",
          "79": "soixante-dix-neuf",
          "80": "quatre-vingts",
          "91": "quatre-vingt-onze",
          "92": "quatre-vingt-douze",
          "93": "quatre-vingt-treize",
          "94": "quatre-vingt-quatorze",
          "95": "quatre-vingt-quinze",
          "96": "quatre-vingt-seize",
          "97": "quatre-vingt-dix-sept",
          "98": "quatre-vingt-dix-huit",
          "99": "quatre-vingt-dix-neuf"
        }
      },
      'hu': {
        "useLongScale": true,
        "baseSeparator": "",
        "unitSeparator": "és ",
        "base": {
          "0": "nulla",
          "1": "egy",
          "2": "kettő",
          "3": "három",
          "4": "négy",
          "5": "öt",
          "6": "hat",
          "7": "hét",
          "8": "nyolc",
          "9": "kilenc",
          "10": "tíz",
          "11": "tizenegy",
          "12": "tizenkettő",
          "13": "tizenhárom",
          "14": "tizennégy",
          "15": "tizenöt",
          "16": "tizenhat",
          "17": "tizenhét",
          "18": "tizennyolc",
          "19": "tizenkilenc",
          "20": "húsz",
          "21": "huszonegy",
          "22": "huszonkettő",
          "23": "huszonhárom",
          "24": "huszonnégy",
          "25": "huszonöt",
          "26": "huszonhat",
          "27": "huszonhét",
          "28": "huszonnyolc",
          "29": "huszonkilenc",
          "30": "harminc",
          "40": "negyven",
          "50": "ötven",
          "60": "hatvan",
          "70": "hetven",
          "80": "nyolcvan",
          "90": "kilencven",
          "100": "száz",
          "200": "kétszáz",
          "300": "háromszáz",
          "400": "négyszáz",
          "500": "ötszáz",
          "600": "hatszáz",
          "700": "hétszáz",
          "800": "nyolcszáz",
          "900": "kilencszáz",
          "1000": "ezer"
        },
        "unitExceptions": {"1": "egy"},
        "units": [
          {
            "singular": "száz",
            "useBaseInstead": true,
            "useBaseException": [1]
          },
          {
            "singular": "ezer",
            "avoidPrefixException": [1]
          },
          {
            "singular": "millió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "milliárd",
            "avoidPrefixException": [1]
          },
          {
            "singular": "-billió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "billiárd",
            "avoidPrefixException": [1]
          },
          {
            "singular": "trillió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "trilliárd",
            "avoidPrefixException": [1]
          },
          {
            "singular": "kvadrillió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "kvadrilliárd",
            "avoidPrefixException": [1]
          },
          {
            "singular": "kvintillió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "kvintilliárd",
            "avoidPrefixException": [1]
          },
          {
            "singular": "szextillió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "szeptillió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "oktillió",
            "avoidPrefixException": [1]
          },
          {
            "singular": "nonillió",
            "avoidPrefixException": [1]
          }
        ]
      },
      'id': {
        "useLongScale": false,
        "baseSeparator": " ",
        "unitSeparator": "",
        "base": {
          "0": "nol",
          "1": "satu",
          "2": "dua",
          "3": "tiga",
          "4": "empat",
          "5": "lima",
          "6": "enam",
          "7": "tujuh",
          "8": "delapan",
          "9": "sembilan",
          "10": "sepuluh",
          "11": "sebelas",
          "12": "dua belas",
          "13": "tiga belas",
          "14": "empat belas",
          "15": "lima belas",
          "16": "enam belas",
          "17": "tujuh belas",
          "18": "delapan belas",
          "19": "sembilan belas",
          "20": "dua puluh",
          "30": "tiga puluh",
          "40": "empat puluh",
          "50": "lima puluh",
          "60": "enam puluh",
          "70": "tujuh puluh",
          "80": "delapan puluh",
          "90": "sembilan puluh"
        },
        "units": [
          {
            "singular": "seratus",
            "plural": "ratus",
            "avoidPrefixException": [1]
          },
          {
            "singular": "seribu",
            "plural": "ribu",
            "avoidPrefixException": [1]
          },
          "juta",
          "miliar",
          "triliun",
          "kuadiliun"
        ],
        "unitExceptions": []
      },
      'it': {
        "useLongScale": false,
        "baseSeparator": "",
        "unitSeparator": "",
        "generalSeparator": "",
        "wordSeparator": "",
        "base": {
          "0": "zero",
          "1": "uno",
          "2": "due",
          "3": "tre",
          "4": "quattro",
          "5": "cinque",
          "6": "sei",
          "7": "sette",
          "8": "otto",
          "9": "nove",
          "10": "dieci",
          "11": "undici",
          "12": "dodici",
          "13": "tredici",
          "14": "quattordici",
          "15": "quindici",
          "16": "sedici",
          "17": "diciassette",
          "18": "diciotto",
          "19": "diciannove",
          "20": "venti",
          "21": "ventuno",
          "23": "ventitré",
          "28": "ventotto",
          "30": "trenta",
          "31": "trentuno",
          "33": "trentatré",
          "38": "trentotto",
          "40": "quaranta",
          "41": "quarantuno",
          "43": "quaranta­tré",
          "48": "quarantotto",
          "50": "cinquanta",
          "51": "cinquantuno",
          "53": "cinquantatré",
          "58": "cinquantotto",
          "60": "sessanta",
          "61": "sessantuno",
          "63": "sessanta­tré",
          "68": "sessantotto",
          "70": "settanta",
          "71": "settantuno",
          "73": "settantatré",
          "78": "settantotto",
          "80": "ottanta",
          "81": "ottantuno",
          "83": "ottantatré",
          "88": "ottantotto",
          "90": "novanta",
          "91": "novantuno",
          "93": "novantatré",
          "98": "novantotto",
          "100": "cento",
          "101": "centuno",
          "108": "centootto",
          "180": "centottanta",
          "201": "duecentuno",
          "301": "tre­cent­uno",
          "401": "quattro­cent­uno",
          "501": "cinque­cent­uno",
          "601": "sei­cent­uno",
          "701": "sette­cent­uno",
          "801": "otto­cent­uno",
          "901": "nove­cent­uno"
        },
        "unitExceptions": {"1": "un"},
        "units": [
          {
            "singular": "cento",
            "avoidPrefixException": [1]
          },
          {
            "singular": "mille",
            "plural": "mila",
            "avoidPrefixException": [1]
          },
          {"singular": "milione", "plural": "milioni"},
          {"singular": "miliardo", "plural": "miliardi"},
          {"singular": "bilione", "plural": "bilioni"},
          {"singular": "biliardo", "plural": "biliardi"},
          {"singular": "trilione", "plural": "trilioni"},
          {"singular": "triliardo", "plural": "triliardi"},
          {"singular": "quadrilione", "plural": "quadrilioni"},
          {"singular": "quadriliardo", "plural": "quadriliardi"}
        ]
      },
      'ptPT': {
        "useLongScale": true,
        "baseSeparator": " e ",
        "unitSeparator": "e ",
        "andWhenTrailing": true,
        "base": {
          "0": "zero",
          "1": "um",
          "2": "dois",
          "3": "três",
          "4": "quatro",
          "5": "cinco",
          "6": "seis",
          "7": "sete",
          "8": "oito",
          "9": "nove",
          "10": "dez",
          "11": "onze",
          "12": "doze",
          "13": "treze",
          "14": "catorze",
          "15": "quinze",
          "16": "dezasseis",
          "17": "dezassete",
          "18": "dezoito",
          "19": "dezanove",
          "20": "vinte",
          "30": "trinta",
          "40": "quarenta",
          "50": "cinquenta",
          "60": "sessenta",
          "70": "setenta",
          "80": "oitenta",
          "90": "noventa",
          "100": "cem",
          "200": "duzentos",
          "300": "trezentos",
          "400": "quatrocentos",
          "500": "quinhentos",
          "600": "seiscentos",
          "700": "setecentos",
          "800": "oitocentos",
          "900": "novecentos",
          "1000": "mil"
        },
        "unitExceptions": {"1": "um"},
        "units": [
          {
            "singular": "cento",
            "useBaseInstead": true,
            "useBaseException": [1],
            "useBaseExceptionWhenNoTrailingNumbers": true,
            "andException": true
          },
          {
            "singular": "mil",
            "avoidPrefixException": [1],
            "andException": true
          },
          {"singular": "milhão", "plural": "milhões"},
          {"singular": "bilião", "plural": "biliões"},
          {"singular": "trilião", "plural": "triliões"},
          {"singular": "quadrilião", "plural": "quadriliões"},
          {"singular": "quintilião", "plural": "quintiliões"},
          {"singular": "sextilião", "plural": "sextiliões"},
          {"singular": "septilião", "plural": "septiliões"},
          {"singular": "octilião", "plural": "octiliões"},
          {"singular": "nonilião", "plural": "noniliões"},
          {"singular": "decilião", "plural": "deciliões"}
        ]
      },
      'pt': {
        "useLongScale": false,
        "baseSeparator": " e ",
        "unitSeparator": "e ",
        "andWhenTrailing": true,
        "base": {
          "0": "zero",
          "1": "um",
          "2": "dois",
          "3": "três",
          "4": "quatro",
          "5": "cinco",
          "6": "seis",
          "7": "sete",
          "8": "oito",
          "9": "nove",
          "10": "dez",
          "11": "onze",
          "12": "doze",
          "13": "treze",
          "14": "catorze",
          "15": "quinze",
          "16": "dezesseis",
          "17": "dezessete",
          "18": "dezoito",
          "19": "dezenove",
          "20": "vinte",
          "30": "trinta",
          "40": "quarenta",
          "50": "cinquenta",
          "60": "sessenta",
          "70": "setenta",
          "80": "oitenta",
          "90": "noventa",
          "100": "cem",
          "200": "duzentos",
          "300": "trezentos",
          "400": "quatrocentos",
          "500": "quinhentos",
          "600": "seiscentos",
          "700": "setecentos",
          "800": "oitocentos",
          "900": "novecentos",
          "1000": "mil"
        },
        "unitExceptions": {"1": "um"},
        "units": [
          {
            "singular": "cento",
            "useBaseInstead": true,
            "useBaseException": [1],
            "useBaseExceptionWhenNoTrailingNumbers": true,
            "andException": true
          },
          {
            "singular": "mil",
            "avoidPrefixException": [1],
            "andException": true
          },
          {"singular": "milhão", "plural": "milhões"},
          {"singular": "bilhão", "plural": "bilhões"},
          {"singular": "trilhão", "plural": "trilhões"},
          {"singular": "quadrilhão", "plural": "quadrilhão"},
          {"singular": "quintilhão", "plural": "quintilhões"},
          {"singular": "sextilhão", "plural": "sextilhões"},
          {"singular": "septilhão", "plural": "septilhões"},
          {"singular": "octilhão", "plural": "octilhões"},
          {"singular": "nonilhão", "plural": "nonilhões"},
          {"singular": "decilhão", "plural": "decilhões"},
          {"singular": "undecilhão", "plural": "undecilhões"},
          {"singular": "doudecilhão", "plural": "doudecilhões"},
          {"singular": "tredecilhão", "plural": "tredecilhões"}
        ]
      },
      'ru': {
        "useLongScale": false,
        "baseSeparator": " ",
        "unitSeparator": "",
        "base": {
          "0": "ноль",
          "1": "один",
          "2": "два",
          "3": "три",
          "4": "четыре",
          "5": "пять",
          "6": "шесть",
          "7": "семь",
          "8": "восемь",
          "9": "девять",
          "10": "десять",
          "11": "одиннадцать",
          "12": "двенадцать",
          "13": "тринадцать",
          "14": "четырнадцать",
          "15": "пятнадцать",
          "16": "шестнадцать",
          "17": "семнадцать",
          "18": "восемнадцать",
          "19": "девятнадцать",
          "20": "двадцать",
          "30": "тридцать",
          "40": "сорок",
          "50": "пятьдесят",
          "60": "шестьдесят",
          "70": "семьдесят",
          "80": "восемьдесят",
          "90": "девяносто",
          "100": "сто",
          "200": "двести",
          "300": "триста",
          "400": "четыреста",
          "500": "пятьсот",
          "600": "шестьсот",
          "700": "семьсот",
          "800": "восемьсот",
          "900": "девятьсот"
        },
        "alternativeBase": {
          "feminine": {"1": "одна", "2": "две"}
        },
        "units": [
          {"useBaseInstead": true, "useBaseException": []},
          {
            "singular": "тысяча",
            "few": "тысячи",
            "plural": "тысяч",
            "useAlternativeBase": "feminine",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "миллион",
            "few": "миллиона",
            "plural": "миллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "миллиард",
            "few": "миллиарда",
            "plural": "миллиардов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "триллион",
            "few": "триллиона",
            "plural": "триллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "квадрильон",
            "few": "квадриллион",
            "plural": "квадрилон",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "квинтиллион",
            "few": "квинтиллиона",
            "plural": "квинтильонов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "секстиллионов",
            "few": "секстильона",
            "plural": "секстиллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "септиллион",
            "few": "септиллиона",
            "plural": "септиллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "октиллион",
            "few": "октиллиона",
            "plural": "октиллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "нониллион",
            "few": "нониллиона",
            "plural": "нониллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "дециллион",
            "few": "дециллиона",
            "plural": "дециллионов",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "ундециллион",
            "few": "ундециллиона",
            "plural": "ундециллионив",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "дуодециллион",
            "few": "дуодециллиона",
            "plural": "дуодециллионив",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "тредециллион",
            "few": "тредециллиона",
            "plural": "тредециллионив",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "кватуордециллион",
            "few": "кватуордециллиона",
            "plural": "кватуордециллионив",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "квиндециллион",
            "few": "квиндециллиона",
            "plural": "квиндециллионив",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          }
        ],
        "unitExceptions": []
      },
      'tr': {
        "useLongScale": false,
        "baseSeparator": " ",
        "unitSeparator": "",
        "base": {
          "0": "sıfır",
          "1": "bir",
          "2": "iki",
          "3": "üç",
          "4": "dört",
          "5": "beş",
          "6": "altı",
          "7": "yedi",
          "8": "sekiz",
          "9": "dokuz",
          "10": "on",
          "20": "yirmi",
          "30": "otuz",
          "40": "kırk",
          "50": "elli",
          "60": "altmış",
          "70": "yetmiş",
          "80": "seksen",
          "90": "doksan"
        },
        "units": [
          {
            "singular": "yüz",
            "avoidPrefixException": [1]
          },
          {
            "singular": "bin",
            "avoidPrefixException": [1]
          },
          "milyon",
          "milyar",
          "trilyon",
          "katrilyon",
          "kentilyon",
          "sekstilyon",
          "septilyon",
          "oktilyon",
          "nonilyon",
          "desilyon",
          "andesilyon",
          "dodesilyon",
          "tredesilyon",
          "katordesilyon",
          "kendesilyon"
        ],
        "unitExceptions": []
      },
      'uk': {
        "useLongScale": false,
        "baseSeparator": " ",
        "unitSeparator": "",
        "base": {
          "0": "нуль",
          "1": "один",
          "2": "два",
          "3": "три",
          "4": "чотири",
          "5": "п’ять",
          "6": "шість",
          "7": "сім",
          "8": "вісім",
          "9": "дев’ять",
          "10": "десять",
          "11": "одинадцять",
          "12": "дванадцять",
          "13": "тринадцять",
          "14": "чотирнадцять",
          "15": "п’ятнадцять",
          "16": "шістнадцять",
          "17": "сімнадцять",
          "18": "вісімнадцять",
          "19": "дев’ятнадцять",
          "20": "двадцять",
          "30": "тридцять",
          "40": "сорок",
          "50": "п’ятдесят",
          "60": "шістдесят",
          "70": "сімдесят",
          "80": "вісімдесят",
          "90": "дев’яносто",
          "100": "сто",
          "200": "двісті",
          "300": "триста",
          "400": "чотириста",
          "500": "п’ятсот",
          "600": "шістсот",
          "700": "сімсот",
          "800": "вісімсот",
          "900": "дев’ятсот"
        },
        "alternativeBase": {
          "feminine": {"1": "одна", "2": "дві"}
        },
        "units": [
          {"useBaseInstead": true, "useBaseException": []},
          {
            "singular": "тисяча",
            "few": "тисячі",
            "plural": "тисяч",
            "useAlternativeBase": "feminine",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "мільйон",
            "few": "мільйони",
            "plural": "мільйонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "мільярд",
            "few": "мільярди",
            "plural": "мільярдів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "трильйон",
            "few": "трильйони",
            "plural": "трильйонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "квадрильйон",
            "few": "квадрильйони",
            "plural": "квадрильйонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "квінтильйон",
            "few": "квінтильйони",
            "plural": "квінтильйонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "секстильйон",
            "few": "секстильйони",
            "plural": "секстильйонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "септілліон",
            "few": "септілліони",
            "plural": "септілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "октілліон",
            "few": "октілліони",
            "plural": "октілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "нонілліон",
            "few": "нонілліони",
            "plural": "нонілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "децілліон",
            "few": "децілліони",
            "plural": "децілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "ундецілліон",
            "few": "ундецілліони",
            "plural": "ундецілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "дуодецілліон",
            "few": "дуодецілліони",
            "plural": "дуодецілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "тредецілліон",
            "few": "тредецілліони",
            "plural": "тредецілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "кватуордецілліон",
            "few": "кватуордецілліони",
            "plural": "кватуордецілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          },
          {
            "singular": "квіндецілліон",
            "few": "квіндецілліони",
            "plural": "квіндецілліонів",
            "useSingularEnding": true,
            "useFewEnding": true,
            "avoidEndingRules": [
              11,
              12,
              13,
              14,
              111,
              112,
              113,
              114,
              211,
              212,
              213,
              214,
              311,
              312,
              313,
              314,
              411,
              412,
              413,
              414,
              511,
              512,
              513,
              514,
              611,
              612,
              613,
              614,
              711,
              712,
              713,
              714,
              811,
              812,
              813,
              814,
              911,
              912,
              913,
              914
            ]
          }
        ],
        "unitExceptions": []
      },
      'vi': {
        "useLongScale": false,
        "baseSeparator": " ",
        "unitSeparator": "và ",
        "base": {
          "0": "không",
          "1": "một",
          "2": "hai",
          "3": "ba",
          "4": "bốn",
          "5": "năm",
          "6": "sáu",
          "7": "bảy",
          "8": "tám",
          "9": "chín",
          "10": "mười",
          "15": "mười lăm",
          "20": "hai mươi",
          "21": "hai mươi mốt",
          "25": "hai mươi lăm",
          "30": "ba mươi",
          "31": "ba mươi mốt",
          "40": "bốn mươi",
          "41": "bốn mươi mốt",
          "45": "bốn mươi lăm",
          "50": "năm mươi",
          "51": "năm mươi mốt",
          "55": "năm mươi lăm",
          "60": "sáu mươi",
          "61": "sáu mươi mốt",
          "65": "sáu mươi lăm",
          "70": "bảy mươi",
          "71": "bảy mươi mốt",
          "75": "bảy mươi lăm",
          "80": "tám mươi",
          "81": "tám mươi mốt",
          "85": "tám mươi lăm",
          "90": "chín mươi",
          "91": "chín mươi mốt",
          "95": "chín mươi lăm"
        },
        "units": ["trăm", "ngàn", "triệu", "tỷ", "nghìn tỷ"],
        "unitExceptions": []
      }
    }
  };

  SpellingNumber(
      {this.noAnd,
      this.alternativeBase,
      this.decimalSeperator,
      this.wholesUnit,
      this.fractionUnit,
      this.digitsLengthW2F,
      this.lang}) {
    _spellingNumberDefault["noAnd"] = noAnd ?? _spellingNumberDefault["noAnd"];
    _spellingNumberDefault["alternativeBase"] =
        alternativeBase ?? _spellingNumberDefault["alternativeBase"];
    _spellingNumberDefault["decimalSeperator"] =
        decimalSeperator ?? _spellingNumberDefault["decimalSeperator"];
    _spellingNumberDefault["wholesUnit"] =
        wholesUnit ?? _spellingNumberDefault["wholesUnit"];
    _spellingNumberDefault["fractionUnit"] =
        fractionUnit ?? _spellingNumberDefault["fractionUnit"];
    _spellingNumberDefault["digitsLengthW2F"] =
        digitsLengthW2F ?? _spellingNumberDefault["digitsLengthW2F"];
    _spellingNumberDefault["lang"] = lang ?? _spellingNumberDefault["lang"];
  }

  // Converts numbers to their written form.

  // @param {Number} n The number to convert
  // @return {String} writtenN The written form of `n`

  String _spellingNumber(num n, Map<String, dynamic> language,
      List<num> longScale, List<num> shortScale) {
    if (n < 0) {
      return "";
    }

    n = n.round();

    List scale = language['useLongScale'] ? longScale : shortScale;
    var units = language['units'];
    var unit;

    if ((units is! List)) {
      Map<dynamic, dynamic> rawUnits = units;

      units = [];
      scale = rawUnits.keys.toList();
      List<int> _scale = [];

      for (int i = 0; i < scale.length; i++) {
        units.add(rawUnits[scale[i]]);
        _scale.add(math.pow(10, int.parse(scale[i])) as int);
      }
      scale = _scale;
    }

    var baseCardinals = language['base'];

    var alternativeBaseCardinals = _spellingNumberDefault['alternativeBase'] !=
            null
        ? language['alternativeBase'][_spellingNumberDefault['alternativeBase']]
        : {};

    if (language['unitExceptions'] != null &&
        language['unitExceptions'].length > 0 &&
        language['unitExceptions'][n] != null) {
      return language['unitExceptions'][n];
    }

    if (alternativeBaseCardinals.length > 0 &&
        alternativeBaseCardinals[n] != null) {
      return alternativeBaseCardinals[n];
    }
    if (baseCardinals.length > 0 && baseCardinals[n.toString()] != null) {
      return baseCardinals[n.toString()];
    }

    if (n < 100) {
      return handleSmallerThan100(n, language, unit, baseCardinals,
          alternativeBaseCardinals, longScale, shortScale);
    }

    var m = n % 100;
    var ret = [];

    if (m != 0) {
      if (_spellingNumberDefault['noAnd'] &&
          !(language['andException'] != null && language['andException'][10])) {
        ret.add(_spellingNumber(m, language, longScale, shortScale));
      } else {
        ret.add(language['unitSeparator'] +
            _spellingNumber(m, language, longScale, shortScale));
      }
    }

    int firstSignificant = 0;

    for (var i = 0, len = units.length; i < len; i++) {
      int r = (n / scale[i]).floor();
      int divideBy;

      if (i == (len - 1)) {
        divideBy = 1000000;
      } else {
        divideBy =
            int.parse((scale[i + 1] / scale[i]).toString().split('.')[0]);
      }
      r %= divideBy;

      unit = units[i];

      if (r == 0) continue;
      firstSignificant = scale[i];

      if (unit is! String &&
          unit['useBaseInstead'] != null &&
          unit['useBaseInstead']) {
        var shouldUseBaseException = unit['useBaseException'].indexOf(r) > -1 &&
            (unit['useBaseExceptionWhenNoTrailingNumbers'] != null &&
                    unit['useBaseExceptionWhenNoTrailingNumbers']
                ? (i == 0 && ret.length > 0)
                : true);
        if (!shouldUseBaseException) {
          var k = (r * scale[i]).toString();
          var s = '-NULL-';
          if (alternativeBaseCardinals[k] != null) {
            s = alternativeBaseCardinals[k];
          }

          if (baseCardinals[k] != null) {
            s = baseCardinals[k];
          }
          ret.add(s);
        } else {
          ret.add(r > 1 && unit['plural'] != null
              ? unit['plural']
              : unit['singular']);
        }
        continue;
      }

      var str;
      if (unit is String) {
        str = unit;
      } else if (r == 1 ||
          unit['useSingularEnding'] != null &&
              unit['useSingularEnding'] &&
              r % 10 == 1 &&
              (unit['avoidEndingRules'] == null ||
                  unit['avoidEndingRules'].indexOf(r) < 0)) {
        str = unit['singular'];
      } else if (unit['few'] != null &&
          (r > 1 && r < 5 ||
              unit['useFewEnding'] != null &&
                  unit['useFewEnding'] &&
                  r % 10 > 1 &&
                  r % 10 < 5 &&
                  (unit['avoidEndingRules'] == null ||
                      unit['avoidEndingRules'].indexOf(r) < 0))) {
        str = unit['few'];
      } else {
        str = unit['plural'] != null &&
                ((unit['avoidInNumberPlural'] != null &&
                        !unit['avoidInNumberPlural']) ||
                    m == 0)
            ? unit['plural']
            : unit['singular'];

        // Languages with dual
        str = (r == 2 && unit['dual'] != null) ? unit['dual'] : str;

        // "restrictedPlural" : use plural only for 3 to 10
        str = (r > 10 &&
                unit['restrictedPlural'] != null &&
                unit['restrictedPlural'])
            ? unit['singular']
            : str;
      }

      if (unit is! String &&
          unit['avoidPrefixException'] != null &&
          unit['avoidPrefixException'].length > 0 &&
          unit['avoidPrefixException'].indexOf(r) > -1) {
        ret.add(str);
        continue;
      }

      var exception = (language['unitExceptions'].length > 0 &&
              language['unitExceptions'][r] != null)
          ? language['unitExceptions'][r]
          : null;

      dynamic number;
      if (exception != null) {
        number = exception;
      } else {
        _spellingNumberDefault['noAnd'] = !((language['andException'] != null &&
                    language['andException'] &&
                    language['andException'][r] != null &&
                    language['andException'][r]) ||
                ((unit is! String) &&
                    unit.length > 0 &&
                    unit['andException'] != null &&
                    unit['andException'])) &&
            true;
        _spellingNumberDefault['alternativeBase'] = ((unit is! String) &&
                unit.length > 0 &&
                unit['useAlternativeBase'] != null)
            ? unit['useAlternativeBase']
            : null;

        number = _spellingNumber(r, language, longScale, shortScale);
      }

      n -= r * scale[i];
      ret.add(number + " " + str);
    }

    var firstSignificantN = firstSignificant * (n / firstSignificant).floor();
    var rest = n - firstSignificantN;

    if (language['andWhenTrailing'] != null &&
        language['andWhenTrailing'] &&
        firstSignificant > 0 &&
        0 < rest &&
        ret[0].indexOf(language['unitSeparator']) != 0) {
      ret = [ret[0], language['unitSeparator'].replaceAll(RegExp(r"\s+"), "")] +
          ret.sublist(1);
    }

    // Languages that have separators for all cardinals.
    if (language['allSeparator'] != null) {
      for (int j = 0; j < ret.length - 1; j++) {
        ret[j] = language['allSeparator'] + ret[j];
      }
    }
    var result = ret.reversed.toList().join(" ");
    return result;
  }

  // Throw error
  Error throwError(content) {
    throw Exception('spellingNumber: ' + content);
  }

  dynamic handleSmallerThan100(n, language, unit, baseCardinals,
      alternativeBaseCardinals, List<num> longScale, List<num> shortScale) {
    var dec = (n / 10).floor() * 10;
    unit = n - dec;
    String decS = dec.toString();

    if (unit > 0) {
      if (alternativeBaseCardinals != null &&
          alternativeBaseCardinals[decS] != null) {
        return alternativeBaseCardinals[decS];
      }
      if (baseCardinals != null && baseCardinals[decS] != null) {
        return (baseCardinals[decS] +
            language['baseSeparator'] +
            _spellingNumber(unit, language, longScale, shortScale));
      }
    }

    if (alternativeBaseCardinals != null &&
        alternativeBaseCardinals[decS] != null) {
      return alternativeBaseCardinals[decS];
    }

    if (baseCardinals != null && baseCardinals[decS] != null) {
      return baseCardinals[decS];
    }
  }

  bool _isNumeric(String? str) {
    if (str == null) {
      return false;
    }
    return double.tryParse(str) != null;
  }

  String convert(num number) {
    var languages = [
      "en",
      "es",
      "ar",
      "enIndian",
      "ptPT",
      "hu",
      "pt",
      "fr",
      "eo",
      "it",
      "vi",
      "tr",
      "uk",
      "ru",
      "id"
    ];

    var shortScale = [
      100,
      1000,
      1000000,
      1000000000,
      1000000000000,
      1000000000000000,
      1000000000000000000,
      1e+21,
      1e+24,
      1e+27,
      1e+30,
      1e+33,
      9.999999999999999e+35,
      1.0000000000000001e+39,
      9.999999999999999e+41,
      1e+45,
      1e+48
    ];

    var longScale = [
      100,
      1000,
      1000000,
      1000000000000,
      1000000000000000000,
      1e+24,
      1e+30,
      9.999999999999999e+35,
      9.999999999999999e+41,
      1e+48,
      1e+54,
      1e+60,
      1e+66,
      1e+72,
      1e+78,
      1e+84,
      1e+90
    ];

    var language = (_spellingNumberDefault is String)
        ? _spellingNumberDefault['i18n'][_spellingNumberDefault['lang']]
        : _spellingNumberDefault['lang'];

    if (language != null) {
      if (!languages.contains(_spellingNumberDefault['lang'])) {
        _spellingNumberDefault['defaults']['lang'] = "en";
      }

      language = _spellingNumberDefault['i18n'][_spellingNumberDefault['lang']];
    }

    var wholesSpelling = '';
    var fractionSpelling = '';

    var b = number.toString().split(".");

    var wholes = b[0];
    wholesSpelling =
        _spellingNumber(double.parse(wholes), language, longScale, shortScale);

    if (b.length > 1 &&
        _isNumeric(_spellingNumberDefault['digitsLengthW2F'].toString())) {
      if (b[1].length < _spellingNumberDefault['digitsLengthW2F']) {
        int newDigitsNumber = int.parse(b[1]);
        int digitsToAdd =
            (_spellingNumberDefault['digitsLengthW2F'] as int) - b[1].length;
        newDigitsNumber *= digitsToAdd * 10;
        b[1] = newDigitsNumber.toString();
      }

      double fraction = double.parse("0." +
          (b[1].substring(0, _spellingNumberDefault['digitsLengthW2F'])));
      fraction = fraction *
          (math.pow(
              10,
              _spellingNumberDefault[
                  'digitsLengthW2F'])); //Convert to Fraction Unit
      if (fraction > 0) {
        fractionSpelling =
            _spellingNumber(fraction, language, longScale, shortScale);
      }
    }

    if (wholesSpelling != '') {
      wholesSpelling =
          wholesSpelling + ' ' + _spellingNumberDefault['wholesUnit'];
    }
    if (fractionSpelling != '') {
      fractionSpelling = ' ' +
          _spellingNumberDefault['decimalSeperator'] +
          ' ' +
          fractionSpelling +
          ' ' +
          _spellingNumberDefault['fractionUnit'];
    }

    return (wholesSpelling + fractionSpelling).trim();
  }
}

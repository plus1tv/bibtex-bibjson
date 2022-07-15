# BibTex-BibJson

[![Npm Package][npm-img]][npm-url]
[![License][license-img]][license-url]

## Installation

```bash
npm i bibtex-bibjson -S
```

A tool to convert BibTeX citations to [BibJSON](http://okfnlabs.org/bibjson/).

## Usage & Demo

Check out our [Demo](https://codepen.io/alaingalvan/pen/agjaLo) to try it out for yourself!

```ts
import { openFileSync } from 'fs';
import { parse } from 'bibtex-bibjson';

// Read file as string
let bibTexStr = openFileSync('./citations.bib');

// {} Convert to BibJson
// function parse(bibTexStr: string): object
let bibJson: Object = parse(bibTexStr);
```

### Example

```bib
@article{hasselgren2020,
    author = {Hasselgren, Jon and Munkberg, J. and Salvi, Marco and Patney, A. and Lefohn, Aaron},
    year = {2020},
    title = {Neural Temporal Adaptive Sampling and Denoising},
    journal = {Computer Graphics Forum}
}
```

Becomes:

```json
{
    "hasselgren2020": {
        "author": [
            { "name": "Jon Hasselgren" },
            { "name": "J. Munkberg" },
            { "name": "Marco Salvi" },
            { "name": "A. Patney" },
            { "name": "Aaron Lefohn" }
        ],
        "year": 2020,
        "title": "Neural Temporal Adaptive Sampling and Denoising",
        "journal": "Computer Graphics Forum"
    }
}
```

## License

bibtex-bibjson is licensed as either **MIT** or **Apache-2.0**, whichever you would prefer.

[npm-img]: https://img.shields.io/npm/v/bibtex-bibjson.svg?style=flat-square
[npm-url]: http://npm.im/bibtex-bibjson
[license-img]: https://img.shields.io/:license-mit-blue.svg?style=flat-square
[license-url]: https://opensource.org/licenses/MIT
# BibTex-BibJson

[![Npm Package][npm-img]][npm-url]
[![License][license-img]][license-url]
[![Travis Tests][travis-img]][travis-url]
[![devDependency Status][david-dev-img]][david-dev-url]

## Installation

```bash
npm i bibtex-bibjson -S
```

A tool to convert BibTeX citations to [BibJSON](http://okfnlabs.org/bibjson/).

## Usage & Demo

Check out our [Demo](https://codepen.io/alaingalvan/pen/agjaLo) to try it out for yourself!

```ts
import {openFileSync} from 'fs';
import {bibTexParser} from 'bibtex-bibjson';

// Read file as string
let bibTexStr = openFileSync('./citations.bib');

// {} Convert to BibJson
// function bibTexParser(bibTexStr: string): object
let bibJson: Object = bibTexParser(bibTexStr);
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
        "journal": "Computer Graphics Forum",
    }
}
```

## License

bibtex-bibjson is licensed as either **MIT** or **Apache-2.0**, whichever you would prefer.

[cmake-img]: https://img.shields.io/badge/cmake-3.6-1f9948.svg?style=flat-square
[cmake-url]: https://cmake.org/
[license-img]: https://img.shields.io/:license-mit-blue.svg?style=flat-square
[license-url]: https://opensource.org/licenses/MIT
[travis-img]: https://img.shields.io/travis/com/plus1tv/bibtex-bibjson?style=flat-square
[travis-url]: https://www.travis-ci.com/github/plus1tv/bibtex-bibjson
[npm-img]: https://img.shields.io/npm/v/bibtex-bibjson.svg?style=flat-square
[npm-url]: http://npm.im/bibtex-bibjson
[npm-download-img]: https://img.shields.io/npm/dm/bibtex-bibjson.svg?style=flat-square
[david-url]: https://david-dm.org/plus1tv/bibtex-bibjson
[david-img]: https://david-dm.org/plus1tv/bibtex-bibjson.svg?style=flat-square
[david-dev-url]: https://david-dm.org/plus1tv/bibtex-bibjson#info=devDependencies
[david-dev-img]: https://david-dm.org/plus1tv/bibtex-bibjson/dev-status.svg?&style=flat-square
[codecov-img]: https://img.shields.io/codecov/c/github/plus1tv/bibtex-bibjson.svg?style=flat-square
[codecov-url]: https://codecov.io/gh/plus1tv/bibtex-bibjson
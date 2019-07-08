# BibTex-BibJson

[![Npm Package][npm-img]][npm-url]
[![License][license-img]][license-url]
[![Travis Tests][travis-img]][travis-url]
[![devDependency Status][david-dev-img]][david-dev-url]

## Installation

```bash
npm i bibtex-bibjson -S
```

A tool to convert BibTex documents to BibJson.

## Usage & Demo

Check out our [Demo](https://codepen.io/alaingalvan/pen/agjaLo) to try it out for yourself!

```ts
import {openFileSync} from 'fs';
import {bibTexParser, bibJsonParser} from 'bibtex-bibjson';

// Read file as string
let bibTexStr = openFileSync('./citations.bib');

// {} Convert to BibJson
// function bibTexParser(bibTexStr: string): object
let bibJson = bibTexParser(bibTexStr);

// Convert back to BibTex
// function bibJsonParser(bibJson: object): string
// let bibTex = bibJsonParser(bibJson);
```

## License

bibtex-bibjson is licensed as either **MIT** or **Apache-2.0**, whichever you would prefer.

[cmake-img]: https://img.shields.io/badge/cmake-3.6-1f9948.svg?style=flat-square
[cmake-url]: https://cmake.org/
[license-img]: https://img.shields.io/:license-mit-blue.svg?style=flat-square
[license-url]: https://opensource.org/licenses/MIT
[travis-img]: https://img.shields.io/travis/alaingalvan/bibtex-bibjson.svg?style=flat-square&logo=travis
[travis-url]: https://travis-ci.org/alaingalvan/bibtex-bibjson
[npm-img]: https://img.shields.io/npm/v/cross-shader.svg?style=flat-square
[npm-url]: http://npm.im/cross-shader
[npm-download-img]: https://img.shields.io/npm/dm/cross-shader.svg?style=flat-square
[david-url]: https://david-dm.org/alaingalvan/bibtex-bibjson
[david-img]: https://david-dm.org/alaingalvan/bibtex-bibjson.svg?style=flat-square
[david-dev-url]: https://david-dm.org/alaingalvan/bibtex-bibjson#info=devDependencies
[david-dev-img]: https://david-dm.org/alaingalvan/bibtex-bibjson/dev-status.svg?&style=flat-square
[codecov-img]: https://img.shields.io/codecov/c/github/alaingalvan/bibtex-bibjson.svg?style=flat-square
[codecov-url]: https://codecov.io/gh/alaingalvan/bibtex-bibjson
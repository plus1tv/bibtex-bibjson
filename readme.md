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
import {bibTexParser} from 'bibtex-bibjson';

// Read file as string
let bibTexStr = openFileSync('./citations.bib');

// {} Convert to BibJson
// function bibTexParser(bibTexStr: string): object
let bibJson: Object = bibTexParser(bibTexStr);
```

## License

bibtex-bibjson is licensed as either **MIT** or **Apache-2.0**, whichever you would prefer.

[cmake-img]: https://img.shields.io/badge/cmake-3.6-1f9948.svg?style=flat-square
[cmake-url]: https://cmake.org/
[license-img]: https://img.shields.io/:license-mit-blue.svg?style=flat-square
[license-url]: https://opensource.org/licenses/MIT
[travis-img]: https://img.shields.io/travis/plus1tv/bibtex-bibjson.svg?style=flat-square&logo=travis
[travis-url]: https://travis-ci.org/plus1tv/bibtex-bibjson
[npm-img]: https://img.shields.io/npm/v/bibtex-bibjson.svg?style=flat-square
[npm-url]: http://npm.im/bibtex-bibjson
[npm-download-img]: https://img.shields.io/npm/dm/bibtex-bibjson.svg?style=flat-square
[david-url]: https://david-dm.org/plus1tv/bibtex-bibjson
[david-img]: https://david-dm.org/plus1tv/bibtex-bibjson.svg?style=flat-square
[david-dev-url]: https://david-dm.org/plus1tv/bibtex-bibjson#info=devDependencies
[david-dev-img]: https://david-dm.org/plus1tv/bibtex-bibjson/dev-status.svg?&style=flat-square
[codecov-img]: https://img.shields.io/codecov/c/github/plus1tv/bibtex-bibjson.svg?style=flat-square
[codecov-url]: https://codecov.io/gh/plus1tv/bibtex-bibjson
import { readFileSync, writeFileSync } from 'fs';
import { join } from 'path';
import test from 'ava';
import {bibTexParser} from '../src/bibtex-bibjson';

// Deep equality check of parsed bibtex with reference json.
test('Test Example', (t) => {
    var input = readFileSync(join(__dirname, 'input.bib'))
      .toString();
  
    var compiled = bibTexParser(input);
  
    //writeFileSync('tests/out.json', JSON.stringify(compiled));
  
    var outFile = JSON.parse(readFileSync(join(__dirname, 'out.json')).toString());
  
    t.deepEqual(compiled, outFile);
  });
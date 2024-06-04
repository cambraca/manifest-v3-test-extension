import './workaround';
import {Cite} from '@citation-js/core';
import '@citation-js/plugin-doi';

await new Promise(r => setTimeout(r, 1000));

const doi = '10.1038/s41467-021-25015-6';
let example = await Cite.async(doi, {forceType: "@doi/id"});

let output = example.format('bibliography', {
    format: 'html',
    template: 'apa',
    lang: 'en-US'
})

console.log(output)

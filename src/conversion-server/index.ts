import execCmd from '../helpers/execCmd';

const { 2: value, 3: currency } = process.argv

if (value && currency) {
  execCmd(`chmod +x src/scripts/conversion/convert.sh`)
  execCmd(`src/scripts/conversion/convert.sh ${value} ${currency}`)
} else {
  throw new Error('Missing argument for conversion job')
}

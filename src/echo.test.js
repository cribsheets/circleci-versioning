const echo = require('./echo')

test('echoes an object', () => {
  const obj = { an: "object" };
  expect(echo(obj)).toBe(obj);
});

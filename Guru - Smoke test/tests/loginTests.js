import {Selector} from "testcafe"

let userNameTextSelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td:nth-child(3) > form > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(2) > td:nth-child(1) > font'

fixture('Casos de prueba de la funcion login')
  .page('https://demo.guru99.com/test/newtours/index.php')
  .skipJsErrors();

test('El usuario debe poder ver los campos de login', async t => { 
  await t.expect(Selector(userNameTextSelector).withText('User Name').exists).ok()
})
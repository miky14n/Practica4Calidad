import {Selector} from "testcafe"
import loginSuccessPage from "../../Pages/loginSuccessPage";
import MainPage from "../../Pages/MainPage";

/*fixture('Comprobar el inicio de sesion desde la pagina principal')
  .page('https://demo.guru99.com/test/newtours/index.php')
  .skipJsErrors();

test('Puedo iniciar sesion', async t => { 
  await MainPage.login('admin', 'admin')
  await t.expect(loginSuccessPage.title.exists).ok()
})
test('No puedo iniciar sesion si mis datos sin incorrectos', async t => { 
  await MainPage.login('S&ybZ3R%A$D@qX16*%Zeq7', 'S&ybZ3R%A$D@qX16*%Zeq7')
  await t.expect(MainPage.loginErrorMessage.exists).ok()
  await t.expect(loginSuccessPage.title.exists).notOk()
})
test('Puedo cerrar sesion', async t => { 
  await MainPage.login('admin', 'admin')
  await t.expect(loginSuccessPage.title.exists).ok()
  await loginSuccessPage.signOff()
  await t.expect(MainPage.signOnButton.withText('SIGN-ON').exists).ok()
})*/
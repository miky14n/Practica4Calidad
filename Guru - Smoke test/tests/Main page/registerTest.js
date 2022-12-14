import {Selector, t} from "testcafe"
import MainPage from "../../Pages/MainPage";
import RegisterPage from "../../Pages/registerPage";
import RegisterSuccessPage from "../../Pages/registerSuccessPage";

fixture('Comprobar el inicio de sesion desde la pagina principal')
  .page('https://demo.guru99.com/test/newtours/index.php')
  .skipJsErrors()
  .beforeEach(async t  => {
    await t.click(MainPage.registerButton)
  });

test('Puedo registrar una cuenta', async t => { 
  let userData = await RegisterPage.register()
  await t.expect(RegisterSuccessPage.title.exists).ok()
  await RegisterSuccessPage.checkRegisteredInfo(userData.firstName, userData.lastName, userData.userName)
})
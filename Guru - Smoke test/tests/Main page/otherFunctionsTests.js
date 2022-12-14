import {Selector} from "testcafe"
import loginSuccessPage from "../../Pages/loginSuccessPage";
import MainPage from "../../Pages/MainPage";
import underConstructionSite from "../../Pages/underConstructionSite";

fixture('Comprobar las funcionalidades en construcción')
  .page('https://demo.guru99.com/test/newtours/index.php')
  .skipJsErrors()
  .afterEach(async t  => {
    await t.expect(underConstructionSite.title).ok()
    //await t.expect(underConstructionSite.explanationText.withText(`Please press your browser's back button to return to the previous page or click the "BACK TO HOME" icon below to go to the homepage.`).exists).ok()
  });

test('Puedo ver que al apretar el botón Support, este esta en construcción', async t => { 
  await t.click(MainPage.supportButton)
})
test('Puedo ver que al apretar el botón Contact, este esta en construcción', async t => { 
  await t.click(MainPage.contactButton)
})
test('Puedo ver que al apretar el botón Hotels, este esta en construcción', async t => { 
  await t.click(MainPage.hotelsButton)
})
test('Puedo ver que al apretar el botón Cars Rentals, este esta en construcción', async t => { 
  await t.click(MainPage.carRentalsButton)
})
test('Puedo ver que al apretar el botón Destinations, este esta en construcción', async t => { 
  await t.click(MainPage.destinationButton)
})
test('Puedo ver que al apretar el botón Vacations, este esta en construcción', async t => { 
  await t.click(MainPage.vacationsButton)
})
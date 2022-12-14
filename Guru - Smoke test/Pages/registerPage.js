import {Selector, t} from 'testcafe'

let tableBodySelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody >'
let registerFormSelector = tableBodySelector + 'tr:nth-child(5) > td > form > table > tbody >'
                                                
class RegisterPage{
  constructor(){
    this.title = Selector(tableBodySelector + 'tr:nth-child(1) > td > img')
    //Contact information
    this.firstNameField = Selector(registerFormSelector + 'tr:nth-child(2) > td:nth-child(2) > input')
    this.lastNameField = Selector(registerFormSelector + 'tr:nth-child(3) > td:nth-child(2) > input')
    this.phoneField = Selector(registerFormSelector + 'tr:nth-child(4) > td:nth-child(2) > input')
    this.emailField = Selector(registerFormSelector + 'tr:nth-child(5) > td:nth-child(2) > input')
    //Mailing Information
    this.addressField = Selector(registerFormSelector + 'tr:nth-child(7) > td:nth-child(2) > input')
    this.cityField = Selector(registerFormSelector + 'tr:nth-child(8) > td:nth-child(2) > input')
    this.stateProvinceField = Selector(registerFormSelector + 'tr:nth-child(9) > td:nth-child(2) > input')
    this.postalCodeField = Selector(registerFormSelector + 'tr:nth-child(10) > td:nth-child(2) > input')
    this.countryField = Selector(registerFormSelector + 'tr:nth-child(11) > td:nth-child(2) > select')
    //User Information
    this.userNameField = Selector('#email')
    this.passwordField = Selector(registerFormSelector + 'tr:nth-child(14) > td:nth-child(2) > input[type=password]')
    this.confirmPasswordField = Selector(registerFormSelector + 'tr:nth-child(15) > td:nth-child(2) > input[type=password]')

    this.submitButton = Selector(registerFormSelector + 'tr:nth-child(17) > td > input[type=submit]')
  }

  getNewUserData() {
    let currentDateTime = new Date();
    let resultInSeconds=currentDateTime.getTime() / 1000;

    let userData = {
      firstName: "first name" + resultInSeconds,
      lastName: "last name" + resultInSeconds,
      phone: resultInSeconds.toString(),
      email: resultInSeconds + "@gmail.com",
      address: "a place",
      city: "a city",
      stateProvince: "a state",
      postalCode: "0000",
      country: "BOLIVIA",
      userName: "username"+resultInSeconds,
      password: "pass" + resultInSeconds,
      confirmPassword: "pass" + resultInSeconds
    }

    return userData
  }

  async register(){
    let userData = this.getNewUserData()

    await t.typeText(this.firstNameField, userData.firstName)
    await t.typeText(this.lastNameField, userData.lastName)
    await t.typeText(this.phoneField, userData.phone)
    await t.typeText(this.emailField, userData.email)
    await t.typeText(this.addressField, userData.address)
    await t.typeText(this.cityField, userData.city)
    await t.typeText(this.stateProvinceField, userData.stateProvince)
    await t.typeText(this.postalCodeField, userData.postalCode)
    await t.typeText(this.countryField, userData.country)
    await t.typeText(this.userNameField, userData.userName)
    await t.typeText(this.passwordField, userData.password)
    await t.typeText(this.confirmPasswordField, userData.confirmPassword)

    await t.click(this.submitButton)

    return userData
  }
}

export default new RegisterPage
import {Selector, t} from 'testcafe'

let baseSelectorForLoginForm = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td:nth-child(3) > form > table > tbody > tr:nth-child(4) > td > table > tbody >'
let baseHeaderOptionsSelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td > table > tbody > tr > '
let baseSideOptionsSelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(1) > table > tbody > tr > td > table > tbody > tr > td > table > tbody > '

class MainPage{
  constructor(){
    this.userfield = Selector(baseSelectorForLoginForm+'tr:nth-child(2) > td:nth-child(2) > input[type=text]')
    this.passfield = Selector(baseSelectorForLoginForm+'tr:nth-child(3) > td:nth-child(2) > input[type=password]')
    this.loginButton = Selector(baseSelectorForLoginForm+'tr:nth-child(4) > td:nth-child(2) > div > input[type=submit]')
    this.loginErrorMessage = Selector(baseSelectorForLoginForm + 'tr:nth-child(3) > td:nth-child(2) > span').withText('Enter your userName and password correct')
    //headerOptions
    this.signOnButton = Selector(baseHeaderOptionsSelector + 'td:nth-child(1) > a')
    this.registerButton = Selector(baseHeaderOptionsSelector + 'td:nth-child(2) > a')
    this.supportButton = Selector(baseHeaderOptionsSelector + 'td:nth-child(3) > a')
    this.contactButton = Selector(baseHeaderOptionsSelector + 'td:nth-child(4) > a')
    //Sideoptions
    this.hotelsButton = Selector(baseSideOptionsSelector + 'tr:nth-child(3) > td:nth-child(2) > a')
    this.carRentalsButton = Selector(baseSideOptionsSelector + 'tr:nth-child(4) > td:nth-child(2) > font > a')
    this.destinationButton = Selector(baseSideOptionsSelector + 'tr:nth-child(6) > td:nth-child(2) > a')
    this.vacationsButton = Selector(baseSideOptionsSelector + 'tr:nth-child(7) > td:nth-child(2) > a')
  }

  async login(user, pass){
    await t.typeText(this.userfield, user)
    await t.typeText(this.passfield, pass)
    await t.click(this.loginButton)
  }
}

export default new MainPage
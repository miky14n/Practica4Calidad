import {Selector, t} from 'testcafe'

let titleSelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(1) > td > h3'

class LoginSuccessPage{
  constructor(){
    this.title = Selector(titleSelector).withText('Login Successfully')
    this.signOffButton = Selector('body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(2) > td > table > tbody > tr > td:nth-child(1) > a')
  }
  async signOff(){
    await Selector(this.signOffButton.withText('SIGN-OFF')).exists
    await t.click(this.signOffButton)
  }
}

export default new LoginSuccessPage
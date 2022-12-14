import {Selector, t} from 'testcafe'

let tableBodySelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody >'

class RegisterSuccessPage{
  constructor(){
    this.title = Selector(tableBodySelector + 'tr:nth-child(1) > td > img')
    this.dedicationText = Selector('body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(1) > font > b')
    this.noteText = Selector('body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p:nth-child(3) > font > b')
  }
  async checkRegisteredInfo(firstname, lastname, username){
    await t.expect(this.dedicationText.withText(` Dear ${firstname}  ${lastname},`)).ok()
    await t.expect(this.noteText.withText(`Note: Your user name is ${username}.`).exists).ok()
  }
}

export default new RegisterSuccessPage
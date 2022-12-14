import {Selector, t} from 'testcafe'

let titleSelector = 'body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(1) > td:nth-child(2) > table > tbody > tr:nth-child(1) > td > img'

class UnderConstructionPage{
  constructor(){
    this.title = Selector(titleSelector)
    this.explanationText = Selector('body > div:nth-child(5) > table > tbody > tr > td:nth-child(2) > table > tbody > tr:nth-child(4) > td > table > tbody > tr:nth-child(1) > td:nth-child(2) > table > tbody > tr:nth-child(3) > td > p > font:nth-child(1) > b > font:nth-child(1)')
  }
}

export default new UnderConstructionPage
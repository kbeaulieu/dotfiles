import { run } from 'uebersicht'
import { css } from "uebersicht"

export const refreshFrequency = 1000

export const command = dispatch => dispatch({ type: 'TIME', data: new Date() })

export const updateState = (event, previousState) => {
  switch(event.type) {
    case 'TIME': return new Date()
    default: return previousState
  }
}

const time = css`
  font-family: Fira Code;
  font-size: 12px;
  color: rgba(255, 255, 255, 0.3);
`

export const render = (a) => <span className={time}>{a.toString()}</span>

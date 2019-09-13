import { css } from "uebersicht"

export const refreshFrequency = 1000;

export const command = 'echo $(date "+%d %H:%M")@$(pmset -g batt | egrep "([0-9]+\%).*" -o --colour=auto | cut -f1 -d"%")';

export const className = `
  right: 20px;
`;


const time = css`
  font-family: Fira Code;
  font-size: 12px;
  color: rgba(255, 255, 255, 0.4);
  //color: rgba(0, 0, 0, 0.4);

  span {
    margin-left: 5px;
    margin-right: 5px;
  }
`;

export function render({ output, error }) {
    const [
        date,
        batteryLevel
    ] = output.split('@');

    return (
        <span className={time}>
            <span>{date}</span>|<span className="battery">{batteryLevel}</span>
        </span>
    );
}

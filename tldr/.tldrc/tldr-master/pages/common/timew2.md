# timewarrior

> Time tracking at the command line

- timew alias and show current tracking

`tw`

- Summary

`tw summary {{today/:week/:yesterday}} :ids`

- Show graph

`tw {{day/week}}`

- Basic commands

`tw start {{P22-1}}`  
`tw stop`  
`tw continue`  
`tw cancel`  

- Backdated and closed intervals

`tw start/stop {{90mins ago/3pm}} {{P22-1}}`
`tw track {{9am to 11m}} {{P22-1}}`  # 9am for 2h / 2h before 11am / 9am to now / yesterday to ...

- Others

`tw tag/untag {{@1}} {{tag}}`
`tw lenghten/shorten {{@1}} {{20mins}}`
`tw move {{@1}} {{8am}}`

- Help

`tw help {{date/hints/duration/interval}}`
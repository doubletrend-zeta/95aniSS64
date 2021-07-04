[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 15
command.buffer.time = 1

;-| ’´•KŽE‹Z |-------------------------------------------------------------------

[Command]
name = "zan"
command = ~D ,B ,D ,F, a
time = 35

[Command]
name = "zan"
command = ~D ,B ,D ,F, b
time = 35

[Command]
name = "sakura"
command = ~D,F, D ,F, a
time = 30

[Command]
name = "sakura"
command = ~D, F, D, F, b
time = 30

[Command]
name = "kaesi"
command = ~B, DB ,D, a

[Command]
name = "kaesi"
command = ~B, DB ,D, b

[Command]
name = "426ab"
command = ~B ,DB ,D, DF, F, a+b
time = 30
;-| •KŽE‹Z |-------------------------------------------------------------------


[Command]
name = "gosyux"
command = ~F ,D ,DF, a
time = 20

[Command]
name = "gosyuy"
command = ~F ,D ,DF, b
time = 20

[Command]
name = "unzanx"
command = ~B ,D ,DB, a
time = 20

[Command]
name = "unzany"
command = ~B ,D ,DB, b
time = 20

[Command]
name = "426x"
command = ~B ,DB ,D, DF, F, x
time = 30

[Command]
name = "426y"
command = ~F ,DF ,D, DB, B, x
time = 30

[Command]
name = "26_x"
command = ~D, F, a

[Command]
name = "26_y"
command = ~D, F, b

[Command]
name = "24_x"
command = ~D, B, a

[Command]
name = "24_y"
command = ~D, B, b



;-| ƒL[‚Q‰ñ˜A‘±“ü—Í |---------------------------------------------------------
[Command]
name = "FF"
command = F, F

[Command]
name = "BB"
command = B, B

;-| “¯Žž‰Ÿ‚µ |-----------------------------------------------------------------
[Command]
name = "recovery"
command = a+b
time = 1
buffer.time = 8

;-| ƒ{ƒ^ƒ“’P”­ |---------------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "blo_f"
command = F
time = 1

[Command]
name = "blo_d"
command = D
time = 1

[Command]
name = "holdy"
command = /a+b

[Command]
name = "a+b"
command = a+b
time = 1

[command]
name = "a+b+x"
command = a+b+x
time = 1

[command]
name = "b+x+y"
command = b+x+y
time = 1
;-| •ûŒüƒL[‰Ÿ‚µ‚Á‚Ï‚È‚µ |-----------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1



;==============================================================================
[Statedef -1]

[State -1, Combo Condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0
ignorehitpause = 1

[State -1, Combo Condition Check]
type = VarSet
triggerall = movetype != H
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 400 || stateno = 205
trigger2 = movecontact
trigger3 = stateno = 210 || stateno = 410 || stateno = 215 || stateno = 420
trigger3 = movecontact
trigger3 = var(12) >= 500
trigger4 = anim = 1100 || anim = 1101 
trigger4 = animelemtime(4) >= 0
trigger4 = animelemtime(4) <= 6
trigger4 = var(12) >= 500
trigger5 = stateno = 1300 || stateno = 1351
trigger5 = movecontact
trigger5 = var(12) >= 500
trigger6 = stateno = 2000
trigger6 = animelemtime(1) >= 5
trigger6 = animelemtime(2) < 0
trigger6 = var(12) >= 500
trigger7 = stateno = 1402
trigger7 = var(14) = 1
trigger7 = var(12) >= 500
var(1) = 1
ignorehitpause = 1
;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 1200
trigger1 = command = "426x"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, zakkuri]
type = ChangeState
value = 1250
trigger1 = command = "426y"
trigger1 = statetype != A
trigger1 = ctrl
;==============================================================================
;tatami
[state -1, zakkuri]
type = changestate
value = 2127
triggerall = var(52) = 0
trigger1 = command = "426ab"
trigger1 = var(1)
trigger1 = var(57) = 172
trigger2 = command = "426ab"
trigger2 = var(54) > 0

;finisher
[state -1, zakkuri]
type = ChangeState
value = 3300
triggerall = var(54) > 0
triggerall = var(52) = 0
trigger1 = command = "a+b+x"
trigger1 = statetype = S
trigger2 = command = "b+x+y"
trigger2 = statetype = S

[State -1, zakkuri]
type = ChangeState
value = 1100
triggerall = var(52) = 0
triggerall = numhelper(1110) = 0
triggerall = command = "24_x"
trigger1 = numhelper(1100) = 0
trigger1 = var(1)
trigger2 = numhelper(1100) = 1
trigger2 = helper(1100),rootdist X < -100
trigger2 = var(1)
trigger3 = numhelper(1100) = 1
trigger3 = helper(1100),rootdist X > -65
trigger3 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1150
triggerall = var(52) = 0
triggerall = command = "24_y"
triggerall = numhelper(1160) = 0
trigger1 = numhelper(1100) = 0
trigger1 = var(1)
trigger2 = numhelper(1100) = 1
trigger2 = helper(1100),rootdist X < -100
trigger2 = var(1)
trigger3 = numhelper(1100) = 1
trigger3 = helper(1100),rootdist X > -20
trigger3 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1120
triggerall = var(52) = 0
trigger1 = command = "26_x"
trigger1 = var(1)
trigger1 = numhelper(1100) = 0

[State -1, zakkuri]
type = ChangeState
triggerall = var(52) = 0
trigger1 = numhelper(1100) = 1
trigger1 = command = "26_x"
trigger1 = var(1)
trigger1 = helper(1100),rootdist X <= -20
trigger1 = helper(1100),rootdist X >= -100
value = 1122

[State -1, zakkuri]
type = ChangeState
triggerall = var(52) = 0
trigger1 = numhelper(1100) = 1
trigger1 = command = "26_y"
trigger1 = var(1)
trigger1 = helper(1100),rootdist X <= -65
trigger1 = helper(1100),rootdist X >= -100
value = 1121

[State -1, zakkuri]
type = ChangeState
triggerall = var(52) = 0
trigger1 = numhelper(1100) = 1
trigger1 = command = "24_x"
trigger1 = var(1)
trigger1 = helper(1100),rootdist X <= -20
trigger1 = helper(1100),rootdist X >= -100
value = 1127

[State -1, zakkuri]
type = ChangeState
triggerall = var(52) = 0
trigger1 = numhelper(1100) = 1
trigger1 = command = "24_y"
trigger1 = var(1)
trigger1 = helper(1100),rootdist X <= -20
trigger1 = helper(1100),rootdist X >= -100
value = 1130

[State -1, zakkuri]
type = ChangeState
value = 1300
triggerall = var(52) = 0
trigger1 = command = "gosyux"
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1350
triggerall = var(52) = 0
trigger1 = command = "gosyuy"
trigger1 = var(1)
;==============================================================================
;sword
[state -1, zakkuri]
type = changestate
value = 2300
triggerall = var(52) = 1
trigger1 = command = "426ab"
trigger1 = var(1)
trigger1 = var(57) = 172
trigger2 = command = "426ab"
trigger2 = var(54) > 0

;finisher
[state -1, zakkuri]
type = ChangeState
value = 3350
triggerall = var(54) > 0
triggerall = var(52) = 1
trigger1 = command = "a+b+x"
trigger1 = statetype = S
trigger2 = command = "b+x+y"
trigger2 = statetype = S

[State -1, zakkuri]
type = ChangeState
value = 1000
triggerall = var(52) = 1
trigger1 = command = "gosyux"
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1050
triggerall = var(52) = 1
trigger1 = command = "gosyuy"
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1400
triggerall = var(52) = 1
trigger1 = command = "unzanx"
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1450
triggerall = var(52) = 1
trigger1 = command = "unzany"
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1520
triggerall = var(52) = 1
trigger1 = command = "26_x"
trigger1 = var(1)
trigger1 = numhelper(1500) = 0

[State -1, zakkuri]
type = ChangeState
triggerall = var(52) = 1
trigger1 = numhelper(1500) = 1
trigger1 = command = "26_x"
trigger1 = var(1)
value = 1521

[State -1, zakkuri]
type = ChangeState
value = 1531
triggerall = var(52) = 1
trigger1 = command = "26_y"
trigger1 = var(1)
trigger1 = numhelper(1527) = 0

[State -1, zakkuri]
type = ChangeState
value = 1500
triggerall = var(52) = 1
triggerall = numhelper(1510) = 0
triggerall = command = "24_x"
;trigger1 = numhelper(1100) = 0
trigger1 = var(1)
;trigger2 = numhelper(1100) = 1
;trigger2 = helper(1100),rootdist X < -100
;trigger2 = var(1)
;trigger3 = numhelper(1100) = 1
;trigger3 = helper(1100),rootdist X > -65
;trigger3 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1550
triggerall = var(52) = 1
triggerall = command = "24_y"
triggerall = numhelper(1560) = 0
;trigger1 = numhelper(1100) = 0
trigger1 = var(1)
;trigger2 = numhelper(1100) = 1
;trigger2 = helper(1100),rootdist X < -100
;trigger2 = var(1)
;trigger3 = numhelper(1100) = 1
;trigger3 = helper(1100),rootdist X > -20
;trigger3 = var(1)

;------------------------------------------------------------------------------
[State -1, Dash]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dash]
type = ChangeState
value = 105
trigger1 = command = "BB" || command = "y"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
[state -1 rage explosion]
type = ChangeState
value = 15001
triggerall = var(57) = 172
trigger1 = command = "a+b+x"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = command = "b+x+y"
trigger2 = statetype = S
trigger2 = ctrl

[state -1 forward slash]
type = ChangeState
value = 215
trigger1 = command = "a+b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand]
type = ChangeState
value = 200 + 10 * (command = "b")
trigger1 = command = "a" || command = "b"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Crouching]
type = ChangeState
value = 420
trigger1 = command = "b"
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Crouching]
type = ChangeState
value = 400 + 10 * (command = "b")
trigger1 = command = "a" || command = "b"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Jump]
type = ChangeState
value = 600 + 10 * (command = "b")
trigger1 = command = "a" || command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
trigger1 = command = "x"
trigger1 = statetype = S
trigger1 = ctrl


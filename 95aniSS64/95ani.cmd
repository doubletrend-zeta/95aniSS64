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
command = ~D ,B ,D ,F, x
time = 35

[Command]
name = "zan"
command = ~D ,B ,D ,F, y
time = 35

[Command]
name = "sakura"
command = ~D,F, D ,F, x
time = 30

[Command]
name = "sakura"
command = ~D, F, D, F, y
time = 30

[Command]
name = "kaesi"
command = ~B, DB ,D, x

[Command]
name = "kaesi"
command = ~B, DB ,D, y

;-| •KŽE‹Z |-------------------------------------------------------------------


[Command]
name = "gosyux"
command = ~F ,D ,DF, x
time = 20

[Command]
name = "gosyuy"
command = ~F ,D ,DF, y
time = 20

[Command]
name = "unzanx"
command = ~B ,D ,DB, x
time = 20

[Command]
name = "unzany"
command = ~B ,D ,DB, y
time = 20

[Command]
name = "426x"
command = ~B ,DB ,D, DF, F, b
time = 30

[Command]
name = "426y"
command = ~F ,DF ,D, DB, B, b
time = 30

[Command]
name = "26_x"
command = ~D, F, x

[Command]
name = "26_y"
command = ~D, F, y

[Command]
name = "24_x"
command = ~D, B, x

[Command]
name = "24_y"
command = ~D, B, y



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
command = x+y
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
command = /y



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
value = 3100
trigger1 = command = "zan"
trigger1 = statetype != A
trigger1 = power >= 2000
trigger1 = var(1)

;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 3000
trigger1 = command = "sakura"
trigger1 = statetype != A
trigger1 = power >= 1000
trigger1 = var(1)

;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 2000
trigger1 = command = "kaesi"
trigger1 = statetype != A
trigger1 = power >= 1000
trigger1 = stateno = [150,159]
ignorehitpause = 1
;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 1400
trigger1 = command = "unzanx"
trigger1 = var(1)
;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 1450
trigger1 = command = "unzany"
trigger1 = var(1)
;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 1300
trigger1 = command = "gosyux"
trigger1 = var(1)
;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 1350
trigger1 = command = "gosyuy"
trigger1 = var(1)
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
[State -1, zakkuri]
type = ChangeState
value = 1100
trigger1 = command = "24_x"
trigger1 = numhelper(1100) = 0
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1150
trigger1 = command = "24_y"
trigger1 = numhelper(1100) = 0
trigger1 = var(1)
;==============================================================================
[State -1, zakkuri]
type = ChangeState
value = 1000
trigger1 = command = "26_x"
trigger1 = var(1)

[State -1, zakkuri]
type = ChangeState
value = 1050
trigger1 = command = "26_y"
trigger1 = var(1)

;------------------------------------------------------------------------------
[State -1, Dash]
type = ChangeState
value = 100 + 5 * (command = "BB")
trigger1 = command = "FF" || command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
trigger1 = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------
[State -1, Stand Light fwd]
type = ChangeState
value = 205 + 10 * (command = "y")
trigger1 = command = "x" || command = "y"
trigger1 = command = "holdfwd"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Stand]
type = ChangeState
value = 200 + 10 * (command = "y")
trigger1 = command = "x" || command = "y"
trigger1 = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


[State -1, Crouching]
type = ChangeState
value = 420
trigger1 = command = "y"
trigger1 = command = "holddown"
trigger1 = command = "holdfwd"
trigger1 = statetype = C
trigger1 = ctrl


[State -1, Crouching]
type = ChangeState
value = 400 + 10 * (command = "y")
trigger1 = command = "x" || command = "y"
trigger1 = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Jump]
type = ChangeState
value = 600 + 10 * (command = "y")
trigger1 = command = "x" || command = "y"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl


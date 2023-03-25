using Plots
using DifferentialEquations
N = 12000
I0 = 212
R0 = 12
Istar = 100
alpha = 0.4
beta = 0.4
S0 = N-I0-R0
tspan = (0.0, 20.0)

function f(du,u,w,t)
    s, i, r = u
    du[1] = I0>Istar ? -alpha*s : 0
    du[2] = I0>Istar ? alpha*s-beta*i : -beta*i
    du[3] = beta*i
end

prob = ODEProblem(f, [S0, I0, R0], tspan)
sol = solve(prob)
plot(sol, label = ["Восприимчивые" "Инфицированные" "Иммунитет"])
using Plots
using DifferentialEquations
u0 = [-1.0,0.0]
tspan = (0.0, 45.0)

function f(du,u,w,t)
    x = u[1]
    y = u[2]
    du[1] = y
    du[2] = -6x - 3y + sin(0.5t)
end

prob = ODEProblem(f, u0, tspan)
sol = solve(prob)
#plot(sol, label = ["x" "dx"])
plot(sol, idxs=(1, 2), label = "x")
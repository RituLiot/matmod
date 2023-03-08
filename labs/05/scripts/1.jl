using Plots
using DifferentialEquations
x0 = 11.0
y0 = 16.0
tspan = (0.0, 80.0)

function f(du,u,w,t)
    x, y = u
    du[1] = -0.17x+0.046x*y
    du[2] = 0.37y-0.034x*y
end

prob = ODEProblem(f, [x0, y0], tspan)
sol = solve(prob)
print(0.37/0.034, ":", 0.17/0.046)
plot(sol, label=["x" "y"])
#plot(sol, idxs=(1, 2), label=["x,y"])
using Plots
using DifferentialEquations
x0 = [-1.0]
y0 = [0.0]
tspan = (0.0, 45.0)

function f(ddx,dx,x,w,t)
    ddx .= -8 * x 
end

prob = SecondOrderODEProblem(f, y0, x0, tspan)
sol = solve(prob)
#plot(sol, label = ["dx" "x"])
plot(sol, idxs=(2, 1), label = ["x" "dx"])
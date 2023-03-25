using Roots
using Plots
using DifferentialEquations
n0 = 1

f1(n,w,t) = (777-n)*(0.99+0.00012n)
f2(n,w,t) = (777-n)*(0.000067+0.38n)
f3(n,w,t) = (777-n)*(0.6*sin(4t)+0.1*cos(2t)*n)

a = f1
tspan = (0.0, 0.2)
if a == f1
    tspan = (0.0, 10.0)
end

prob = ODEProblem(a, n0, tspan)
sol = solve(prob)
plot(sol, label = string(a))
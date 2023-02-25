using DifferentialEquations
using Plots
function reg(du,u,p,t)
    du[1] = -0.34u[1]-0.72u[2]+sin(t+10)
    du[2] = -0.89u[1]-0.43u[2]+cos(t+20)
end
condition(u,t,integrator) = u[1]
cb = ContinuousCallback(condition,terminate!)
u0 = [50000.0, 69000.0]
tspan = (0.0,10.0)
prob = ODEProblem(reg,u0,tspan, callback = cb)
sol = solve(prob)
plot(sol)
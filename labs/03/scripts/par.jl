using DifferentialEquations
using Plots
function par(du,u,p,t)
    du[1] = -0.12u[1]-0.51u[2]+sin(20t)
    du[2] = -0.3*u[1]*u[2]-0.61u[2]+cos(13t)
end
condition(u,t,integrator) = u[2]
cb = ContinuousCallback(condition,terminate!)
u0 = [50000.0, 69000.0]
tspan = (0.0,0.005)
prob = ODEProblem(par,u0,tspan, callback = cb)
sol = solve(prob)
plot(sol)
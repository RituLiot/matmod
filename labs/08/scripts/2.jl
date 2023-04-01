using Plots
using DifferentialEquations
M10 = 2.3
M20 = 1.6
pcr = 18.0
N = 21.0
q = 1.0
t1 = 14.0
t2 = 17.0
ps1 = 11.0
ps2 = 9.0
a1 = pcr/(t1^2*ps1^2*N*q)
a2 = pcr/(t2^2*ps2^2*N*q)
b = pcr/(t1^2*ps1^2*t2^2*ps2^2*N*q)
c1 = (pcr-ps1)/(t1*ps1)
c2 = (pcr-ps2)/(t2*ps2)
tspan = (0.0, 50.0)

function f(du,u,w,t)
    M1, M2 = u
    du[1] = M1-(0.0015+b/c1)*M1*M2-a1*M1^2/c1
    du[2] = c2*M2/c1-b*M1*M2/c1-a2*M2^2/c1
end

prob = ODEProblem(f, [M10, M20], tspan)
sol = solve(prob)
plot(sol, label=["M1" "M2"])
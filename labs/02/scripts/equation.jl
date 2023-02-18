#variant 6
using Plots
s1 = 6.3/3.3
s2 = 6.3/1.3
r1(t) = ℯ^(t/sqrt(4.29))*s1
r2(t) = ℯ^(t/sqrt(4.29))*s2

te = 6
t = range(0, te, length=100)
rs1 = r1.(t)
rs2 = r2.(t)
rsaved1 = r1(te)
rsaved2 = r2(te)
x1, y1 = rs1.*cos.(t), rs1.*sin.(t)
x12, y12 = rs2.*cos.(t), rs2.*sin.(t)
x2, y2 = range(s1, 6.3), 0*x2
x22, y22 = range(s2, 6.3), 0*x22
x3, y3 = range(0, rsaved1*cos(te), length=100), range(0, rsaved1*sin(te), length=100)
x32, y32 = range(0, rsaved2*cos(te), length=100), range(0, rsaved2*sin(te), length=100)
#=println("Точка пересечения: (", rsaved1*cos(te), ": ", rsaved1*sin(te), ")")
plot(x1, y1, linecolor=:blue, label="Охрана")
plot!(x2, y2, linecolor=:blue, label="")
plot!(x3, y3, linecolor=:red, label="Браконьеры")=#
println("Точка пересечения: (", rsaved2*cos(te), ": ", rsaved2*sin(te), ")")
plot(x12, y12, linecolor=:blue, label="Охрана")
plot!(x22, y22, linecolor=:blue, label="")
plot!(x32, y32, linecolor=:red, label="Браконьеры")

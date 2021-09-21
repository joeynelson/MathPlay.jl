module MathPlay

# Write your package code here.

export colatz

function colatz(x,n)
    res = BitVector(undef,n)
    for i = 1:n
        res[i] = isodd(x)
        x = iseven(x) ? x ÷ 2 : (3x + 1) ÷ 2
    end
    return res
end

end

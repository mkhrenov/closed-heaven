struct AeroShell{T}
    motor::AxialFluxMotor{T}
    airfoil::Airfoil{T}
    battery::Battery{T}
    rotor_asm::Assembly{T}
    stator_asm::Assembly{T}

    function AeroShell()

    end
end

for op = (:mass, :com, :moi)
    eval(:($op(aeroshell::AeroShell) = ($op(aeroshell.rotor_asm) + $op(aeroshell.stator_asm))))
end
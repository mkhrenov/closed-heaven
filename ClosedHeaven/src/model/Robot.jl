struct Robot{T}
    motor::AxialFluxMotor{T}
    airfoil::Airfoil{T}
    battery::Battery{T}
    rotor_asm::Assembly{T}
    stator_asm::Assembly{T}

    function Robot()

    end
end

for op = (:mass, :com, :moi)
    eval(:($op(robot::Robot) = ($op(robot.rotor_asm) + $op(robot.stator_asm))))
end
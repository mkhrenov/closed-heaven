struct Airfoil{T}
    c_d::T      # Drag coefficient
    c_l::T      # Lift coefficient
    c::T        # Cord length
    s::T        # Wingspan
end
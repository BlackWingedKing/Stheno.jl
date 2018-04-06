using Stheno, Test, BenchmarkTools, QuadGK, Random, LinearAlgebra

const check_mem = false

@testset "Stheno" begin

    @testset "mean_and_kernel" begin
        include("mean_and_kernel/mean.jl")
        include("mean_and_kernel/kernel.jl")
        include("mean_and_kernel/compose.jl")
        include("mean_and_kernel/conditional.jl")
        include("mean_and_kernel/finite.jl")
        # include("mean_and_kernel/transform.jl")
        # include("mean_and_kernel/input_transform.jl")
    end

    include("covariance_matrices.jl")
    include("gp.jl")

    # include("lin_ops.jl")
    # @testset "linops" begin
    #     include("linops/addition.jl")
    #     include("linops/product.jl")
    #     include("linops/integrate.jl")
    # end
end

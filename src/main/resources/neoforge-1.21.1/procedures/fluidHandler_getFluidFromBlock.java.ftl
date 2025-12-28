<@addTemplate file="static/getIFluidHandler.java.ftl" />

new Object() {
    FluidStack getFluidFromTank(final int tank, final BlockPos pos) {
        return Optional.ofNullable(getIFluidHandler(world, pos))
                       .map(f -> f.getFluidInTank(tank).copy())
                       .orElse(FluidStack.EMPTY);
    }
}.getFluidFromTank((int) ${input$tank}, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
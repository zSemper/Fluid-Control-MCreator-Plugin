<@addTemplate file="static/getIFluidHandler.java.ftl" />

new Object() {
    boolean isFluidValid(final int tank, final FluidStack fluid, final BlockPos pos) {
        return Optional.ofNullable(getIFluidHandler(world, pos))
                       .map(f -> f.isFluidValid(tank, fluid))
                       .orElse(false);
    }
}.isFluidValid((int) ${input$tank}, ${input$fluidstack}, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
<@addTemplate file="static/getIFluidHandler.java.ftl" />

new Object() {
    int getTankSize(final int tank, final BlockPos pos) {
        return Optional.ofNullable(getIFluidHandler(world, pos))
                       .map(f -> f.getTankCapacity(tank))
                       .orElse(0);
    }
}.getTankSize((int) ${input$tank}, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
<@addTemplate file="static/getIFluidHandler.java.ftl" />

new Object() {
    int getTanks(final BlockPos pos) {
        return Optional.ofNullable(getIFluidHandler(world, pos))
                       .map(f -> f.getTanks())
                       .orElse(0);
    }
}.getTanks(BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
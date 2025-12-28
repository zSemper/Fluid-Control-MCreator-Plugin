<@addTemplate file="static/getIFluidHandler.java.ftl" />

new Object() {
    int getAmountInTank(final int tank, final BlockPos pos) {
        return Optional.ofNullable(getIFluidHandler(world, pos))
                       .map(f -> f.getFluidInTank(tank).getAmount())
                       .orElse(0);
    }
}.getAmountInTank((int) ${input$tank}, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
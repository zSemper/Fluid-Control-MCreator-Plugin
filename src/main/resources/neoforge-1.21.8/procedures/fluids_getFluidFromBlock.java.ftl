new Object() {
    FluidStack getFluidFromBlock(BlockPos pos) {
        if (world instanceof Level level) {
            FluidState state = level.getFluidState(pos);

            if (state != null) {
                return new FluidStack(state.getType(), 1000);
            }
        }
        return FluidStack.EMPTY;
    }
}.getFluidFromBlock(BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
<@addTemplate file="static/getIFluidHandler.java.ftl" />

final int _amount${cbi} = (int) ${input$amount};
Optional.ofNullable(getIFluidHandler(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z})))
        .ifPresent(f -> f.drain(_amount${cbi}, IFluidHandler.FluidAction.EXECUTE));
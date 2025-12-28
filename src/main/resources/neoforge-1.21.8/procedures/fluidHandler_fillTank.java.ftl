<@addTemplate file="static/getIFluidHandler.java.ftl" />

final Fluid _fluid${cbi} = ${input$fluidstack}.getFluid();
final int amount = (int) ${input$amount};
Optional.ofNullable(getIFluidHandler(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z})))
        .ifPresent(f -> f.fill(new FluidStack(_fluid${cbi}, _amount${cbi}), IFluidHandler.FluidAction.EXECUTE));

<@addTemplate file="static/getIFluidHandler.java.ftl" />

Optional.ofNullable(getIFluidHandler(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))).isPresent()
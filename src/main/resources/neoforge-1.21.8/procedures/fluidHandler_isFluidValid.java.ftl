(
	new Object() {
		public boolean isFluidValid(LevelAccessor level, BlockPos pos, FluidStack stack, int tank) {
			if(level instanceof ILevelExtension extension) {
				IFluidHandler fluidHandler = extension.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if(fluidHandler != null) {
					return fluidHandler.isFluidValid(tank, stack);
				}
			}
			return false;
		}
	}.isFluidValid(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}), ${input$fluidstack},(int) ${input$tank})
)
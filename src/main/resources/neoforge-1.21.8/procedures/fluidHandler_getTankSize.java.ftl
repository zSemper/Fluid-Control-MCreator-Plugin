(
	new Object() {
		public int getTankSize(LevelAccessor level, BlockPos pos, int tank) {
			if(level instanceof ILevelExtension extension) {
				IFluidHandler fluidHandler = extension.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if(fluidHandler != null) {
					return fluidHandler.getTankCapacity(tank);
				}
			}
			return 0;
		}
	}.getTankSize(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}),(int) ${input$tank})
)
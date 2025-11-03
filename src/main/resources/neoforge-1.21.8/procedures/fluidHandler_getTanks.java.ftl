(
	new Object() {
		public int getTanks(LevelAccessor level, BlockPos pos) {
			if(level instanceof ILevelExtension extension) {
				IFluidHandler fluidHandler = extension.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if(fluidHandler != null) {
					return fluidHandler.getTanks();
				}
			}
			return 0;
		}
	}.getTanks(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))
)
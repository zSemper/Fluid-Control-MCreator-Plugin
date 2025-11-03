(
	new Object() {
		public int getFluidInTank(LevelAccessor level, BlockPos pos, int tank) {
			if (level instanceof ILevelExtension extension) {
				IFluidHandler fluidHandler = extension.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
				if (fluidHandler != null) {
					return fluidHandler.getFluidInTank(tank).getAmount();
				}
			}
			return 0;
		}
	}.getFluidInTank(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}),(int) ${input$tank})
)
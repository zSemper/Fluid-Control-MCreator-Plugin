(

	new Object() {
		public int getFluidInTank(LevelAccessor level, BlockPos pos) {
			BlockEntity blockEntity = level.getBlockEntity(pos);
			if(blockEntity != null) {
				return blockEntity.getCapability(ForgeCapabilities.FLUID_HANDLER, null)
					.map(fluidHandler -> fluidHandler.getFluidInTank(0).getAmount())
					.orElse(0);
			}
			return 0;
		}
	}.getFluidInTank(world, BlockPos.containing(${input$x}, ${input$y}, ${input$z}))

)
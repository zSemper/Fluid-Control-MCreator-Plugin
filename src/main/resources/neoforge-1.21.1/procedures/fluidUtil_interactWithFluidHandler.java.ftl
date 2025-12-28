<@addTemplate file="static/getIFluidHandler.java.ftl" />

(
	new Object() {
		boolean interactFluidHandler(LevelAccessor level, Entity entity, BlockPos pos, InteractionHand hand) {
			if(entity instanceof Player player) {
			    return Optional.ofNullable(getIFluidHandler(level, pos))
			                   .map(f -> FluidUtil.interactWithFluidHandler(player, hand, f))
			                   .orElse(false);
			}
			return false;
		}
	}.interactFluidHandler(world, ${input$entity}, BlockPos.containing(${input$x}, ${input$y}, ${input$z}), InteractionHand.${field$hand})
)
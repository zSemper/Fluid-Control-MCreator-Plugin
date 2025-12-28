private static IFluidHandler getIFluidHandler(LevelAccessor world, BlockPos pos) {
    if (world instanceof ILevelExtension extension) {
        return extension.getCapability(Capabilities.FluidHandler.BLOCK, pos, null);
    }
    return null;
}
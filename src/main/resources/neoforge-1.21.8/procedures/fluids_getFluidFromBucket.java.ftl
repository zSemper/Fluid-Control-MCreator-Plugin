<#include mcitems.ftl>

new Object() {
    FluidStack getFluidFromBucket(Item item) {
        if (item instanceof BucketItem bucket) {
            return new FluidStack(bucket.content, 1000);
        }
        return FluidStack.EMPTY;
    }
}.getFluidFromBucket(${mappedMCItemToItem(input$bucket)})
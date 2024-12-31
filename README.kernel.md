# Kernel Config

## Toolchain

- `GCC_VER`
- `GCC_ARCH`
- `CROSS_COMPILE`
- `NOCCACHE`

## Git

- `KERNEL_BRANCH`
- `KERNEL_SUBDIR`
- `KERNEL_COMMIT`
- `KERNEL_GIT`

## Config

- `KERNEL_DEFCONFIG`
- `KERNEL_DEFCONFIG_USE`
- `KERNEL_CONFIGS_FROM_DEBIAN`
- `KERNEL_EXTRA_CONFIGS`
- `KERNEL_ENABLE_MODULES`

## Version

- `KERNEL_BUILD_VERSION`

## Patches

- `KERNEL_PATCHES`
- `KERNEL_PATCHES_PROPRIETARY`

## Override Functions

```
function override_functionname() {
        . $1
        # Custom actions...
}
```

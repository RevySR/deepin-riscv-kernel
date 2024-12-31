# Kernel Config

## Toolchain

- `GCC_VER`
- `GCC_ARCH`
- `CROSS_COMPILE`
- `NOCCACHE`

## Git

- `UBOOT_BRANCH`
- `UBOOT_SUBDIR`
- `UBOOT_COMMIT`
- `UBOOT_GIT`
- `UBOOT_SBI_BRANCH`
- `UBOOT_SBI_GIT`

## Config

- `UBOOT_SBI_PLATFORM`
- `UBOOT_SBI_MAKE_ARGS`
- `UBOOT_DEFCONFIGS`

## SBI

- `UBOOT_SBI`
- `UBOOT_SBI_BRANCH`

## Result Files

- `UBOOT_RESULT_FILENAMES`
- `UBOOT_SBI_RESULT_FILENAMES`

## Override Functions

```
function override_functionname() {
        . $1
        # Custom actions...
}
```

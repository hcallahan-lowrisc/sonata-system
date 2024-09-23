// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// tl_main package generated by `tlgen.py` tool

package tl_main_pkg;

  localparam logic [31:0] ADDR_SPACE_SRAM        = 32'h 00100000;
  localparam logic [31:0] ADDR_SPACE_HYPERRAM    = 32'h 40000000;
  localparam logic [31:0] ADDR_SPACE_REV_TAG     = 32'h 30000000;
  localparam logic [31:0] ADDR_SPACE_GPIO        = 32'h 80000000;
  localparam logic [31:0] ADDR_SPACE_PWM         = 32'h 80001000;
  localparam logic [31:0] ADDR_SPACE_PINMUX      = 32'h 80005000;
  localparam logic [31:0] ADDR_SPACE_RGBLED_CTRL = 32'h 80009000;
  localparam logic [31:0] ADDR_SPACE_HW_REV      = 32'h 8000a000;
  localparam logic [31:0] ADDR_SPACE_XADC        = 32'h 8000b000;
  localparam logic [31:0] ADDR_SPACE_TIMER       = 32'h 80040000;
  localparam logic [31:0] ADDR_SPACE_UART0       = 32'h 80100000;
  localparam logic [31:0] ADDR_SPACE_UART1       = 32'h 80101000;
  localparam logic [31:0] ADDR_SPACE_UART2       = 32'h 80102000;
  localparam logic [31:0] ADDR_SPACE_UART3       = 32'h 80103000;
  localparam logic [31:0] ADDR_SPACE_UART4       = 32'h 80104000;
  localparam logic [31:0] ADDR_SPACE_I2C0        = 32'h 80200000;
  localparam logic [31:0] ADDR_SPACE_I2C1        = 32'h 80201000;
  localparam logic [31:0] ADDR_SPACE_SPI0        = 32'h 80300000;
  localparam logic [31:0] ADDR_SPACE_SPI1        = 32'h 80301000;
  localparam logic [31:0] ADDR_SPACE_SPI2        = 32'h 80302000;
  localparam logic [31:0] ADDR_SPACE_SPI3        = 32'h 80303000;
  localparam logic [31:0] ADDR_SPACE_SPI4        = 32'h 80304000;
  localparam logic [31:0] ADDR_SPACE_USBDEV      = 32'h 80400000;
  localparam logic [31:0] ADDR_SPACE_RV_PLIC     = 32'h 88000000;

  localparam logic [31:0] ADDR_MASK_SRAM        = 32'h 0003ffff;
  localparam logic [31:0] ADDR_MASK_HYPERRAM    = 32'h 000fffff;
  localparam logic [31:0] ADDR_MASK_REV_TAG     = 32'h 00003fff;
  localparam logic [31:0] ADDR_MASK_GPIO        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_PWM         = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_PINMUX      = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_RGBLED_CTRL = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_HW_REV      = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_XADC        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_TIMER       = 32'h 0000ffff;
  localparam logic [31:0] ADDR_MASK_UART0       = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_UART1       = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_UART2       = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_UART3       = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_UART4       = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_I2C0        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_I2C1        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_SPI0        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_SPI1        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_SPI2        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_SPI3        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_SPI4        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_USBDEV      = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_RV_PLIC     = 32'h 03ffffff;

  localparam int N_HOST   = 2;
  localparam int N_DEVICE = 24;

  typedef enum int {
    TlSram = 0,
    TlHyperram = 1,
    TlRevTag = 2,
    TlGpio = 3,
    TlPwm = 4,
    TlPinmux = 5,
    TlRgbledCtrl = 6,
    TlHwRev = 7,
    TlXadc = 8,
    TlTimer = 9,
    TlUart0 = 10,
    TlUart1 = 11,
    TlUart2 = 12,
    TlUart3 = 13,
    TlUart4 = 14,
    TlI2C0 = 15,
    TlI2C1 = 16,
    TlSpi0 = 17,
    TlSpi1 = 18,
    TlSpi2 = 19,
    TlSpi3 = 20,
    TlSpi4 = 21,
    TlUsbdev = 22,
    TlRvPlic = 23
  } tl_device_e;

  typedef enum int {
    TlIbexLsu = 0,
    TlDbgHost = 1
  } tl_host_e;

endpackage

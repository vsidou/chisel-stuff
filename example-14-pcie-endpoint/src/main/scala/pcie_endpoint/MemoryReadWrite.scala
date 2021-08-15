/*
Copyright (c) 2021 Jan Marjanovic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
 */

package pcie_endpoint

import chisel3._
import chisel3.util._

// processes MRd and MWr
class MemoryReadWrite extends Module {
  val io = IO(new Bundle {
    val rx_st = new Interfaces.AvalonStreamRx

    // BAR 0
    val mem_cmd_bar0 = new Interfaces.MemoryCmd

    // BAR 1
    val mem_cmd_bar1 = new Interfaces.MemoryCmd
  })

  io.rx_st.ready := true.B
  io.rx_st.mask := false.B // we are always ready

  val reg_mem_cmd_bar0 = Reg(Output(new Interfaces.MemoryCmd))
  io.mem_cmd_bar0 := reg_mem_cmd_bar0

  val reg_mem_cmd_bar1 = Reg(Output(new Interfaces.MemoryCmd))
  io.mem_cmd_bar1 := reg_mem_cmd_bar1

  reg_mem_cmd_bar0.valid := false.B
  reg_mem_cmd_bar1.valid := false.B

  when(io.rx_st.valid) {
    val rx_data_hdr = WireInit(io.rx_st.data.asTypeOf(new CommonHdr))
    when(rx_data_hdr.fmt === Fmt.MRd32.asUInt()) {
      val mrd32 = io.rx_st.data.asTypeOf(new MRd32)
      printf(p"MemoryReadWrite: mrd32 = $mrd32\n")
      reg_mem_cmd_bar0.valid := true.B
      reg_mem_cmd_bar0.address := mrd32.addr << 2
      reg_mem_cmd_bar0.byteenable := Cat(mrd32.last_be, mrd32.first_be)
      reg_mem_cmd_bar0.read_write_b := true.B
    }.elsewhen(rx_data_hdr.fmt === Fmt.MWr32.asUInt()) {
        val mwr32 = io.rx_st.data.asTypeOf(new MWr32)
        printf(p"MemoryReadWrite: mrd32 = $mwr32\n")
        reg_mem_cmd_bar0.address := mwr32.addr << 2
        reg_mem_cmd_bar0.byteenable := Cat(mwr32.last_be, mwr32.first_be)
        reg_mem_cmd_bar0.read_write_b := false.B
        reg_mem_cmd_bar0.writedata := Cat(mwr32.dw1, mwr32.dw0)
      }
      .otherwise {
        printf(p"MemoryReadWrite: unrecognized hdr = $rx_data_hdr\n")
      }
  }
}

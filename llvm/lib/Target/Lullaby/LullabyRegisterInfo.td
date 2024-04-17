//===- LullabyRegisterInfo.td - Lullaby Register defs ------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Declarations that describe the Lullaby register files
//===----------------------------------------------------------------------===//

let Namespace = "Lullaby" in {
class LullabyReg<bits<5> Enc, string n, list<string> alt = []> : Register<n> {
  let HWEncoding{4-0} = Enc;
  let AltNames = alt;
}

class LullabyRegWithSubRegs<bits<5> Enc, string n, list<Register> subregs,
                          list<string> alt = []>
      : RegisterWithSubRegs<n, subregs> {
  let HWEncoding{4-0} = Enc;
  let AltNames = alt;
}

def ABIRegAltName : RegAltNameIndex;
} // namespace Lullaby


// Integer registers
// CostPerUse is set higher for registers that may not be compressible as they
// are not part of GPRC, the most restrictive register class used by the
// compressed instruction set. This will influence the greedy register
// allocator to reduce the use of registers that can't be encoded in 16 bit
// instructions.

let RegAltNameIndices = [ABIRegAltName] in {
  let isConstant = true in
  def X0  : LullabyReg<0, "x0", ["zero"]>, DwarfRegNum<[0]>;
  let CostPerUse = [0, 1] in {
  def X1  : LullabyReg<1, "x1", ["ra"]>, DwarfRegNum<[1]>;
  def X2  : LullabyReg<2, "x2", ["sp"]>, DwarfRegNum<[2]>;
  def X3  : LullabyReg<3, "x3", ["gp"]>, DwarfRegNum<[3]>;
  def X4  : LullabyReg<4, "x4", ["tp"]>, DwarfRegNum<[4]>;
  def X5  : LullabyReg<5, "x5", ["t0"]>, DwarfRegNum<[5]>;
  def X6  : LullabyReg<6, "x6", ["t1"]>, DwarfRegNum<[6]>;
  def X7  : LullabyReg<7, "x7", ["t2"]>, DwarfRegNum<[7]>;
  }
  def X8  : LullabyReg<8, "x8", ["s0", "fp"]>, DwarfRegNum<[8]>;
  def X9  : LullabyReg<9, "x9", ["s1"]>, DwarfRegNum<[9]>;
  def X10 : LullabyReg<10,"x10", ["a0"]>, DwarfRegNum<[10]>;
  def X11 : LullabyReg<11,"x11", ["a1"]>, DwarfRegNum<[11]>;
  def X12 : LullabyReg<12,"x12", ["a2"]>, DwarfRegNum<[12]>;
  def X13 : LullabyReg<13,"x13", ["a3"]>, DwarfRegNum<[13]>;
  def X14 : LullabyReg<14,"x14", ["a4"]>, DwarfRegNum<[14]>;
  def X15 : LullabyReg<15,"x15", ["a5"]>, DwarfRegNum<[15]>;
  let CostPerUse = [0, 1] in {
  def X16 : LullabyReg<16,"x16", ["a6"]>, DwarfRegNum<[16]>;
  def X17 : LullabyReg<17,"x17", ["a7"]>, DwarfRegNum<[17]>;
  def X18 : LullabyReg<18,"x18", ["s2"]>, DwarfRegNum<[18]>;
  def X19 : LullabyReg<19,"x19", ["s3"]>, DwarfRegNum<[19]>;
  def X20 : LullabyReg<20,"x20", ["s4"]>, DwarfRegNum<[20]>;
  def X21 : LullabyReg<21,"x21", ["s5"]>, DwarfRegNum<[21]>;
  def X22 : LullabyReg<22,"x22", ["s6"]>, DwarfRegNum<[22]>;
  def X23 : LullabyReg<23,"x23", ["s7"]>, DwarfRegNum<[23]>;
  def X24 : LullabyReg<24,"x24", ["s8"]>, DwarfRegNum<[24]>;
  def X25 : LullabyReg<25,"x25", ["s9"]>, DwarfRegNum<[25]>;
  def X26 : LullabyReg<26,"x26", ["s10"]>, DwarfRegNum<[26]>;
  def X27 : LullabyReg<27,"x27", ["s11"]>, DwarfRegNum<[27]>;
  def X28 : LullabyReg<28,"x28", ["t3"]>, DwarfRegNum<[28]>;
  def X29 : LullabyReg<29,"x29", ["t4"]>, DwarfRegNum<[29]>;
  def X30 : LullabyReg<30,"x30", ["t5"]>, DwarfRegNum<[30]>;
  def X31 : LullabyReg<31,"x31", ["t6"]>, DwarfRegNum<[31]>;
  }
}

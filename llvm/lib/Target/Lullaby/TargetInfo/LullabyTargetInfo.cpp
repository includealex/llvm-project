#include "TargetInfo/LullabyTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
using namespace llvm;

Target &llvm::getTheLullabyTarget() {
    static Target TheLullabyTarget;
    return TheLullabyTarget;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeLullabyTargetInfo() {
    RegisterTarget<Triple::lullaby> X(getTheLullabyTarget(), "lullaby", "Lullaby 64",
                                        "LULLABY");
}


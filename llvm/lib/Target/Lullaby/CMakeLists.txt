add_llvm_component_group(Lullaby)

set(LLVM_TARGET_DEFINITIONS Lullaby.td)

tablegen(LLVM LullabyGetInstrInfo.inc -gen-instr-info)
tablegen(LLVM LullabyGenRegisterInfo.inc -gen-register-info)

add_public_tablegen_target(LullabyCommonTableGen)

add_llvm_target(LullabyCodeGen
    LullabyTargetMachine.cpp

    LINK_COMPONENTS
    CodeGen
    Core
    Support
    Target
    LullabyInfo

    ADD_TO_COMPONENT
    Lullaby
    )

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)


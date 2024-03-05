add_llvm_component_group(Lullaby)

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


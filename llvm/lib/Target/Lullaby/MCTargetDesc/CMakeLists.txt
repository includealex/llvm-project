add_llvm_component_library(LLVMLullabyDesc
    LullabyMCTargetDesc.cpp

    LINK_COMPONENTS
    MC
    Support
    LullabyInfo

    ADD_TO_COMPONENT
    Lullaby
    )


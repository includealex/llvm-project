add_llvm_component_library(LLVMLullabyInfo
    LullabyTargetInfo.cpp

    LINK_COMPONENTS
    MC
    Support

    ADD_TO_COMPONENT
    Lullaby
    )


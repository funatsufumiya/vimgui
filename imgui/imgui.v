module imgui 

#flag -I @VROOT/cimgui
#flag -I @VROOT/sokol

#flag windows @VROOT/libs/windows/cimgui.dll

#include "cimgui.h"

//pub fn C.igColorEdit3(label charptr,col mut f32[3],flags int) bool
pub fn C.igCheckbox(label voidptr, p_open voidptr)
pub fn C.igGetIO() voidptr
pub fn C.igCreateContext(shared_font_atlas voidptr) voidptr
pub fn C.igStyleColorsDark(dst voidptr)
pub fn C.ImGui_ImplSDL2_InitForOpenGL(window voidptr, sdl_gl_context voidptr) bool
pub fn C.ImGui_ImplOpenGL3_Init(glsl_version byteptr) bool
pub fn C.ImGui_ImplSDL2_ProcessEvent(event voidptr) bool
pub fn C.ImGui_ImplOpenGL3_NewFrame()
pub fn C.ImGui_ImplSDL2_NewFrame(window voidptr)
pub fn C.igNewFrame()
pub fn C.igShowDemoWindow(p_open voidptr)
pub fn C.igBegin(name byteptr, p_open voidptr, flags int) bool
pub fn C.igText(byteptr, ...voidptr)
//pub fn C.printf(&char, ...voidptr) int
//pub fn C.igText()
pub fn C.igSliderFloat(label byteptr, v voidptr, v_min f32, v_max f32, format byteptr, power f32) bool
pub fn C.igColorEdit3(label byteptr, col voidptr, flags int) bool
pub fn C.igButton(label byteptr, size C.ImVec2) bool
pub fn C.igSameLine(offset_from_start_x f32, spacing f32)
pub fn C.igEnd()
pub fn C.igRender()
pub fn C.igGetDrawData() voidptr
pub fn C.ImGui_ImplOpenGL3_RenderDrawData(draw_data voidptr)
pub fn C.glViewport(int, int, int, int)
pub fn C.glClear(int)
pub fn C.glClearColor(f32, f32, f32, f32)
pub fn C.glewInit() int
pub fn C.nk_window_get_bounds() C.nk_rect

pub struct C.ImVec2 {
pub mut:
        x f32
        y f32
}

//struct C.ImVec2 {
pub struct ImVecTwo {
pub mut:
        x f32
        y f32
}
//type ImVec2 C.ImVec2
//type ImVecTwo C.ImVec2

pub struct ImVec2 {
pub mut:
        x f32
        y f32
}

pub struct ImVec4 {
pub mut:
        x f32
        y f32
        z f32
        w f32
}
//type ImVecFour C.ImVec4
//type ImVec4 C.ImVec4
//type ImVec4 ImVec4

type ImGuiConfigFlags = int
type ImGuiBackendFlags = int

pub struct C.ImGuiIO {
//pub struct ImGuiIO {
pub mut:
    ConfigFlags ImGuiConfigFlags
    BackendFlags ImGuiBackendFlags
    DisplaySize ImVec2
    DeltaTime f32
    IniSavingRate f32
    IniFilename byteptr
    LogFilename byteptr
    MouseDoubleClickTime f32
    MouseDoubleClickMaxDist f32
    MouseDragThreshold f32
/*
    KeyMap [ImGuiKey_COUNT]int
*/
    KeyRepeatDelay f32
    KeyRepeatRate f32
    UserData voidptr
/*
    ImFontAtlas*Fonts
    float FontGlobalScale
    bool FontAllowUserScaling
    ImFont* FontDefault
*/
    DisplayFramebufferScale ImVec2
    MouseDrawCursor bool
    ConfigMacOSXBehaviors bool
    ConfigInputTextCursorBlink bool
    ConfigWindowsResizeFromEdges bool
    ConfigWindowsMoveFromTitleBarOnly bool
    ConfigWindowsMemoryCompactTimer f32
    BackendPlatformName byteptr
    BackendRendererName byteptr
    BackendPlatformUserData voidptr
    BackendRendererUserData voidptr
    BackendLanguageUserData voidptr
/*
    const char* (*GetClipboardTextFn)(void* user_data)
    void (*SetClipboardTextFn)(void* user_data, const char* text)
    void* ClipboardUserData
    void (*ImeSetInputScreenPosFn)(int x, int y)
    void* ImeWindowHandle
    void* RenderDrawListsFnUnused
*/
    MousePos ImVec2
    MouseDown [5]bool
    MouseWheel f32
    MouseWheelH f32
    KeyCtrl bool
    KeyShift bool
    KeyAlt bool
    KeySuper bool
    KeysDown [512]bool
/*
    float NavInputs[ImGuiNavInput_COUNT]
*/
    WantCaptureMouse bool
    WantCaptureKeyboard bool
    WantTextInput bool
    WantSetMousePos bool
    WantSaveIniSettings bool
    NavActive bool
    NavVisible bool
    Framerate f32
    MetricsRenderVertices int
    MetricsRenderIndices int
    MetricsRenderWindows int
    MetricsActiveWindows int
    MetricsActiveAllocations int
    MouseDelta ImVec2
    MousePosPrev ImVec2
    MouseClickedPos [5]ImVec2
    MouseClickedTime [5]f64
    MouseClicked [5]bool
    MouseDoubleClicked [5]bool
    MouseReleased [5]bool
    MouseDownOwned [5]bool
    MouseDownWasDoubleClick [5]bool
    MouseDownDuration [5]f32
    MouseDownDurationPrev [5]f32
    MouseDragMaxDistanceAbs [5]ImVec2
    MouseDragMaxDistanceSqr [5]f32
    KeysDownDuration [512]f32
    KeysDownDurationPrev [512]f32
/*
    float NavInputsDownDuration[ImGuiNavInput_COUNT]
    float NavInputsDownDurationPrev[ImGuiNavInput_COUNT]
    ImVector_ImWchar InputQueueCharacters
*/
}
pub type ImGuiIo = C.ImGuiIO

pub fn ig_get_io() &ImGuiIo {
	return C.igGetIO()
}
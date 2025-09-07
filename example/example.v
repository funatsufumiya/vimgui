import gg
import imgui

struct App {
mut:
	gg    &gg.Context = unsafe { nil }
}

fn frame_fn(app &App) {
	app.gg.begin()

	// imgui.C.igNewFrame()

	// imgui.C.igSetNextWindowPos(&imgui.ImVec2{ x: 10, y: 10 }, 1) // ImGuiCond_Once = 1
	// imgui.C.igSetNextWindowSize(&imgui.ImVec2{ x: 400, y: 100 }, 1)
	// imgui.C.igBegin(c"Hello Dear ImGui!", 0, 0)
	// imgui.C.igText(c"This is V + ImGui example.")
	// imgui.C.igColorEdit3(c"Background", &state.clear_color, 0)
	// imgui.C.igEnd()

	// imgui.C.igRender()

	app.gg.end()
}

fn main() {
	mut app := &App{}
	app.gg = gg.new_context(
		bg_color:      gg.white
		width:         800
		height:        600
		create_window: true
		window_title:  'V ImGui Example'
		frame_fn:      frame_fn
		user_data:     app
	)
	// logo_path := asset.get_path('../assets', 'logo.png')
	// app.image = app.gg.create_image(logo_path)!.id
	app.gg.run()
}
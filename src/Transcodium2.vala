class TranscodeItem: Gtk.Box
{
	private Gtk.Button run_button, pause_button, stop_button;

	public TranscodeItem(Gtk.Orientation.VERTICAL, 0)
	{

	}
}

class AppWindow: Gtk.Window
{
	private Gtk.HeaderBar header_bar;
	private Gtk.Box container;

	public AppWindow()
	{
		this.title = "";
		this.set_default_size(600, 400);
		this.destroy.connect(Gtk.main_quit);

		//App HeaderBar
		this.header_bar = new Gtk.HeaderBar();
		this.header_bar.set_title("Transcodium");
		this.header_bar.show_close_button(true);
		//set windows header bar ??


		//main window container
		this.container = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);
		this.add(this.container);
	}

	public static int main(string [] argv)
	{
		Gtk.init(argv);

		var window = new AppWindow();
		window.show_all();

		Gtk.main();
		return 0;
	}


	void add_job()
	{
		var transcode_item = new TranscodeItem();
		this.container.add(transcode_item);
	}

	void remove_job(TranscodeItem transcode_item)
	{
		// pause item and remove
	}
}

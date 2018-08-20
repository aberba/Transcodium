/* Copyright 2016 Lawrence Aberba <karabutaworld@gmail.com> (https://github.com/laberba)
*
* This file is part of Transcodium.
*
* Transcodium is free software: you can redistribute it
* and/or modify it under the terms of the GNU General Public License as
* published by the Free Software Foundation, either version 3 of the
* License, or (at your option) any later version.
*
* Transcodium is distributed in the hope that it will be
* useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
* Public License for more details.
*
* You should have received a copy of the GNU General Public License along
* with Transcodium. If not, see http://www.gnu.org/licenses/.
*/


namespace Transcodium {

	public class Application : Granite.Application {
        public Gtk.ApplicationWindow window;
		public Gtk.HeaderBar header_bar;
        public Gtk.Stack stack;
        private Widgets.AddFileDialog? dialog;

		construct {
            flags |= ApplicationFlags.HANDLES_OPEN;

            program_name        = "Transcodium";
            exec_name           = "transcodium";

            build_version       = "0.1"; //Constants.VERSION;
            app_years           = "2016";
            app_icon            = "transcodium"; //application-default-icon
            app_launcher        = "Transcodium.desktop";
            application_id      = "org.laberba.transcodium";

            //Remeneber to change
            main_url            = "http://birdieapp.github.io/";
            bug_url             = "https://github.com/birdieapp/birdie/issues";
            help_url            = "https://github.com/birdieapp/birdie/wiki";
            translate_url       = "http://www.transifex.com/projects/p/birdie/";

            about_authors       = {"Lawrence Aberba <karabutaworld@gmail.com>"};
            about_documenters   = {"Lawrence Aberba <karabutaworld@gmail.com>"};
            about_artists       = {"Lawrence Aberba <karabutaworld@gmail.com>"};
            about_comments      = "A simple video and audio convertor for elementary OS";
            about_translators   = _("translator-credits");
            about_license_type  = Gtk.License.GPL_3_0;

            //set_options();
        }


        // public Transcodium () {
        //     GLib.Object(application_id: "org.laberba.transcodium", flags: ApplicationFlags.HANDLES_OPEN);

        //     //Intl.bindtextdomain ("birdie", Constants.DATADIR + "/locale");
        // }


        //  Initialize all objects here
		public override void activate () {
			//this.container = new Gtk.Box(Gtk.Orientation.VERTICAL, 5);
            this.window = new Gtk.ApplicationWindow(this);
            window.set_title("Transcodium");
            window.set_default_size(800, 400);
			window.window_position = Gtk.WindowPosition.CENTER;

            //create header_bar bar with internal widgets
            header_bar = new Gtk.HeaderBar();
            header_bar.set_title("Transcodium");
            header_bar.set_show_close_button(true);
            window.set_titlebar(header_bar);

            //Init file dialog
            dialog = new Widgets.AddFileDialog();

            //header bar left action buttons
            var add_btn = new Gtk.Button.from_icon_name("document-new", Gtk.IconSize.BUTTON);
            add_btn.has_tooltip = true;
            add_btn.tooltip_text = _("Add file");

            add_btn.clicked.connect(() => {
                dialog = new Widgets.AddFileDialog();
                dialog.show_all ();
            });
            header_bar.pack_start(add_btn);
        

            // //header bar mode button
            var mode_btn = new Granite.Widgets.ModeButton();
            //mode_btn.append_icon("document-new", Gtk.IconSize.BUTTON);
            // mode_btn.append_text(_("All"));
            // mode_btn.append_text(_("Finished"));
            // header_bar.set_custom_title(mode_btn);

            //header bar application menu
            var menu = new Gtk.Menu ();
            var menu_item_preferences = new Gtk.MenuItem.with_label (_("Preferences"));
            menu.add(menu_item_preferences);

            var app_menu = new Granite.Widgets.AppMenu.with_app (this, menu);

			//about menu item
			var about_menu_item = app_menu.about_item;
			about_menu_item.activate.connect (() => {
				this.show_about (window);
				stdout.printf("About clicked");
			});

            header_bar.pack_end (app_menu);

            var container = new Gtk.Box(Gtk.Orientation.VERTICAL, 0);

            stack = new Gtk.Stack();


			//welcome widget
            var welcome_container = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);
            var welcome = new Granite.Widgets.Welcome (_("Convert Some Files"), _("Convert your audio and video files to another format."));
			welcome.append ("document-new", _("Add"), _("Select an audio or video file to convert."));
			welcome.append ("application-default-icon", _("About"), _("About Transcodium"));
            welcome.activated.connect (on_welcome_button_clicked);
            welcome_container.pack_start(welcome);


            //Jobs widgets
            var jobs_container = new Gtk.Box (Gtk.Orientation.VERTICAL, 0);
            var label1 = new Gtk.Label("Jobs here");
            jobs_container.pack_start (label1);


            //add items to stack
            stack.add_named(welcome_container, "welcome_container");
            stack.add_named(jobs_container, "jobs_container");


            //stack.set_visible_child_name ("jobs_container");
            stack.set_visible_child_name ("welcome_container");


			container.add (stack);
            window.add (container);

            window.show_all ();
		}

        void on_welcome_button_clicked (int index) {
            if (index == 0) {
                dialog = new Widgets.AddFileDialog();
                dialog.show_all ();
            } else {
                this.stack.set_visible_child_name("jobs_container"); //test
                this.show_about (window);
            }
        }
	}
}

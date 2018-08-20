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

namespace Widgets {

    public class AddFileDialog : Gtk.Dialog {
        private Gtk.Box content_area;
        //private Gtk.Box notify_box;
    	private Gtk.Button add_btn;
        private Gtk.Button cancel_btn;

    	construct {
    		title = _("Add a New File");
    		set_default_size (250, 100);

    		set_keep_above (true);
    		set_modal(true);
            //use_header_bar = 1;

            //(get_header_bar () as Gtk.HeaderBar).show_close_button = false;
            //get_header_bar ().get_style_context ().remove_class ("header-bar");
    		
            content_area = get_content_area () as Gtk.Box;
            content_area.homogeneous = false;
            content_area.margin_left = 12;
            content_area.margin_right = 12;

            //Notify box
            var notify_box = new Gtk.Box (Gtk.Orientation.HORIZONTAL, 0);
            notify_box.spacing = 5;
            notify_box.margin_bottom = 10;

            var notify_label = new Gtk.Label (_("Notify after each conversion"));
            notify_label.justify = Gtk.Justification.LEFT;
            notify_label.set_property("xalign", 0);
            notify_label.margin_left = 5;
            notify_box.pack_start(notify_label, true, true, 0);

            var notify_switch = new Gtk.Switch();
            notify_switch.set_active(true);
            notify_switch.margin_left = 4;
            notify_switch.notify["active"].connect (() => {
                //settings.auto_download = notify_switch.active;
            });
            notify_box.pack_start(notify_switch, true, true, 0);

            content_area.add(notify_box);


            // Dialog Action Area         
            cancel_btn = (Gtk.Button)add_button (_("Cancel"), Gtk.ResponseType.CANCEL);
            //cancel_btn.clicked.connect (() => cancel ());
    
            add_btn = (Gtk.Button)add_button (_("Add"), Gtk.ResponseType.APPLY);
            add_btn.get_style_context ().add_class ("suggested-action");
            set_default (add_btn);

            //set response
            this.response.connect (on_response);

            var action_area = get_action_area ();
            action_area.margin_right = 6;
            action_area.margin_bottom = 6;
            action_area.margin_top = 14;
            //this.response.connect (on_response);
    	}

        private void on_response (Gtk.Dialog source, int response_id) {
            switch (response_id) {
                case Gtk.ResponseType.CANCEL:
                    destroy ();
                    break;
                case Gtk.ResponseType.APPLY:
                    //on_find_clicked ();
                    break;

                // case Gtk.ResponseType.HELP:
                //     show_help ();
                //     break;Gtk.ResponseType.CANCEL
                // case Gtk.ResponseType.CLOSE:
                //     destroy ();
                //     break;
            }
        }
    }
}

// Creates a dialog object which has all the preprocessed information to draw
// our dialog text.
function dialog_create(box_width, box_height, x_padding, y_padding,
						line_padding, text) {
	// Assumptions:
	// No word is longer than the text box is wide.
	// No newlines.
	
	text = text + " ";
	var text_length = string_length(text);
	
	var word_begin = 1;
	var word_end = 2;
	var line_begin = 1;
	
	var lines = [];
	var pages = [];
	var page_length = 0; // page length in characters
	
	var line_height = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.,?:;");
	var max_lines = round((box_height-y_padding) / (line_height + line_padding));

	while (word_end <= text_length) {
		if (string_char_at(text, word_end) == " ") {
			
			var line = string_copy(text, line_begin, word_end-line_begin);
			
			// Word wrap
			if (string_width(line) > box_width) {
				
				var line = string_copy(text, line_begin, word_begin-line_begin);
				
				array_push(lines, [string_length(line),line]);
				
				page_length += string_length(line);
				
				line_begin = word_begin;
				
				if (array_length(lines) >= max_lines) {
					array_push(pages, [page_length, lines]);
					lines = [];
					page_length = 0;
				}
				
				
			}
			
			word_begin = word_end + 1;
			word_end += 1;
			
		}
		word_end += 1;
	}
	
	var line = string_copy(text, line_begin, word_end-line_begin);
	
	array_push(lines, [string_length(line),line]);
	
	page_length += string_length(line);
	
	array_push(pages, [page_length, lines]);
	
	return {
		box_width: box_width,
		box_height: box_height,
		x_padding: x_padding,
		y_padding: y_padding,
		line_padding: line_padding,
		line_height: line_height,
		text_length: text_length,
		pages: pages
	};

}

// Draw the dialog box at time step t.
//
// Return 1 if t is at the end of page.
// Return 2 if t is at the end of all text.
// Return 0 otherwise.
function dialog_draw(dialog, t) {

	var pages = dialog.pages;
	var x_padding = dialog.x_padding;
	var y_padding = dialog.y_padding;
	var line_height = dialog.line_height;
	var line_padding = dialog.line_padding;
	var end_code = 0;
	
	for (var j=0; j<array_length(pages); j+=1) {
	
		var page_length = pages[j][0];
		var lines = pages[j][1];

		if (t == page_length) {
			end_code = 1;
			if (j == array_length(pages)-1) {
				end_code = 2;
			}
		}

		if (t > page_length) {
			t -= page_length;
			continue;
		}
		
		for (var i=0; i<array_length(lines); i+=1) {
			
			var line_length = lines[i][0];
			var line_text = lines[i][1];
			
			if (t < line_length) {
				line_text = string_copy(line_text, 1, t);
			}
			
			draw_text(x+x_padding,
					y+y_padding+(line_height+line_padding)*i,
					line_text);
					
			if (t < line_length) {
				break;
			}
			
			t -= line_length;
			
		}
		break;
	}
	
	return end_code;
}

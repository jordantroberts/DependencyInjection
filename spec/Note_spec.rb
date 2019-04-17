require 'Note'

describe Note do
  describe "#display" do
    it "displays a note" do
      title = "Jordan's shopping list"
      body = "Pizza, cheese, bread, cake"
      formatted_message = "Title: #{title}\n#{body}"
      formatter = double :formatter, format: formatted_message
      note = Note.new(title, body, formatter)
      expect(note.display).to eq formatted_message
    end
  end
end

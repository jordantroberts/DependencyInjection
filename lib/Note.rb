class Note
  def initialize(title, body, formatter = NoteFormatter.new)
    @title = title
    @body = body
    @formatter = formatter
  end

  def display
    @formatter.format(self)
  end

  attr_reader :title, :body
end

# class NoteFormatter
#   def format(note)
#     "Title: #{note.title}\n#{note.body}"
#   end
# end
#

#You will know you've succeeded when you can delete the format method on NoteFormatter and your Note tests still pass.

# Original code:
#
# class Note
#   def initialize(title, body)
#     @title = title
#     @body = body
#     @formatter = NoteFormatter.new
#   end
#
#   def display
#     @formatter.format(self)
#   end
#
#   attr_reader :title, :body
# end
#
# class NoteFormatter
#   def format(note)
#     "Title: #{note.title}\n#{note.body}"
#   end
# end

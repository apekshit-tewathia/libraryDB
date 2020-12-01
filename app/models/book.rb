class Book < ApplicationRecord
  belongs_to :author, optional: true
  belongs_to :section, optional: true

  def author_name=(name)
    author = Author.find_or_create_by!(name: name)
    self.author = author
  end

  def section_name=(name)
    section = Section.find_or_create_by!(name: name)
    self.section = section
  end
end

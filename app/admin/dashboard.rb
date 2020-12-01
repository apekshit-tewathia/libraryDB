ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div do
      span do
        h3 do
          b "Number of Books: #{Book.count}"
        end

        h3 do
          b "Number of Sections: #{Section.count}"
        end

        h3 do
         b "Number of Authors: #{Author.count}"
        end
      end
    end

    # Here is an example of a simple dashboard with columns and panels.

    columns do
      column do
        panel "Recent Books" do
          ul do
            Book.last(10).map do |post|
              li link_to(post.name, admin_book_path(post))
            end
          end
        end
      end

      column do
        panel "Recent Authors" do
          ul do
            Author.last(10).map do |post|
              li link_to(post.name, admin_author_path(post))
            end
          end
        end
      end

      column do
        panel "Recent Sections" do
          ul do
            Section.last(10).map do |post|
              li link_to(post.name, admin_section_path(post))
            end
          end
        end
      end
    end
  end # content
end

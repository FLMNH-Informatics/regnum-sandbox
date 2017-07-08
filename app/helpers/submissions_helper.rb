module SubmissionsHelper

    def name_string_formatted
      raw @sub.name_string.sub(@sub.name, "<em>#{@sub.name}</em>")
    end
  
end
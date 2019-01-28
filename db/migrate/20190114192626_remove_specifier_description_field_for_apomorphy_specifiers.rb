class RemoveSpecifierDescriptionFieldForApomorphySpecifiers < ActiveRecord::Migration
  def up
    Submission.all.each do |submission|
      submission.specifiers.each { |specifier| specifier.delete('specifier_description') }
      submission.save!
    end
  end

  def down

  end
end

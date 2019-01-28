class RenameSubmissionSpecifierCharacterDefinitionToSpecifierCharacterDescription < ActiveRecord::Migration
  def up
    Submission.where( clade_type: 'apomorphy-based_standard' ).each do |submission|
      submission.specifiers.each do |specifier|
        specifier['specifier_character_description'] = specifier.delete('specifier_character_definition') || ''
      end
      submission.save!
    end
  end

  def down
  end
end

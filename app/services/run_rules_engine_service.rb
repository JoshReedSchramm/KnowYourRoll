class RunRulesEngineService

  def initialize(character)
    @temp_character = character
  end

  # Take in CHARACTER -> return back NEW_CAHRACTER with the RULES ENGINE APPLIED to it
  def run_rules_engine 
    #Rails.logger.info "BURKLE ----- > Start RunRulesEngineService.run_rules_engine"
    #Rails.logger.info "BURKLE ----- > Character: #{@temp_character.inspect}"
    
    # need another table to link which rules (under game) link to characters
    # hardcoding the link right now
    characterGameRule = GameRule.find_by(name: "Character Sheet Rules")
    #Rails.logger.info "BURKLE ----- > GameRule.ID: #{characterGameRule.id}"

    # LOOP ON - character.character_attributes [ca]
    @temp_character.character_attributes.each do |ca|
        if ca.value.present?
            #Rails.logger.info "BURKLE ----- > Character.CharacterAttribute.GameAttribute.ID: #{ca.game_attribute_id}"
            #Rails.logger.info "               Character.CharacterAttribute.Value: #{ca.value}"
        
            # LOOP ON - characterGameRule.GameAttributeRules where AffectingGameAttributeID is the ca.GameAttribute.ID
            characterGameRule.game_attribute_rules.where(affecting_game_attribute_id: ca.game_attribute_id).each do |affectingGAR|
                #Rails.logger.info "BURKLE ----- > AttributeRule.ID: #{affectingGAR.id}"
                #Rails.logger.info "BURKLE ----- > AttributeRule.RuleFunction: #{affectingGAR.rule_function}"
                #Rails.logger.info "BURKLE ----- > AttributeRule.AffectedGameAttribute.ID: #{affectingGAR.affected_game_attribute_id}"

                if affectingGAR.rule_function == "LookupValue"
                    if affectingGAR.lookup_table_id.present?
                        #Rails.logger.info "BURKLE ----- > AttributeRule.LookUpTable.ID: #{affectingGAR.lookup_table_id}"
                        
                        # Look up VALUE from LookUpTable.LookUpValues based on CurrentValue and LookUpTableID
                        outputLookupValue = affectingGAR.lookup_table.lookup_values.find_by(input_key: ca.value)
                        if outputLookupValue.present?
                            outputValue = outputLookupValue.output_value
                            if outputValue.present?

                                # Update the changing attribute on the character with the new output value
                                changingAttribute = @temp_character.character_attribute_matching_game_attribute(affectingGAR.affected_game_attribute)
                                #Rails.logger.info "RESULT ----- > ChangingAttribute.PriorValue: #{changingAttribute.value}"
                                changingAttribute.value = outputValue
                                #Rails.logger.info "RESULT ----- > ChangingAttribute.NewValue: #{changingAttribute.value}"
                            end
                        end
                    end
                end
            end
        end
    end
    
    @temp_character
    #Rails.logger.info "BURKLE ----- > End RunRulesEngineService.run_rules_engine"
  end
end
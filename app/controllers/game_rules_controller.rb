class GameRulesController < ApplicationController

  def new
    @game_rule = GameRule.new
    @game = Game.find(params[:game_id])
  end

  def create
    @game_rule = GameRule.new(game_rule_params)
    @game_rule.game_id = params[:game_id]

    if @game_rule.save

      DefaultRulesEngineService.new(@game_rule.id).populate_defaults

      redirect_to game_game_rule_path(@game_rule.game_id, @game_rule), notice: "Your game rule collection has been created"

    else
      render :new
    end
  end

  def test_rules_engine

    @test_game_id = 1
    @test_game = Game.find_by(id: @test_game_id)

    @char = Character.new(game_id: @test_game_id, name: "Azhure Wintersfell")
    @char.build_attribute_graph
    
    at_str_score = @test_game.game_attributes.find_by(name: "Strength Score")
    ca_str_score = @char.character_attribute_matching_game_attribute(at_str_score)
    ca_str_score.value = "20"

    at_dex_score = @test_game.game_attributes.find_by(name: "Dexterity Score")
    ca_dex_score = @char.character_attribute_matching_game_attribute(at_dex_score)
    ca_dex_score.value = "12"

    at_con_score = @test_game.game_attributes.find_by(name: "Constitution Score")
    ca_con_score = @char.character_attribute_matching_game_attribute(at_con_score)
    ca_con_score.value = "16"

    at_int_score = @test_game.game_attributes.find_by(name: "Intelligence Score")
    ca_int_score = @char.character_attribute_matching_game_attribute(at_int_score)
    ca_int_score.value = "12"

    at_wis_score = @test_game.game_attributes.find_by(name: "Wisdom Score")
    ca_wis_score = @char.character_attribute_matching_game_attribute(at_wis_score)
    ca_wis_score.value = "6"

    at_cha_score = @test_game.game_attributes.find_by(name: "Charisma Score")
    ca_cha_score = @char.character_attribute_matching_game_attribute(at_cha_score)
    ca_cha_score.value = "8"
    
    RunRulesEngineService.new(@char).run_rules_engine
    
  end

  def index
  end

  def show
    @game_rule = GameRule.find(params[:id])
  end

  private
    def game_rule_params
      params.require(:game_rule).permit(:name, :description)
    end
end

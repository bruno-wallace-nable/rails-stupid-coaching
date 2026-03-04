class PagesController < ApplicationController
  def home
    # apenas renderiza a página do formulário
  end

  def answer
    # 1. pegamos a pergunta enviada via formulário através do hash 'params'
    @question = params[:question]
    # 2. logica do Stupid Coach
    if @question == "I will workout"
      @coach_answer = "Good!"
    else
      @coach_answer = "Stupid question, go workout!"
    end
  end
end

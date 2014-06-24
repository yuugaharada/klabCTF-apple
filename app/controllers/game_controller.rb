class GameController < ApplicationController
  def index
    @plus = params[:plus].to_i.round
    @left = params[:left].to_i.round
    if 1 <= @plus && @plus <= 4 
      @left = @left - @plus
      if @left <= 0
        @message = "あなたの負けです(・ω<)" 
      else if @left == 1 
             @message = "あなたの勝ちです．flagは「Android_vs_iPhone」" 
           else 
             @cp = 5 - @plus
             @left = @left - @cp
             case @cp
               when 1 
               @message = "あんまりいらないかな，，，(´・ω・`)"
               when 2
               @message = "ちょっとだけなら，，，，(；・∀・)"
               when 3
               @message = "欲張っちゃえ(・ω<)"
               when 4
               @message = "りんご♬りんご♪(^O^)／"
             end
           end
      end
    else
      @message = "1,2,3,4のどれかを選択してください．" 
    end
    render
  end
end

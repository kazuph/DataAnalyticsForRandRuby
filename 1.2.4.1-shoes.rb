#!/usr/bin/env ruby
# coding : utf-8
Shoes.app height:200, width:300 do
  stack margin: 10 do
    caption strong "Shoes ストップウォッチ", font: "osaka"

    flow do
      button "start" do
        @run_flag = true
        @time = Time.now
        @label.replace "#{@time.strftime '%l:%M:%S %p'}にスタート", font: "osaka"
      end
      button "stop" do
        @run_flag = false
        @t = "%.2f" % (Time.now - @time)
        @label.replace strong(@t), "秒経過\nストップ", font: "osaka"
      end
    end

    @label  =  para strong("スタート", font: "osaka"), "ボタンを押すと開始します", font: "osaka"
  end
  animate(30) do
    if @run_flag
      @t = "%.2f" % (Time.now - @time)
      @label.replace strong(@t), "秒経過", font: "osaka"
    end
  end
end

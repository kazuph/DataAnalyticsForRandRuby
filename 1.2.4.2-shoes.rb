#!/usr/bin/env ruby
# coding : utf-8

Shoes.app do
  fill red
  orig_left, orig_top = nil, nil
  animate 24 do
    button, left, top = self.mouse
    # 前回の場所から現在mouseがある座標に対して線を引く
    line(orig_left, orig_top, left, top) if button == 1
    star(orig_left, orig_top, 5, 15, 5) if button == 3
    orig_left, orig_top = left, top
  end
end

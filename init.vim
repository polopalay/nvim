" Duyệt tất cả các file vim trong folder configs
for f in split(glob('~/.config/nvim/configs/*.vim'), '\n')
   exe 'source' f
endfor

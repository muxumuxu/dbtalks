#= require_tree .

talkList = document.querySelector '.talk-list'
talkListMore = document.querySelector '.talk-list-more'
talkListMore.addEventListener 'click', ->
  talkList.className += ' opened'

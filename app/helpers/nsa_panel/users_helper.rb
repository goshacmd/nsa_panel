module NsaPanel
  module UsersHelper
    def blackout(text, attribute)
      to_blackout = !%w[id name].include?(attribute)
      text = '_' * text.to_s.size if to_blackout
      content_tag(:span, text, class: to_blackout ? 'blackout' : '')
    end
  end
end

module BaseFunctions
  include Gizmo::PageMixin

  def method_missing(method_sym, *arguments, &block)
    case method_sym.to_s
      when /([a-zA-Z0-9_]+)_text/
        find_by_selector($1.to_sym).text
      when /has_([a-zA-Z0-9_]+)\?/
        has_selector?($1.to_sym)
      else
        super
    end
  end

  private

  def find_by_selector(key)
    raise "no such selector #{key}" unless selectors && selectors.has_key?(key)
    selector = selectors[key]
    if selector =~ /^(\.\/|\/)/
      find :xpath, selector
    else
      find selector
    end
  end

  def has_selector?(key)
    raise "no such selector #{key}" unless selectors && selectors.has_key?(key)
    selector = selectors[key]
    if selector =~ /^(\.\/|\/)/
      @browser.has_selector? :xpath, selector, :wait => false
    else
      @browser.has_selector? selector, :wait => false
    end
  end

end
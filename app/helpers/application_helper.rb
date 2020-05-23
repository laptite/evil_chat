module ApplicationHelper
  def component(component_name, locals = {}, &block)
    name = component_name.split("_").first
    render("components/#{name}/#{component_name}", locals, &block)
  end

  def klass_parameterize(params)
    return unless params.has_key?("controller")
    [params["controller"], params["action"]].join('-').gsub('/', ' ')
  end

  alias c component
end

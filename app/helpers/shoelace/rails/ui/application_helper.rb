require "../shoelace/lib/codegen"

module Shoelace
  module Rails
    module Ui
      module ApplicationHelper
        include ShoelaceRailsUI
        # This is the fancy version I'm looking for on gen2
        # class SlBase
        #   attr_reader :view_context

        #   def initialize(view_context)
        #     @view_context = view_context
        #   end
        # end

        
        # class SlAlert < SlBase
        #   attr_reader :open, :closable, :variant

        #   def initialize(view_context, open:, closable:, variant:)
        #     super(view_context)
        #     @open = open
        #     @closable = closable
        #     @variant = variant
        #   end

        #   def tag
        #     "sl-alert#{open ? " open" : ""}#{closable ? " closable" : ""}"
        #   end

        #   def render(&block)
        #     view_context.content_tag(tag, variant: variant, &block)
        #   end
        # end

        # def sl_alert(open: false, closable: false, variant: 'primary', &block)
        #   SlAlert.new(self, open: open, closable: closable, variant: variant).render(&block)
        # end

        # gen1 example
        # def sl_alert(**args)
        #   content_tag("sl-alert #{args[:variant] ? "variant=#{args[:variant]}" : ""} #{args[:duration] ? "duration=#{args[:duration]}" : ""} #{args[:open] ? " open" : ""} #{args[:closable] ? " closable" : ""}", yield)
        # end
      end
    end
  end
end
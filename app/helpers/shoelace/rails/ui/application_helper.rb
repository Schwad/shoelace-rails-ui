module Shoelace
  module Rails
    module Ui
      module ApplicationHelper
        # class SlBase
        #   attr_reader :view_context

        #   def initialize(view_context)
        #     @view_context = view_context
        #   end
        # end

        
        # This is the fancy version I'm looking for on gen2
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
        def sl_alert(open: false, closable: false, variant: 'primary', &block)
          content_tag "sl-alert#{open ? " open" : ""}#{closable ? " closable" : ""} variant=#{variant}", yield
        end
      end
    end
  end
end
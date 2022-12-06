module Views
  class Books::Index < ApplicationComponent
    def initialize(records:, search:, pagy:, result:)
      @records = records
      @search = search
      @pagy = pagy
      @result = result
    end

    def template
      render Layout.new do
        div class: "bg-base-200 text-base-content p-3" do
          headline
          div class: "mockup-window border border-base-300" do
          end
        end
      end
    end

    private

    def headline
      div class: "navbar col-span-1 shadow-lg xl:col-span-3 bg-neutral-focus text-neutral-content rounded-box" do
        div class: "flex-none" do
          button class: "btn btn-square btn-ghost" do
            span { "HotTable" }
          end
        end
        # div class: "flex-none px-2 mx-2" do
        # end
        div class: "flex justify-center flex-1 px-2 mx-2" do
          div class: "items-stretch hidden lg:flex" do
            a href: root_path do
              span class: "text-lg font-bold" do
                "Workspace"
              end
            end
          end
        end

        div class: "dropdown dropdown-end" do
          div class: "m-1 normal-case btn-ghost btn", tabindex: "0" do
            svg xmlns: "http://www.w3.org/2000/svg", fill: "none", viewBox: "0 0 24 24", class: "inline-block w-6 h-6 stroke-current md:mr-2" do
              path stroke_linecap: "round", stroke_linejoin: "round", stroke_width: "2", d: "M7 21a4 4 0 01-4-4V5a2 2 0 012-2h4a2 2 0 012 2v12a4 4 0 01-4 4zm0 0h12a2 2 0 002-2v-4a2 2 0 00-2-2h-2.343M11 7.343l1.657-1.657a2 2 0 012.828 0l2.829 2.829a2 2 0 010 2.828l-8.486 8.485M7 17h.01"
            end
            span class: "hidden md:inline" do
              "Change Theme "
            end
            svg xmlns: "http://www.w3.org/2000/svg", viewBox: "0 0 1792 1792", class: "inline-block w-4 h-4 ml-1 fill-current" do
              path d: "M1395 736q0 13-10 23l-466 466q-10 10-23 10t-23-10l-466-466q-10-10-10-23t10-23l50-50q10-10 23-10t23 10l393 393 393-393q10-10 23-10t23 10l50 50q10 10 10 23z"
            end
          end

          div class: "mt-16 overflow-y-auto shadow-2xl top-px dropdown-content h-96 w-52 rounded-b-box bg-base-200 text-base-content" do
            ul class: "p-4 menu compact", data_controller: "theme" do
              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "light") { "light" }
              end
              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "dark") { "dark" }
              end
              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "cupcake") { "cupcake" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "bumblebee") { "bumblebee" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "emerald") { "Emerald" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "corporate") { "Corporate" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "synthwave") { "synthwave" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "retro") { "retro" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "cyberpunk") { "cyberpunk" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "valentine") { "valentine" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "halloween") { "halloween" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "garden") { "garden" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "forest") { "forest" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "aqua") { "aqua" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "lofi") { "lofi" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "pastel") { "pastel" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "fantasy") { "fantasy" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "wireframe") { "Wireframe" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "black") { "black" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "luxury") { "luxury" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "dracula") { "dracula" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "cmyk") { "CMYK" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "autumn") { "Autum" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "business") { "Busines" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "acid") { "Acid" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "lemonade") { "Lemonade" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "night") { "Night" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "coffee") { "Coffee" }
              end

              li do
                a(tabindex: "0", data_action: " click->theme#switch", data_theme_value: "winter") { "Winter" }
              end
            end
          end
        end
      end
    end
  end
end

class PagesController < ApplicationController
    def home
        render html: "home page"
    end
    def about
        render html: "About section"
    end
end

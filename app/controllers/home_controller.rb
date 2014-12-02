class HomeController < ApplicationController
  layout 'application'

  def index
    render :layout => "frontpage"
  end

  def about_us
  end

  def services
  end

  def ordering
  end

  def contact
  end

  def dna_sequencing
  end

  def dna_synthesis
  end

  def mass_spec_analysis
  end

  def peptide_synthesis
  end

  def protein_sequencing
  end
end

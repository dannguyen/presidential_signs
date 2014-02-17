class SigningStatementsController < ApplicationController
  before_action :set_signing_statement, only: [:show, :edit, :update, :destroy]

  # GET /signing_statements
  # GET /signing_statements.json
  def index
    @signing_statements = SigningStatement.chrono
  end

  def debug
    @signing_statements = SigningStatement.chrono
  end

  # GET /signing_statements/1
  # GET /signing_statements/1.json
  def show
  end

  # GET /signing_statements/new
  def new
    @signing_statement = SigningStatement.new
  end

  # GET /signing_statements/1/edit
  def edit
  end

  # POST /signing_statements
  # POST /signing_statements.json
  def create
    @signing_statement = SigningStatement.new(signing_statement_params)

    respond_to do |format|
      if @signing_statement.save
        format.html { redirect_to @signing_statement, notice: 'Signing statement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @signing_statement }
      else
        format.html { render action: 'new' }
        format.json { render json: @signing_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /signing_statements/1
  # PATCH/PUT /signing_statements/1.json
  def update
    respond_to do |format|
      if @signing_statement.update(signing_statement_params)
        format.html { redirect_to @signing_statement, notice: 'Signing statement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @signing_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /signing_statements/1
  # DELETE /signing_statements/1.json
  def destroy
    @signing_statement.destroy
    respond_to do |format|
      format.html { redirect_to signing_statements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_signing_statement
      @signing_statement = SigningStatement.friendly.find(params[:id])
      @president = @signing_statement.president
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def signing_statement_params
      params[:signing_statement]
    end
end

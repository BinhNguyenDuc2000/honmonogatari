class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /books or /books.json
  def index
    #@books = Book.all
    @categories = Category.all
    @books = if params[:term]
    Book.where('title LIKE ?', "%#{params[:term]}%")
    elsif params[:filter]
    Book.joins(:category).where('categories.category LIKE ?',"%#{params[:filter]}%")
    
    elsif params[:sort] != "title"
        Book.order(params[:sort])
        elsif  params[:sort] != "number_of_chapters"
            Book.order(params[:sort])
    
                else
                    Book.join(:categories).all
        end
    end
    
#.where('categories.category == ?', "%#{params[:filter]}%")
  # GET /books/1 or /books/1.json
  def show
      @categories = Category.all
      @chapter = Chapter.new
      @book_review = BookReview.new
  end

  # GET /books/new
  def new
      @categories = Category.all
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
      @categories = Category.all
  end

  # POST /books or /books.json
  def create
      book_params[:category_id] = book_params[:category_id].to_i
    @book = Book.new(book_params)
    @book.number_of_chapters = 0
    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: "Book was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
  
   

  # PATCH/PUT /books/1 or /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: "Book was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def destroy
    if @book.cover.attached?
        @book.cover.destroy
    end
    @book.chapter.each do |chapter| 
        chapter.destroy
    end
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :number_of_chapters, :cover, :description,:category_id, :term, :sort, :filter)
    end
end

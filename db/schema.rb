# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101025161551) do

  create_table "capacidade_filtros", :force => true do |t|
    t.integer  "vazao_min",            :limit => 10, :precision => 10, :scale => 0
    t.integer  "vazao_max",            :limit => 10, :precision => 10, :scale => 0
    t.string   "modelo1"
    t.string   "modelo2"
    t.integer  "vazao_nominal",        :limit => 10, :precision => 10, :scale => 0
    t.integer  "vazao_nominal2",       :limit => 10, :precision => 10, :scale => 0
    t.string   "ralo_fundo"
    t.string   "motobomba"
    t.string   "motobomba2"
    t.string   "succao"
    t.string   "succao2"
    t.integer  "recalque",             :limit => 10, :precision => 10, :scale => 0
    t.integer  "recalque2",            :limit => 10, :precision => 10, :scale => 0
    t.string   "motobomba_aspiracao"
    t.string   "motobomba_aspiracao2"
    t.string   "tubulacao_succao"
    t.string   "prefiltro"
    t.string   "prefiltro2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "case_images", :force => true do |t|
    t.integer  "case_id"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
    t.string   "legend"
  end

  create_table "cases", :force => true do |t|
    t.string   "title"
    t.string   "sumary"
    t.text     "body"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "category"
    t.string   "area"
  end

  create_table "categories", :force => true do |t|
    t.integer  "section_id"
    t.string   "title"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "description"
  end

  create_table "dynamic_pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "published"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "legend"
  end

  create_table "event_galleries", :force => true do |t|
    t.integer  "event_id"
    t.string   "title"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "event_gallery_images", :force => true do |t|
    t.integer  "event_gallery_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "published"
  end

  create_table "events", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "date_start"
    t.datetime "date_end"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "headers", :force => true do |t|
    t.string   "title"
    t.integer  "dynamic_page_id"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "highlights", :force => true do |t|
    t.string   "title"
    t.string   "link"
    t.integer  "position"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "published"
    t.text     "description"
  end

  create_table "import_resellers", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "file_file_name"
    t.string   "file_content_type"
    t.integer  "file_file_size"
    t.datetime "file_updated_at"
  end

  create_table "indicates", :force => true do |t|
    t.string   "name"
    t.string   "friend_name"
    t.string   "friend_mail"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "newsletters", :force => true do |t|
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notice_images", :force => true do |t|
    t.string   "title"
    t.string   "legend"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "notice_id"
  end

  create_table "notices", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "summary"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "partners", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "published"
  end

  create_table "product_images", :force => true do |t|
    t.integer  "product_id"
    t.string   "title"
    t.string   "legend"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.string   "title"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.datetime "video_updated_at"
  end

  create_table "request_catalogs", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "address"
    t.string   "number"
    t.string   "postalcode"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resellers", :force => true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "state"
    t.string   "zone"
    t.string   "cep"
    t.string   "phone"
    t.string   "email"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedule_visits", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "adress"
    t.string   "number"
    t.string   "postalcode"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "title"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sellers", :force => true do |t|
    t.string   "state"
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "region"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "published"
  end

  create_table "sheets", :force => true do |t|
    t.string   "cliente"
    t.string   "endereco"
    t.integer  "comprimento"
    t.integer  "profundidade_minima"
    t.integer  "profundidade_max"
    t.integer  "uso_piscina"
    t.integer  "temperatura_desejada"
    t.integer  "utilizacao_ano"
    t.integer  "utilizacao_mes"
    t.integer  "tipo_construcao"
    t.integer  "capa_termica"
    t.integer  "velocidade_vento"
    t.integer  "temperatura_ambiente"
    t.decimal  "custo_energia",        :precision => 10, :scale => 2
    t.decimal  "custo_glp",            :precision => 10, :scale => 2
    t.decimal  "custo_gn",             :precision => 10, :scale => 2
    t.decimal  "custo_diesel",         :precision => 10, :scale => 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "largura",              :precision => 10, :scale => 2
  end

  create_table "sitecontacts", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "company"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "area"
    t.string   "city"
    t.string   "state"
  end

  create_table "testimonials", :force => true do |t|
    t.string   "name"
    t.string   "position"
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "published"
    t.text     "testimonial"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "link"
  end

end

ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel 'Últimos Posts agregados' do
          ul do
            Post.last(5).map do |post|
              li link_to(post.title, admin_post_path(post))
            end
          end
        end
      end

      column do
        panel 'Usuarios' do
          ul do
            li "Usuarios Registrados: #{User.count}"
            li "Administradores Registrados: #{AdminUser.count}"
          end
        end
      end

      column do
        panel 'Posts' do
          ul do
            li "Posts creados: #{Post.count}"
            li "Comentarios creados: #{Comment.count}"
          end
        end
      end

    end #columns

    panel "Gráfico" do
      render 'shared/chart'
    end
  end # content
end

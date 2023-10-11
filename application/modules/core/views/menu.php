<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-dark menu-accordion menu-shadow" data-scroll-to-active="true">
  <div class="navbar-header">
    <ul class="nav navbar-nav flex-row">
      <li class="nav-item mr-auto"><a class="navbar-brand" href="<?= base_url() ?>assets/html/ltr/vertical-menu-template-semi-dark/index.html">
          <div class="feather icon-copyrigth"></div>
          <h2 class="brand-text mb-0"><i class="feather icon-coffee"></i>Tesbeh</h2>
        </a></li>
      <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="feather icon-x d-block d-xl-none font-medium-4 primary toggle-icon"></i><i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary" data-ticon="icon-disc"></i></a></li>
    </ul>
  </div>
  <div class="shadow-bottom"></div>
  <div class="main-menu-content">
    <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
      <?php $uri = strtolower($this->uri->segment(2));
      $getMenu = $this->Core_model->get_main_menu();
      ?>
      <?php foreach ($getMenu->result() as $menu) : ?>
        <?php $url_menu = ($menu->type == "controller") ? site_url(ADMIN_ROUTE . "/$menu->controller") : $menu->controller ?>
        <?php $getSubMenu = $this->Core_model->get_main_menu($menu->id_menu); ?>
        <?php if ($getSubMenu->num_rows() > 0) : ?>
          <?php if (is_allowed("sidebar_view_" . str_replace(" ", "_", $menu->menu))) : ?>
            <li class=" nav-item"><a href="#"><i class="<?= $menu->icon ?> menu-icon"></i></i><span class="menu-title" data-i18n="Data List"><?= ucwords($menu->menu) ?></span></a>
              <ul class="menu-content">
                <?php foreach ($getSubMenu->result() as $sub_menu) : ?>
                  <?php $url_sub_menu = ($sub_menu->type == "controller") ? site_url(ADMIN_ROUTE . "/$sub_menu->controller") : $sub_menu->controller ?>
                  <?php if (is_allowed("sidebar_view_" . str_replace(" ", "_", $sub_menu->menu))) : ?>
                    <li cl ass="<?= $sub_menu->controller == $uri ? 'active' : '' ?> nav-item"><a href="<?= $url_sub_menu ?>"><i class="feather icon-circle"></i><span class="menu-item" data-i18n="<?= ucwords($sub_menu->menu) ?>"><?= ucwords($sub_menu->menu) ?></span></a>
                    </li>
                  <?php endif; ?>
                <?php endforeach; ?>
              </ul>
            </li>
          <?php endif; ?>
        <?php else : ?>
          <?php if (is_allowed("sidebar_view_" . str_replace(" ", "_", $menu->menu))) : ?>
            <li <?= $menu->controller == $uri ? 'active' : '' ?>>
              <a target="<?= $menu->target ?>" href="<?= $url_menu ?>"><i class="<?= $menu->icon ?> menu-icon"></i>
                <span class="menu-title" data-i18n="<?= ucwords($menu->menu) ?>"><?= ucwords($menu->menu) ?></span>
              </a>
            </li>
          <?php endif; ?>
        <?php endif; ?>
      <?php endforeach; ?>

    </ul>
  </div>
</div>
/*navbar header*/

document.write("<nav class='header-navbar navbar navbar-with-menu navbar-light navbar-border navbar-brand-center'>");
      document.write("<div class='navbar-wrapper'>");
        document.write("<div class='navbar-header'>");
          document.write("<ul class='nav navbar-nav'>");
            document.write("<li class='nav-item mobile-menu hidden-md-up float-xs-left'><a class='nav-link nav-menu-main menu-toggle hidden-xs'><i class='icon-menu5 font-large-1'></i></a></li>");
            /*document.write("<li class='nav-item'><a href='estimate.html' class='navbar-brand nav-link'><img alt='branding logo' src='robust-assets/images/efive/e5_logo.png' data-expand='robust-assets/images/efive/e5_logo.png' data-collapse='robust-assets/images/efive/e5_logo.png' class='brand-logo'></a></li>");*/
			document.write("<li class='nav-item'><a href='estimate.html' class='navbar-brand nav-link'><h1>Subscriber</h1></a></li>");
			document.write("<li class='nav-item hidden-md-up float-xs-right'><a data-toggle='collapse' data-target='#navbar-mobile' class='nav-link open-navbar-container'><i class='icon-ellipsis pe-2x icon-icon-rotate-right-right'></i></a></li>");
          document.write("</ul>");
        document.write("</div>");
        document.write("<div class='navbar-container container-fluid center-layout'>");
          document.write("<div id='navbar-mobile' class='collapse navbar-toggleable-sm'>");
            document.write("<ul class='nav navbar-nav'>");
              document.write("<li class='nav-item hidden-sm-down'><a class='nav-link nav-menu-main menu-toggle hidden-xs'><i class='icon-menu5'></i></a></li>");
              document.write("<li class='nav-item hidden-sm-down'><a href='#' class='nav-link nav-link-expand'><i class='ficon icon-expand2'></i></a></li>");
            document.write("</ul>");
            document.write("<ul class='nav navbar-nav float-xs-right'>");
           document.write("<li class='dropdown dropdown-user nav-item'><a href='#' data-toggle='dropdown' class='dropdown-toggle nav-link dropdown-user-link'><span class='avatar avatar-online'><img src='app-assets//images/portrait/small/avatar-s-1.png' alt='avatar'><i></i></span><span class='user-name'>Mr Patel</span></a>");
                document.write("<div class='dropdown-menu dropdown-menu-right'>");
                  document.write("<div class='dropdown-divider'></div><a href='index.jsp' class='dropdown-item'><i class='icon-power3'></i> Logout</a>");
                document.write("</div>");
              document.write("</li>");
            document.write("</ul>");
          document.write("</div>");
        document.write("</div>");
      document.write("</div>");
    document.write("</nav>");
	
	/*end navbar header*/
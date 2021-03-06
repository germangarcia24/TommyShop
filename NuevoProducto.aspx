<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs" Inherits="TommyShop.WebForm2" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tommy Shop</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
</head>
<form id="form1" runat="server">
    <asp:scriptmanager id="ScriptManager1" runat="server" />

    <body id="page-top">

    
    <!-- No sale el comentario -->

        <!-- Page Wrapper -->
        <div id="wrapper">

            <!-- Sidebar -->
            <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

                <!-- Sidebar - Brand -->
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.aspx">
                    <div class="sidebar-brand-icon rotate-n-15">
                        <img src="img/tommy_logosm.png">
                    </div>
                    <div class="sidebar-brand-text mx-3">Beta</div>
                </a>

                <!-- Divider -->
                <hr class="sidebar-divider my-0">

                <!-- Nav Item - Dashboard -->
                <li class="nav-item active">
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-fw fa-bars"></i>
                        <span>Compras</span></a>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Admin
           
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                        aria-expanded="true" aria-controls="collapseTwo">
                        <i class="fas fa-fw fa-cog"></i>
                        <span>Gestion de inventario</span>
                    </a>
                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Elementos</h6>
                            <a class="collapse-item" href="#">Resumen</a>
                            <a class="collapse-item" href="#">Catalogo de exibicion</a>
                            <a class="collapse-item" href="#">Catalogo de inventario</a>
                            <a class="collapse-item" href="#" data-toggle="modal" data-target="#CatModal">Categorias</a>
                            <a class="collapse-item" href="#">Fabricantes</a>
                            <a class="collapse-item" href="#">Promociones</a>
                            <a class="collapse-item" href="#">Presio al mayoreo</a>
                            <a class="collapse-item" href="#">Ganancia general</a>
                            <a class="collapse-item" href="#">Cargar CSV</a>
                            <a class="collapse-item" href="#">Compradores</a>
                        </div>
                    </div>
                </li>

                <!-- Nav Item - Utilities Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                        aria-expanded="true" aria-controls="collapseUtilities">
                        <i class="fas fa-fw fa-wrench"></i>
                        <span>Administracion</span>
                    </a>
                    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                        data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Elementos</h6>
                            <a class="collapse-item" href="#">Ventas</a>
                            <a class="collapse-item" href="#">Mensajes</a>
                            <a class="collapse-item" href="#">Cotizador</a>
                            <a class="collapse-item" href="#">Template</a>
                            <a class="collapse-item" href="#">Facturacion</a>
                        </div>
                    </div>
                </li>

                <!-- Divider -->
                <hr class="sidebar-divider">

                <!-- Heading -->
                <div class="sidebar-heading">
                    Inventario
           
                </div>

                <!-- Nav Item - Pages Collapse Menu -->
                <li class="nav-item">
                    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                        aria-expanded="true" aria-controls="collapsePages">
                        <i class="fas fa-fw fa-folder"></i>
                        <span>Inventario</span>
                    </a>
                    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                        <div class="bg-white py-2 collapse-inner rounded">
                            <h6 class="collapse-header">Elementos</h6>
                            <a class="collapse-item" href="#">Salidas</a>
                            <a class="collapse-item" href="#">Entradas</a>
                            <a class="collapse-item" href="#">Bitacora</a>
                            <a class="collapse-item" href="NuevoProducto.aspx">Nuevo producto</a>
                            <a class="collapse-item" href="Productos.aspx">Productos</a>
                            <a class="collapse-item" href="VistaCategorias.aspx">Categorias</a>
                            <a class="collapse-item" href="#">Proveedores</a>
                            <a class="collapse-item" href="#">Fabricantes</a>
                            <a class="collapse-item" href="#">Calcular</a>
                            <a class="collapse-item" href="#">Trafico</a>
                            <a class="collapse-item" href="#">Bodega virtual</a>
                        </div>
                    </div>
                </li>



                <!-- Divider -->
                <hr class="sidebar-divider d-none d-md-block">

                <!-- Sidebar Toggler (Sidebar) -->
                <div class="text-center d-none d-md-inline">
                    <a class="rounded-circle border-0" type="button" id="sidebarToggle"></a>
                </div>


            </ul>
            <!-- End of Sidebar -->

            <!-- Content Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">

                <!-- Main Content -->
                <div id="content">

                    <!-- Topbar -->
                    <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                        <!-- Sidebar Toggle (Topbar) -->
                        <a id="sidebarToggleTop" type="button" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </a>

                        <!-- Topbar Search -->
                        <form
                            class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                            <div class="input-group">
                                <input type="text" class="form-control bg-light border-0 small" placeholder="Buscar"
                                    aria-label="Search" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fas fa-search fa-sm"></i>
                                    </button>
                                </div>
                            </div>
                        </form>

                        <!-- Topbar Navbar -->
                        <ul class="navbar-nav ml-auto">

                            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                            <li class="nav-item dropdown no-arrow d-sm-none">
                                <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-search fa-fw"></i>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                    aria-labelledby="searchDropdown">
                                    <form class="form-inline mr-auto w-100 navbar-search">
                                        <div class="input-group">
                                            <input type="text" class="form-control bg-light border-0 small"
                                                placeholder="Search for..." aria-label="Search"
                                                aria-describedby="basic-addon2">
                                            <div class="input-group-append">
                                                <button class="btn btn-primary" type="button">
                                                    <i class="fas fa-search fa-sm"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </li>
                            <!-- Nav Item - Alerts -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-bell fa-fw"></i>
                                    <!-- Counter - Alerts -->
                                    <span class="badge badge-danger badge-counter"></span>
                                </a>
                                <!-- Dropdown - Alerts -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="alertsDropdown">
                                    <h6 class="dropdown-header">Centro de alertas
                                </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-primary">
                                                <i class="fas fa-file-alt text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">21 Enero, 2022</div>
                                            <span class="font-weight-bold">Ya se encuentra disponible el reporte del mes anterior</span>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-success">
                                                <i class="fas fa-donate text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">01 Febrero, 2022</div>
                                            Se ha realizado una compra por $2,487.44 
                                   
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="mr-3">
                                            <div class="icon-circle bg-warning">
                                                <i class="fas fa-exclamation-triangle text-white"></i>
                                            </div>
                                        </div>
                                        <div>
                                            <div class="small text-gray-500">10 Marzo, 2022</div>
                                            Alerta: Contamos con pocas unidades de AirPods
                                   
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Mostrar todas las alertas</a>
                                </div>
                            </li>

                            <!-- Nav Item - Messages -->
                            <li class="nav-item dropdown no-arrow mx-1">
                                <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-envelope fa-fw"></i>
                                    <!-- Counter - Messages -->
                                    <span class="badge badge-danger badge-counter"></span>
                                </a>
                                <!-- Dropdown - Messages -->
                                <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="messagesDropdown">
                                    <h6 class="dropdown-header">Centro de mensajes
                                </h6>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="img/undraw_profile_1.svg" alt="...">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div class="font-weight-bold">
                                            <div class="text-truncate">Hola, me preguntaba si cuentan con existencias.</div>
                                            <div class="small text-gray-500">Juan Perez · 58m</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="img/undraw_profile_2.svg" alt="...">
                                            <div class="status-indicator"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Cuando me podrian realizar mi envio?</div>
                                            <div class="small text-gray-500">Liz Huerta · 2d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="img/undraw_profile_3.svg" alt="...">
                                            <div class="status-indicator bg-warning"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Tengo un problema al realizar mi compra, necesito ayuda.</div>
                                            <div class="small text-gray-500">Julio Paez · 3d</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item d-flex align-items-center" href="#">
                                        <div class="dropdown-list-image mr-3">
                                            <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                                alt="...">
                                            <div class="status-indicator bg-success"></div>
                                        </div>
                                        <div>
                                            <div class="text-truncate">Hola, tienen Mouse Gamer?</div>
                                            <div class="small text-gray-500">Maria Hernandez · 2w</div>
                                        </div>
                                    </a>
                                    <a class="dropdown-item text-center small text-gray-500" href="#">Leer mas mensajes</a>
                                </div>
                            </li>

                            <div class="topbar-divider d-none d-sm-block"></div>

                            <!-- Nav Item - User Information -->
                            <li class="nav-item dropdown no-arrow">
                                <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="mr-2 d-none d-lg-inline text-gray-600 small">Hugo De la Rosa</span>
                                    <img class="img-profile rounded-circle" src="img/undraw_profile.svg">
                                </a>
                                <!-- Dropdown - User Information -->
                                <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                    aria-labelledby="userDropdown">
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Perfil
                                </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Configuracion
                                </a>
                                    <a class="dropdown-item" href="#">
                                        <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Log de actividades
                                </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                        <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                        Cerrar sesion 
                                </a>
                                </div>
                            </li>

                        </ul>

                    </nav>
                    <!-- End of Topbar -->

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800" id="resumen" runat="server">Nuevo producto</h1>
                        </div>
                        <!-- Fila 1 -->
                        <div class="row">

                            <!-- Columna 1 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Nombre del producto</label>
                                <input type="text" class="form-control form-control-user" runat="server"
                                    id="NomProducto" placeholder="Nombre del producto">
                            </div>

                            <!-- Columna 2 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Código de barras</label>
                                <input type="text" class="form-control form-control-user" runat="server"
                                    id="CodBarras" placeholder="Código de barras">
                            </div>

                            <!-- Columna 3 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>SKU</label>
                                <input type="text" class="form-control form-control-user" runat="server"
                                    id="CodSKU" placeholder="SKU">
                            </div>

                            <!-- Columna 4 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Unidades</label>
                                <input type="number" class="form-control form-control-user" runat="server"
                                    id="Unidades" placeholder="Unidades">
                            </div>


                        </div>
                        <!-- Fila 2 -->
                        <div class="row">

                            <!-- Columna 1 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Precio</label>
                                <input type="number" class="form-control form-control-user" runat="server"
                                    id="Precio" placeholder="Precio del producto">
                            </div>

                            <!-- Columna 2 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Clave Sat</label>
                                <input type="text" class="form-control form-control-user" runat="server"
                                    id="ClaveSat" placeholder="Clave Sat">
                            </div>

                            <!-- Columna 3 Buscar consulta -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Categoria</label>
                                <asp:DropDownList runat="server" class="form-control text-lg-center" ID="DropCategoria">
                                </asp:DropDownList>
                            </div>

                            <!-- Columna 4 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Proveedor</label>
                                <asp:DropDownList runat="server" class="form-control text-lg-center" ID="DropProveedor">
                                </asp:DropDownList>
                                  
                            </div>


                        </div>
                        <!-- Fila 3 -->
                        <div class="row">

                            <!-- Columna 1 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Fabricante</label>
                                <asp:DropDownList runat="server" class="form-control text-lg-center" ID="DropFabricante">
                                </asp:DropDownList>
                                  
                            </div>

                            <!-- Columna 2 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Ancho</label>
                                <input type="number" class="form-control form-control-user" runat="server"
                                    id="Ancho" placeholder="Ancho del producto (cm)">
                            </div>
                            <!-- Columna 3 Buscar consulta -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Alto</label>
                                <input type="number" class="form-control form-control-user" runat="server"
                                    id="Alto" placeholder="Alto del producto (cm)">
                            </div>
                            <!-- Columna 4 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Profundidad</label>
                                <input type="number" class="form-control form-control-user" runat="server"
                                    id="Profundo" placeholder="Profundidad del producto (cm)">
                            </div>
                            
                            


                        </div>
                        <!-- Fila 4 -->
                        <div class="row">
                            <!-- Columna 1 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <label>Peso</label>
                                <input type="number" class="form-control form-control-user" runat="server"
                                    id="Peso" placeholder="Peso del producto (gr)">
                            </div>
                        </div>
                        <!-- Fila 5 -->
                        <div class="row">
                            <!-- Columna 1 -->
                            <div class="col-xl-3 col-md-6 mb-4">
                                <a class="btn btn-success btn-icon-split" runat="server" onserverclick="Guardar_ServerClick">
                                        <span class="icon text-white-50">
                                            <i class="fas fa-check"></i>
                                        </span>
                                        <span class="text">Guardar</span>
                                    </a>
                            </div>
                        </div>
                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; TommyShop 2022</span>
                        </div>
                    </div>
                </footer>
                <!-- End of Footer -->

            </div>
            <!-- End of Content Wrapper -->

        </div>
        <!-- End of Page Wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Listo para salir?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Selecciona "Logout" abajo para cerrar la sesion actual.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                        <a class="btn btn-primary" href="#">Logout</a>
                    </div>
                </div>
            </div>
        </div>


        <!-- Categorias Modal-->
        <div class="modal fade" id="CatModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Categoria</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Imagen</th>
                                        <th>Nombre</th>
                                        <th>Categoria</th>
                                        <th>Precio compra</th>
                                        <th>Precio venta</th>
                                        <th>Descuento</th>
                                        <th>Cantidad</th>
                                        <th>Estatus</th>
                                        <th>Accion</th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Imagen</th>
                                        <th>Nombre</th>
                                        <th>Categoria</th>
                                        <th>Precio compra</th>
                                        <th>Precio venta</th>
                                        <th>Descuento</th>
                                        <th>Cantidad</th>
                                        <th>Estatus</th>
                                        <th>Accion</th>
                                    </tr>
                                </tfoot>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Pilas recargables</td>
                                        <td>Baterrias</td>
                                        <td>$147.44</td>
                                        <td>$197.44</td>
                                        <td>0%</td>
                                        <td>214</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Cargador de baterias</td>
                                        <td>Baterrias</td>
                                        <td>$247.44</td>
                                        <td>$397.44</td>
                                        <td>5%</td>
                                        <td>24</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Colores de madera</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$47.44</td>
                                        <td>$57.44</td>
                                        <td>2%</td>
                                        <td>37</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Sacapuntas doble de metal</td>
                                        <td>Oficina, escuela, hogar</td>
                                        <td>$3.45</td>
                                        <td>$7.22</td>
                                        <td>0%</td>
                                        <td>33</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Bote de gomas de borrar</td>
                                        <td>Oficina, escuela, hogar</td>
                                        <td>$204.44</td>
                                        <td>$244.44</td>
                                        <td>0%</td>
                                        <td>48</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Caja 12 colores Maped</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$74.22</td>
                                        <td>$101.01</td>
                                        <td>0%</td>
                                        <td>4</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>7</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Apple Earpods </td>
                                        <td>Apple</td>
                                        <td>$455.32</td>
                                        <td>$550.11</td>
                                        <td>0%</td>
                                        <td>47</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>8</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Lapicero portaminas</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$30.11</td>
                                        <td>$66.44</td>
                                        <td>0%</td>
                                        <td>34</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>9</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Bocinas Logitech</td>
                                        <td>Audifonos y bocinas</td>
                                        <td>$347.44</td>
                                        <td>$597.44</td>
                                        <td>0%</td>
                                        <td>10</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>10</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Tabla agarra papel</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$107.44</td>
                                        <td>$164.44</td>
                                        <td>0%</td>
                                        <td>8</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>11</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Plumones glitter</td>
                                        <td>D1ibujo y escritura</td>
                                        <td>$120.44</td>
                                        <td>$180.44</td>
                                        <td>0%</td>
                                        <td>12</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>12</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Plumas de gel</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$85.44</td>
                                        <td>$134.44</td>
                                        <td>0%</td>
                                        <td>11</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>13</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Marcador para vidrio</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$51.44</td>
                                        <td>$102.44</td>
                                        <td>0%</td>
                                        <td>3</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>14</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Kit de slime</td>
                                        <td>Juegos y juguetes</td>
                                        <td>$66.44</td>
                                        <td>$117.44</td>
                                        <td>0%</td>
                                        <td>60</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>15</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Dixon Lapiz Adhesivo</td>
                                        <td>Oficina, escuela, hogar</td>
                                        <td>$8.44</td>
                                        <td>$20.44</td>
                                        <td>10%</td>
                                        <td>30</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>16</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Adaptador Lightning - VGA Apple</td>
                                        <td>Apple</td>
                                        <td>$991.44</td>
                                        <td>$1,289.44</td>
                                        <td>0%</td>
                                        <td>0</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>17</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Adaptador Lightning a Jack 3.5 mm</td>
                                        <td>Apple</td>
                                        <td>$206.44</td>
                                        <td>$269</td>
                                        <td>15%</td>
                                        <td>6</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>18</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Tinta para sello</td>
                                        <td>Oficina, escuela, hogar</td>
                                        <td>$36.44</td>
                                        <td>$76.44</td>
                                        <td>0%</td>
                                        <td>55</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>19</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Espuma Limpiadora Silimpo Silimex De 454 ml</td>
                                        <td>Limpieza y mantenimiento</td>
                                        <td>$66.44</td>
                                        <td>$117.44</td>
                                        <td>0%</td>
                                        <td>194</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>20</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Botella De Alcohol Isopropilico 250 ml Con Atomizador</td>
                                        <td>Limpieza y mantenimiento</td>
                                        <td>$71.44</td>
                                        <td>$118.44</td>
                                        <td>0%</td>
                                        <td>100</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>21</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Caja Con 10 Correctores kores De Brocha Eco Aqua</td>
                                        <td>Oficina, escuela, hogar</td>
                                        <td>$113.44</td>
                                        <td>$170.44</td>
                                        <td>0%</td>
                                        <td>2</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>22</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Kit Limpiador De Pantallas Con Cepillo</td>
                                        <td>Limpieza y mantenimiento</td>
                                        <td>$32.44</td>
                                        <td>$71.44</td>
                                        <td>0%</td>
                                        <td>52</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>23</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Estuche Hexagonal Con 20 Rotuladores Stabilo 0.4mm point 88 Colores Surtidos</td>
                                        <td>Dibujo y escritura</td>
                                        <td>$328.44</td>
                                        <td>$426.44</td>
                                        <td>0%</td>
                                        <td>2</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>24</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Portalápices De Malla Negro Mae</td>
                                        <td>Oficina, escuela, hogar</td>
                                        <td>$35.44</td>
                                        <td>$75.44</td>
                                        <td>0%</td>
                                        <td>10</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td>25</td>
                                        <td>
                                            <img width="100" height="100" >
                                        </td>
                                        <td>Pasta Termica Cooler Master Jeringa 3.5 - htk-002</td>
                                        <td>Limpieza y mantenimiento</td>
                                        <td>$69.44</td>
                                        <td>$122.44</td>
                                        <td>0%</td>
                                        <td>24</td>
                                        <td><a class="btn btn-success btn-circle"><i class="fas fa-check"></i></a></td>
                                        <td><a class="btn btn-danger btn-circle"><i class="fas fa-trash"></i></a><a class="btn btn-warning btn-circle"><i class="fas fa-exclamation-triangle"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="js/sb-admin-2.min.js"></script>

        <!-- Page level plugins -->
        <script src="vendor/chart.js/Chart.min.js"></script>
        <script src="vendor/datatables/jquery.dataTables.min.js"></script>
        <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

        <!-- Page level custom scripts -->
        <script src="js/demo/chart-area-demo.js"></script>
        <script src="js/demo/chart-pie-demo.js"></script>
        <script src="js/demo/datatables-demo.js"></script>

    </body>
</form>

</html>


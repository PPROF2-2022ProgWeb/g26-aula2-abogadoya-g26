import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './pages/home/home.component';
import { LoginComponent } from './pages/login/login.component';
import { PagotarjetaComponent } from './pages/pagotarjeta/pagotarjeta.component';
import { RegisterComponent } from './pages/register/register.component';
import { TiendaComponent } from './pages/tienda/tienda.component';

const routes: Routes = [

  {path: "", component:HomeComponent},
  {path: "home", component:HomeComponent},
  {path: "register", component:RegisterComponent},
  {path: "login", component:LoginComponent},
  {path: "pagotarjeta", component:PagotarjetaComponent},
  {path: "tienda", component:TiendaComponent}
  
];




@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }

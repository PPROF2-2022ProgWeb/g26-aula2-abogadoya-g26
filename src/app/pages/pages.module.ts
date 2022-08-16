import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { PagesRoutingModule } from './pages-routing.module';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { RegisterComponent } from './register/register.component';
import { PagotarjetaComponent } from './pagotarjeta/pagotarjeta.component';
import { TiendaComponent } from './tienda/tienda.component';


@NgModule({
  declarations: [
    HomeComponent,
    LoginComponent,
    RegisterComponent,
    PagotarjetaComponent,
    TiendaComponent
  ],
  imports: [
    CommonModule,
    PagesRoutingModule
  ],
  exports: [
    HomeComponent,
    LoginComponent,
    RegisterComponent,
    PagotarjetaComponent,
    TiendaComponent
  ]
})
export class PagesModule { }

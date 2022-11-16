import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Token } from 'src/app/models/Token';
import { User } from 'src/app/models/User';
import { UsersService } from 'src/app/services/users.service';
import { ProductsService } from 'src/app/services/products.service';

@Component({
  selector: 'app-product-register',
  templateUrl: './product-register.component.html',
  styleUrls: ['./product-register.component.css']
})
export class ProductRegisterComponent implements OnInit {
    public error : string

    public id : number
    public name : string
    public description : string
    public price : number
    public addedOn : Date
    public imageUrl : string

    constructor(private productService : ProductsService, private router : Router) { }

    ngOnInit(): void {
        
    }

   // addProduct ():void {
   //     let id = this.id.valueOf
   //     let name = this.name.value
   //     let description = this.description.value
   //     let price = this.price.value
   //     let addedOn = this.addedOn.value
   //     let imageUrl = this.imageUrl.value
   //     this.productService.addProduct(id, name, description, price, addedOn, imageUrl)
    //    .subscribe(data => {
     //     this.id.valueOf("")

     //           localStorage.setItem('token', token.token);
     //           this.router.navigateByUrl('/account').then(() => window.location.reload())
     //       }, (error : ErrorEvent) => {
     //           this.error = error.error
    //        })
    //}
}

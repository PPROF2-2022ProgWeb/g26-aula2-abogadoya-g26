import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Product } from '../models/Product';
import { Token } from '../models/Token';
import { User } from '../models/User';

@Injectable({
  providedIn: 'root'
})
export class ProductsService {

    constructor(private http : HttpClient) { }

    getProducts () : Observable<Product[]> {
        return this.http.get<Product[]>(`${environment.API_URL}/api/products`);
    }

    getProduct (id : string) : Observable<Product> {
        return this.http.get<Product>(`${environment.API_URL}/api/products/${id}`);
    }
    addProduct (id : number, name : string, description : string, price : number, addedOn : Date, 
        imageUrl : string) : Observable<Token> {
        return this.http.post<Token>(`${environment.API_URL}/products`, {
            id,
            name,
            description,
            price,
            addedOn,
            imageUrl
        })
    }
}

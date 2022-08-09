import { ChangeDetectionStrategy, Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-pagotarjeta',
  templateUrl: './pagotarjeta.component.html',
  styleUrls: ['./pagotarjeta.component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class PagotarjetaComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}

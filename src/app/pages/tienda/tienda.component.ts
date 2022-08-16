import { ChangeDetectionStrategy, Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-tienda',
  templateUrl: './tienda.component.html',
  styleUrls: ['./tienda.component.css'],
  changeDetection: ChangeDetectionStrategy.OnPush
})
export class TiendaComponent implements OnInit {

  constructor() { }

  ngOnInit(): void {
  }

}
